% this script recreates the tumor grade maps from GLASS-AI classification
% files

% start file search at the user's desktop
default_dir = fullfile(char(java.lang.System.getProperty('user.home')), 'Desktop\');

[class_filename, class_dir_path] = uigetfile('*.mat', "Select GLASS-AI classifications.mat file",default_dir);
if isequal(class_filename,0)
    return % no file selected
else
    grade_map = load(fullfile(class_dir_path,class_filename));

    % verify loaded MAT file contains 'classifications'
    if ~isstruct(grade_map) || ~isfield(grade_map, 'classifications')
        errordlg("The selected .mat file does not contain the expected 'classifications' variable.");
        return
    end
    grade_map = grade_map.classifications;
    bim = blockedImage(grade_map);
end
% define color map
cmap = colormap( [0 0 0; ... %skipped blocks, black
    0 1 0; ... % grade 1, green
    0 0 1; ... % grade 2, blue
    1 1 0; ... % grade 3, yellow
    1 0 0; ... % grade 5, red
    0 1 1; ... % alveoli, cyan
    1 0 1; ... % airway, magenta
    1 1 1]);   % background, white
if isMATLABReleaseOlderThan('R2024b')
    bim = makeMultiLevel2D(bim, ...
        Scales=[0.5,0.25, 0.0625], ...
        Interpolation="nearest" ...
        );

    bigimageshow(bim)
    colormap(cmap)
else
    % use imageshow function if available
    imageshow(...
        bim, ...
        ColorMap = cmap, ...
        Interpolation = "nearest", ...
        DisplayRange=[0 7] ...
        );
end






