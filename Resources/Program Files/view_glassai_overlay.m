%this script creates an overlay image of GLASS-AI results over the input
%image.
% Requires MATLAB R2026a or newer
if isMATLABReleaseOlderThan("R2026a")
    errordlg('This script requires MATLAB R2026a or a newer version to run.');
    return
end
% Requires the Medical Imaging Toolbox
if verLessThan('medical', '26.1')
    errordlg('This script requires the MATLAB Medical Imaging Toolbox version 26.1 or newer to run.');
    return
end
% Requires the Medical Imaging Toolbox Interface for Whole Slide Imaging File Reader
if ~any(contains({matlabshared.supportpkg.getInstalled().Name}, 'Medical Imaging Toolbox Interface for Whole Slide Imaging File Reader'))
    errordlg('This script requires the MATLAB Medical Imaging Toolbox Interface for Whole Slide Imaging File Reader version 26.1 or newer to run.');
    return
end

% start file search at the user's desktop
image_default_dir = fullfile(char(java.lang.System.getProperty('user.home')), 'Desktop\');

[image_filename, image_dir_path] = uigetfile({'*.svs;*.qptiff;*.tiff;*.tif;*.png;*.jpg', 'Image files'}, ...
    "Select input image file", ...
    image_default_dir);
if isequal(image_filename,0)
    return % no file selected
else
    input_image = openslideread(fullfile(image_dir_path,image_filename));
end
class_dir_path = image_dir_path;

if ~isfile(fullfile(class_dir_path,class_filename))
    [class_filename, class_dir_path] = uigetfile('*.mat', ...
        "Select matching GLASS-AI classes.mat file", ...
        class_dir_path); %start search in image file directory
    if isequal(class_filename,0)
        return % no file selected
    end
end

grade_map = load(fullfile(class_dir_path,class_filename));

% verify loaded MAT file contains 'classifications'
if ~isstruct(grade_map) || ~isfield(grade_map, 'classifications')
    errordlg("The selected .mat file does not contain the expected 'classifications' variable.");
    return
end
grade_map = grade_map.classifications;
grade_map = blockedImage(grade_map);

% verify that the selected image and classification file are the same size
if ~all(input_image.Size(1,1:2) == grade_map.Size)
    errordlg({"The selected images are not the same size.", ...
        "Make sure that you select the matching image and GLASS-AI classification .mat file."})
    return
end

cmap = colormap( [0 0 0; ...
    0 1 0; ...
    0 0 1; ...
    1 1 0; ...
    1 0 0; ...
    0 1 1; ...
    1 0 1; ...
    1 1 1]);
% close existing viewers before opening a new one
close all

h = imageshow(input_image, ...
    OverlayData = grade_map, ...
    OverlayColorMap = cmap, ...
    OverlayDisplayRangeMode = 'data-range');


% Create slider to control OverlayDataAlpha
f = ancestor(h, 'figure'); % use the same figure

% Create a panel at the top to hold controls
ctrlPanel = uipanel(f, ...
    Units='normalized', ...
    Position=[0 .92 .75 0.08], ...
    BorderType='none');
% add slider to control panel
slider = uicontrol(ctrlPanel, ...
    Style='slider', ...
    Min=0, Max=1, Value=0.5, ...         % initial alpha value
    Units='normalized', ...
    Position=[0.25 0.15 0.6 0.7]);       % relative to panel
% add label for slider
uicontrol(ctrlPanel, Style='text', Units='normalized', Position=[0.02 0.15 0.2 0.7], ...
    String='Overlay Alpha', HorizontalAlignment='left', BackgroundColor=ctrlPanel.BackgroundColor);

% add scale bar using openslide metadata
info = openslideinfo(fullfile(image_dir_path,image_filename));
% determine microns per pixel
if isfield(info.RawMetadata, 'openslide_mpp_x') && ~isempty(info.RawMetadata.openslide_mpp_x)
    micronsPerPixel = info.RawMetadata.openslide_mpp_x; % typically in microns

    %make micron scale transformation for image
    image_rc = input_image.Size(1,1:2);
    rows = image_rc(1);
    cols = image_rc(2);

    % convert pixel limits to micron limits
    % Limits span from 0.5 to (NumPixels + 0.5) * resolution
    xLimits = [0.5, cols + 0.5] * micronsPerPixel;
    yLimits = [0.5, rows + 0.5] * micronsPerPixel;
    % create the spatial referencing object to apply in transform
    R = imref2d(input_image.Size(1,1:2), xLimits, yLimits);
    h.Transformation = R;
    h.Parent.ScaleBar = "on";
    h.Parent.ScaleBarStyle = "measure";
    h.Parent.SpatialUnits = "microns";
else
    micronsPerPixel = [];
end

% Callback to update OverlayDataAlpha
slider.Callback = @(src,~) set(h, 'OverlayAlpha', src.Value);

% Initialize alpha
set(h, 'OverlayAlpha', slider.Value);

% add image file name as title of figure windows
f.Name = image_filename;