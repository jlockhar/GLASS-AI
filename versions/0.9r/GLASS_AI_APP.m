classdef GLASS_AI_APP < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        GLASSAIUIFigure                 matlab.ui.Figure
        TabGroup                        matlab.ui.container.TabGroup
        GLASSAIParametersTab            matlab.ui.container.Tab
        SmoothingSizeSpinner            matlab.ui.control.Spinner
        SmoothingSizeSpinnerLabel       matlab.ui.control.Label
        SmoothingMethodDropDown         matlab.ui.control.DropDown
        SmoothingMethodDropDownLabel    matlab.ui.control.Label
        PatchtissuethresholdLabel       matlab.ui.control.Label
        PatchTissueThresholdInput       matlab.ui.control.NumericEditField
        TumormergeradiusmLabel          matlab.ui.control.Label
        TumorMergeRadiusInput           matlab.ui.control.NumericEditField
        TumorsizethresholdsqmLabel      matlab.ui.control.Label
        TumorSizeThresholdInput         matlab.ui.control.NumericEditField
        StainNormalizationParametersTab  matlab.ui.container.Tab
        NormMinimumTissuePercent        matlab.ui.control.NumericEditField
        MinimumTissuePercentEditFieldLabel  matlab.ui.control.Label
        NormPseudomaxTolerance          matlab.ui.control.NumericEditField
        PseudomaxToleranceEditFieldLabel  matlab.ui.control.Label
        NormTransparencyThreshold       matlab.ui.control.NumericEditField
        TransparencyThresholdEditFieldLabel  matlab.ui.control.Label
        NormBackgroundIntensity         matlab.ui.control.NumericEditField
        BackgroundIntensityLabel        matlab.ui.control.Label
        StainODMatrixPanel              matlab.ui.container.Panel
        BEditFieldLabel_2               matlab.ui.control.Label
        HemSwatch                       matlab.ui.control.Label
        EosSwatch                       matlab.ui.control.Label
        ResetStainParametersButton      matlab.ui.control.Button
        HemBlueInput                    matlab.ui.control.NumericEditField
        BEditFieldLabel                 matlab.ui.control.Label
        HemGreenInput                   matlab.ui.control.NumericEditField
        GEditFieldLabel                 matlab.ui.control.Label
        HemRedInput                     matlab.ui.control.NumericEditField
        REditFieldLabel                 matlab.ui.control.Label
        EosLabel                        matlab.ui.control.Label
        HemLabel                        matlab.ui.control.Label
        EosBlueInput                    matlab.ui.control.NumericEditField
        EosGreenInput                   matlab.ui.control.NumericEditField
        EosRedInput                     matlab.ui.control.NumericEditField
        GradeMapColorsTab               matlab.ui.container.Tab
        SkippedPatchColorEditField_B    matlab.ui.control.NumericEditField
        SkippedPatchColorEditField_G    matlab.ui.control.NumericEditField
        SkippedPatchColorEditField_R    matlab.ui.control.NumericEditField
        SkippedPatchColorEditFieldLabel  matlab.ui.control.Label
        BackgroundColorEditField_B      matlab.ui.control.NumericEditField
        BackgroundColorEditField_G      matlab.ui.control.NumericEditField
        BackgroundColorEditField_R      matlab.ui.control.NumericEditField
        BackgroudColorEditFieldLabel    matlab.ui.control.Label
        Grade4ColorEditField_B          matlab.ui.control.NumericEditField
        Grade4ColorEditField_G          matlab.ui.control.NumericEditField
        Grade4ColorEditField_R          matlab.ui.control.NumericEditField
        NormalAlveoliColorEditFieldLabel_6  matlab.ui.control.Label
        Grade3ColorEditField_B          matlab.ui.control.NumericEditField
        Grade3ColorEditField_G          matlab.ui.control.NumericEditField
        Grade3ColorEditField_R          matlab.ui.control.NumericEditField
        NormalAlveoliColorEditFieldLabel_5  matlab.ui.control.Label
        NormalAlveoliColorEditField_B   matlab.ui.control.NumericEditField
        NormalAlveoliColorEditField_G   matlab.ui.control.NumericEditField
        NormalAlveoliColorEditField_R   matlab.ui.control.NumericEditField
        NormalAlveoliColorEditFieldLabel  matlab.ui.control.Label
        NormalAirwayColorEditField_B    matlab.ui.control.NumericEditField
        NormalAirwayColorEditField_G    matlab.ui.control.NumericEditField
        NormalAirwayColorEditField_R    matlab.ui.control.NumericEditField
        NormalAlveoliColorEditFieldLabel_2  matlab.ui.control.Label
        Grade1ColorEditField_B          matlab.ui.control.NumericEditField
        Grade1ColorEditField_G          matlab.ui.control.NumericEditField
        Grade1ColorEditField_R          matlab.ui.control.NumericEditField
        NormalAlveoliColorEditFieldLabel_3  matlab.ui.control.Label
        Grade2ColorEditField_B          matlab.ui.control.NumericEditField
        Grade2ColorEditField_G          matlab.ui.control.NumericEditField
        Grade2ColorEditField_R          matlab.ui.control.NumericEditField
        NormalAlveoliColorEditFieldLabel_4  matlab.ui.control.Label
        SkippedPatchLamp                matlab.ui.control.Lamp
        BackgroundLamp                  matlab.ui.control.Lamp
        Grade4Lamp                      matlab.ui.control.Lamp
        Grade3Lamp                      matlab.ui.control.Lamp
        Grade2Lamp                      matlab.ui.control.Lamp
        Grade1Lamp                      matlab.ui.control.Lamp
        NormalAirwayLamp                matlab.ui.control.Lamp
        NormlaAlveoliLamp               matlab.ui.control.Lamp
        BLabel                          matlab.ui.control.Label
        GLabel                          matlab.ui.control.Label
        RLabel                          matlab.ui.control.Label
        CLASSLabel                      matlab.ui.control.Label
        OutputImageScalingTab           matlab.ui.container.Tab
        MaketumorsegmentationimageCheckBox  matlab.ui.control.CheckBox
        StainNormalizedImageScalingSlider  matlab.ui.control.Slider
        StainNormalizedImageScalingLabel  matlab.ui.control.Label
        SegmentationScalingSlider       matlab.ui.control.Slider
        SegmentationScalingLabel        matlab.ui.control.Label
        GradeMapScalingSlider           matlab.ui.control.Slider
        GradeMapScalingLabel            matlab.ui.control.Label
        LinksTab                        matlab.ui.container.Tab
        Hyperlink_3                     matlab.ui.control.Hyperlink
        Hyperlink_2                     matlab.ui.control.Hyperlink
        Hyperlink                       matlab.ui.control.Hyperlink
        VersionLabel                    matlab.ui.control.Label
        Image                           matlab.ui.control.Image
        CopyrightLabel                  matlab.ui.control.Label
        RUOLabel                        matlab.ui.control.Label
        RunCheckLamp                    matlab.ui.control.Lamp
        FileSelectLamp                  matlab.ui.control.Lamp
        StatusLabel                     matlab.ui.control.Label
        GLASSAILabel                    matlab.ui.control.Label
        Step3Label                      matlab.ui.control.Label
        Step2Label                      matlab.ui.control.Label
        Step1Label                      matlab.ui.control.Label
        OutputFolderLamp                matlab.ui.control.Lamp
        InputFolderLamp                 matlab.ui.control.Lamp
        OutputFolderLocationLabel       matlab.ui.control.Label
        OutputFolderButton              matlab.ui.control.Button
        RunButton                       matlab.ui.control.Button
        FileTable                       matlab.ui.control.Table
        InputFolderLocationLabel        matlab.ui.control.Label
        BrowseButton                    matlab.ui.control.Button
        AnalysisOptionsPanel            matlab.ui.container.Panel
        NormalizestainingSwitch         matlab.ui.control.Switch
        NormalizestainingSwitchLabel    matlab.ui.control.Label
        PreviewoutputimagesSwitch       matlab.ui.control.Switch
        PreviewoutputimagesSwitchLabel  matlab.ui.control.Label
        LowmemorymodeSwitch             matlab.ui.control.Switch
        LowmemorymodeSwitchLabel        matlab.ui.control.Label
        OverwriteSlideSummaryInput      matlab.ui.control.CheckBox
        AnalysisBlockSizeInput          matlab.ui.control.Spinner
        Analysisblocksize20100Label     matlab.ui.control.Label
    end


    properties (Access = private)

        % PARAMETERS %
        GLASSAI_APP_VERSION = 'v0.9r' % Version of GLASS-AI standalone app
        INPUT_PATH  % Path selected using BrowseButton
        OUTPUT_PATH % Path selected using OutputFolderButton
        SELECTED_FILES % List of files selected in FileTable
        SELECTED_PATHS % List of paths selected in FileTable
        GLASS_AI % Network object for machine learning model
        IMAGE_BLOCK_SIZE % Store size of blocks to use for image processing
        TUMOR_SIZE_THRESHOLD % Store size threshold for individual tumor segmentation
        APPEND_SLIDE_SUMMARY %False=append summary outputs of each slide to previous output
        IMAGE_RESOLUTION % Store image microns/pixel resolution
        TUMOR_MERGE_RADIUS % Store value for smoothing radius in microns
        NORMALIZE_STAINS % True = normalize H&E patches before classifying
        NORMALIZE_ALPHA % Percent to trim from pseudomin/max for normalization
        NORMALIZE_BETA % Minimum OD for stain normalization
        NORMALIZE_IO % Background intensity for stain normalization
        NORMALIZE_THRESHOLD % Minimum percent opaque pixels for normalization
        NORMALIZE_HEREF % Color vectors for hematoxylin and eosin stain
        OUTPUT_IMAGE_PREVIEW % True = make preview figure of output images
        OUTPUT_GRADE_IMAGE_SCALE % scaling applied to grade map output image
        OUTPUT_SEGMENTATION_IMAGE_SCALE % scaling applied to segmentation output image
        OUTPUT_NORMALIZED_IMAGE_SCALE % scaling applied to stain normalized output image
        PATCH_SKIP_THRESHOLD % Patches with less than this amount of tissue will be skipped
        SMOOTH_METHOD % Select filter used for classification smoothing
        SMOOTH_SIZE =[100 100]% Define filter size in pixels for classificiation smooting
        SPLIT_IMAGE % Write image blocks to files to conserve memory
        NORMAL_ALVEOLI_COLOR % color of normal alveoli in grade map
        NORMAL_AIRWAY_COLOR % color of normal airway in grade map
        GRADE_1_COLOR % color of Grade 1 LUAD in grade map
        GRADE_2_COLOR % color of Grade 2 LUAD in grade map
        GRADE_3_COLOR % color of Grade 3 LUAD in grade map
        GRADE_4_COLOR % color of Grade 4 LUAD in grade map
        BACKGROUND_COLOR % color background in grade map
        SKIPPED_PATCH_COLOR % color of skipped patches in grade map
        SYSTEM_MEMORY % Available memory on system
        MAKE_SEGMENTATION_IMAGE % Generate labeled tumor segmentation image



        % nCounts and iIterators %
        nImages % Total number of images selected for analysis
        iImage % Current image number (of total) being processed)
        nBigBlocksX % Number of image blocks across
        nBigBlocksY % Number of image blocks down
        nBigBlocks % Total number of blocks for analysis of current image
        iBigBlock % Current analysis block for current image

        % Status Tracking %
        analysisStepDescription % Current analysis step
        analysisStartTime % Store time analysis was started
        analysisRunTime % Store time elapsed since analysis was started
        analysisEndTime % Store time analysis completed


    end

    methods (Access = private)

        function runglassai(app)
            % Run GLASS-AI analysis on input images. Performs tumor
            % grading and segmentation on the input images using
            % the parameters set through the GUI. Outputs overlay
            % images and data sheets for further analysis.

            % clean up temporary folders on completion or termination
            cleanup = onCleanup(@()cleanUpGLASSAI(app));
            pause(.1)

            %-% start analysis
            net = app.GLASS_AI;
            app.iImage = 0; %initialize image counter to 0

            %--% process each image
            for n = 1 : app.nImages

                %---% load image
                app.iImage = app.iImage + 1;

                %---% get image file info
                filePath = app.SELECTED_PATHS{n};
                [~,filename,~] = fileparts(app.SELECTED_FILES{n});


                %_Status Update_%
                app.analysisStepDescription = "Loading image";
                statusupdate(app);
                %%%%%%%%%%%%%%%%%

                %---% read input image
                try
                    [wholeImage] = readimage(app,filePath);
                catch ME
                    %give more info on error in status box
                    message_text = "An error occured while loading the input image from" + ...
                        filename + "." + newline + "If this error persits, try reinstalling GLASS-AI."+...
                        newline + "[ERROR MESSAGE]" + newline + ME.message;
                    uialert(app.GLASSAIUIFigure,message_text,"Image loading error");
                    %rethrow error to stop execution
                    rethrow(ME);
                end

                %---% process image into analysis blocks
                [X, Y, Z] = size(wholeImage);
                bigBlockSize=224*app.IMAGE_BLOCK_SIZE;


                % shrink block size to ensure at least one full 224x224
                % patch remains in each block (required for 'apply'
                % function).
                % At least 1 full block & some remainder in X or Y
                if (X/bigBlockSize>=1 &&mod(X,bigBlockSize)<224 && ~mod(X,bigBlockSize)==0) || (Y/bigBlockSize>=1 && mod(Y,bigBlockSize) < 224 && ~mod(Y,bigBlockSize)==0)
                    bigBlockSize = 224 * (app.IMAGE_BLOCK_SIZE-1);
                end

                % don't use low memory mode if block size is bigger than
                % image size. No benefit.
                if (bigBlockSize >= X && bigBlockSize >= Y)
                    app.SPLIT_IMAGE = false;
                end

                [blockNames, blockCoords] = generateimageblockinfo(app,bigBlockSize,X,Y);


                %----% split image to files if using low memory mode
                if app.SPLIT_IMAGE == true %low memory mode

                    %_Status Update_%
                    app.analysisStepDescription = "Dividing image";
                    statusupdate(app);
                    %%%%%%%%%%%%%%%%%%

                    % prepare temporary folders for split images
                    % image blocks
                    try
                        if exist('ImageBlocksTemp', 'dir'), rmdir('ImageBlocksTemp', 's'); end
                        mkdir("ImageBlocksTemp");
                        % class blocks
                        if exist('ClassBlocksTemp', 'dir'), rmdir('ClassBlocksTemp', 's'); end
                        mkdir("ClassBlocksTemp");
                        % normalized image blocks
                        if app.NORMALIZE_STAINS == true
                            if exist('NormBlocksTemp', 'dir'), rmdir('NormBlocksTemp', 's'); end
                            mkdir("NormBlocksTemp");
                        end
                    catch ME
                        message_text = "There was an error making directories for storing image blocks on disk." + ...
                            newline + "Make sure that you have read/write permission for the Output directory." +...
                            newline + app.OUTPUT_PATH + newline + "[ERROR MESSAGE]" + newline + ME.message;
                        uialert(app.GLASSAIUIFigure,message_text,"Image processing error")
                        %rethrow error to stop execution
                        rethrow(ME);
                    end


                    % divide image based on block size.
                    splitimagetoblockfiles(app,wholeImage, X, Y, bigBlockSize);
                    clear wholeImage % unload image from  memory

                else % normal mode
                    %initialize containers for classfications and
                    %normalized image
                    classifications = zeros([X Y],'uint8');
                    if app.NORMALIZE_STAINS == true
                        normalizedImage = zeros(size(wholeImage),'like',wholeImage);
                    end
                end

                %---% iterate over image blocks
                app.iBigBlock = 0;
                try
                    for x=1:app.nBigBlocksX
                        for y=1:app.nBigBlocksY
                            app.iBigBlock = app.iBigBlock + 1; %increment image patch counter for curent image

                            %----% compute block coordinates
                            X1 = (bigBlockSize * (x-1)) + 1; %left
                            X2 = X1 + bigBlockSize - 1; %right

                            Y1 = (bigBlockSize * (y-1)) + 1; %top
                            Y2 = Y1 + bigBlockSize - 1; %bottom


                            % make sure block coordinates are not out of range
                            if(X2>X),X2=X;end %keep right edge in range
                            if(Y2>Y),Y2=Y;end %keep bottom edge in range
                            if(X1<1),X1=1;end %keep left edge in range
                            if(Y1<1),Y1=1;end %keep top edge in range

                            %----% get image block
                            if app.SPLIT_IMAGE == true % low memory mode
                                % read block from storage
                                image_block = imread(fullfile("ImageBlocksTemp",blockNames{x,y})) ;
                            else % normal mode
                                % extract block from whole image
                                image_block = wholeImage(X1:X2,Y1:Y2,:);
                            end

                            %----% do stain normalization if selected
                            if app.NORMALIZE_STAINS == true
                                image_block = normalizeStaining(app, image_block);

                                if app.SPLIT_IMAGE == true % low memory mode
                                    % store normalized image block
                                    imwrite(image_block,fullfile("NormBlocksTemp",sprintf("%d-%d.tif",x,y)),"tif");
                                else % normal mode
                                    % add normalized block to full normalized image
                                    normalizedImage(X1:X2,Y1:Y2,:) = image_block;
                                end
                            end

                            %----% Grade the image and get the classifications
                            %_Status Update_%

                            app.analysisStepDescription = "Analyzing image";
                            statusupdate(app);
                            %%%%%%%%%%%%%%%%%

                            % grade image block
                            class_block = gradeimage(app,image_block,net);

                            % set all pixels to 0 if returned block is
                            % empty. Probably due to masking of all patches
                            % in analysis block.
                            if isempty(class_block)
                                class_block = zeros(size(image_block,1:2));
                            end

                            if app.SPLIT_IMAGE == true % low memory mode
                                % store classificiation block
                                imwrite(class_block,fullfile("ClassBlocksTemp",sprintf("%d-%d.tif",x,y)),"tif");
                            else % normal mode
                                % add classification block to full classification
                                % matrix
                                classifications(X1:X2,Y1:Y2) = class_block(1:(X2-X1)+1,1:(Y2-Y1)+1);
                            end

                        end % End FOR loop: nBigBlocksY
                    end % End FOR loop: nBigBlocksX
                catch ME
                    message_text = "GLASS-AI encountered an error during analysis." + ...
                        newline + "[ERROR MESSAGE]" + newline + ME.message;
                    uialert(app.GLASSAIUIFigure,message_text,"Analysis error")
                    %rethrow error to stop execution
                    rethrow(ME);
                end %end try/catch



                %---% Save the classifications in the output folder in mat format
                %_Status Update_%
                app.analysisStepDescription = "Saving pixel classifications";
                statusupdate(app);
                %%%%%%%%%%%%%%%%%

                classificationOutputFileName=fullfile(app.OUTPUT_PATH, strcat(filename,'_classes.mat'));

                if app.SPLIT_IMAGE == true % low memory mode
                    % rebuild classifications from storage blocks
                    classifications = rebuildimagefromblockfiles(app,"ClassBlocksTemp",X,Y,1,blockNames,blockCoords);
                    save(classificationOutputFileName,'classifications', '-v7.3');
                    rmdir("ClassBlocksTemp",'s');
                else % normal mode
                    save(classificationOutputFileName,'classifications', '-v7.3');
                end



                %--% Analyze Individual Tumors

                % get mask for each class and combined tumor mask
                % G1= tumor grade 1, G2= tumor grade 2,G3= tumor grade 3,G4= tumor grade 4
                % Normal= Normal alveoli
                % AH= Airways
                % BG= Background (white space, non-tissue)
                %_Status Update_%
                app.analysisStepDescription = "Extracting class masks";
                statusupdate(app);
                %%%%%%%%%%%%%%%%%
                [G1,G2,G3,G4,AH,Normal,~,tumorMask] = extractclassmasks(app,classifications);


                % Analyze individual tumors and total tumor areas
                %_Status Update_%
                app.analysisStepDescription = "Analyzing individual tumors";
                statusupdate(app);
                %%%%%%%%%%%%%%%%%
                [individualTumorStat,wholeSlideStat,segmentedTumorMask]=individualtumoranalysis(app,G1,G2,G3,G4,tumorMask,AH,Normal,filename);
                clear G1 G2 G3 G4 tumorMask AH Normal % remove from memory after processing

                %--% Output Tables

                % Generate summary spreadsheet for all images submitted as
                % input
                %_Status update_%
                app.analysisStepDescription = "Writing to whole slide analysis file";
                statusupdate(app);
                %%%%%%%%%%%%%%%%%
                if app.iImage==1 && app.APPEND_SLIDE_SUMMARY==false
                    writetable(wholeSlideStat,fullfile(app.OUTPUT_PATH,'Whole slide summary.xlsx'),'WriteMode','overwrite');
                else
                    writetable(wholeSlideStat,fullfile(app.OUTPUT_PATH,'Whole slide summary.xlsx'),'WriteMode','append');
                end

                % Generate spreadsheet of individual tumors from each input image
                %_Status update_%
                app.analysisStepDescription = "Writing to individual tumor analysis file";
                statusupdate(app);
                %%%%%%%%%%%%%%%%%

                writetable(individualTumorStat,fullfile(app.OUTPUT_PATH,[filename '.xlsx']),'WriteMode','overwrite');

                %--% Output Images

                % Create overlay images of tumor grades and segmentations
                %_Status update_%
                app.analysisStepDescription = "Creating output images";
                statusupdate(app);
                %%%%%%%%%%%%%%%%%

                %---% make tumor grade image
                gradeImage = createtumorgradeimage(app,classifications);
                clear classifications; % clear classification matrix from memory

                %---% resize grade image to set scaling factors
                gradeImage = imresize(gradeImage, app.OUTPUT_GRADE_IMAGE_SCALE, 'nearest');

                % save tumor grade image to file
                if X*Y > 40000000 %write as tiled tiff for large images
                    writetiff(app,gradeImage,filename+"_grades.tif");
                else
                    imwrite(gradeImage,fullfile(app.OUTPUT_PATH, ...
                        strcat(filename,'_grades.tif')),'tif','Compression','lzw');
                end

                if app.OUTPUT_IMAGE_PREVIEW == true
                    %resize image for preview
                    resizeX = min(X,5000);
                    resizeY = min(Y,5000);
                    gradeImage = imresize(gradeImage,[resizeX,resizeY],'nearest');
                else
                    clear gradeImage; % remove from memory after writing to file & if no preview
                end

                %---% make tumor segmentation image
                if app.MAKE_SEGMENTATION_IMAGE == true
                    %use stain normalized image if made
                    if app.NORMALIZE_STAINS == true
                        if app.SPLIT_IMAGE == true % low memory mode
                            %rebuild image if split
                            normalizedImage = rebuildimagefromblockfiles(app,"NormBlocksTemp", X, Y, Z, blockNames, blockCoords);
                        end
                        normalizedImage = im2uint8(normalizedImage);
                        segmentationImage = createsegmentationimage(app,normalizedImage, segmentedTumorMask, individualTumorStat);

                    else % if normalization was not performed
                        if app.SPLIT_IMAGE == true % low memory mode
                            %reload origininal image from file
                            [wholeImage] = readimage(app,filePath);
                        end
                        wholeImage = im2uint8(wholeImage);
                        segmentationImage = createsegmentationimage(app, wholeImage, segmentedTumorMask, individualTumorStat);
                    end

                    % segmentation image is resized during creation to
                    % prevent compression of tumor ID labels

                    % save tumor segmentation image to file
                    if X*Y > 40000000 %write as tiled tiff for large images
                        writetiff(app,segmentationImage,filename+"_segmentation.tif");
                    else
                        imwrite(segmentationImage,fullfile(app.OUTPUT_PATH, ...
                            strcat(filename,'_segmentation.tif')),'tif','Compression','lzw');
                    end

                    %resize image for preview
                    if app.OUTPUT_IMAGE_PREVIEW == true
                        segmentationImage = imresize(segmentationImage, [resizeX resizeY],'nearest');
                    else
                        clear segmentationImage; % remove from memory after writing to file & if no preview
                    end
                end

                %---% make stain normalization image
                if app.NORMALIZE_STAINS == true
                    %---% resize segmentation image to set scaling factors
                    normalizedImage = imresize(normalizedImage,app.OUTPUT_NORMALIZED_IMAGE_SCALE,"nearest");
                    if X*Y > 40000000 %write as tiled tiff for large images
                        writetiff(app,normalizedImage,filename+"_normalized.tif");
                    else
                        imwrite(normalizedImage,fullfile(app.OUTPUT_PATH, ...
                            strcat(filename,'_normalized.tif')),'tif','Compression','lzw'); % save normalized stain image to file
                    end
                    %resize image for preview
                    if app.OUTPUT_IMAGE_PREVIEW == true
                        normalizedImage = imresize(normalizedImage, [resizeX resizeY],'nearest');
                    else
                        clear normalizedImage;
                    end


                end

                % Generate output image preview
                if app.OUTPUT_IMAGE_PREVIEW == true

                    %_Status Update_%
                    app.analysisStepDescription = "Generating preview images";
                    statusupdate(app);
                    %%%%%%%%%%%%%%%%

                    %% display preview images
                    % set up figure environement for 2x2 image display
                    fig = figure();
                    tlo = tiledlayout(fig,2,2,'TileSpacing','Compact');

                    %show original image
                    ax1 = nexttile(tlo);
                    imshow(wholeImage,'Parent',ax1);
                    title("Original Image");

                    %show stain normalized image if done
                    if app.NORMALIZE_STAINS == true
                        ax2 = nexttile(tlo);
                        imshow(normalizedImage,'Parent',ax2);
                        title("Normalized Image");
                    end

                    %show tumor grade map
                    ax3 = nexttile(tlo);
                    imshow(gradeImage, 'Parent', ax3);
                    title("Tumor Grades");

                    %show tumor segmentation map
                    if app.MAKE_SEGMENTATION_IMAGE == true
                        ax4 = nexttile(tlo);
                        imshow(segmentationImage,'Parent',ax4);
                        title("Tumor Segmentation");
                    end
                    % synchronize subplots of image viewer
                    if app.MAKE_SEGMENTATION_IMAGE == true
                        if app.NORMALIZE_STAINS == true
                            linkaxes([ax1 ax2 ax3 ax4],'xy');
                        else
                            linkaxes([ax1 ax3 ax4],'xy');
                        end
                    else
                        if app.NORMALIZE_STAINS == true
                            linkaxes([ax1 ax2 ax3],'xy');
                        else
                            linkaxes([ax1 ax3],'xy');
                        end
                    end

                end % End image preview

                %--% Cleanup Workspace
                % Clean up before next iteration
                clearvars -except app net;
            end

            %--% Finish Analysis Run

            %_Final Status Update_%
            app.analysisEndTime = toc(app.analysisStartTime);
            app.StatusLabel.Text= sprintf("Analysis completed on %d images. \n Total run time: %s",...
                app.nImages,duration([0,0,app.analysisEndTime]));
            %%%%%%%%%%%%%%%%%%%%%%%
            runcheck(app); %recheck options are valid for next run

        end % End function: runglassai

        function runcheck(app)
            % Check that all steps have been completed before enabling run
            % button

            % Good to go if all lights are green
            if min(app.InputFolderLamp.Color==[0 1 0]) && ...
                    min(app.OutputFolderLamp.Color==[0 1 0]) && ...
                    min(app.FileSelectLamp.Color==[0 1 0])
                % Enable run button
                app.RunCheckLamp.Color = [0,1,0];
                app.RunButton.Enable=true;
            else
                app.RunCheckLamp.Color = [1,0,0];
                app.RunButton.Enable=false;
            end

        end % End function: runcheck

        function  statusupdate(app)
            % Provide status updates to users based on analysis step and images
            % remaining to be processed

            % Get time elapsed from start of analysis
            app.analysisRunTime = toc(app.analysisStartTime);

            % Display update in StatusLabel
            app.StatusLabel.Text=sprintf("%s for %s (image %d of %d)\n Time Elapsed: %s", app.analysisStepDescription, app.SELECTED_FILES{app.iImage}, app.iImage, app.nImages, duration([0,0,app.analysisRunTime]));
            pause(0.1); %refresh app.StatusLabel text before continuing

        end % End function: statusupdate

        function [wholeImage] = readimage(app,filePath)
            %   Reads input image
            %   Supported formats: tif , svs

            % get image extension
            [~,~,ext] = fileparts(filePath);


            if strcmpi(ext,'.tif')
                % Read tif file. Assumed to be in 20x magnification
                % with a 0.502 microns/pixel resolution
                wholeImage=imread(filePath);
                app.IMAGE_RESOLUTION = 0.502;
            elseif strcmpi(ext,'.svs')
                % read svs file.
                [wholeImage]=readsvsfile(app,filePath);
            else
                error('File format is not supported!!');
            end

        end % End function: readimage

        function [wholeImage]=readsvsfile(app,filePath)
            % reads and returns the largest 20x image from the svs file

            [imageInfo] = getimageinfo(app,filePath);

            % find the 20x images
            pos=find(imageInfo(:,5)==20);

            if ~isempty(pos)
                % find the largest 20x image
                idx=pos(end); % array is sorted by image size already
                wholeImage=imread(filePath,'Index',imageInfo(idx,3));
            else
                error('Could not find 20x images in the svs file!');
            end

        end % End function: readsvsfile

        function [imageInfo] = getimageinfo(app,path)
            % Read file header and return images sizes and resolution from
            % svs file

            I1info=imfinfo(path);
            imageNo=size(I1info,1); %number of images in svs file
            imageInfo=zeros(imageNo,5); %initialize imageInfo to zeros
            for i=1:imageNo
                % Get image size
                imageInfo(i,1)=I1info(i).Width;
                imageInfo(i,2)=I1info(i).Height;
                imageInfo(i,3)=i;

                % Get image magnification and resolutions
                try
                    imageDescription=I1info(i).ImageDescription;
                    C=strsplit(imageDescription,'|');
                    C2=C(contains(C,'MPP')); % microns per pixel
                    if(~isempty(C2))
                        C3=strsplit(C2{1},'=');
                        app.IMAGE_RESOLUTION=str2double(C3{2});
                        imageInfo(i,4)=app.IMAGE_RESOLUTION;
                    else
                        imageInfo(i,4)=NaN;
                    end

                    C2=C(contains(C,'AppMag')); %magnification
                    if(~isempty(C2))
                        C3=strsplit(C2{1},'=');
                        imageMagnification=str2double(C3{2});
                        imageInfo(i,5)=imageMagnification;
                    else
                        imageInfo(i,5)=NaN;
                    end
                catch
                    imageInfo(i,4)=NaN;
                    imageInfo(i,5)=NaN;
                end
            end
            imageInfo = sortrows(imageInfo);

        end % End function: getimageinfo


        function splitimagetoblockfiles(app, wholeImage, X, Y, bigBlockSize)
            % Breaks the image into smaller blocks for reduced memory
            % usage. Saves blocks to disk; will be significantly impacted
            % by I/O speed of disk.

            blockNames =  cell(app.nBigBlocksX, app.nBigBlocksY);
            blockCoords = cell(app.nBigBlocksX, app.nBigBlocksY);

            for x=1:app.nBigBlocksX
                for y=1:app.nBigBlocksY

                    % Compute block coordinates
                    X1 = (bigBlockSize * (x-1)) + 1; %left
                    X2 = X1 + bigBlockSize - 1; %right

                    Y1 = (bigBlockSize * (y-1)) + 1; %top
                    Y2 = Y1 + bigBlockSize - 1; %bottom


                    % make sure block coordinates are not out of range
                    if(X2>X),X2=X;end %keep right edge in range
                    if(Y2>Y),Y2=Y;end %keep bottom edge in range
                    if(X1<1),X1=1;end %keep left edge in range
                    if(Y1<1),Y1=1;end %keep top edge in range

                    % Get the current block
                    Image0=wholeImage(X1:X2,Y1:Y2,:);
                    blockNames{x,y} = sprintf("%d-%d.tif",x,y);
                    blockCoords{x,y} = [X1 X2 Y1 Y2];
                    % write to file
                    imwrite(Image0,fullfile("ImageBlocksTemp",sprintf("%d-%d.tif",x,y)),"tif");
                end %End FOR loop nBigBlocksY
            end %End FOR loop nBigBlocksX
        end % End function: splitimagetoblockfiles

        function class_block = gradeimage(app,imageBlock,net)
            %   Breaks the images into small patches and classify them (this is for
            %   memory issues).
            %   Returns a matrix of classification for each pixel in the image

            % Define patch size for analysis
            patchSize = [224,224,3];

            % Get dimensions of image
            [X,Y,~]=size(imageBlock);

            % If image block is too small, pad bottom and right sides with
            % white space
            if X < 224
                X_pad = 224-X;
            else
                X_pad = 0;
            end

            if Y < 224
                Y_pad = 224-Y;
            else
                Y_pad = 0;

            end

            imageBlock = padarray(imageBlock,[X_pad, Y_pad],255,'post');

            % create image patches from input imageBlock
            bim = blockedImage(imageBlock);


            % Remove existing TempFolder
            if exist('TempFolder', 'dir'), rmdir('TempFolder', 's'); end

            %try to use GPU, otherwise use CPU for classification
            %_Status Update_%
            if  canUseGPU == 1
                app.analysisStepDescription = sprintf("Analyzing patch %d of %d using GPU",...
                    app.iBigBlock, app.nBigBlocks);
                statusupdate(app);
            else
                app.analysisStepDescription = sprintf("Analyzing patch %d of %d using CPU",...
                    app.iBigBlock, app.nBigBlocks);
                statusupdate(app);
            end
            %%%%%%%%%%%%%%%%%%


            %mask image to skip empty space
            if app.PATCH_SKIP_THRESHOLD > 0
                bmask = apply(bim, @(bs)rgb2gray(bs.Data)<120, "Level",1);
                bls = selectBlockLocations(bim,'BlockSize',patchSize(1:2),...
                    "Mask", bmask,"InclusionThreshold", app.PATCH_SKIP_THRESHOLD/100);
            else %skip masking if no threshold set
                bls = selectBlockLocations(bim,'BlockSize',patchSize(1:2),...
                    'InclusionThreshold',0,'Levels',1);
            end

            %classify image patches
            [scores1] = apply(bim,@(bs)classifypatches(app,bs, net), ...
                'Level',1,'BlockLocationSet', bls,...
                'UseParallel',canUseGPU,'OutputLocation','TempFolder');

            %collect output classifications
            scores = gather(scores1);

            % clean temp folder
            if exist('TempFolder', 'dir'), rmdir('TempFolder', 's'); end

            % save patch classifications to the classification matrix
            [M, Inds]=(max(scores,[],3));

            % Set skipped patches to black
            Inds(M==0) = 0;
            Inds = uint8(Inds);

            % Smooth classifications to remove patch edge artifacts
            if app.SMOOTH_METHOD ~= "None"
                [Inds] = smoothclasses(app,Inds);
            end

            class_block = Inds;

        end % End function gradeimage

        function [scores] = classifypatches(~,patch,net)
            % Predict tumor grades in image patch using GLASS-AI.

            % Get dimensions of image
            I = patch.Data;
            [X,Y,~] = size(I);

            % If image patch is too small, pad bottom and right sides with
            % white space
            X_pad = 224-X;
            Y_pad = 224-Y;
            I = padarray(I,[X_pad, Y_pad, 0],255,'post');

            % Predict grades
            [~,~,scores] = semanticseg(I, net);
            % trim padded area off scores before returning
            scores = scores(1:X,1:Y,:);

        end % End function: classifypatches

        function [Grade1,Grade2,Grade3,Grade4,Airway,Alveoli,Background,tumorMask] = extractclassmasks(~,classes)
            % Get masks of each class and combined tumor areas

            % Mask for each class
            Grade1=classes==1; % grade 1 tumor
            Grade2=classes==2; % grade 2 tumor
            Grade3=classes==3; % grade 3 tumor
            Grade4=classes==4; % grade 4 tumor
            Alveoli=classes==5; % normal aleveoli
            Airway=classes==6; % normal airways
            Background=classes==7; % background/void

            % Combined mask for tumor areas
            tumorMask=Grade1|Grade2|Grade3|Grade4;

        end % End function: extractclassmasks


        function [smoothedClasses] = smoothclasses(app,classes)
            % Applies a smoothing kernel across predicted classes to
            % minimize artifcats from patch edges.

            tumorClasses = classes;
            assignin("base","classes",classes);
            % treat masked pixels as background
            tumorClasses(classes == 0) = 7;

            %perform smoothing with selected method
            switch app.SMOOTH_METHOD
                case "Median"
                    smoothedClasses = medfilt2(tumorClasses,app.SMOOTH_SIZE,'symmetric');

                case "Mode"
                    % make sure smoothing kernel is odd length
                    if any(mod(app.SMOOTH_SIZE,2)==0)
                        app.SMOOTH_SIZE = app.SMOOTH_SIZE + (mod(app.SMOOTH_SIZE,2)-1);
                    end
                    smoothedClasses = modefilt(tumorClasses,app.SMOOTH_SIZE,'symmetric');

                case "Bilateral"
                    % make sure smoothing kernel is odd length
                    if any(mod(app.SMOOTH_SIZE,2)==0)
                        app.SMOOTH_SIZE = app.SMOOTH_SIZE + (mod(app.SMOOTH_SIZE,2)-1);
                    end
                    smoothedClasses = imbilatfilt(tumorClasses,10,floor((app.SMOOTH_SIZE(1)/2)/2));

                case "Non-local means"
                    % make sure smoothing kernel is odd length
                    if any(mod(app.SMOOTH_SIZE,2)==0)
                        app.SMOOTH_SIZE = app.SMOOTH_SIZE + (mod(app.SMOOTH_SIZE,2)-1);
                    end
                    smoothedClasses = imnlmfilt(tumorClasses,SearchWindowSize = app.SMOOTH_SIZE(1));

                case "Hamming window (tumor only)"
                    %convert classifications to double since uint8 cant store
                    %NaN values
                    tumorClasses = double(tumorClasses);
                    % mask out non-tumor classes with NaN
                    tumorClasses(tumorClasses == 5| tumorClasses == 6| tumorClasses == 7) = NaN;
                    window = hammingwindow(app);
                    smoothedClasses = applysmoothingwindow(app,window,tumorClasses);

                case "None"
                    smoothedClasses = classes;
            end


            %remove any decimals introduced by smoothing
            smoothedClasses = round(smoothedClasses);
            smoothedTumorInds = smoothedClasses == (1|2|3|4);

            %restore any alveoli that were lost during smoothing
            restoreAlveoliInds = (classes == 5) & ~smoothedTumorInds;
            smoothedClasses(restoreAlveoliInds) = 5;

            %restore any airways that were lost during smoothing
            restoreAirwayInds = (classes == 6) & ~smoothedTumorInds;
            smoothedClasses(restoreAirwayInds) = 6;

            %restore background and masked pixels
            smoothedClasses(classes == 0) = 0;
            smoothedClasses(classes == 7) = 7;

        end % End function: smoothclasses


        function [IndividualTumorStat,wholeSlideStat,segmentedTumorMask]=individualtumoranalysis(app,G1,G2,G3,G4,tumorMask,AH,Normal,filename)
            % Performs merging, segmentation, and filtering
            % of individual tumors. Provides data for output tables
            % and images.

            PIXEL_AREA=app.IMAGE_RESOLUTION^2;
            MERGE_RADIUS = ceil(app.TUMOR_MERGE_RADIUS / app.IMAGE_RESOLUTION); % convert microns to pixels
            SIZE_THRESHOLD = ceil(app.TUMOR_SIZE_THRESHOLD / PIXEL_AREA); % convert sq. microns to pixels

            % Smooth tumor masks and merge tumors within app.TUMOR_MERGE_RADIUS
            tumorMask=imfill(tumorMask,'holes'); % fill exisiting holes
            tumorMask=imclose(tumorMask,strel('disk',MERGE_RADIUS));
            tumorMask=imfill(tumorMask,'holes'); % fill new holes

            % Filter tumors smaller than app.TUMOR_SIZE_THRESHOLD
            segmentedTumorMask=bwareaopen(tumorMask,SIZE_THRESHOLD,8);

            % mask of all tissue in slide
            Slide_Mask=tumorMask|AH|Normal;

            % this is for memory efficient use
            indicesG1=find(G1);
            indicesG2=find(G2);
            indicesG3=find(G3);
            indicesG4=find(G4);

            % Initialize tumor area on slide to 0
            slideG1Area=0;
            slideG2Area=0;
            slideG3Area=0;
            slideG4Area=0;

            %get tumor centroids for labeling
            CC = bwconncomp(segmentedTumorMask,8); % Segment individual tumors
            s = regionprops(CC,'Centroid'); % Get centroid coordinates for tumor labels
            tumorCentroids = cat(1,s.Centroid); % Convert centroid coordinates to [x y] matrix

            %% Define tables to save stats
            % Whole slide summary table
            headerNames={'image_id','number_of_tumors',...
                'g1_percentage_in_slide','g2_percentage_in_slide',...
                'g3_percentage_in_slide','g4_percentage_in_slide',...
                'g1_area_in_slide','g2_area_in_slide','g3_area_in_slide',...
                'g4_area_in_slide','total_tumor_area_in_slide','total_tissue_area_in_slide'};
            varTypes = {'string','double','double','double','double','double',...
                'double','double','double','double','double','double'};
            tableSize = [1 12];
            wholeSlideStat = table('Size',tableSize,...
                'VariableNames',headerNames, 'VariableTypes',varTypes);

            %add stats if any tumors were found
            if ~isempty(tumorCentroids)
                nTumors=length(tumorCentroids(:,1)); % Get segmented tumor count
                % Individual tumors table
                headerNames={'image_id','tumor_id','g1_percentage',...
                    'g2_percentage','g3_percentage',...
                    'g4_percentage','g1_area','g2_area',...
                    'g3_area','g4_area','total_tumor_area',...
                    'centroid_x','centroid_y'};
                varTypes = {'string','double','double','double','double','double',...
                    'double','double','double','double','double','double','double'};
                tableSize = [nTumors 13];
                IndividualTumorStat = table('Size',tableSize,...
                    'VariableNames',headerNames,'VariableTypes',varTypes);




                % analyze each segmented tumor in image
                for iTumor=1:nTumors
                    classificationIndices=CC.PixelIdxList{iTumor};
                    % get indices of each grade for each pixel in tumor
                    individualTumorG1 = ismember(classificationIndices,indicesG1);
                    individualTumorG2 = ismember(classificationIndices,indicesG2);
                    individualTumorG3 = ismember(classificationIndices,indicesG3);
                    individualTumorG4 = ismember(classificationIndices,indicesG4);

                    % Calculate area of each grade in individual tumor
                    tumorG1Area = nnz(individualTumorG1(:))*PIXEL_AREA;
                    tumorG2Area = nnz(individualTumorG2(:))*PIXEL_AREA;
                    tumorG3Area = nnz(individualTumorG3(:))*PIXEL_AREA;
                    tumorG4Area = nnz(individualTumorG4(:))*PIXEL_AREA;

                    % Sum area of all grades in individual tumor
                    tumorTotalArea = tumorG1Area + tumorG2Area +...
                        tumorG3Area + tumorG4Area;

                    % Calculate proportion of each grade in tumor
                    tumorG1Percent=(double(tumorG1Area)/tumorTotalArea)*100;
                    tumorG2Percent=(double(tumorG2Area)/tumorTotalArea)*100;
                    tumorG3Percent=(double(tumorG3Area)/tumorTotalArea)*100;
                    tumorG4Percent=(double(tumorG4Area)/tumorTotalArea)*100;

                    % calculate total area of each grade in image
                    slideG1Area = slideG1Area + tumorG1Area;
                    slideG2Area = slideG2Area + tumorG2Area;
                    slideG3Area = slideG3Area + tumorG3Area;
                    slideG4Area = slideG4Area + tumorG4Area;


                    % save individual tumor stats
                    IndividualTumorStat(iTumor,:)={filename, iTumor,...
                        tumorG1Percent, tumorG2Percent, tumorG3Percent,...
                        tumorG4Percent, tumorG1Area, tumorG2Area,...
                        tumorG3Area,tumorG4Area, tumorTotalArea,...
                        tumorCentroids(iTumor,1), tumorCentroids(iTumor,2)};
                end %end for loop: individual tumor analysis
            else
                %if no tumors found set tumor burdens to 0
                headerNames={'image_id','tumor_id','g1_percentage',...
                    'g2_percentage','g3_percentage',...
                    'g4_percentage','g1_area','g2_area',...
                    'g3_area','g4_area','total_tumor_area',...
                    'centroid_x','centroid_y'};
                varTypes = {'string','double','double','double','double','double',...
                    'double','double','double','double','double','double','double'};
                tableSize = [1 13];
                IndividualTumorStat = table('Size',tableSize,...
                    'VariableNames',headerNames,'VariableTypes',varTypes);
                nTumors = 0;
                slideG1Area = 0;
                slideG2Area = 0;
                slideG3Area = 0;
                slideG4Area = 0;
            end % End IF: ~isempty(tumorCentroids)

            %Caluclate total tumor area in slide
            Whole_slide_tumor_area = slideG1Area + slideG2Area + slideG3Area + slideG4Area;

            % save whole slide stats
            wholeSlideStat(1,:)={filename, nTumors,...
                (slideG1Area/Whole_slide_tumor_area)*100,...
                (slideG2Area/Whole_slide_tumor_area)*100,...
                (slideG3Area/Whole_slide_tumor_area)*100,...
                (slideG4Area/Whole_slide_tumor_area)*100,...
                slideG1Area,...
                slideG2Area,...
                slideG3Area,...
                slideG4Area,...
                Whole_slide_tumor_area,...
                nnz(Slide_Mask)*PIXEL_AREA};
        end % End function: individualtumoranalysis


        function gradeImage = createtumorgradeimage(app,classifications)
            % make tumor grade image from classifications.

            %initialize gradeImage RGB arrays
            [XX,YY]=size(classifications);
            ch1=zeros(XX,YY, 'uint8');
            ch2=zeros(XX,YY, 'uint8');
            ch3=zeros(XX,YY, 'uint8');

            % Skipped Patches
            Inds=classifications==0;
            ch1(Inds)=app.SKIPPED_PATCH_COLOR(1);
            ch2(Inds)=app.SKIPPED_PATCH_COLOR(2);
            ch3(Inds)=app.SKIPPED_PATCH_COLOR(3);

            % Grade 1
            Inds=classifications==1;
            ch1(Inds)=app.GRADE_1_COLOR(1);
            ch2(Inds)=app.GRADE_1_COLOR(2);
            ch3(Inds)=app.GRADE_1_COLOR(3);

            %Grade 2
            Inds=classifications==2;
            ch1(Inds)=app.GRADE_2_COLOR(1);
            ch2(Inds)=app.GRADE_2_COLOR(2);
            ch3(Inds)=app.GRADE_2_COLOR(3);

            % Grade 3
            Inds=classifications==3;
            ch1(Inds)=app.GRADE_3_COLOR(1);
            ch2(Inds)=app.GRADE_3_COLOR(2);
            ch3(Inds)=app.GRADE_3_COLOR(3);

            % Grade 4
            Inds=classifications==4;
            ch1(Inds)=app.GRADE_4_COLOR(1);
            ch2(Inds)=app.GRADE_4_COLOR(2);
            ch3(Inds)=app.GRADE_4_COLOR(3);

            % Alveoli
            Inds=classifications==5;
            ch1(Inds)=app.NORMAL_ALVEOLI_COLOR(1);
            ch2(Inds)=app.NORMAL_ALVEOLI_COLOR(2);
            ch3(Inds)=app.NORMAL_ALVEOLI_COLOR(3);

            % Airways
            Inds=classifications==6;
            ch1(Inds)=app.NORMAL_AIRWAY_COLOR(1);
            ch2(Inds)=app.NORMAL_AIRWAY_COLOR(2);
            ch3(Inds)=app.NORMAL_AIRWAY_COLOR(3);

            % Background/void = white
            Inds=classifications==7;
            ch1(Inds)=app.BACKGROUND_COLOR(1);
            ch2(Inds)=app.BACKGROUND_COLOR(2);
            ch3(Inds)=app.BACKGROUND_COLOR(3);

            %merge channels to create RGB image
            gradeImage = cat(3,ch1,ch2,ch3);
            %convert to uint8 to reduce size
            gradeImage = uint8(gradeImage);
        end


        function segmentationImage = createsegmentationimage(app,inputImage, tumorMask, individualTumorStat)
            %create an image with labeled tumor segmentations overlayed on
            %H&E image

            %adjust tumor mask to output scale
            tumorMask = imresize(tumorMask, app.OUTPUT_SEGMENTATION_IMAGE_SCALE,"nearest");

            %initialize image channel arrays
            inputImage = imresize(inputImage,app.OUTPUT_SEGMENTATION_IMAGE_SCALE);
            ch1=inputImage(:,:,1);
            ch2=inputImage(:,:,2);
            ch3=inputImage(:,:,3);
            clear inputImage

            %make red overlay from tumorMask
            ch2(tumorMask) = 0; %remove green signal from annotated image
            ch3(tumorMask) = 0; %remove blue signal from annotated image
            segmentationImage=cat(3,ch1,ch2,ch3);
            clear ch1 ch2 ch3

            % get tumor IDs and centroids for adding labels
            IDs=individualTumorStat.tumor_id;
            Centroid_x=individualTumorStat.centroid_x;
            Centroid_y=individualTumorStat.centroid_y;
            clear individualTumorStat

            %adjust image and centroid coordinates to output scale
            Centroid_x = Centroid_x * app.OUTPUT_SEGMENTATION_IMAGE_SCALE;
            Centroid_y = Centroid_y * app.OUTPUT_SEGMENTATION_IMAGE_SCALE;
            %round down to make coordinates integers
            Centroid_x = floor(Centroid_x);
            Centroid_y = floor(Centroid_y);

            % Add outline to segmented tumors
            Boundry=bwperim(tumorMask,8);
            clear tumorMask

            Boundry=imdilate(Boundry,strel('disk',3));
            segmentationImage=imoverlay(segmentationImage,Boundry,'b');
            clear Boundry

            % Add tumor ID labels on the image
            for iTumor=1:size(Centroid_x,1)
                position = [round(Centroid_x(iTumor)) round(Centroid_y(iTumor))];
                text_str = ['ID: ' num2str(IDs(iTumor), '%d')];

                % Using the insertText function from the computer vision
                % toolbox is extremely memory intensive.
                % Use Label Image package by Amitabh Verma in low memory
                % mode.
                % (https://www.mathworks.com/matlabcentral/fileexchange/31187-label-image)
                if(app.SPLIT_IMAGE) == true
                    %low memory mode
                    segmentationImage = labelimg(segmentationImage, text_str, position,1);
                else
                    segmentationImage = insertText(segmentationImage,position,text_str,'FontSize',40,'BoxColor',...
                        'yellow','BoxOpacity',0.4,'TextColor','black');
                end % end if
            end % end for loop: Add tumor ID labels on the image

        end


        function [Inorm] = normalizeStaining(app, Ii)
            % Normalize the staining appearance of images originating from H&E stained
            % sections.
            %
            % Input:
            % Ii         - RGB input image;
            % maxCRef   - (optional) reference maximum stain concentrations for H&E (default value is defined);

            %%% These values are defined in the Stain Normalization options
            %%% at runtime
            % Io        - (optional) transmitted light intensity (default: 235);
            % beta      - (optional) OD threshold for transparent pixels (default: 0.2);
            % alpha     - (optional) tolerance for the pseudo-min and pseudo-max (default: 1);
            % HERef     - (optional) reference H&E OD matrix (default value is defined);
            %
            % Output:
            % Inorm     - stain normalized image;
            %
            % References:
            % A method for normalizing histology slides for quantitative analysis. M.
            % Macenko et al., ISBI 2009
            %
            % Efficient nucleus detector in histopathology images. J.P. Vink et al., J
            % Microscopy, 2013
            %
            % Copyright (c) 2013, Mitko Veta
            % Image Sciences Institute
            % University Medical Center
            % Utrecht, The Netherlands
            %
            % See the license.txt file for copying permission.
            %

            % reference maximum stain concentrations for H&E
            maxCRef = [
                1.9705
                1.0308
                ];

            I = Ii;
            % get image dimensions
            h = size(I,1);
            w = size(I,2);

            I = double(I);
            I = reshape(I, [], 3);

            % calculate optical density
            OD = -log((I+1)/app.NORMALIZE_IO);

            % remove transparent pixels from vector calculation
            ODhat = OD(~any(OD < app.NORMALIZE_BETA, 2), :);

            %skip normalization if < threshold percent of opaque pixels
            if size(ODhat,1)/size(OD,1) < (app.NORMALIZE_THRESHOLD/100)
                Inorm = Ii;
                return
            end


            % calculate eigenvectors
            % avoid error if no opaque pixels present
            try
                [V, ~] = eig(cov(ODhat));
                % project on the plane spanned by the eigenvectors corresponding to the two
                % largest eigenvalues
                That = ODhat*V(:,2:3);

                % find the min and max vectors and project back to OD space
                phi = atan2(That(:,2), That(:,1));

                minPhi = prctile(phi, app.NORMALIZE_ALPHA);
                maxPhi = prctile(phi, 100-app.NORMALIZE_ALPHA);

                vMin = V(:,2:3)*[cos(minPhi); sin(minPhi)];
                vMax = V(:,2:3)*[cos(maxPhi); sin(maxPhi)];

                % a heuristic to make the vector corresponding to hematoxylin first and the
                % one corresponding to eosin second
                if vMin(1) > vMax(1)
                    HE = [vMin vMax];
                else
                    HE = [vMax vMin];
                end

                % rows correspond to channels (RGB), columns to OD values
                Y = reshape(OD, [], 3)';

                % determine concentrations of the individual stains
                C = HE \ Y;

                % normalize stain concentrations
                maxC = prctile(C, 99, 2);

                C = bsxfun(@rdivide, C, maxC);
                C = bsxfun(@times, C, maxCRef);

                % recreate the image using reference mixing matrix
                Inorm = app.NORMALIZE_IO*exp(-app.NORMALIZE_HEREF * C);
                Inorm = reshape(Inorm', h, w, 3);
                Inorm = uint8(Inorm);


            catch %skip normalization if error occurs
                Inorm = Ii;
            end
        end % End function: normalizeStaining


        function rebuiltImage = rebuildimagefromblockfiles(app,inputFilePath, X, Y, Z, blockNames, blockCoords)
            % use split images in input folder to rebuild image

            %initialize output image
            rebuiltImage = zeros([X Y Z],"uint8");

            %iterate over image blocks
            for i= 1:app.nBigBlocksX
                for j=1:app.nBigBlocksY
                    %get output image coordinates
                    outCoords = blockCoords{i,j};
                    X1 = outCoords(1);
                    X2 = outCoords(2);
                    Y1 = outCoords(3);
                    Y2 = outCoords(4);
                    %read image file into target coordinates of output file
                    fetchedImage = imread(fullfile(inputFilePath,blockNames{i,j}));
                    rebuiltImage(X1:X2,Y1:Y2,:) = fetchedImage(1:(X2-X1)+1,1:(Y2-Y1)+1,:);
                end
            end
        end %End function: rebeuildimagefromblockfiles

        function [blockNames, blockCoords] = generateimageblockinfo(app,bigBlockSize,X,Y)
            % Generate image blocks info

            % Calculate the number of analysis blocks
            app.nBigBlocksX = ceil(double(X)/bigBlockSize);
            app.nBigBlocksY = ceil(double(Y)/bigBlockSize);
            app.nBigBlocks = app.nBigBlocksY * app.nBigBlocksY; % capture total number of patches for status updates
            app.iBigBlock = 0; % initialize analysis block counter to 0 for current image

            %initialize output variable cells
            blockNames =  cell(app.nBigBlocksX, app.nBigBlocksY);
            blockCoords = cell(app.nBigBlocksX, app.nBigBlocksY);

            %iterate over each image block
            for x=1:app.nBigBlocksX
                for y=1:app.nBigBlocksY

                    % Compute block coordinates
                    X1 = (bigBlockSize * (x-1)) + 1; %left
                    X2 = X1 + bigBlockSize - 1; %right

                    Y1 = (bigBlockSize * (y-1)) + 1; %top
                    Y2 = Y1 + bigBlockSize - 1; %bottom

                    % make sure block coordinates are not out of range
                    if(X2>X),X2=X;end %keep right edge in range
                    if(Y2>Y),Y2=Y;end %keep bottom edge in range
                    if(X1<1),X1=1;end %keep left edge in range
                    if(Y1<1),Y1=1;end %keep top edge in range

                    % Get the current block
                    blockNames{x,y} = sprintf("%d-%d.tif",x,y);
                    blockCoords{x,y} = [X1 X2 Y1 Y2];
                end %End FOR loop nBigBlocksY
            end %End FOR loop nBigBlocksX
        end % End function: generateimageblockinfo

        function cleanUpGLASSAI(~)
            %remove temporary folders from previous analysis
            if exist('TempFolder', 'dir'), rmdir('TempFolder', 's'); end
            if exist('ImageBlocksTemp', 'dir'), rmdir('ImageBlocksTemp', 's'); end
            if exist('NormBlocksTemp', 'dir'), rmdir('NormBlocksTemp', 's'); end
            if exist('ClassBlocksTemp', 'dir'), rmdir('ClassBlocksTemp', 's'); end
        end % End function: cleanUpGLASSAI

        function outputWindow = hammingwindow(app)
            %generate Hamming window for smoothing

            % get dimensions of window
            vN = app.SMOOTH_SIZE(1);
            hN = app.SMOOTH_SIZE(2);

            %create vertical Hamming vector
            sz = vN*2;
            vVec = zeros(vN,1);
            for n = 0:sz
                vVec(n+1,1) = 0.54 - 0.46*cos(2*pi()*(n/sz-1));
            end
            %create horizontal Hamming vector
            sz = hN*2;
            hVec = zeros(1,hN);
            for n = 0:sz
                hVec(1,n+1) = 0.54 - 0.46*cos(2*pi()*(n/sz-1));
            end

            % make 2D window from outer product of vectors
            outputWindow = vVec * hVec;

        end % hammingwindow

        function smoothedOutput = applysmoothingwindow(~,window,image)
            %perform smoothing using Hamming window

            % Check for NaN's:
            inan = isnan(image);
            ynan = any(inan(:));
            assignin("base","ynan",ynan);
            assignin("base","image",image);

            %set NaN to 0
            if ynan
                image(inan) = 0;
            else
                factor = sum(window(:));
            end

            if ~isfloat(window)
                window = double(window);
            end

            if ynan
                smoothedOutput = imfilter(image,window,'replicate','conv');
            else
                smoothedOutput = imfilter(image,window/factor,'replicate','conv');
            end

            % Estimates the averages when NaNs are present:ii
            if ynan
                factor       = imfilter(double(~inan),window,'replicate','conv');
                smoothedOutput = smoothedOutput./factor;
            end

            smoothedOutput(inan) = NaN;
        end


        function  writetiff(app,Image,filename)
            %write tiff files with metadata

            bt = Tiff(fullfile(app.OUTPUT_PATH, filename),'w8');
            tags.ImageLength         = size(Image,1);
            tags.ImageWidth          = size(Image,2);
            tags.Photometric         = Tiff.Photometric.RGB;
            tags.BitsPerSample       = 8;
            tags.SamplesPerPixel     = size(Image,3);
            tags.TileWidth           = 128;
            tags.TileLength          = 128;
            tags.Compression         = Tiff.Compression.JPEG;
            tags.PlanarConfiguration = Tiff.PlanarConfiguration.Chunky;
            tags.Software            = 'MATLAB/GLASS-AI';

            setTag(bt, tags);
            write(bt, Image);
            close(bt);

        end
    end % End methods: functions



    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            clc;
            pause(.5); %let window load
            app.StatusLabel.Text="Loading GLASS-AI neural network";
            pause(.5);
            app.StatusLabel.Text="Loading GLASS-AI neural network.";
            pause(.5);
            app.StatusLabel.Text="Loading GLASS-AI neural network..";
            pause(.5);
            app.StatusLabel.Text="Loading GLASS-AI neural network...";

            if isdeployed %do if standalone app
                if ismac % default ctf is within app contents
                    %navigate to proper directory to load GLASS-AI
                    cd(ctfroot);
                    cd('../../../..');
                end
                try
                    app.GLASS_AI = load(fullfile('Net','GLASS_AI.mat'));
                    app.GLASS_AI = app.GLASS_AI.net; %get DAGnet from struct
                catch ME
                    if (strcmp(ME.identifier,'MATLAB:ErrorRecovery:ItemNoLongerOnPath'))
                        message_text = "Could not find the GLASS-AI model. Has it been moved/deleted?" + ...
                            newline + "If this error persits, try reinstalling GLASS-AI."+...
                            newline + "[ERROR MESSAGE]" + newline + ME.message;
                        uialert(app.GLASSAIUIFigure,message_text,"Model loading error");
                    else
                        message_text = "Could not find the GLASS-AI model. An unknown error occured." + ...
                            newline + "If this error persits, try reinstalling GLASS-AI."+...
                            newline + "[ERROR MESSAGE]" + newline + ME.message;
                        uialert(app.GLASSAIUIFigure,message_text,"Model loading error");
                    end
                    %rethrow error to stop execution
                    rethrow(ME);
                end
            else %not deployed
                try
                    %search for GLASS-AI network in directory and
                    %subdirectories
                    filelist = dir(fullfile(pwd, '**','GLASS_AI.mat'));
                    for file = 1:length(filelist)
                        if filelist(file).bytes == 61020398
                            netfile = fullfile(filelist(file).folder,filelist(file).name);
                        end
                    end
                    app.GLASS_AI = load(netfile);
                    app.GLASS_AI = app.GLASS_AI.net; % get DAGnet from struct
                catch ME
                    if (strcmp(ME.identifier,'MATLAB:ErrorRecovery:ItemNoLongerOnPath'))
                        message_text = "GLASS-AI failed to load: Network file not found." + ...
                            newline + "Make sure GLASS-AI.mat exists in the working directory or a subdirectory."+...
                            newline + "[ERROR MESSAGE]" + newline + ME.message;
                        uialert(app.GLASSAIUIFigure,message_text,"Model loading error");
                    else
                        message_text = "Could not find the GLASS-AI model. An unknown error occured." + ...
                            newline + "If this error persits, try reinstalling GLASS-AI."+...
                            newline + "[ERROR MESSAGE]" + newline + ME.message;
                        uialert(app.GLASSAIUIFigure,message_text,"Model loading error");
                    end
                    %rethrow error to stop execution
                    rethrow(ME);
                end
            end

            % change directory to user folder to make finding input/output
            % directories easier
            if ismac
                cd('~');
                % change directory to desktop
                try
                    cd('Desktop');
                catch ME
                    % remain in user folder if no Desktop folder
                end
            end
            if ispc
                user = getenv('USERPROFILE');
                cd(fullfile(user));
                % change directory to desktop
                try
                    cd('Desktop');
                catch ME
                    % remain in user folder if no Desktop folder
                end

            end
            app.StatusLabel.Text="GLASS-AI loaded. Awaiting input/selection.";

            %get system memory size for low memory mode suggestion
            [~, app.SYSTEM_MEMORY]=system('sysctl hw.memsize | awk ''{print $2}''');
            app.SYSTEM_MEMORY = str2double(app.SYSTEM_MEMORY)/(1024^3);
        end

        % Button pushed function: BrowseButton
        function BrowseButtonPushed(app, event)
            % Get target directory from user
            app.INPUT_PATH=uigetdir;
            % handle 'cancel' button press from UI  (val == 0)
            if app.INPUT_PATH == 0
                app.INPUT_PATH = "";
                % restore INPUT_PATH value if previously defined
                if ~isempty(app.InputFolderLocationLabel.Text)
                    app.INPUT_PATH = app.InputFolderLocationLabel.Text;
                end
            else
                % Sets the label text to be the selected path
                app.InputFolderLocationLabel.Text=app.INPUT_PATH;
            end
            % Find valid image files in target directory
            files=[dir(fullfile(app.INPUT_PATH,"*.tif"))
                dir(fullfile(app.INPUT_PATH,"*.tiff"))
                dir(fullfile(app.INPUT_PATH,"*.svs"))];
            % Gets the name of the files/folders of the contents and stores them in a cell array
            fileNames={files(:).name}';
            app.FileTable.Data = fileNames;

            % Refresh figure to update TargetFolderLocationLabel
            app.GLASSAIUIFigure.Visible = 'off';
            app.GLASSAIUIFigure.Visible = 'on';


            % Ready check
            if isempty(fileNames)
                app.InputFolderLamp.Color=[1,0,0];
                runcheck(app);
            else
                app.InputFolderLamp.Color=[0,1,0];
                runcheck(app);
            end
        end

        % Cell selection callback: FileTable
        function FileTableCellSelection(app, event)
            data = get(app.FileTable,'Data');
            indices = event.Indices;
            r = indices(:,1);
            c = indices(:,2);
            linearIndex = sub2ind(size(data),r,c);
            app.SELECTED_FILES = data(linearIndex); % Store names of selected files

            %toggle low memory mode if file is too large for system memory
            suggestLowMemoryMode = false;
            if app.LowmemorymodeSwitch.Value == "On" %skip if low memory mode is already enabled
                for n = 1:length(app.SELECTED_FILES) % Get system file paths for selected files
                    app.SELECTED_PATHS = cellfun(@(x) fullfile(app.INPUT_PATH,x), app.SELECTED_FILES, 'Uniform',0);
                end

                for file = 1: numel(app.SELECTED_PATHS) % compare file size to system memory
                    if dir(app.SELECTED_PATHS{file}).bytes/(1024^3) >= app.SYSTEM_MEMORY/20
                        suggestLowMemoryMode = true;
                    end

                end

                if suggestLowMemoryMode %enable low memory mode and alert user
                    app.LowmemorymodeSwitch.Value = "On";
                    drawnow;
                    uialert(app.GLASSAIUIFigure,{'Selected file(s) may be too large for your system to handle.', ...
                        'Low memory mode has been toggled on.', ...
                        'You may disable it again in the options.'},'Notice','Icon','warning');
                end
            end

            % Ready check
            if not(isempty(app.SELECTED_FILES)) % Green light if valid files exist
                app.FileSelectLamp.Color=[0,1,0];
                runcheck(app);
            else
                app.FileSelectLamp.Color=[1,0,0];
                runcheck(app);
            end


        end

        % Button pushed function: RunButton
        function RunButtonPushed(app, event)
            % Get system file paths for selected files
            for n = 1:length(app.SELECTED_FILES)
                app.SELECTED_PATHS = cellfun(@(x) fullfile(app.INPUT_PATH,x), app.SELECTED_FILES, 'Uniform',0);
            end

            % Set app variables
            app.nImages = length(app.SELECTED_PATHS);
            app.analysisStartTime = tic;
            app.RunButton.Enable=false;

            %Analysis Options panel
            app.APPEND_SLIDE_SUMMARY = app.OverwriteSlideSummaryInput.Value;
            app.IMAGE_BLOCK_SIZE = app.AnalysisBlockSizeInput.Value;
            if app.NormalizestainingSwitch.Value == "On"
                app.NORMALIZE_STAINS = 1;
            else
                app.NORMALIZE_STAINS = 0;
            end
            if app.PreviewoutputimagesSwitch.Value == "On"
                app.OUTPUT_IMAGE_PREVIEW = 1;
            else
                app.OUTPUT_IMAGE_PREVIEW = 0;
            end
            if app.LowmemorymodeSwitch.Value == "On"
                app.SPLIT_IMAGE = 1;
            else
                app.SPLIT_IMAGE = 0;
            end

            %GLASS-AI Parameters tab
            app.PATCH_SKIP_THRESHOLD = app.PatchTissueThresholdInput.Value;
            app.SMOOTH_METHOD = app.SmoothingMethodDropDown.Value;
            app.SMOOTH_SIZE = [app.SmoothingSizeSpinner.Value app.SmoothingSizeSpinner.Value];
            app.TUMOR_SIZE_THRESHOLD = app.TumorSizeThresholdInput.Value;
            app.TUMOR_MERGE_RADIUS = app.TumorMergeRadiusInput.Value;

            %Stain Normalization Parameters tab
            app.NORMALIZE_ALPHA = app.NormPseudomaxTolerance.Value;
            app.NORMALIZE_BETA = app.NormTransparencyThreshold.Value;
            app.NORMALIZE_IO = app.NormBackgroundIntensity.Value;
            app.NORMALIZE_THRESHOLD = app.NormMinimumTissuePercent.Value;
            app.NORMALIZE_HEREF = [
                app.HemRedInput.Value       app.EosRedInput.Value
                app.HemGreenInput.Value     app.EosGreenInput.Value
                app.HemBlueInput.Value      app.EosBlueInput.Value
                ];

            %Grade Map Colors tab
            app.NORMAL_ALVEOLI_COLOR = [app.NormalAlveoliColorEditField_R.Value, app.NormalAlveoliColorEditField_G.Value, app.NormalAlveoliColorEditField_B.Value];
            app.NORMAL_AIRWAY_COLOR = [app.NormalAirwayColorEditField_R.Value, app.NormalAirwayColorEditField_G.Value, app.NormalAirwayColorEditField_B.Value];
            app.GRADE_1_COLOR = [app.Grade1ColorEditField_R.Value, app.Grade1ColorEditField_G.Value, app.Grade1ColorEditField_B.Value];
            app.GRADE_2_COLOR = [app.Grade2ColorEditField_R.Value, app.Grade2ColorEditField_G.Value, app.Grade2ColorEditField_B.Value];
            app.GRADE_3_COLOR = [app.Grade3ColorEditField_R.Value, app.Grade3ColorEditField_G.Value, app.Grade3ColorEditField_B.Value];
            app.GRADE_4_COLOR = [app.Grade4ColorEditField_R.Value, app.Grade4ColorEditField_G.Value, app.Grade4ColorEditField_B.Value];
            app.BACKGROUND_COLOR = [app.BackgroundColorEditField_R.Value, app.BackgroundColorEditField_G.Value, app.BackgroundColorEditField_B.Value];
            app.SKIPPED_PATCH_COLOR = [app.SkippedPatchColorEditField_R.Value, app.SkippedPatchColorEditField_G.Value, app.SkippedPatchColorEditField_B.Value];

            %Output Image Scaling tab
            app.OUTPUT_GRADE_IMAGE_SCALE = app.GradeMapScalingSlider.Value/100;
            app.MAKE_SEGMENTATION_IMAGE = [app.MaketumorsegmentationimageCheckBox.Value];
            app.OUTPUT_SEGMENTATION_IMAGE_SCALE = app.SegmentationScalingSlider.Value/100;
            app.OUTPUT_NORMALIZED_IMAGE_SCALE = app.StainNormalizedImageScalingSlider.Value/100;



            % Begin analysis
            runglassai(app);
        end

        % Button pushed function: OutputFolderButton
        function OutputFolderButtonPushed(app, event)
            % Get output path from user
            app.OUTPUT_PATH=uigetdir;

            % handle 'cancel' button press from UI  (val == 0)
            if app.OUTPUT_PATH == 0
                app.OUTPUT_PATH = "";
                % if value is already defined, restore OUTPUT_PATH value
                if ~isempty(app.OutputFolderLocationLabel.Text)
                    app.OUTPUT_PATH = app.OutputFolderLocationLabel.Text;
                end
            else
                app.OutputFolderLocationLabel.Text=app.OUTPUT_PATH;  % Display selected output path
            end

            % Refresh figure to update OutputFolderLocationLabel
            app.GLASSAIUIFigure.Visible = 'off';
            app.GLASSAIUIFigure.Visible = 'on';

            % Ready check
            if isfolder(app.OUTPUT_PATH) % Green light if output folder exists
                app.OutputFolderLamp.Color=[0,1,0];
                runcheck(app);
            else
                app.OutputFolderLamp.Color=[1,0,0];
                runcheck(app);
            end
        end

        % Close request function: GLASSAIUIFigure
        function GLASSAIUIFigureCloseRequest(app, event)
            cleanUpGLASSAI(app)
            delete(app)
        end

        % Value changed function: BackgroundColorEditField_B, 
        % BackgroundColorEditField_G, BackgroundColorEditField_R, 
        % Grade1ColorEditField_B, Grade1ColorEditField_G, 
        % Grade1ColorEditField_R, Grade2ColorEditField_B, 
        % Grade2ColorEditField_G, Grade2ColorEditField_R, 
        % Grade3ColorEditField_B, Grade3ColorEditField_G, 
        % Grade3ColorEditField_R, Grade4ColorEditField_B, 
        % Grade4ColorEditField_G, Grade4ColorEditField_R, 
        % NormalAirwayColorEditField_B, 
        % NormalAirwayColorEditField_G, 
        % NormalAirwayColorEditField_R, 
        % NormalAlveoliColorEditField_B, 
        % NormalAlveoliColorEditField_G, 
        % NormalAlveoliColorEditField_R, 
        % SkippedPatchColorEditField_B, 
        % SkippedPatchColorEditField_G, SkippedPatchColorEditField_R
        function ColorMappingValueChanged(app, event)
            %change lamp colors to preview set color values.
            %Convert from 0-255 RGB scale to 0-1 RGB scale.
            app.NormlaAlveoliLamp.Color = [app.NormalAlveoliColorEditField_R.Value/255, app.NormalAlveoliColorEditField_G.Value/255, app.NormalAlveoliColorEditField_B.Value/255];
            app.NormalAirwayLamp.Color = [app.NormalAirwayColorEditField_R.Value/255, app.NormalAirwayColorEditField_G.Value/255, app.NormalAirwayColorEditField_B.Value/255];
            app.Grade1Lamp.Color = [app.Grade1ColorEditField_R.Value/255, app.Grade1ColorEditField_G.Value/255, app.Grade1ColorEditField_B.Value/255];
            app.Grade2Lamp.Color = [app.Grade2ColorEditField_R.Value/255, app.Grade2ColorEditField_G.Value/255, app.Grade2ColorEditField_B.Value/255];
            app.Grade3Lamp.Color = [app.Grade3ColorEditField_R.Value/255, app.Grade3ColorEditField_G.Value/255, app.Grade3ColorEditField_B.Value/255];
            app.Grade4Lamp.Color = [app.Grade4ColorEditField_R.Value/255, app.Grade4ColorEditField_G.Value/255, app.Grade4ColorEditField_B.Value/255];
            app.BackgroundLamp.Color = [app.BackgroundColorEditField_R.Value/255, app.BackgroundColorEditField_G.Value/255, app.BackgroundColorEditField_B.Value/255];
            app.SkippedPatchLamp.Color = [app.SkippedPatchColorEditField_R.Value/255, app.SkippedPatchColorEditField_G.Value/255, app.SkippedPatchColorEditField_B.Value/255];
        end

        % Value changed function: GradeMapScalingSlider, 
        % SegmentationScalingSlider, 
        % StainNormalizedImageScalingSlider
        function DiscreteSliderValueChanged(app, event)
            % make sliders stick to major tick values only
            value = event.Source.Value;
            % determine which discrete option the current value is closest to.
            [~, minIdx] = min(abs(value - event.Source.MajorTicks(:)));
            % move the slider to that option
            event.Source.Value = event.Source.MajorTicks(minIdx);
        end

        % Button pushed function: ResetStainParametersButton
        function ResetStainParametersButtonPushed(app, event)
            % reset the values of the stain normalization panel to the
            % default values calculated from the slides used to train
            % GLASS-AI.
            app.HemRedInput.Value = 0.551;
            app.HemGreenInput.Value = 0.763;
            app.HemBlueInput.Value = 0.339;
            app.EosRedInput.Value = 0.171;
            app.EosGreenInput.Value = 0.883;
            app.EosBlueInput.Value = 0.384;
            app.NormMinimumTissuePercent.Value = 1;
            app.NormPseudomaxTolerance.Value = 1;
            app.NormTransparencyThreshold.Value = 0.25;
            app.NormBackgroundIntensity.Value = 235;
            %refresh colors on swatches
            app.HemSwatch.BackgroundColor = [1-app.HemRedInput.Value, 1-app.HemGreenInput.Value, 1-app.HemBlueInput.Value];
            app.EosSwatch.BackgroundColor = [1-app.EosRedInput.Value, 1-app.EosGreenInput.Value, 1-app.EosBlueInput.Value];
        end

        % Value changed function: EosBlueInput, EosGreenInput, 
        % EosRedInput, HemBlueInput, HemGreenInput, HemRedInput
        function StainVectorValueChanged(app, event)
            %change colors on swatches in Stain Normalization Parameters
            %tab
            app.HemSwatch.BackgroundColor = [1-app.HemRedInput.Value, 1-app.HemGreenInput.Value, 1-app.HemBlueInput.Value];
            app.EosSwatch.BackgroundColor = [1-app.EosRedInput.Value, 1-app.EosGreenInput.Value, 1-app.EosBlueInput.Value];
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create GLASSAIUIFigure and hide until all components are created
            app.GLASSAIUIFigure = uifigure('Visible', 'off');
            app.GLASSAIUIFigure.Position = [100 100 732 654];
            app.GLASSAIUIFigure.Name = 'GLASS-AI';
            app.GLASSAIUIFigure.CloseRequestFcn = createCallbackFcn(app, @GLASSAIUIFigureCloseRequest, true);

            % Create AnalysisOptionsPanel
            app.AnalysisOptionsPanel = uipanel(app.GLASSAIUIFigure);
            app.AnalysisOptionsPanel.Title = 'Analysis Options';
            app.AnalysisOptionsPanel.BackgroundColor = [0.902 0.902 0.902];
            app.AnalysisOptionsPanel.FontAngle = 'italic';
            app.AnalysisOptionsPanel.FontWeight = 'bold';
            app.AnalysisOptionsPanel.Position = [10 344 306 139];

            % Create Analysisblocksize20100Label
            app.Analysisblocksize20100Label = uilabel(app.AnalysisOptionsPanel);
            app.Analysisblocksize20100Label.HorizontalAlignment = 'right';
            app.Analysisblocksize20100Label.Tooltip = {'Set number of image patches to analyze per batch. Lower values will require less RAM, but will take longer to process.'};
            app.Analysisblocksize20100Label.Position = [15 88 171 28];
            app.Analysisblocksize20100Label.Text = 'Analysis block size (20 – 100)';

            % Create AnalysisBlockSizeInput
            app.AnalysisBlockSizeInput = uispinner(app.AnalysisOptionsPanel);
            app.AnalysisBlockSizeInput.Limits = [20 100];
            app.AnalysisBlockSizeInput.RoundFractionalValues = 'on';
            app.AnalysisBlockSizeInput.ValueDisplayFormat = '%.0f';
            app.AnalysisBlockSizeInput.Tooltip = {'Set number (NxN) of image patches to analyze per batch. Lower values will require less RAM, but will increase analysis time.'};
            app.AnalysisBlockSizeInput.Position = [193 91 77 22];
            app.AnalysisBlockSizeInput.Value = 40;

            % Create OverwriteSlideSummaryInput
            app.OverwriteSlideSummaryInput = uicheckbox(app.AnalysisOptionsPanel);
            app.OverwriteSlideSummaryInput.Tooltip = {'When checked, GLASS-AI will append any new whole slide summaries onto an exisiting "Whole slide summary.xlsx" file in the output folder.'; ''; 'Otherwise, GLASS-AI will overwrite any existing "Whole slide summary.xlsx" file with the results from the next analysis run.'};
            app.OverwriteSlideSummaryInput.Text = 'Append to existing image summary data';
            app.OverwriteSlideSummaryInput.Position = [12 67 267 28];
            app.OverwriteSlideSummaryInput.Value = true;

            % Create LowmemorymodeSwitchLabel
            app.LowmemorymodeSwitchLabel = uilabel(app.AnalysisOptionsPanel);
            app.LowmemorymodeSwitchLabel.Tooltip = {'Reduces memory requirements by writing analysis blocks to disk. This will significantly slow down processing speed, but also reduces the amount of memory needed to analyze large images.'};
            app.LowmemorymodeSwitchLabel.Position = [107 1 109 22];
            app.LowmemorymodeSwitchLabel.Text = 'Low memory mode';

            % Create LowmemorymodeSwitch
            app.LowmemorymodeSwitch = uiswitch(app.AnalysisOptionsPanel, 'slider');
            app.LowmemorymodeSwitch.Tooltip = {'Reduces memory requirements by writing analysis blocks to disk. This will significantly slow down processing speed, but also reduces the amount of memory needed to analyze large images.'};
            app.LowmemorymodeSwitch.Position = [33 3 45 20];

            % Create PreviewoutputimagesSwitchLabel
            app.PreviewoutputimagesSwitchLabel = uilabel(app.AnalysisOptionsPanel);
            app.PreviewoutputimagesSwitchLabel.Tooltip = {'Generate preview images of outputs after analysis completes. Disabling this option will speed up analysis.'};
            app.PreviewoutputimagesSwitchLabel.Position = [107 23 128 22];
            app.PreviewoutputimagesSwitchLabel.Text = 'Preview output images';

            % Create PreviewoutputimagesSwitch
            app.PreviewoutputimagesSwitch = uiswitch(app.AnalysisOptionsPanel, 'slider');
            app.PreviewoutputimagesSwitch.Tooltip = {'Generate preview images of outputs after analysis completes. Disabling this option will speed up analysis.'};
            app.PreviewoutputimagesSwitch.Position = [33 25 45 20];
            app.PreviewoutputimagesSwitch.Value = 'On';

            % Create NormalizestainingSwitchLabel
            app.NormalizestainingSwitchLabel = uilabel(app.AnalysisOptionsPanel);
            app.NormalizestainingSwitchLabel.Tooltip = {'Perform stain normalization step before GLASS-AI analysis. This option is recommended to improve consistency of analysis by GLASS-AI. If GLASS-AI performs well without normalization, disabling will slightly improve analysis time. The normalized H&E image will be output alongside GLASS-AI results.'};
            app.NormalizestainingSwitchLabel.Position = [107 45 104 22];
            app.NormalizestainingSwitchLabel.Text = 'Normalize staining';

            % Create NormalizestainingSwitch
            app.NormalizestainingSwitch = uiswitch(app.AnalysisOptionsPanel, 'slider');
            app.NormalizestainingSwitch.Tooltip = {'Perform stain normalization step before GLASS-AI analysis. This option is recommended to improve consistency of analysis by GLASS-AI. If GLASS-AI performs well without normalization, disabling will slightly improve analysis time. The normalized H&E image will be output alongside GLASS-AI results.'};
            app.NormalizestainingSwitch.Position = [33 47 45 20];
            app.NormalizestainingSwitch.Value = 'On';

            % Create BrowseButton
            app.BrowseButton = uibutton(app.GLASSAIUIFigure, 'push');
            app.BrowseButton.ButtonPushedFcn = createCallbackFcn(app, @BrowseButtonPushed, true);
            app.BrowseButton.Tooltip = {'Select the directory that contains your images for analysis. All SVS and TIFF images in the selected directory will be displayed in File Name Table below for selection.'};
            app.BrowseButton.Position = [216 570 100 24];
            app.BrowseButton.Text = 'Browse';

            % Create InputFolderLocationLabel
            app.InputFolderLocationLabel = uilabel(app.GLASSAIUIFigure);
            app.InputFolderLocationLabel.BackgroundColor = [1 1 1];
            app.InputFolderLocationLabel.Position = [329 570 361 24];
            app.InputFolderLocationLabel.Text = 'Input Folder Location';

            % Create FileTable
            app.FileTable = uitable(app.GLASSAIUIFigure);
            app.FileTable.ColumnName = {'File Name'};
            app.FileTable.RowName = {};
            app.FileTable.CellSelectionCallback = createCallbackFcn(app, @FileTableCellSelection, true);
            app.FileTable.Position = [329 86 361 436];

            % Create RunButton
            app.RunButton = uibutton(app.GLASSAIUIFigure, 'push');
            app.RunButton.ButtonPushedFcn = createCallbackFcn(app, @RunButtonPushed, true);
            app.RunButton.FontSize = 18;
            app.RunButton.FontWeight = 'bold';
            app.RunButton.Enable = 'off';
            app.RunButton.Position = [590 30 100 46];
            app.RunButton.Text = 'Run';

            % Create OutputFolderButton
            app.OutputFolderButton = uibutton(app.GLASSAIUIFigure, 'push');
            app.OutputFolderButton.ButtonPushedFcn = createCallbackFcn(app, @OutputFolderButtonPushed, true);
            app.OutputFolderButton.Tooltip = {'Select an output directory for GLASS-AI.'};
            app.OutputFolderButton.Position = [216 533 100 24];
            app.OutputFolderButton.Text = 'Output folder';

            % Create OutputFolderLocationLabel
            app.OutputFolderLocationLabel = uilabel(app.GLASSAIUIFigure);
            app.OutputFolderLocationLabel.BackgroundColor = [1 1 1];
            app.OutputFolderLocationLabel.Position = [329 533 361 24];
            app.OutputFolderLocationLabel.Text = 'Output Folder Location';

            % Create InputFolderLamp
            app.InputFolderLamp = uilamp(app.GLASSAIUIFigure);
            app.InputFolderLamp.Tooltip = {'Red: Select input folder with valid image files (.tif, .tiff, or .svs)'};
            app.InputFolderLamp.Position = [697 572 20 20];
            app.InputFolderLamp.Color = [1 0 0];

            % Create OutputFolderLamp
            app.OutputFolderLamp = uilamp(app.GLASSAIUIFigure);
            app.OutputFolderLamp.Tooltip = {'Red: Select valid output folder'};
            app.OutputFolderLamp.Position = [697 535 20 20];
            app.OutputFolderLamp.Color = [1 0 0];

            % Create Step1Label
            app.Step1Label = uilabel(app.GLASSAIUIFigure);
            app.Step1Label.FontWeight = 'bold';
            app.Step1Label.Position = [10 571 153 22];
            app.Step1Label.Text = 'Step 1: Select input folder';

            % Create Step2Label
            app.Step2Label = uilabel(app.GLASSAIUIFigure);
            app.Step2Label.FontWeight = 'bold';
            app.Step2Label.Position = [10 534 162 22];
            app.Step2Label.Text = 'Step 2: Select output folder';

            % Create Step3Label
            app.Step3Label = uilabel(app.GLASSAIUIFigure);
            app.Step3Label.FontWeight = 'bold';
            app.Step3Label.Position = [10 492 306 30];
            app.Step3Label.Text = 'Step 3: Select files to analyze with GLASS-AI';

            % Create GLASSAILabel
            app.GLASSAILabel = uilabel(app.GLASSAIUIFigure);
            app.GLASSAILabel.HorizontalAlignment = 'center';
            app.GLASSAILabel.WordWrap = 'on';
            app.GLASSAILabel.FontSize = 20;
            app.GLASSAILabel.FontWeight = 'bold';
            app.GLASSAILabel.Position = [118 601 556 50];
            app.GLASSAILabel.Text = 'GLASS-AI: Grading of Lung Adenocarcinoma with Simultaneous Segmentation by an Artificial Intelligence';

            % Create StatusLabel
            app.StatusLabel = uilabel(app.GLASSAIUIFigure);
            app.StatusLabel.BackgroundColor = [1 1 1];
            app.StatusLabel.VerticalAlignment = 'top';
            app.StatusLabel.WordWrap = 'on';
            app.StatusLabel.Position = [217 30 361 45];
            app.StatusLabel.Text = '';

            % Create FileSelectLamp
            app.FileSelectLamp = uilamp(app.GLASSAIUIFigure);
            app.FileSelectLamp.Position = [697 497 20 20];
            app.FileSelectLamp.Color = [1 0 0];

            % Create RunCheckLamp
            app.RunCheckLamp = uilamp(app.GLASSAIUIFigure);
            app.RunCheckLamp.Position = [697 44 20 20];
            app.RunCheckLamp.Color = [1 0 0];

            % Create RUOLabel
            app.RUOLabel = uilabel(app.GLASSAIUIFigure);
            app.RUOLabel.HorizontalAlignment = 'center';
            app.RUOLabel.FontWeight = 'bold';
            app.RUOLabel.Position = [217 9 352 22];
            app.RUOLabel.Text = 'For reseach use only— not for use in diagnostic procedures';

            % Create CopyrightLabel
            app.CopyrightLabel = uilabel(app.GLASSAIUIFigure);
            app.CopyrightLabel.HorizontalAlignment = 'center';
            app.CopyrightLabel.Position = [22 9 167 22];
            app.CopyrightLabel.Text = '(c) Moffitt Cancer Center 2022';

            % Create Image
            app.Image = uiimage(app.GLASSAIUIFigure);
            app.Image.Tooltip = {'To contribute to the prevention and cure of cancer'};
            app.Image.Position = [21 33 170 42];
            app.Image.ImageSource = 'moffitt.png';

            % Create VersionLabel
            app.VersionLabel = uilabel(app.GLASSAIUIFigure);
            app.VersionLabel.Enable = 'off';
            app.VersionLabel.Position = [665 629 68 22];
            app.VersionLabel.Text = 'version 0.9r';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.GLASSAIUIFigure);
            app.TabGroup.Position = [10 85 306 250];

            % Create GLASSAIParametersTab
            app.GLASSAIParametersTab = uitab(app.TabGroup);
            app.GLASSAIParametersTab.Title = 'GLASS-AI Parameters';
            app.GLASSAIParametersTab.BackgroundColor = [0.902 0.902 0.902];

            % Create TumorSizeThresholdInput
            app.TumorSizeThresholdInput = uieditfield(app.GLASSAIParametersTab, 'numeric');
            app.TumorSizeThresholdInput.Limits = [0 Inf];
            app.TumorSizeThresholdInput.RoundFractionalValues = 'on';
            app.TumorSizeThresholdInput.ValueDisplayFormat = '%.0f';
            app.TumorSizeThresholdInput.Tooltip = {'Tumor with areas smaller than this size will be excluded from analyses and will not be shown on the tumor segmentation map or output tables.'};
            app.TumorSizeThresholdInput.Position = [225 107 71 22];
            app.TumorSizeThresholdInput.Value = 20;

            % Create TumorsizethresholdsqmLabel
            app.TumorsizethresholdsqmLabel = uilabel(app.GLASSAIParametersTab);
            app.TumorsizethresholdsqmLabel.HorizontalAlignment = 'right';
            app.TumorsizethresholdsqmLabel.Tooltip = {'Tumor with areas smaller than this size will be excluded from analyses and will not be shown on the tumor segmentation map.'};
            app.TumorsizethresholdsqmLabel.Position = [59 107 163 22];
            app.TumorsizethresholdsqmLabel.Text = 'Tumor size threshold (sq. µm)';

            % Create TumorMergeRadiusInput
            app.TumorMergeRadiusInput = uieditfield(app.GLASSAIParametersTab, 'numeric');
            app.TumorMergeRadiusInput.Limits = [0 Inf];
            app.TumorMergeRadiusInput.Tooltip = {'Tumors that are within this distance of each other will be combined during analysis.'};
            app.TumorMergeRadiusInput.Position = [226 76 71 22];
            app.TumorMergeRadiusInput.Value = 5;

            % Create TumormergeradiusmLabel
            app.TumormergeradiusmLabel = uilabel(app.GLASSAIParametersTab);
            app.TumormergeradiusmLabel.HorizontalAlignment = 'right';
            app.TumormergeradiusmLabel.Tooltip = {'Tumors that are within this distance of each other will be combined during analysis.'};
            app.TumormergeradiusmLabel.Position = [83 77 139 22];
            app.TumormergeradiusmLabel.Text = 'Tumor merge radius (µm)';

            % Create PatchTissueThresholdInput
            app.PatchTissueThresholdInput = uieditfield(app.GLASSAIParametersTab, 'numeric');
            app.PatchTissueThresholdInput.Limits = [0 100];
            app.PatchTissueThresholdInput.Tooltip = {'Image patches (224x224 pixels) with less than this percent of tissue will be skipped. This significantly improves analysis time. Skipped patches will be colored black in the output grade map (color can be changed in the Grade Map Colors tab). '};
            app.PatchTissueThresholdInput.Position = [225 196 71 22];

            % Create PatchtissuethresholdLabel
            app.PatchtissuethresholdLabel = uilabel(app.GLASSAIParametersTab);
            app.PatchtissuethresholdLabel.HorizontalAlignment = 'right';
            app.PatchtissuethresholdLabel.Tooltip = {'Image patches (224x224 pixels) with less than this percent of tissue will be skipped. This significantly improves analysis time. Skipped patches will be colored black in the output grade map (color can be changed in the Grade Map Colors tab). '};
            app.PatchtissuethresholdLabel.Position = [76 196 146 22];
            app.PatchtissuethresholdLabel.Text = 'Patch tissue threshold (%)';

            % Create SmoothingMethodDropDownLabel
            app.SmoothingMethodDropDownLabel = uilabel(app.GLASSAIParametersTab);
            app.SmoothingMethodDropDownLabel.HorizontalAlignment = 'right';
            app.SmoothingMethodDropDownLabel.Tooltip = {'Select a method for the smoothing kernel applied after grading. The smoothing operation is only applied to tumors (i.e., pixels labeled as normal are not affected). This reduces artifcacting from patch edges.'};
            app.SmoothingMethodDropDownLabel.Position = [113 167 109 22];
            app.SmoothingMethodDropDownLabel.Text = 'Smoothing Method';

            % Create SmoothingMethodDropDown
            app.SmoothingMethodDropDown = uidropdown(app.GLASSAIParametersTab);
            app.SmoothingMethodDropDown.Items = {'Median', 'Mode', 'Bilateral', 'Non-local means', 'Hamming window (tumor only)', 'None'};
            app.SmoothingMethodDropDown.Tooltip = {'Select a method for the smoothing kernel applied after grading. The smoothing operation is only applied to tumors (i.e., pixels labeled as normal are not affected). This reduces artifcacting from patch edges.'};
            app.SmoothingMethodDropDown.Position = [225 167 72 22];
            app.SmoothingMethodDropDown.Value = 'Median';

            % Create SmoothingSizeSpinnerLabel
            app.SmoothingSizeSpinnerLabel = uilabel(app.GLASSAIParametersTab);
            app.SmoothingSizeSpinnerLabel.HorizontalAlignment = 'right';
            app.SmoothingSizeSpinnerLabel.Tooltip = {'Defines the diameter of the smoothing kernel. Smaller numbers reduce the effect of the smoothing.'};
            app.SmoothingSizeSpinnerLabel.Position = [129 136 90 22];
            app.SmoothingSizeSpinnerLabel.Text = 'Smoothing Size';

            % Create SmoothingSizeSpinner
            app.SmoothingSizeSpinner = uispinner(app.GLASSAIParametersTab);
            app.SmoothingSizeSpinner.Step = 10;
            app.SmoothingSizeSpinner.Limits = [10 200];
            app.SmoothingSizeSpinner.RoundFractionalValues = 'on';
            app.SmoothingSizeSpinner.ValueDisplayFormat = '%.0f';
            app.SmoothingSizeSpinner.Tooltip = {'Defines the diameter of the smoothing kernel. Smaller numbers reduce the effect of the smoothing.'};
            app.SmoothingSizeSpinner.Position = [226 136 73 22];
            app.SmoothingSizeSpinner.Value = 200;

            % Create StainNormalizationParametersTab
            app.StainNormalizationParametersTab = uitab(app.TabGroup);
            app.StainNormalizationParametersTab.Title = 'Stain Normalization Parameters';
            app.StainNormalizationParametersTab.BackgroundColor = [0.902 0.902 0.902];

            % Create StainODMatrixPanel
            app.StainODMatrixPanel = uipanel(app.StainNormalizationParametersTab);
            app.StainODMatrixPanel.Tooltip = {'Define color vectors for hematoxylin and eosin stain. Default vectors were estimated from images used to train GLASS-AI.'};
            app.StainODMatrixPanel.Title = 'Stain OD Matrix';
            app.StainODMatrixPanel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.StainODMatrixPanel.FontWeight = 'bold';
            app.StainODMatrixPanel.Position = [175 57 126 162];

            % Create EosRedInput
            app.EosRedInput = uieditfield(app.StainODMatrixPanel, 'numeric');
            app.EosRedInput.Limits = [0 1];
            app.EosRedInput.ValueChangedFcn = createCallbackFcn(app, @StainVectorValueChanged, true);
            app.EosRedInput.Position = [74 100 48 22];
            app.EosRedInput.Value = 0.171;

            % Create EosGreenInput
            app.EosGreenInput = uieditfield(app.StainODMatrixPanel, 'numeric');
            app.EosGreenInput.Limits = [0 1];
            app.EosGreenInput.ValueChangedFcn = createCallbackFcn(app, @StainVectorValueChanged, true);
            app.EosGreenInput.Position = [74 77 48 22];
            app.EosGreenInput.Value = 0.883;

            % Create EosBlueInput
            app.EosBlueInput = uieditfield(app.StainODMatrixPanel, 'numeric');
            app.EosBlueInput.Limits = [0 1];
            app.EosBlueInput.ValueChangedFcn = createCallbackFcn(app, @StainVectorValueChanged, true);
            app.EosBlueInput.Position = [74 53 48 22];
            app.EosBlueInput.Value = 0.384;

            % Create HemLabel
            app.HemLabel = uilabel(app.StainODMatrixPanel);
            app.HemLabel.HorizontalAlignment = 'center';
            app.HemLabel.FontWeight = 'bold';
            app.HemLabel.Position = [29 117 35 22];
            app.HemLabel.Text = 'Hem.';

            % Create EosLabel
            app.EosLabel = uilabel(app.StainODMatrixPanel);
            app.EosLabel.HorizontalAlignment = 'center';
            app.EosLabel.FontWeight = 'bold';
            app.EosLabel.Position = [83 117 30 22];
            app.EosLabel.Text = 'Eos.';

            % Create REditFieldLabel
            app.REditFieldLabel = uilabel(app.StainODMatrixPanel);
            app.REditFieldLabel.HorizontalAlignment = 'right';
            app.REditFieldLabel.FontWeight = 'bold';
            app.REditFieldLabel.Position = [5 100 11 22];
            app.REditFieldLabel.Text = 'R';

            % Create HemRedInput
            app.HemRedInput = uieditfield(app.StainODMatrixPanel, 'numeric');
            app.HemRedInput.Limits = [0 1];
            app.HemRedInput.ValueChangedFcn = createCallbackFcn(app, @StainVectorValueChanged, true);
            app.HemRedInput.Position = [23 100 48 22];
            app.HemRedInput.Value = 0.551;

            % Create GEditFieldLabel
            app.GEditFieldLabel = uilabel(app.StainODMatrixPanel);
            app.GEditFieldLabel.HorizontalAlignment = 'right';
            app.GEditFieldLabel.FontWeight = 'bold';
            app.GEditFieldLabel.Position = [1 77 15 22];
            app.GEditFieldLabel.Text = 'G';

            % Create HemGreenInput
            app.HemGreenInput = uieditfield(app.StainODMatrixPanel, 'numeric');
            app.HemGreenInput.Limits = [0 1];
            app.HemGreenInput.ValueChangedFcn = createCallbackFcn(app, @StainVectorValueChanged, true);
            app.HemGreenInput.Position = [23 77 48 22];
            app.HemGreenInput.Value = 0.763;

            % Create BEditFieldLabel
            app.BEditFieldLabel = uilabel(app.StainODMatrixPanel);
            app.BEditFieldLabel.HorizontalAlignment = 'right';
            app.BEditFieldLabel.FontWeight = 'bold';
            app.BEditFieldLabel.Position = [2 53 14 22];
            app.BEditFieldLabel.Text = 'B';

            % Create HemBlueInput
            app.HemBlueInput = uieditfield(app.StainODMatrixPanel, 'numeric');
            app.HemBlueInput.Limits = [0 1];
            app.HemBlueInput.ValueChangedFcn = createCallbackFcn(app, @StainVectorValueChanged, true);
            app.HemBlueInput.Position = [23 53 48 22];
            app.HemBlueInput.Value = 0.339;

            % Create ResetStainParametersButton
            app.ResetStainParametersButton = uibutton(app.StainODMatrixPanel, 'push');
            app.ResetStainParametersButton.ButtonPushedFcn = createCallbackFcn(app, @ResetStainParametersButtonPushed, true);
            app.ResetStainParametersButton.Tooltip = {'Push to reset the stain normalization paramaters to the defualt values.'};
            app.ResetStainParametersButton.Position = [23 3 98 22];
            app.ResetStainParametersButton.Text = 'Reset to default';

            % Create EosSwatch
            app.EosSwatch = uilabel(app.StainODMatrixPanel);
            app.EosSwatch.BackgroundColor = [0.8314 0.1216 0.6196];
            app.EosSwatch.Position = [74 28 48 22];
            app.EosSwatch.Text = '    ';

            % Create HemSwatch
            app.HemSwatch = uilabel(app.StainODMatrixPanel);
            app.HemSwatch.BackgroundColor = [0.451 0.2392 0.6588];
            app.HemSwatch.Position = [23 28 48 22];
            app.HemSwatch.Text = '    ';

            % Create BEditFieldLabel_2
            app.BEditFieldLabel_2 = uilabel(app.StainODMatrixPanel);
            app.BEditFieldLabel_2.HorizontalAlignment = 'right';
            app.BEditFieldLabel_2.FontWeight = 'bold';
            app.BEditFieldLabel_2.Position = [5 30 11 22];
            app.BEditFieldLabel_2.Text = '=';

            % Create BackgroundIntensityLabel
            app.BackgroundIntensityLabel = uilabel(app.StainNormalizationParametersTab);
            app.BackgroundIntensityLabel.HorizontalAlignment = 'right';
            app.BackgroundIntensityLabel.Position = [13 196 119 22];
            app.BackgroundIntensityLabel.Text = 'Background Intensity';

            % Create NormBackgroundIntensity
            app.NormBackgroundIntensity = uieditfield(app.StainNormalizationParametersTab, 'numeric');
            app.NormBackgroundIntensity.Limits = [0 255];
            app.NormBackgroundIntensity.RoundFractionalValues = 'on';
            app.NormBackgroundIntensity.ValueDisplayFormat = '%.0f';
            app.NormBackgroundIntensity.Tooltip = {'Set the intensity of transmitted light in areas without tissues. Pure white would be 255.'};
            app.NormBackgroundIntensity.Position = [138 199 32 17];
            app.NormBackgroundIntensity.Value = 235;

            % Create TransparencyThresholdEditFieldLabel
            app.TransparencyThresholdEditFieldLabel = uilabel(app.StainNormalizationParametersTab);
            app.TransparencyThresholdEditFieldLabel.HorizontalAlignment = 'right';
            app.TransparencyThresholdEditFieldLabel.Position = [-2 167 134 22];
            app.TransparencyThresholdEditFieldLabel.Text = 'Transparency Threshold';

            % Create NormTransparencyThreshold
            app.NormTransparencyThreshold = uieditfield(app.StainNormalizationParametersTab, 'numeric');
            app.NormTransparencyThreshold.Limits = [0 1];
            app.NormTransparencyThreshold.Tooltip = {'Set the minimum stain OD needed to include a pixel for normalization. '};
            app.NormTransparencyThreshold.Position = [138 170 32 17];
            app.NormTransparencyThreshold.Value = 0.25;

            % Create PseudomaxToleranceEditFieldLabel
            app.PseudomaxToleranceEditFieldLabel = uilabel(app.StainNormalizationParametersTab);
            app.PseudomaxToleranceEditFieldLabel.HorizontalAlignment = 'right';
            app.PseudomaxToleranceEditFieldLabel.Position = [8 138 124 22];
            app.PseudomaxToleranceEditFieldLabel.Text = 'Pseudomax Tolerance';

            % Create NormPseudomaxTolerance
            app.NormPseudomaxTolerance = uieditfield(app.StainNormalizationParametersTab, 'numeric');
            app.NormPseudomaxTolerance.Limits = [0 49];
            app.NormPseudomaxTolerance.RoundFractionalValues = 'on';
            app.NormPseudomaxTolerance.ValueDisplayFormat = '%.0f';
            app.NormPseudomaxTolerance.Tooltip = {'Set the range of staining intensity to output in normalized image. Exludes this percentage of pixels based on pseudointensity histogram.'};
            app.NormPseudomaxTolerance.Position = [138 140 32 17];
            app.NormPseudomaxTolerance.Value = 1;

            % Create MinimumTissuePercentEditFieldLabel
            app.MinimumTissuePercentEditFieldLabel = uilabel(app.StainNormalizationParametersTab);
            app.MinimumTissuePercentEditFieldLabel.HorizontalAlignment = 'right';
            app.MinimumTissuePercentEditFieldLabel.Position = [-2 109 138 22];
            app.MinimumTissuePercentEditFieldLabel.Text = 'Minimum Tissue Percent';

            % Create NormMinimumTissuePercent
            app.NormMinimumTissuePercent = uieditfield(app.StainNormalizationParametersTab, 'numeric');
            app.NormMinimumTissuePercent.Limits = [0 100];
            app.NormMinimumTissuePercent.RoundFractionalValues = 'on';
            app.NormMinimumTissuePercent.Tooltip = {'Set the minimum percentage of opaque/stained pixels that must be present in an image patch to perform stain normalization.'};
            app.NormMinimumTissuePercent.Position = [138 112 32 17];
            app.NormMinimumTissuePercent.Value = 1;

            % Create GradeMapColorsTab
            app.GradeMapColorsTab = uitab(app.TabGroup);
            app.GradeMapColorsTab.Title = 'Grade Map Colors';

            % Create CLASSLabel
            app.CLASSLabel = uilabel(app.GradeMapColorsTab);
            app.CLASSLabel.HorizontalAlignment = 'center';
            app.CLASSLabel.FontWeight = 'bold';
            app.CLASSLabel.Position = [11 196 109 22];
            app.CLASSLabel.Text = 'CLASS';

            % Create RLabel
            app.RLabel = uilabel(app.GradeMapColorsTab);
            app.RLabel.HorizontalAlignment = 'center';
            app.RLabel.FontWeight = 'bold';
            app.RLabel.Position = [138 196 35 22];
            app.RLabel.Text = 'R';

            % Create GLabel
            app.GLabel = uilabel(app.GradeMapColorsTab);
            app.GLabel.HorizontalAlignment = 'center';
            app.GLabel.FontWeight = 'bold';
            app.GLabel.Position = [183 196 35 22];
            app.GLabel.Text = 'G';

            % Create BLabel
            app.BLabel = uilabel(app.GradeMapColorsTab);
            app.BLabel.HorizontalAlignment = 'center';
            app.BLabel.FontWeight = 'bold';
            app.BLabel.Position = [228 196 35 22];
            app.BLabel.Text = 'B';

            % Create NormlaAlveoliLamp
            app.NormlaAlveoliLamp = uilamp(app.GradeMapColorsTab);
            app.NormlaAlveoliLamp.Position = [276 178 20 20];
            app.NormlaAlveoliLamp.Color = [0 1 1];

            % Create NormalAirwayLamp
            app.NormalAirwayLamp = uilamp(app.GradeMapColorsTab);
            app.NormalAirwayLamp.Position = [276 154 20 20];
            app.NormalAirwayLamp.Color = [1 0 1];

            % Create Grade1Lamp
            app.Grade1Lamp = uilamp(app.GradeMapColorsTab);
            app.Grade1Lamp.Position = [276 130 20 20];

            % Create Grade2Lamp
            app.Grade2Lamp = uilamp(app.GradeMapColorsTab);
            app.Grade2Lamp.Position = [276 106 20 20];
            app.Grade2Lamp.Color = [0 0 1];

            % Create Grade3Lamp
            app.Grade3Lamp = uilamp(app.GradeMapColorsTab);
            app.Grade3Lamp.Position = [276 82 20 20];
            app.Grade3Lamp.Color = [1 1 0];

            % Create Grade4Lamp
            app.Grade4Lamp = uilamp(app.GradeMapColorsTab);
            app.Grade4Lamp.Position = [276 56 20 20];
            app.Grade4Lamp.Color = [1 0 0];

            % Create BackgroundLamp
            app.BackgroundLamp = uilamp(app.GradeMapColorsTab);
            app.BackgroundLamp.Position = [276 31 20 20];
            app.BackgroundLamp.Color = [1 1 1];

            % Create SkippedPatchLamp
            app.SkippedPatchLamp = uilamp(app.GradeMapColorsTab);
            app.SkippedPatchLamp.Position = [276 7 20 20];
            app.SkippedPatchLamp.Color = [0 0 0];

            % Create NormalAlveoliColorEditFieldLabel_4
            app.NormalAlveoliColorEditFieldLabel_4 = uilabel(app.GradeMapColorsTab);
            app.NormalAlveoliColorEditFieldLabel_4.HorizontalAlignment = 'right';
            app.NormalAlveoliColorEditFieldLabel_4.Tooltip = {'Define color for "Grade 2 LUAD" pixels on output grade map.'};
            app.NormalAlveoliColorEditFieldLabel_4.Position = [4 105 116 22];
            app.NormalAlveoliColorEditFieldLabel_4.Text = 'Grade 2 LUAD Color';

            % Create Grade2ColorEditField_R
            app.Grade2ColorEditField_R = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade2ColorEditField_R.Limits = [0 255];
            app.Grade2ColorEditField_R.RoundFractionalValues = 'on';
            app.Grade2ColorEditField_R.ValueDisplayFormat = '%.0f';
            app.Grade2ColorEditField_R.ValueChangedFcn = createCallbackFcn(app, @ColorMappingValueChanged, true);
            app.Grade2ColorEditField_R.Tooltip = {'Define color for "Grade 2 LUAD" pixels on output grade map.'};
            app.Grade2ColorEditField_R.Position = [135 104 39 22];

            % Create Grade2ColorEditField_G
            app.Grade2ColorEditField_G = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade2ColorEditField_G.Limits = [0 255];
            app.Grade2ColorEditField_G.RoundFractionalValues = 'on';
            app.Grade2ColorEditField_G.ValueDisplayFormat = '%.0f';
            app.Grade2ColorEditField_G.ValueChangedFcn = createCallbackFcn(app, @ColorMappingValueChanged, true);
            app.Grade2ColorEditField_G.Tooltip = {'Define color for "Grade 2 LUAD" pixels on output grade map.'};
            app.Grade2ColorEditField_G.Position = [180 104 39 22];

            % Create Grade2ColorEditField_B
            app.Grade2ColorEditField_B = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade2ColorEditField_B.Limits = [0 255];
            app.Grade2ColorEditField_B.RoundFractionalValues = 'on';
            app.Grade2ColorEditField_B.ValueDisplayFormat = '%.0f';
            app.Grade2ColorEditField_B.ValueChangedFcn = createCallbackFcn(app, @ColorMappingValueChanged, true);
            app.Grade2ColorEditField_B.Tooltip = {'Define color for "Grade 2 LUAD" pixels on output grade map.'};
            app.Grade2ColorEditField_B.Position = [225 104 39 22];
            app.Grade2ColorEditField_B.Value = 255;

            % Create NormalAlveoliColorEditFieldLabel_3
            app.NormalAlveoliColorEditFieldLabel_3 = uilabel(app.GradeMapColorsTab);
            app.NormalAlveoliColorEditFieldLabel_3.HorizontalAlignment = 'right';
            app.NormalAlveoliColorEditFieldLabel_3.Tooltip = {'Define color for "Grade 1 LUAD" pixels on output grade map.'};
            app.NormalAlveoliColorEditFieldLabel_3.Position = [4 129 116 22];
            app.NormalAlveoliColorEditFieldLabel_3.Text = 'Grade 1 LUAD Color';

            % Create Grade1ColorEditField_R
            app.Grade1ColorEditField_R = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade1ColorEditField_R.Limits = [0 255];
            app.Grade1ColorEditField_R.RoundFractionalValues = 'on';
            app.Grade1ColorEditField_R.ValueDisplayFormat = '%.0f';
            app.Grade1ColorEditField_R.ValueChangedFcn = createCallbackFcn(app, @ColorMappingValueChanged, true);
            app.Grade1ColorEditField_R.Tooltip = {'Define color for "Grade 1 LUAD" pixels on output grade map.'};
            app.Grade1ColorEditField_R.Position = [135 129 39 22];

            % Create Grade1ColorEditField_G
            app.Grade1ColorEditField_G = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade1ColorEditField_G.Limits = [0 255];
            app.Grade1ColorEditField_G.RoundFractionalValues = 'on';
            app.Grade1ColorEditField_G.ValueDisplayFormat = '%.0f';
            app.Grade1ColorEditField_G.ValueChangedFcn = createCallbackFcn(app, @ColorMappingValueChanged, true);
            app.Grade1ColorEditField_G.Tooltip = {'Define color for "Grade 1 LUAD" pixels on output grade map.'};
            app.Grade1ColorEditField_G.Position = [180 129 39 22];
            app.Grade1ColorEditField_G.Value = 255;

            % Create Grade1ColorEditField_B
            app.Grade1ColorEditField_B = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade1ColorEditField_B.Limits = [0 255];
            app.Grade1ColorEditField_B.RoundFractionalValues = 'on';
            app.Grade1ColorEditField_B.ValueDisplayFormat = '%.0f';
            app.Grade1ColorEditField_B.ValueChangedFcn = createCallbackFcn(app, @ColorMappingValueChanged, true);
            app.Grade1ColorEditField_B.Tooltip = {'Define color for "Grade 1 LUAD" pixels on output grade map.'};
            app.Grade1ColorEditField_B.Position = [225 129 39 22];

            % Create NormalAlveoliColorEditFieldLabel_2
            app.NormalAlveoliColorEditFieldLabel_2 = uilabel(app.GradeMapColorsTab);
            app.NormalAlveoliColorEditFieldLabel_2.HorizontalAlignment = 'right';
            app.NormalAlveoliColorEditFieldLabel_2.Tooltip = {'Define color for "Normal Airway" pixels on output grade map.'};
            app.NormalAlveoliColorEditFieldLabel_2.Position = [4 153 116 22];
            app.NormalAlveoliColorEditFieldLabel_2.Text = 'Normal Airway Color';

            % Create NormalAirwayColorEditField_R
            app.NormalAirwayColorEditField_R = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.NormalAirwayColorEditField_R.Limits = [0 255];
            app.NormalAirwayColorEditField_R.RoundFractionalValues = 'on';
            app.NormalAirwayColorEditField_R.ValueDisplayFormat = '%.0f';
            app.NormalAirwayColorEditField_R.ValueChangedFcn = createCallbackFcn(app, @ColorMappingValueChanged, true);
            app.NormalAirwayColorEditField_R.Tooltip = {'Define color for "Normal Airway" pixels on output grade map.'};
            app.NormalAirwayColorEditField_R.Position = [135 153 39 22];
            app.NormalAirwayColorEditField_R.Value = 255;

            % Create NormalAirwayColorEditField_G
            app.NormalAirwayColorEditField_G = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.NormalAirwayColorEditField_G.Limits = [0 255];
            app.NormalAirwayColorEditField_G.RoundFractionalValues = 'on';
            app.NormalAirwayColorEditField_G.ValueDisplayFormat = '%.0f';
            app.NormalAirwayColorEditField_G.ValueChangedFcn = createCallbackFcn(app, @ColorMappingValueChanged, true);
            app.NormalAirwayColorEditField_G.Tooltip = {'Define color for "Normal Airway" pixels on output grade map.'};
            app.NormalAirwayColorEditField_G.Position = [180 153 39 22];

            % Create NormalAirwayColorEditField_B
            app.NormalAirwayColorEditField_B = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.NormalAirwayColorEditField_B.Limits = [0 255];
            app.NormalAirwayColorEditField_B.RoundFractionalValues = 'on';
            app.NormalAirwayColorEditField_B.ValueDisplayFormat = '%.0f';
            app.NormalAirwayColorEditField_B.ValueChangedFcn = createCallbackFcn(app, @ColorMappingValueChanged, true);
            app.NormalAirwayColorEditField_B.Tooltip = {'Define color for "Normal Airway" pixels on output grade map.'};
            app.NormalAirwayColorEditField_B.Position = [225 153 39 22];
            app.NormalAirwayColorEditField_B.Value = 255;

            % Create NormalAlveoliColorEditFieldLabel
            app.NormalAlveoliColorEditFieldLabel = uilabel(app.GradeMapColorsTab);
            app.NormalAlveoliColorEditFieldLabel.HorizontalAlignment = 'right';
            app.NormalAlveoliColorEditFieldLabel.Tooltip = {'Define color for "Normal Avleoli" pixels on output grade map.'};
            app.NormalAlveoliColorEditFieldLabel.Position = [5 177 115 22];
            app.NormalAlveoliColorEditFieldLabel.Text = 'Normal Alveoli Color';

            % Create NormalAlveoliColorEditField_R
            app.NormalAlveoliColorEditField_R = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.NormalAlveoliColorEditField_R.Limits = [0 255];
            app.NormalAlveoliColorEditField_R.RoundFractionalValues = 'on';
            app.NormalAlveoliColorEditField_R.ValueDisplayFormat = '%.0f';
            app.NormalAlveoliColorEditField_R.ValueChangedFcn = createCallbackFcn(app, @ColorMappingValueChanged, true);
            app.NormalAlveoliColorEditField_R.Position = [135 177 39 22];

            % Create NormalAlveoliColorEditField_G
            app.NormalAlveoliColorEditField_G = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.NormalAlveoliColorEditField_G.Limits = [0 255];
            app.NormalAlveoliColorEditField_G.RoundFractionalValues = 'on';
            app.NormalAlveoliColorEditField_G.ValueDisplayFormat = '%.0f';
            app.NormalAlveoliColorEditField_G.ValueChangedFcn = createCallbackFcn(app, @ColorMappingValueChanged, true);
            app.NormalAlveoliColorEditField_G.Position = [180 177 39 22];
            app.NormalAlveoliColorEditField_G.Value = 255;

            % Create NormalAlveoliColorEditField_B
            app.NormalAlveoliColorEditField_B = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.NormalAlveoliColorEditField_B.Limits = [0 255];
            app.NormalAlveoliColorEditField_B.RoundFractionalValues = 'on';
            app.NormalAlveoliColorEditField_B.ValueDisplayFormat = '%.0f';
            app.NormalAlveoliColorEditField_B.ValueChangedFcn = createCallbackFcn(app, @ColorMappingValueChanged, true);
            app.NormalAlveoliColorEditField_B.Position = [225 177 39 22];
            app.NormalAlveoliColorEditField_B.Value = 255;

            % Create NormalAlveoliColorEditFieldLabel_5
            app.NormalAlveoliColorEditFieldLabel_5 = uilabel(app.GradeMapColorsTab);
            app.NormalAlveoliColorEditFieldLabel_5.HorizontalAlignment = 'right';
            app.NormalAlveoliColorEditFieldLabel_5.Tooltip = {'Define color for "Grade 3 LUAD" pixels on output grade map.'};
            app.NormalAlveoliColorEditFieldLabel_5.Position = [4 81 116 22];
            app.NormalAlveoliColorEditFieldLabel_5.Text = 'Grade 3 LUAD Color';

            % Create Grade3ColorEditField_R
            app.Grade3ColorEditField_R = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade3ColorEditField_R.Limits = [0 255];
            app.Grade3ColorEditField_R.RoundFractionalValues = 'on';
            app.Grade3ColorEditField_R.ValueDisplayFormat = '%.0f';
            app.Grade3ColorEditField_R.ValueChangedFcn = createCallbackFcn(app, @ColorMappingValueChanged, true);
            app.Grade3ColorEditField_R.Tooltip = {'Define color for "Grade 3 LUAD" pixels on output grade map.'};
            app.Grade3ColorEditField_R.Position = [135 80 39 22];
            app.Grade3ColorEditField_R.Value = 255;

            % Create Grade3ColorEditField_G
            app.Grade3ColorEditField_G = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade3ColorEditField_G.Limits = [0 255];
            app.Grade3ColorEditField_G.RoundFractionalValues = 'on';
            app.Grade3ColorEditField_G.ValueDisplayFormat = '%.0f';
            app.Grade3ColorEditField_G.ValueChangedFcn = createCallbackFcn(app, @ColorMappingValueChanged, true);
            app.Grade3ColorEditField_G.Tooltip = {'Define color for "Grade 3 LUAD" pixels on output grade map.'};
            app.Grade3ColorEditField_G.Position = [180 80 39 22];
            app.Grade3ColorEditField_G.Value = 255;

            % Create Grade3ColorEditField_B
            app.Grade3ColorEditField_B = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade3ColorEditField_B.Limits = [0 255];
            app.Grade3ColorEditField_B.RoundFractionalValues = 'on';
            app.Grade3ColorEditField_B.ValueDisplayFormat = '%.0f';
            app.Grade3ColorEditField_B.ValueChangedFcn = createCallbackFcn(app, @ColorMappingValueChanged, true);
            app.Grade3ColorEditField_B.Tooltip = {'Define color for "Grade 3 LUAD" pixels on output grade map.'};
            app.Grade3ColorEditField_B.Position = [225 80 39 22];

            % Create NormalAlveoliColorEditFieldLabel_6
            app.NormalAlveoliColorEditFieldLabel_6 = uilabel(app.GradeMapColorsTab);
            app.NormalAlveoliColorEditFieldLabel_6.HorizontalAlignment = 'right';
            app.NormalAlveoliColorEditFieldLabel_6.Tooltip = {'Define color for "Grade 4 LUAD" pixels on output grade map.'};
            app.NormalAlveoliColorEditFieldLabel_6.Position = [4 57 116 22];
            app.NormalAlveoliColorEditFieldLabel_6.Text = 'Grade 4 LUAD Color';

            % Create Grade4ColorEditField_R
            app.Grade4ColorEditField_R = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade4ColorEditField_R.Limits = [0 255];
            app.Grade4ColorEditField_R.RoundFractionalValues = 'on';
            app.Grade4ColorEditField_R.ValueDisplayFormat = '%.0f';
            app.Grade4ColorEditField_R.ValueChangedFcn = createCallbackFcn(app, @ColorMappingValueChanged, true);
            app.Grade4ColorEditField_R.Tooltip = {'Define color for "Grade 4 LUAD" pixels on output grade map.'};
            app.Grade4ColorEditField_R.Position = [135 56 39 22];
            app.Grade4ColorEditField_R.Value = 255;

            % Create Grade4ColorEditField_G
            app.Grade4ColorEditField_G = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade4ColorEditField_G.Limits = [0 255];
            app.Grade4ColorEditField_G.RoundFractionalValues = 'on';
            app.Grade4ColorEditField_G.ValueDisplayFormat = '%.0f';
            app.Grade4ColorEditField_G.ValueChangedFcn = createCallbackFcn(app, @ColorMappingValueChanged, true);
            app.Grade4ColorEditField_G.Tooltip = {'Define color for "Grade 4 LUAD" pixels on output grade map.'};
            app.Grade4ColorEditField_G.Position = [180 56 39 22];

            % Create Grade4ColorEditField_B
            app.Grade4ColorEditField_B = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade4ColorEditField_B.Limits = [0 255];
            app.Grade4ColorEditField_B.RoundFractionalValues = 'on';
            app.Grade4ColorEditField_B.ValueDisplayFormat = '%.0f';
            app.Grade4ColorEditField_B.ValueChangedFcn = createCallbackFcn(app, @ColorMappingValueChanged, true);
            app.Grade4ColorEditField_B.Tooltip = {'Define color for "Grade 4 LUAD" pixels on output grade map.'};
            app.Grade4ColorEditField_B.Position = [225 56 39 22];

            % Create BackgroudColorEditFieldLabel
            app.BackgroudColorEditFieldLabel = uilabel(app.GradeMapColorsTab);
            app.BackgroudColorEditFieldLabel.HorizontalAlignment = 'right';
            app.BackgroudColorEditFieldLabel.Tooltip = {'Define color for "Background" pixels on output grade map.'};
            app.BackgroudColorEditFieldLabel.Position = [17 31 103 22];
            app.BackgroudColorEditFieldLabel.Text = 'Background Color';

            % Create BackgroundColorEditField_R
            app.BackgroundColorEditField_R = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.BackgroundColorEditField_R.Limits = [0 255];
            app.BackgroundColorEditField_R.RoundFractionalValues = 'on';
            app.BackgroundColorEditField_R.ValueDisplayFormat = '%.0f';
            app.BackgroundColorEditField_R.ValueChangedFcn = createCallbackFcn(app, @ColorMappingValueChanged, true);
            app.BackgroundColorEditField_R.Tooltip = {'Define color for "Background" pixels on output grade map.'};
            app.BackgroundColorEditField_R.Position = [135 30 39 22];
            app.BackgroundColorEditField_R.Value = 255;

            % Create BackgroundColorEditField_G
            app.BackgroundColorEditField_G = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.BackgroundColorEditField_G.Limits = [0 255];
            app.BackgroundColorEditField_G.RoundFractionalValues = 'on';
            app.BackgroundColorEditField_G.ValueDisplayFormat = '%.0f';
            app.BackgroundColorEditField_G.ValueChangedFcn = createCallbackFcn(app, @ColorMappingValueChanged, true);
            app.BackgroundColorEditField_G.Tooltip = {'Define color for "Background" pixels on output grade map.'};
            app.BackgroundColorEditField_G.Position = [180 30 39 22];
            app.BackgroundColorEditField_G.Value = 255;

            % Create BackgroundColorEditField_B
            app.BackgroundColorEditField_B = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.BackgroundColorEditField_B.Limits = [0 255];
            app.BackgroundColorEditField_B.RoundFractionalValues = 'on';
            app.BackgroundColorEditField_B.ValueDisplayFormat = '%.0f';
            app.BackgroundColorEditField_B.ValueChangedFcn = createCallbackFcn(app, @ColorMappingValueChanged, true);
            app.BackgroundColorEditField_B.Tooltip = {'Define color for "Background" pixels on output grade map.'};
            app.BackgroundColorEditField_B.Position = [225 30 39 22];
            app.BackgroundColorEditField_B.Value = 255;

            % Create SkippedPatchColorEditFieldLabel
            app.SkippedPatchColorEditFieldLabel = uilabel(app.GradeMapColorsTab);
            app.SkippedPatchColorEditFieldLabel.HorizontalAlignment = 'right';
            app.SkippedPatchColorEditFieldLabel.Tooltip = {'Define color for pixels in skipped patches (based on tissue % defined in GLASS-AI analysis paramert tab.'};
            app.SkippedPatchColorEditFieldLabel.Position = [3 6 117 22];
            app.SkippedPatchColorEditFieldLabel.Text = 'Skipped Patch Color';

            % Create SkippedPatchColorEditField_R
            app.SkippedPatchColorEditField_R = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.SkippedPatchColorEditField_R.Limits = [0 255];
            app.SkippedPatchColorEditField_R.RoundFractionalValues = 'on';
            app.SkippedPatchColorEditField_R.ValueDisplayFormat = '%.0f';
            app.SkippedPatchColorEditField_R.ValueChangedFcn = createCallbackFcn(app, @ColorMappingValueChanged, true);
            app.SkippedPatchColorEditField_R.Tooltip = {'Define color for pixels in skipped patches (based on tissue % defined in GLASS-AI analysis paramert tab.'};
            app.SkippedPatchColorEditField_R.Position = [135 5 39 22];

            % Create SkippedPatchColorEditField_G
            app.SkippedPatchColorEditField_G = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.SkippedPatchColorEditField_G.Limits = [0 255];
            app.SkippedPatchColorEditField_G.RoundFractionalValues = 'on';
            app.SkippedPatchColorEditField_G.ValueDisplayFormat = '%.0f';
            app.SkippedPatchColorEditField_G.ValueChangedFcn = createCallbackFcn(app, @ColorMappingValueChanged, true);
            app.SkippedPatchColorEditField_G.Tooltip = {'Define color for pixels in skipped patches (based on tissue % defined in GLASS-AI analysis paramert tab.'};
            app.SkippedPatchColorEditField_G.Position = [180 5 39 22];

            % Create SkippedPatchColorEditField_B
            app.SkippedPatchColorEditField_B = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.SkippedPatchColorEditField_B.Limits = [0 255];
            app.SkippedPatchColorEditField_B.RoundFractionalValues = 'on';
            app.SkippedPatchColorEditField_B.ValueDisplayFormat = '%.0f';
            app.SkippedPatchColorEditField_B.ValueChangedFcn = createCallbackFcn(app, @ColorMappingValueChanged, true);
            app.SkippedPatchColorEditField_B.Tooltip = {'Define color for pixels in skipped patches (based on tissue % defined in GLASS-AI analysis paramert tab.'};
            app.SkippedPatchColorEditField_B.Position = [225 5 39 22];

            % Create OutputImageScalingTab
            app.OutputImageScalingTab = uitab(app.TabGroup);
            app.OutputImageScalingTab.Title = 'Output Image Scaling';

            % Create GradeMapScalingLabel
            app.GradeMapScalingLabel = uilabel(app.OutputImageScalingTab);
            app.GradeMapScalingLabel.HorizontalAlignment = 'right';
            app.GradeMapScalingLabel.Position = [13 184 109 22];
            app.GradeMapScalingLabel.Text = 'Grade Map Scaling';

            % Create GradeMapScalingSlider
            app.GradeMapScalingSlider = uislider(app.OutputImageScalingTab);
            app.GradeMapScalingSlider.Limits = [12.5 100];
            app.GradeMapScalingSlider.MajorTicks = [12.5 25 50 100];
            app.GradeMapScalingSlider.MajorTickLabels = {'1/8', '1/4', '1/2', 'FULL'};
            app.GradeMapScalingSlider.ValueChangedFcn = createCallbackFcn(app, @DiscreteSliderValueChanged, true);
            app.GradeMapScalingSlider.MinorTicks = [];
            app.GradeMapScalingSlider.Tooltip = {'Set the scaling factor used when generating the output tumor grade map. Default = 1/4'};
            app.GradeMapScalingSlider.Position = [134 194 150 3];
            app.GradeMapScalingSlider.Value = 25;

            % Create SegmentationScalingLabel
            app.SegmentationScalingLabel = uilabel(app.OutputImageScalingTab);
            app.SegmentationScalingLabel.HorizontalAlignment = 'right';
            app.SegmentationScalingLabel.Position = [-1 94 123 22];
            app.SegmentationScalingLabel.Text = 'Segmentation Scaling';

            % Create SegmentationScalingSlider
            app.SegmentationScalingSlider = uislider(app.OutputImageScalingTab);
            app.SegmentationScalingSlider.Limits = [12.5 100];
            app.SegmentationScalingSlider.MajorTicks = [12.5 25 50 100];
            app.SegmentationScalingSlider.MajorTickLabels = {'1/8', '1/4', '1/2', 'FULL'};
            app.SegmentationScalingSlider.ValueChangedFcn = createCallbackFcn(app, @DiscreteSliderValueChanged, true);
            app.SegmentationScalingSlider.MinorTicks = [];
            app.SegmentationScalingSlider.Tooltip = {'Set the scaling factor used when generating the output tumor segmentation map. Default = 1/2'};
            app.SegmentationScalingSlider.Position = [134 104 150 3];
            app.SegmentationScalingSlider.Value = 50;

            % Create StainNormalizedImageScalingLabel
            app.StainNormalizedImageScalingLabel = uilabel(app.OutputImageScalingTab);
            app.StainNormalizedImageScalingLabel.HorizontalAlignment = 'right';
            app.StainNormalizedImageScalingLabel.Position = [26 30 97 28];
            app.StainNormalizedImageScalingLabel.Text = {'Stain Normalized'; ' Image Scaling'};

            % Create StainNormalizedImageScalingSlider
            app.StainNormalizedImageScalingSlider = uislider(app.OutputImageScalingTab);
            app.StainNormalizedImageScalingSlider.Limits = [12.5 100];
            app.StainNormalizedImageScalingSlider.MajorTicks = [12.5 25 50 100];
            app.StainNormalizedImageScalingSlider.MajorTickLabels = {'1/8', '1/4', '1/2', 'FULL'};
            app.StainNormalizedImageScalingSlider.ValueChangedFcn = createCallbackFcn(app, @DiscreteSliderValueChanged, true);
            app.StainNormalizedImageScalingSlider.MinorTicks = [];
            app.StainNormalizedImageScalingSlider.Tooltip = {'Set the scaling factor used when generating the output stain normalized image. Default = FULL'};
            app.StainNormalizedImageScalingSlider.Position = [135 46 150 3];
            app.StainNormalizedImageScalingSlider.Value = 100;

            % Create MaketumorsegmentationimageCheckBox
            app.MaketumorsegmentationimageCheckBox = uicheckbox(app.OutputImageScalingTab);
            app.MaketumorsegmentationimageCheckBox.Tooltip = {'Make an output image with individual tumors segmented and labeled. The tumor labeling process can take some time and can be very memory inefficient when not using "Low Memory Mode".'};
            app.MaketumorsegmentationimageCheckBox.Text = 'Make tumor segmentation image';
            app.MaketumorsegmentationimageCheckBox.Position = [3 121 200 22];
            app.MaketumorsegmentationimageCheckBox.Value = true;

            % Create LinksTab
            app.LinksTab = uitab(app.TabGroup);
            app.LinksTab.Title = 'Links';

            % Create Hyperlink
            app.Hyperlink = uihyperlink(app.LinksTab);
            app.Hyperlink.URL = 'https://github.com/jlockhar/GLASS-AI';
            app.Hyperlink.Position = [11 174 170 22];
            app.Hyperlink.Text = 'GLASS-AI GitHub Repository';

            % Create Hyperlink_2
            app.Hyperlink_2 = uihyperlink(app.LinksTab);
            app.Hyperlink_2.Position = [11 196 130 22];
            app.Hyperlink_2.Text = 'GLASS-AI Manuscript';

            % Create Hyperlink_3
            app.Hyperlink_3 = uihyperlink(app.LinksTab);
            app.Hyperlink_3.URL = 'https://www.florescancerlab.org/';
            app.Hyperlink_3.Position = [11 152 143 22];
            app.Hyperlink_3.Text = 'The Flores Lab @ Moffitt';

            % Show the figure after all components are created
            app.GLASSAIUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = GLASS_AI_APP

            runningApp = getRunningApp(app);

            % Check for running singleton app
            if isempty(runningApp)

                % Create UIFigure and components
                createComponents(app)

                % Register the app with App Designer
                registerApp(app, app.GLASSAIUIFigure)

                % Execute the startup function
                runStartupFcn(app, @startupFcn)
            else

                % Focus the running singleton app
                figure(runningApp.GLASSAIUIFigure)

                app = runningApp;
            end

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.GLASSAIUIFigure)
        end
    end
end
