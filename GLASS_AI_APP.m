classdef GLASS_AI_APP_dev < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        GLASSAIUIFigure                 matlab.ui.Figure
        TabGroup                        matlab.ui.container.TabGroup
        GLASSAIParametersTab            matlab.ui.container.Tab
        AssignmentmethodDropDown        matlab.ui.control.DropDown
        AssignmentmethodDropDownLabel   matlab.ui.control.Label
        TumorgradethresholdEditField    matlab.ui.control.NumericEditField
        TumorgradethresholdEditFieldLabel  matlab.ui.control.Label
        AssignoverallgradetoeachtumorCheckBox  matlab.ui.control.CheckBox
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
        ConfidenceMapPaletteDropDown    matlab.ui.control.DropDown
        ConfidenceMappaletteDropDownLabel  matlab.ui.control.Label
        ConfidenceMapCheckBox           matlab.ui.control.CheckBox
        ConfidenceMapScalingSlider      matlab.ui.control.Slider
        ConfidenceMapScalingSliderLabel  matlab.ui.control.Label
        SegmentationImageCheckBox       matlab.ui.control.CheckBox
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
        ForceCPUCheckBox                matlab.ui.control.CheckBox
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
        GLASSAI_APP_VERSION = 'v1.0' % Version of GLASS-AI standalone app
        LAST_SELECTED_DIR % Path to last selected directory
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
        MAKE_SEGMENTATION_IMAGE % Generate labeled tumor segmentation image
        OUTPUT_SEGMENTATION_IMAGE_SCALE % scaling applied to segmentation output image
        OUTPUT_NORMALIZED_IMAGE_SCALE % scaling applied to stain normalized output image
        MAKE_CONFIDENCE_MAP % Output map of maximium activiation weight
        OUTPUT_CONFIDENCE_MAP_SCALE % scaling applied to predicted grade confidence map output image
        CONFIDENCE_MAP_COLOR % selected color map to use for making confidence map image
        PATCH_SIZE = [224, 224, 3]; % size of image patches given to neural network
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
        FORCE_CPU % Only use CPU for analysis even if GPU is available
        ASSIGN_OVERALL_GRADES % Assign overall grades to each tumor
        ASSIGN_GRADES_METHOD % Method to use for overall tumor grade assignment
        ASSIGN_GRADES_THRESHOLD % Percentage of tumor area required for grade assignment



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
        imageStartTime % Stopwatch for individual image
        imageRunTime %Store time elapsed since analysis was started on image
        SkipPatchFailed = 0; % Flag for showing alert once when patch skipping has failed
        LowMemoryMode % Store Low Memory Mode switch state at run start
        currentFileName % Store file name of the image being analyzed
        currentFileExt % Store extension of the image being analyzed
        currentFileNameExt % Store file name and extension of the image being analyzed
        currentFilePath % Store path to image being analyzed
        logFileName % name of log file
        logFilePath % location of log file
        ErrorAlertAlreadyCreated = false % Flag to store if an error has occured in a defined try block
    end % End Properties

    methods (Access = private)

        function runglassai(app)
            % Run GLASS-AI analysis on input images. Performs tumor
            % grading and segmentation on the input images using
            % the parameters set through the GUI. Outputs overlay
            % images and data sheets for further analysis.

            % clean up temporary folders on completion or termination
            cleanup = onCleanup(@()cleanUpGLASSAI(app));

            %% start analysis
            net = app.GLASS_AI;

            try % catch unexpected errors during any analysis step
                app.iImage = 0; %initialize image tracking counter to 0
                % process each image
                %- use currentImage because app properties (i.e., app.iImage)
                %- can't be used as iterators in a for loop
                for currentImage = 1 : app.nImages
                    app.iImage = app.iImage + 1;
                    
                    % start parallel processing pool if possible/allowed
                    %- do this for each image because pool may be destroyed 
                    %- if not used for an extended period of time
                    useGPU = canUseGPU  && ~app.FORCE_CPU;
                    if useGPU
                        startparpool(app);
                    end

                    % reset low memory mode to original value in case it was
                    % changed for previous image
                    %- low memory mode is automatically turned off if image is
                    %- smaller than one "Analysis Block" (app.IMAGE_BLOCK_SIZE)
                    %- in both dimensions
                    if app.LowMemoryMode == 1 %user defined
                        app.SPLIT_IMAGE = 1; %app defined
                    else
                        app.SPLIT_IMAGE = 0;
                    end

                    % get image file info
                    app.currentFilePath = app.SELECTED_PATHS{currentImage};
                    [~,app.currentFileName,app.currentFileExt] = fileparts(app.SELECTED_FILES{currentImage});
                    app.currentFileNameExt = strcat(app.currentFileName,app.currentFileExt);

                    fprintf("%s %0.0f %s\n","----- Start image",app.iImage,"-----")
                    fprintf("%s - %s %s\n",string(datetime),"Beginning analysis of", app.currentFileNameExt)
                    %start stopwatch for current image
                    app.imageStartTime = tic;
                    %_Status Update_%
                    statusupdate(app,"Loading image");
                    %%%%%%%%%%%%%%%%%

                    % read input image
                    try
                        [wholeImage] = readimage(app,app.currentFilePath);
                    catch ME
                        % alert user that an error occured if not already done
                        if ~app.ErrorAlertAlreadyCreated
                            message_text = "An error occured while loading the input image from " + app.currentFileName + "." +...
                                newline + "[ERROR MESSAGE]" + newline + ME.message;
                            uialert(app.GLASSAIUIFigure,message_text,"Image loading error");
                            app.ErrorAlertAlreadyCreated = true;
                        end
                        fprintf("%s - %s %s\n",string(datetime),"[ERROR]: An error occured while loading", app.currentFileNameExt)
                        %rethrow error to stop execution.
                        rethrow(ME);
                    end % end TRY: read input image

                    % process image into analysis blocks
                    [xImagePixels, yImagePixels, zImagePixels] = size(wholeImage);
                    fprintf("%s - %s %s: %d x %d x %d\n",string(datetime),"Image dimensions for", app.currentFileNameExt, xImagePixels, yImagePixels, zImagePixels)

                    bigBlockSize=224*app.IMAGE_BLOCK_SIZE;
                    fprintf("%s - %s %s: %d x %d \n",string(datetime),"Set image block dimensions for", app.currentFileNameExt, bigBlockSize, bigBlockSize)

                    % verify that image analysis block size will leave at least
                    % one full patch in each analysis block
                    %- otherwise 'apply' function may break
                    hasFullPatchInEachBlock = false;
                    while ~hasFullPatchInEachBlock
                        hasOneOrMoreBlocksX = (xImagePixels/bigBlockSize)>=1;
                        hasSmallRemainderX = mod(xImagePixels,bigBlockSize)<224 && mod(xImagePixels,bigBlockSize)>0;
                        hasOneOrMoreBlocksY = (yImagePixels/bigBlockSize)>=1;
                        hasSmallRemainderY = mod(yImagePixels,bigBlockSize)<224 && mod(yImagePixels,bigBlockSize)>0;
                        if (hasSmallRemainderX || hasSmallRemainderY)
                            if (hasOneOrMoreBlocksX || hasOneOrMoreBlocksY)
                                % reduce block size by one patch width
                                bigBlockSize = 224*(app.IMAGE_BLOCK_SIZE-1);
                                fprintf("%s - %s %s: %d x %d\n",string(datetime),"[NOTE]: Adjusted block dimensions for", app.currentFileNameExt, bigBlockSize, bigBlockSize)
                            else %implies image is < 224 pixels in at least 1 dimension
                                error("Selected image is too small for analysis.")
                            end
                        else % has ≥1 patch in each image block
                            hasFullPatchInEachBlock = true;
                        end % end IF: (hasSmallRemainderX || hasSmallRemainderY)
                    end %end WHILE: ~hasFullPatchInEachBlock

                    % don't use low memory mode if block size is bigger than
                    % image size. No benefit. Will revert to user defined
                    % setting for next image.
                    lessThanOneBlockX = bigBlockSize >= xImagePixels;
                    lessThanOneBlockY = bigBlockSize >= yImagePixels;
                    if (lessThanOneBlockX && lessThanOneBlockY && app.SPLIT_IMAGE)
                        app.SPLIT_IMAGE = false;
                        fprintf("%s - %s %s\n",string(datetime),"[NOTE]: Disabled low memory mode due to small size of", app.currentFileNameExt)
                    end

                    % generate image block arrangement, names, and coordinates
                    [blockNames, blockCoords] = generateimageblockinfo(app, bigBlockSize, xImagePixels, yImagePixels);

                    % split image to files if using low memory mode
                    if app.SPLIT_IMAGE  %low memory mode

                        %_Status Update_%
                        statusupdate(app,"Dividing image");

                        % prepare temporary folders for split image blocks
                        createtemporaryfolders(app)

                        % divide image based on block size.
                        fprintf("%s - %s %s %s\n",string(datetime),"Low memory mode: splitting",app.currentFileNameExt, "into image blocks")
                        splitimagetoblockfiles(app,wholeImage, xImagePixels, yImagePixels, bigBlockSize);
                        clear wholeImage % unload image from  memory

                    else % normal mode
                        %initialize containers for classfications and
                        %normalized image
                        classifications = zeros([xImagePixels yImagePixels],'uint8');
                        if app.NORMALIZE_STAINS
                            normalizedImage = zeros(size(wholeImage),'like',wholeImage);
                        end
                    end % end IF: app.SPLIT_IMAGE

                    % iterate over image blocks
                    app.iBigBlock = 0;
                    for iBigBlockX = 1:app.nBigBlocksX
                        for iBigBlockY = 1:app.nBigBlocksY
                            app.iBigBlock = app.iBigBlock + 1; %increment image patch counter for curent image
                            fprintf("%s - %s%.0f %s %.0f %s%.0f%s%.0f%s\n",string(datetime),"Starting analysis of block #",app.iBigBlock, ...
                                "of",app.nBigBlocks,"(",iBigBlockX,",",iBigBlockY,")")

                            % recall block coordinates
                            leftCoordinate =  blockCoords{iBigBlockX,iBigBlockY}(1); %left
                            rightCoordinate =  blockCoords{iBigBlockX,iBigBlockY}(2); %right
                            topCoordinate =  blockCoords{iBigBlockX,iBigBlockY}(3); %top
                            bottomCoordinate =  blockCoords{iBigBlockX,iBigBlockY}(4); %bottom
                            fprintf("%s - %s%.0f%s%.0f - %.0f %s %.0f - %.0f%s\n",string(datetime),"Coordinates of block #",app.iBigBlock,": (",leftCoordinate,rightCoordinate,"x",topCoordinate,bottomCoordinate,")")

                            % get image block
                            try
                                if app.SPLIT_IMAGE % low memory mode
                                    % read block from storage
                                    fprintf("%s - %s %s\n",string(datetime),"[Low memory mode]: Reading block from storage:",fullfile("ImageBlocksTemp",blockNames{iBigBlockX,iBigBlockY}))
                                    imageBlock = imread(fullfile("ImageBlocksTemp",blockNames{iBigBlockX,iBigBlockY})) ;
                                else % normal mode
                                    % extract block from whole image
                                    fprintf("%s - %s%.0f-%.0f %s %.0f-%.0f%s\n", string(datetime),"Extracting block from image (",leftCoordinate,rightCoordinate,"x",topCoordinate,bottomCoordinate,")")
                                    imageBlock = wholeImage(leftCoordinate:rightCoordinate,topCoordinate:bottomCoordinate,:);
                                end % End IF: app.SPLIT_IMAGE
                            catch ME
                                % alert user that an error occured if not already done
                                if ~app.ErrorAlertAlreadyCreated
                                    app.ErrorAlertAlreadyCreated = true;
                                    message_text = "GLASS-AI encountered an error during loading an image block during analysis." + ...
                                        newline + "[ERROR MESSAGE]" + newline + ME.message;
                                    uialert(app.GLASSAIUIFigure,message_text,"Analysis error")
                                end
                                fprintf("%s - %s %.0f %s %.0f %s%.0f%s%.0f%s %s\n",string(datetime),"[ERROR]: There was an error loading the image data for block #",app.iBigBlock, ...
                                    "of",app.nBigBlocks,"(",iBigBlockX,",",iBigBlockY,") from", app.currentFileExt)
                                %rethrow error to stop execution
                                rethrow(ME);
                            end % End TRY: get image block

                            % perform stain normalization if selected
                            if app.NORMALIZE_STAINS
                                if false%canUseGPU && ~app.FORCE_CPU
                                    % use GPU array for normalization
                                    gpuImageBlock = gpuArray(imageBlock);
                                    gpuImageBlock = normalizeStaining(app, gpuImageBlock);
                                    imageBlock = gather(gpuImageBlock);
                                else
                                    imageBlock = normalizeStaining(app, imageBlock);
                                end

                                if app.SPLIT_IMAGE % low memory mode
                                    % store normalized image block
                                    imwrite(imageBlock,fullfile("NormBlocksTemp",sprintf("%d-%d.tif",iBigBlockX,iBigBlockY)),"tif");
                                else % normal mode
                                    % add normalized block to full normalized image
                                    normalizedImage(leftCoordinate:rightCoordinate,topCoordinate:bottomCoordinate,:) = imageBlock;
                                end % End IF: app.SPLIT_IMAGE
                            end % End IF: app.NORMALIZE_STAINS

                            %% grade the image and get the classifications
                            %_Status Update_%
                            statusupdate(app,"Analyzing image");

                            % grade image block
                            if app.MAKE_CONFIDENCE_MAP
                                [classificationBlock,maxClassProbabilityBlock] = gradeimage(app,imageBlock,net);
                            else
                                [classificationBlock,~] = gradeimage(app,imageBlock,net);
                            end

                            % set all pixels to 0 if returned block is
                            % empty. Probably due to masking of all patches
                            % in analysis block.
                            try
                                if app.SPLIT_IMAGE % low memory mode
                                    % store classificiation block
                                    imwrite(classificationBlock,fullfile("ClassBlocksTemp",sprintf("%d-%d.tif",iBigBlockX,iBigBlockY)),"tif");
                                    fprintf("%s - %s %s %s%.0f %s\n",string(datetime),"[Low memory mode]: Wrote classes for", app.currentFileNameExt,"block #",app.iBigBlock, "to disk")
                                    % store class probability blocks
                                    if app.MAKE_CONFIDENCE_MAP
                                        imwrite(maxClassProbabilityBlock,fullfile("MaxClassProbabilityBlocksTemp",sprintf("%d-%d.tif",iBigBlockX,iBigBlockY)),"tif");
                                        fprintf("%s - %s %s %s%.0f %s\n",string(datetime),"[Low memory mode]: Wrote maximum class's probability for", app.currentFileNameExt,"block #",app.iBigBlock, "to disk")
                                    end % End IF: app.MAKE_CONFIDENCE_MAP
                                else % normal mode
                                    % add classification block to full classification
                                    % matrix
                                    classifications(leftCoordinate:rightCoordinate,topCoordinate:bottomCoordinate) = classificationBlock(1:(rightCoordinate-leftCoordinate)+1,1:(bottomCoordinate-topCoordinate)+1);
                                    fprintf("%s - %s %s %s%.0f %s\n",string(datetime),"Stored classes for", app.currentFileNameExt,"block #",app.iBigBlock, "in classifications matrix")
                                    if app.MAKE_CONFIDENCE_MAP
                                        maxClassProbability(leftCoordinate:rightCoordinate,topCoordinate:bottomCoordinate) = maxClassProbabilityBlock(1:(rightCoordinate-leftCoordinate)+1,1:(bottomCoordinate-topCoordinate)+1);
                                        fprintf("%s - %s %s %s%.0f %s\n",string(datetime),"Stored max class probability for", app.currentFileNameExt,"block #",app.iBigBlock, "in maxClassProbability matrix")
                                    end % End IF: app.MAKE_CONFIDENCE_MAP
                                end % End IF: app.SPLIT_IMAGE

                            catch ME
                                % alert user that an error occured if not already done
                                if ~app.ErrorAlertAlreadyCreated
                                    app.ErrorAlertAlreadyCreated = true;
                                    message_text = "GLASS-AI encountered an error while storing image classifications/probabilities." + ...
                                        newline + "[ERROR MESSAGE]" + newline + ME.message;
                                    uialert(app.GLASSAIUIFigure,message_text,"Analysis error")
                                end
                                fprintf("%s - %s %s %s%.0f\n",string(datetime),"[ERROR]: An error occured during storage of classes/probabilities from",app.currentFileNameExt,"block #",app.iBigBlock)
                                %rethrow error to stop execution
                                rethrow(ME);
                            end % End TRY: set all pixels to 0 if returned block is empty
                        end % End FOR loop: nBigBlocksY
                    end % End FOR loop: nBigBlocksX

                    fprintf("%s - %s %s\n",string(datetime),"Finished analysis of",app.currentFileNameExt)
                    fprintf("%s\n","%%%%%%%% Save outputs %%%%%%%%")

                    % save the classifications in the output folder in a .mat file
                    %_Status Update_%
                    statusupdate(app,"Saving raw pixel classifications");
                    %%%%%%%%%%%%%%%%%
                    try
                        classificationOutputFileName=fullfile(app.OUTPUT_PATH, strcat(app.currentFileName,'_classes.mat'));
                        fprintf("%s - %s %s %s %s\n", string(datetime),"Saving raw classifications for",app.currentFileNameExt,"to",classificationOutputFileName)
                        if app.SPLIT_IMAGE == true % low memory mode
                            % rebuild classifications from storage blocks
                            classifications = rebuildimagefromblockfiles(app,"ClassBlocksTemp",xImagePixels,yImagePixels,1,blockNames,blockCoords);
                            save(classificationOutputFileName,'classifications', '-v7.3');
                            fprintf("%s - %s %s %s %s\n", string(datetime),"Saved raw classifications for",app.currentFileNameExt,"to",classificationOutputFileName)
                            rmdir("ClassBlocksTemp",'s');
                        else % normal mode
                            save(classificationOutputFileName,'classifications', '-v7.3');
                            fprintf("%s - %s %s %s %s\n", string(datetime),"Saved raw classifications for",app.currentFileNameExt,"to",classificationOutputFileName)
                        end
                    catch ME
                        % alert user that an error occured if not already done
                        if ~app.ErrorAlertAlreadyCreated
                            app.ErrorAlertAlreadyCreated = true;
                            message_text = "GLASS-AI encountered an error while saving image classifications." + ...
                                newline + "[ERROR MESSAGE]" + newline + ME.message;
                            uialert(app.GLASSAIUIFigure,message_text,"Analysis error")
                        end
                        fprintf("%s - %s %s %s %s\n",string(datetime),"[ERROR]: An error occured during saving of classes for",app.currentFileNameExt,"to",classificationOutputFileName)
                        %rethrow error to stop execution
                        rethrow(ME);
                    end % End TRY: save the classifications in the output folder in a .mat file

                    % save class probablities for each pixel if requested
                    try
                        if app.MAKE_CONFIDENCE_MAP
                            %_StatusUpdate_%
                            statusupdate(app,"Saving final class probablities");
                            maxClassProbabilityOutputFileName=fullfile(app.OUTPUT_PATH, strcat(app.currentFileName,'_class_probablities.mat'));
                            fprintf("%s - %s %s %s %s\n", string(datetime),"Saving final class probablities for",app.currentFileNameExt,"to",maxClassProbabilityOutputFileName)
                            % convert back to float ('single') from 'uint8'
                            % and rescale to 0 - 1
                            maxClassProbabilityFloat = single(maxClassProbability)/255;
                            save(maxClassProbabilityOutputFileName,'maxClassProbabilityFloat', '-v7.3');
                            clear maxClassProbabilityFloat
                            fprintf("%s - %s %s %s %s\n", string(datetime),"Saved final class probablities for",app.currentFileNameExt,"to",maxClassProbabilityOutputFileName)
                        end % End IF: app.MAKE_CONFIDENCE_MAP
                    catch ME
                        % alert user that an error occured if not already done
                        if ~app.ErrorAlertAlreadyCreated
                            message_text = "GLASS-AI encountered an error while saving final class probabilites." +...
                                newline + "This may be due to insufficient memory." +...
                                newline + "Omit this step if you get this error again." +...f
                                newline + "[ERROR MESSAGE]" + newline + ME.message;
                            uialert(app.GLASSAIUIFigure,message_text,"Analysis error")
                        end

                        fprintf("%s - %s %s %s %s\n",string(datetime),"[ERROR]: An error occured during saving of final class predictions for",app.currentFileNameExt,"to",maxClassProbabilityOutputFileName)
                        %rethrow error to stop execution
                        rethrow(ME);
                    end % End TRY: save class probablities for each pixel if requested

                    % segment individual tumors
                    %_Status Update_%
                    statusupdate(app,"Segmenting individual tumors");
                    segmentedTumorMask = segmentindividualtumors(app, classifications);

                    % make tumor ID label mask
                    %_Status Update_%
                    statusupdate(app,"Making tumor label mask");
                    tumorIdLabelMask = maketumorlabelmask(app, segmentedTumorMask);

                    % Save the tumor label mask in the output folder in .mat format
                    %_Status Update_%
                    statusupdate(app,"Saving tumor label masks");
                    try
                        tumorLabelOutputFileName=fullfile(app.OUTPUT_PATH, strcat(app.currentFileName,'_tumor_labels.mat'));
                        fprintf("%s - %s %s %s %s\n", string(datetime),"Saving tumor label mask for",app.currentFileNameExt,"to",tumorLabelOutputFileName)
                        save(tumorLabelOutputFileName,'tumorIdLabelMask', '-v7.3');
                        fprintf("%s - %s %s %s %s\n", string(datetime),"Saved tumor label mask for",app.currentFileNameExt,"to",tumorLabelOutputFileName)
                    catch ME
                        % alert user that an error occured if not already done
                        if ~app.ErrorAlertAlreadyCreated
                            app.ErrorAlertAlreadyCreated = true;
                            message_text = "GLASS-AI encountered an error while saving tumor label mask." + ...
                                newline + "[ERROR MESSAGE]" + newline + ME.message;
                            uialert(app.GLASSAIUIFigure,message_text,"Analysis error")
                        end
                        fprintf("%s - %s %s %s %s\n",string(datetime),"[ERROR]: An error occured during saving of tumor label mask for",app.currentFileNameExt,"to",tumorLabelOutputFileName)
                        %rethrow error to stop execution
                        rethrow(ME);
                    end

                    % Analyze individual tumors and total tumor areas
                    %_Status Update_%
                    statusupdate(app,"Analyzing individual tumors");
                    %%%%%%%%%%%%%%%%%
                    [individualTumorStats]=individualtumoranalysis(app,classifications,segmentedTumorMask);

                    % Generate spreadsheet of individual tumors from each input image
                    %_Status update_%
                    statusupdate(app,"Writing to individual tumor analysis file");
                    %%%%%%%%%%%%%%%%%
                    individualTumorStatsFileName = strcat(app.currentFileName, ".xlsx");
                    fprintf("%s - %s %s %s %s\n", string(datetime),"Saving individual tumor stats for",app.currentFileNameExt,"to",individualTumorStatsFileName)
                    writetable(individualTumorStats,fullfile(app.OUTPUT_PATH,individualTumorStatsFileName),'WriteMode','overwrite');
                    fprintf("%s - %s %s %s %s\n", string(datetime),"Saved individual tumor stats for",app.currentFileNameExt,"to",individualTumorStatsFileName)

                    % summarize tumors across the image
                    %_Status Update_%
                    statusupdate(app,"Summarizing tumors in image");
                    %%%%%%%%%%%%%%%%%
                    [imageTumorStats]=imageleveltumoranalysis(app,classifications,individualTumorStats);

                    % Generate summary spreadsheet for all images submitted
                    %- append to old file if requested, otherwise overwrite
                    %_Status update_%
                    statusupdate(app,"Writing to whole slide analysis file");
                    % make new file if first image and not appending to old file
                    doMakeNewFile = (app.iImage==1 && ~app.APPEND_SLIDE_SUMMARY);
                    fprintf("%s - %s %s %s %s\n", string(datetime),"Saving image-level tumor stats for",app.currentFileNameExt,"to","Whole slide summary.xlsx")
                    if doMakeNewFile
                        % overwrite existing file
                        if exist(fullfile(app.OUTPUT_PATH,'Whole slide summary.xlsx'), 'file')
                            fprintf("%s - %s\n",string(datetime),"[NOTE]: Overwriting existing 'Whole slide summary.xlsx' file")
                        end
                        writetable(imageTumorStats,fullfile(app.OUTPUT_PATH,'Whole slide summary.xlsx'),'WriteMode','overwrite');
                        fprintf("%s - %s %s %s %s\n", string(datetime),"Saved image-level tumor stats for",app.currentFileNameExt,"to","Whole slide summary.xlsx")
                    else % not first image or appending to old file
                        % append entries to existing file
                        writetable(imageTumorStats,fullfile(app.OUTPUT_PATH,'Whole slide summary.xlsx'),'WriteMode','append');
                        fprintf("%s - %s %s %s %s\n", string(datetime),"Appended image-level tumor stats for",app.currentFileNameExt,"to","Whole slide summary.xlsx")
                    end

                    %% Output Images
                    % Create overlay images of tumor grades and segmentations
                    % Save the overall tumor grade mask if requested

                    %_Status update_%
                    statusupdate(app,"Creating output images");
                    %%%%%%%%%%%%%%%%%
                    try
                        if app.ASSIGN_OVERALL_GRADES
                            overallTumorGradeMask = makeoveralltumorgrademask(app,classifications,tumorIdLabelMask,individualTumorStats);
                            %_Status Update_%
                            statusupdate(app,"Saving overall tumor grade mask");
                            % save overall tumor grade mask to file
                            overallTumorGradeOutputFileName=fullfile(app.OUTPUT_PATH, strcat(app.currentFileName,'_overall_tumor_grades.mat'));
                            save(overallTumorGradeOutputFileName,'overallTumorGradeMask', '-v7.3');
                            fprintf("%s - %s %s %s %s\n", string(datetime),"Saved overall tumor grade mask for",app.currentFileNameExt,"to",overallTumorGradeOutputFileName)
                        end % End IF: app.ASSIGN_OVERALL_GRADES
                    catch ME
                        % alert user that an error occured if not already done
                        if ~app.ErrorAlertAlreadyCreated
                            app.ErrorAlertAlreadyCreated = true;
                            message_text = "GLASS-AI encountered an error while saving overall tumor grade mask." + ...
                                newline + "[ERROR MESSAGE]" + newline + ME.message;
                            uialert(app.GLASSAIUIFigure,message_text,"Analysis error")
                        end
                        fprintf("%s - %s %s %s %s\n",string(datetime),"[ERROR]: An error occured during saving of overall tumor grade mask for",app.currentFileNameExt,"to",overallTumorGradeOutputFileName)
                        %rethrow error to stop execution
                        rethrow(ME);
                    end % End TRY: save overall tumor grade mask to file

                    %% make tumor grade image
                    try
                        gradeImage = createtumorgradeimage(app,classifications);
                        fprintf("%s - %s %s\n", string(datetime),"Finished making tumor grade image for", app.currentFileNameExt)
                        clear classifications; % clear classification matrix from memory

                        % resize grade image to scaling factors
                        gradeImage = imresize(gradeImage, app.OUTPUT_GRADE_IMAGE_SCALE, 'nearest');
                        fprintf("%s - %s %.2f%s\n", string(datetime),"Resized tumor grade image to", app.OUTPUT_GRADE_IMAGE_SCALE,"x")

                        % save tumor grade image to file
                        tumorGradeImageFileName = strcat(app.currentFileName+"_grades.tif");
                        if (xImagePixels * yImagePixels) > 40000000 %write as tiled tiff for large images
                            writetiff(app,gradeImage,tumorGradeImageFileName);
                            fprintf("%s - %s %s %s %s %s\n", string(datetime),"Saved tumor grade image for", app.currentFileNameExt, "to",tumorGradeImageFileName,"using writetiff")
                        else
                            imwrite(gradeImage,fullfile(app.OUTPUT_PATH, ...
                                strcat(app.currentFileName,'_grades.tif')),'tif','Compression','lzw');
                            fprintf("%s - %s %s %s %s %s\n", string(datetime),"Saved tumor grade image for", app.currentFileNameExt, "to",tumorGradeImageFileName,"using imwrite with LZW compression")
                        end % End IF: write as tiled tiff for large images

                        if app.OUTPUT_IMAGE_PREVIEW
                            %resize image for preview
                            resizeX = min(xImagePixels,5000);
                            resizeY = min(yImagePixels,5000);
                            gradeImage = imresize(gradeImage,[resizeX,resizeY],'nearest');
                            fprintf("%s - %s %.0f%s%.0f %s\n", string(datetime),"Resized tumor grade image to", resizeX,"x",resizeY, "for output preview")
                        else
                            % remove from memory after writing to file & if no preview
                            clear gradeImage;
                        end % End IF: app.OUTPUT_IMAGE_PREVIEW
                    catch ME
                        % alert user that an error occured if not already done
                        if ~app.ErrorAlertAlreadyCreated
                            app.ErrorAlertAlreadyCreated = true;
                            message_text = "GLASS-AI encountered an error during tumor grade image creation." + ...
                                newline + "[ERROR MESSAGE]" + newline + ME.message;
                            uialert(app.GLASSAIUIFigure,message_text,"Analysis error")
                        end
                        fprintf("%s - %s %s %s\n",string(datetime),"[ERROR]: An error occured during tumor grade image creation for",app.currentFileNameExt)
                        %rethrow error to stop execution
                        rethrow(ME);
                    end % End TRY: make tumor grade image

                    %% make overall tumor grade image if requested
                    try
                        if app.ASSIGN_OVERALL_GRADES
                            overallTumorGradeImage = createtumorgradeimage(app,overallTumorGradeMask);
                            fprintf("%s - %s %s\n", string(datetime),"Finished making overall tumor grade image for", app.currentFileNameExt)
                            clear overallTumorGradeMask; % clear overallTumorGradeMask matrix from memory

                            % resize grade image to set scaling factors
                            overallTumorGradeImage = imresize(overallTumorGradeImage, app.OUTPUT_GRADE_IMAGE_SCALE, 'nearest');
                            fprintf("%s - %s %.2f%s\n", string(datetime),"Resized tumor grade image to", app.OUTPUT_GRADE_IMAGE_SCALE,"x")

                            % save tumor grade image to file
                            overallTumorGradeImageFileName = strcat(app.currentFileName+"_overall_grades.tif");
                            if (xImagePixels * yImagePixels) > 40000000 % use writetiff() for large images
                                writetiff(app,overallTumorGradeImage,overallTumorGradeImageFileName);
                                fprintf("%s - %s %s %s %s %s\n", string(datetime),"Saved tumor grade image for", app.currentFileNameExt, "to",overallTumorGradeImageFileName,"using writetiff")
                            else %use imwrite for smaller images
                                imwrite(overallTumorGradeImage,fullfile(app.OUTPUT_PATH, ...
                                    strcat(app.currentFileName,'_overall_grades.tif')),'tif','Compression','lzw');
                                fprintf("%s - %s %s %s %s %s\n", string(datetime),"Saved tumor grade image for", app.currentFileNameExt, "to",overallTumorGradeImageFileName,"using imwrite with LZW compression")
                            end % End IF: use writetiff() for large images

                            if app.OUTPUT_IMAGE_PREVIEW
                                %resize image for preview
                                resizeX = min(xImagePixels,5000);
                                resizeY = min(yImagePixels,5000);
                                overallTumorGradeImage = imresize(overallTumorGradeImage,[resizeX,resizeY],'nearest');
                                fprintf("%s - %s %.0f%s%.0f %s\n", string(datetime),"Resized overall tumor grade image to", resizeX,"x",resizeY, "for output preview")
                            else
                                % remove from memory after writing to file & if no preview
                                clear overallTumorGradeImage;
                            end % End IF: app.OUTPUT_IMAGE_PREVIEW
                        end % End IF: app.ASSIGN_OVERALL_GRADES
                    catch ME
                        % alert user that an error occured if not already done
                        if ~app.ErrorAlertAlreadyCreated
                            app.ErrorAlertAlreadyCreated = true;
                            message_text = "GLASS-AI encountered an error during overall tumor grade image creation." + ...
                                newline + "[ERROR MESSAGE]" + newline + ME.message;
                            uialert(app.GLASSAIUIFigure,message_text,"Analysis error")
                        end
                        fprintf("%s - %s %s %s\n",string(datetime),"[ERROR]: An error occured during overall tumor grade image creation for",app.currentFileNameExt)
                        %rethrow error to stop execution
                        rethrow(ME);
                    end % End TRY: make overall tumor grade image if requested

                    %% make tumor segmentation image if requested
                    %- segmentation image is resized during creation to
                    %- prevent distortion of tumor ID labels
                    try
                        if app.MAKE_SEGMENTATION_IMAGE
                            % use stain normalized image if available
                            if app.NORMALIZE_STAINS
                                %rebuild image if split
                                if app.SPLIT_IMAGE % low memory mode
                                    normalizedImage = rebuildimagefromblockfiles(app,"NormBlocksTemp", xImagePixels, yImagePixels, 3, blockNames, blockCoords);
                                end
                                normalizedImage = im2uint8(normalizedImage);
                                segmentationImage = createsegmentationimage(app,normalizedImage, segmentedTumorMask, individualTumorStats);
                                fprintf("%s - %s %s\n", string(datetime),"Finished making tumor segmentation image for", app.currentFileNameExt)
                            else % if normalization was not performed
                                if app.SPLIT_IMAGE % low memory mode
                                    % reload origininal image from file instead
                                    % of rebuilding from image blocks
                                    [wholeImage] = readimage(app,app.currentFilePath);
                                    fprintf("%s - %s %s\n", string(datetime),"[Low memory mode]: Reloaded original H&E image from", app.currentFileNameExt)
                                end
                                % make sure image is 8-bit RGB
                                wholeImage = im2uint8(wholeImage);
                                segmentationImage = createsegmentationimage(app, wholeImage, segmentedTumorMask, individualTumorStats);
                                fprintf("%s - %s %s\n", string(datetime),"Finished making tumor segmentation image for", app.currentFileNameExt)
                            end % end IF: app.NORMALIZE_STAINS

                            % save tumor segmentation image to file
                            segmentationImageFileName = strcat(app.currentFileName+"_segmentation.tif");
                            if (xImagePixels * yImagePixels) > 40000000 %write as tiled tiff for large images
                                writetiff(app,segmentationImage,segmentationImageFileName);
                                fprintf("%s - %s %s %s %s %s\n", string(datetime),"Saved tumor segmentation image for", app.currentFileNameExt, "to",segmentationImageFileName,"using writetiff")
                            else
                                imwrite(segmentationImage,fullfile(app.OUTPUT_PATH, ...
                                    segmentationImageFileName),'tif','Compression','lzw');
                                fprintf("%s - %s %s %s %s %s\n", string(datetime),"Saved tumor segmentation image for", app.currentFileNameExt, "to",segmentationImageFileName,"using imwrite with LZW compression")
                            end

                            %resize image for preview
                            if app.OUTPUT_IMAGE_PREVIEW
                                segmentationImage = imresize(segmentationImage, [resizeX resizeY],'nearest');
                                fprintf("%s - %s %.0f%s%.0f %s\n", string(datetime),"Resized tumor segmentation image to", resizeX,"x",resizeY, "for output preview")
                            else
                                % remove from memory after writing to file & if no preview
                                clear segmentationImage;
                            end % End IF: app.OUTPUT_IMAGE_PREVIEW
                        end % End IF: app.MAKE_SEGMENTATION_IMAGE
                    catch ME
                        % alert user that an error occured if not already done
                        if ~app.ErrorAlertAlreadyCreated
                            app.ErrorAlertAlreadyCreated = true;
                            message_text = "GLASS-AI encountered an error during tumor segmentation image creation." + ...
                                newline + "[ERROR MESSAGE]" + newline + ME.message;
                            uialert(app.GLASSAIUIFigure,message_text,"Analysis error")
                        end
                        fprintf("%s - %s %s %s\n",string(datetime),"[ERROR]: An error occured during tumor segmentation image creation for",app.currentFileNameExt)
                        %rethrow error to stop execution
                        rethrow(ME);
                    end % End TRY: make tumor segmentation image if requested

                    %% make stain normalization image
                    try
                        if app.NORMALIZE_STAINS
                            normalizedImageFileName = strcat(app.currentFileName+"_normalized.tif");
                            %---% resize segmentation image to set scaling factors
                            normalizedImage = imresize(normalizedImage,app.OUTPUT_NORMALIZED_IMAGE_SCALE,"nearest");
                            fprintf("%s - %s %.2f%s\n", string(datetime),"Resized normalized H&E image to", app.OUTPUT_NORMALIZED_IMAGE_SCALE,"x")

                            if (xImagePixels * yImagePixels) > 40000000 %write as tiled tiff for large images
                                writetiff(app,normalizedImage,normalizedImageFileName);
                                fprintf("%s - %s %s %s %s %s\n", string(datetime),"Saved normalized H&E image for", app.currentFileNameExt, "to",normalizedImageFileName,"using writetiff")

                            else
                                imwrite(normalizedImage,fullfile(app.OUTPUT_PATH, ...
                                    normalizedImageFileName),'tif','Compression','lzw'); % save normalized stain image to file
                                fprintf("%s - %s %s %s %s %s\n", string(datetime),"Saved normalized H&E image for", app.currentFileNameExt, "to",normalizedImageFileName,"using imwrite with LZW compression")
                            end % End IF: select tiff writer based on image size
                            %resize image for preview
                            if app.OUTPUT_IMAGE_PREVIEW
                                normalizedImage = imresize(normalizedImage, [resizeX resizeY],'nearest');
                                fprintf("%s - %s %.0f%s%.0f %s\n", string(datetime),"Resized normalized H&E image to", resizeX,"x",resizeY, "for output preview")
                            else
                                % remove from memory after writing to file & if no preview
                                clear normalizedImage;
                            end % End IF: app.OUTPUT_IMAGE_PREVIEW
                        end % End IF: app.NORMALIZE_STAINS
                    catch ME
                        % alert user that an error occured if not already done
                        if ~app.ErrorAlertAlreadyCreated
                            app.ErrorAlertAlreadyCreated = true;
                            message_text = "GLASS-AI encountered an error during stain normalized image creation." + ...
                                newline + "[ERROR MESSAGE]" + newline + ME.message;
                            uialert(app.GLASSAIUIFigure,message_text,"Analysis error")
                        end

                        fprintf("%s - %s %s %s\n",string(datetime),"[ERROR]: An error occured during normalized H&E image output for",app.currentFileNameExt)
                        %rethrow error to stop execution
                        rethrow(ME);
                    end % End TRY: make stain normalization image

                    %% make max class prediction map if requested
                    %- convert matrix to RGB image and reload for preview
                    try
                        if app.MAKE_CONFIDENCE_MAP
                            maxClassProbabilityImageFileName = strcat(app.currentFileName+"_max_probability.tif");
                            fprintf("%s - %s %s %s %s\n", string(datetime),"Saving max probability map for",app.currentFileNameExt,"to",maxClassProbabilityImageFileName)
                            % resize to user defined scale
                            maxClassProbability = imresize(uint8(maxClassProbability*255),app.OUTPUT_CONFIDENCE_MAP_SCALE,'nearest');
                            % make RGB image
                            colorMap = getcolormap(app);
                            imwrite(maxClassProbability,colorMap,fullfile(app.OUTPUT_PATH,maxClassProbabilityImageFileName),'tif','Compression','lzw')
                            fprintf("%s - %s %s %s %s\n", string(datetime),"Saved max probability map for",app.currentFileNameExt,"to",maxClassProbabilityImageFileName)
                            % resize for preview
                            if app.OUTPUT_IMAGE_PREVIEW
                                maxClassProbability = imresize(maxClassProbability, [resizeX resizeY],'nearest');
                            else
                                % remove from memory after writing to file & if no preview
                                clear maxClassProbability
                            end
                        end % End IF: app.MAKE_CONFIDENCE_MAP
                    catch ME
                        % alert user that an error occured if not already done
                        if ~app.ErrorAlertAlreadyCreated
                            app.ErrorAlertAlreadyCreated = true;
                            message_text = "GLASS-AI encountered an error during class prediction probability image creation." + ...
                                newline + "[ERROR MESSAGE]" + newline + ME.message;
                            uialert(app.GLASSAIUIFigure,message_text,"Analysis error")
                        end
                        fprintf("%s - %s %s %s\n",string(datetime),"[ERROR]: An error occured during class prediction probability image creation for",app.currentFileNameExt)
                        %rethrow error to stop execution
                        rethrow(ME);
                    end

                    %% Generate output image preview
                    try
                        if app.OUTPUT_IMAGE_PREVIEW
                            fprintf("%s - %s %s\n", string(datetime),"Creating output image preview for",app.currentFileNameExt);
                            %_Status Update_%
                            statusupdate(app,"Generating preview images");
                            %make sure orignial image is loaded for display and
                            %resize to preview size if needed
                            if ~exist("wholeImage","var")
                                [wholeImage] = readimage(app,app.currentFilePath);
                                fprintf("%s - %s %s",string(datetime),"Reloaded original H&E image for",app.currentFileNameExt)
                            end
                            wholeImage = imresize(wholeImage,[resizeX resizeY],'nearest');
                            fprintf("%s - %s %.2f%s\n", string(datetime),"Resized normalized H&E image to", app.OUTPUT_NORMALIZED_IMAGE_SCALE,"x")

                            %% display preview images
                            % set up figure environement for image display
                            previewFigure = figure();
                            previewLayout = tiledlayout(previewFigure,"flow",'TileSpacing','Compact','Padding',"compact");
                            axesList = [];

                            %show original image
                            originalPanel = nexttile(previewLayout);
                            imshow(wholeImage,'Parent',originalPanel)
                            title("Original Image")
                            axesList = [axesList originalPanel];
                            fprintf("%s - %s %s\n", string(datetime),"Added original H&E image to preview for",app.currentFileNameExt);

                            %show stain normalized image if done
                            if app.NORMALIZE_STAINS
                                normalizedPanel = nexttile(previewLayout);
                                imshow(normalizedImage,'Parent',normalizedPanel)
                                title("Normalized Image")
                                axesList = [axesList normalizedPanel];
                                fprintf("%s - %s %s\n", string(datetime),"Added normalized H&E image to preview for",app.currentFileNameExt);
                            end

                            % show tumor segmentation map
                            if app.MAKE_SEGMENTATION_IMAGE
                                tumorSegmentationPanel = nexttile(previewLayout);
                                imshow(segmentationImage,'Parent',tumorSegmentationPanel)
                                title("Tumor Segmentation");
                                axesList = [axesList tumorSegmentationPanel];
                                fprintf("%s - %s %s\n", string(datetime),"Added tumor segmentation image to preview for",app.currentFileNameExt);
                            end

                            % show tumor grade map
                            gradeMapPanel = nexttile(previewLayout);
                            imshow(gradeImage, 'Parent',gradeMapPanel)
                            title("Tumor Grades")
                            axesList = [axesList gradeMapPanel];
                            fprintf("%s - %s %s\n", string(datetime),"Added tumor grade image to preview for",app.currentFileNameExt);

                            % show max class probability map if requested
                            if app.MAKE_CONFIDENCE_MAP
                                maxClassProbabilityPanel = nexttile(previewLayout);
                                imshow(maxClassProbability,colorMap,'Parent',maxClassProbabilityPanel)
                                title("Predicted Class Probability")
                                colorBar = colorbar('Location','southoutside');
                                % create and label 5 ticks on bar from 0 - 1
                                colorBar.Ticks = linspace(0, 255, 5) ;
                                colorBar.TickLabels = {'0.00','0.25','0.50','0.75','1.00'};
                                axesList = [axesList maxClassProbabilityPanel];
                                fprintf("%s - %s %s\n", string(datetime),"Added predicted class probability image to preview for",app.currentFileNameExt);
                            end % End IF: app.MAKE_CONFIDENCE_MAP

                            % show overall tumor grade map if requested
                            if app.ASSIGN_OVERALL_GRADES
                                overallGradeMapPanel = nexttile(previewLayout);
                                imshow(overallTumorGradeImage,'Parent',overallGradeMapPanel)
                                title("Overall Tumor Grades")
                                axesList = [axesList overallGradeMapPanel];
                                fprintf("%s - %s %s\n", string(datetime),"Added tumor grade image to preview for",app.currentFileNameExt);
                            end % End IF: app.ASSIGN_OVERALL_GRADES

                            % synchronize subplots of image viewer
                            linkaxes(axesList,'xy');

                        end % End IF: app.OUTPUT_IMAGE_PREVIEW
                    catch ME
                        % alert user that an error occured if not already done
                        if ~app.ErrorAlertAlreadyCreated
                            app.ErrorAlertAlreadyCreated = true;
                            message_text = "GLASS-AI encountered an error while making image previews." + ...
                                newline + "[ERROR MESSAGE]" + newline + ME.message;
                            uialert(app.GLASSAIUIFigure,message_text,"Analysis error")
                        end
                        fprintf("%s - %s %s %s\n",string(datetime),"[ERROR]: An error occured while making output image preview figure for",app.currentFileNameExt)
                        %rethrow error to stop execution
                        rethrow(ME);
                    end % End TRY: image preview

                    %% Clear unneeded variables before next image
                    fprintf("%s - %s %s\n", string(datetime),"Deleting variables created for analysis of",app.currentFileNameExt)
                    clearvars -except app net;

                    fprintf("%s - %s %s\n", string(datetime),"Completed analysis and output of",app.currentFileNameExt)
                    fprintf("%s %0.0f %s\n","----- End image",app.iImage,"-----")
                end % End FOR: loop over input images

                %% Finish Analysis Run
                %_Final Status Update_%
                app.analysisEndTime = toc(app.analysisStartTime);
                app.StatusLabel.Text= sprintf("Analysis completed on %d images at %s.\n Total run time: %s",...
                    app.nImages,string(datetime),duration([0,0,app.analysisEndTime]));

                runcheck(app); %recheck options are valid for next run

            catch ME % try: catch errors during any analysis step
                % write error message to logfile
                fprintf("%s - %s %s\n",string(datetime),"[ERROR]: Analysis terminated due to error:", ME.message)
                % update status window to alert user to error
                app.StatusLabel.Text= sprintf("An error occured. Analysis Terminated.\n Check logfile for more details.");
                %rethrow error to stop execution
                %- error reporting in RunButtonPushed callback
                rethrow(ME)
            end % try: catch errors during any analysis step

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

        function statusupdate(app,statusMessage)
            % Provide status updates to users based on analysis step and images
            % remaining to be processed

            app.analysisStepDescription = statusMessage;
            % Get time elapsed from start of analysis and start of currrent
            % image
            app.analysisRunTime = toc(app.analysisStartTime);
            app.imageRunTime = toc(app.imageStartTime);
            % Display update in StatusLabel
            app.StatusLabel.Text=sprintf("%s for %s (image %d of %d)\n Time Elapsed: %s (Total: %s)", app.analysisStepDescription, app.SELECTED_FILES{app.iImage}, app.iImage, app.nImages, duration([0,0,app.imageRunTime]), duration([0,0,app.analysisRunTime]));
            pause(0.1); %refresh app.StatusLabel text before continuing

        end % End function: statusupdate

        function [wholeImage] = readimage(app,filePath)
            %   Reads input image. Will attempt to find 20x magnification
            %   images in .svs files. Tif images are assumed to be at 20x
            %   magnification with 0.5022 microns/pixel resolution.
            %   Supported formats: tif , svs
            logactivity(app,"start",true);
            % get image extension
            [~,fileName,fileExt] = fileparts(filePath);

            switch fileExt
                case {'.tif', '.tiff'}
                    % Read tif file. Assumed to be in 20x magnification
                    % with a 0.5022 microns/pixel resolution
                    fprintf("%s - %s %s %s\n",string(datetime),fileName,"is a",fileExt)
                    fprintf("%s - %s %s\n",string(datetime),"Reading image from",app.currentFileNameExt)
                    wholeImage = imread(filePath);
                    fprintf("%s - %s %s\n",string(datetime),"Image loaded from",app.currentFileNameExt)
                    app.IMAGE_RESOLUTION = 0.5022;
                    fprintf("%s - %s %s %.3f %s\n",string(datetime),fileName,"is assumed to have a resolution of", ...
                        app.IMAGE_RESOLUTION,"microns per pixel")

                case '.svs'
                    fprintf("%s - %s %s %s\n",string(datetime),fileName,"is a",fileExt)
                    % read svs file
                    [wholeImage]=readsvsfile(app,filePath);

                otherwise % another filetype somehow gets loaded
                    fprintf("%s - %s %s\n",string(datetime),fileName,"is not a supported file format")
                    error('File format is not supported!!');
            end % End SWITCH: fileExt
            logactivity(app,"finish",false);
        end % End function: readimage

        function [wholeImage] = readsvsfile(app,filePath)
            % reads and returns the largest 20x image from the svs file
            logactivity(app,"start",false);
            % get image metadata to find 20x image layer
            [imageInfo] = getsvsinfo(app,filePath);

            % find the 20x images
            index20xImage = [imageInfo{:,5}] == 20;

            % use 20x scan if available
            has20XScan = nnz([imageInfo{index20xImage, 6}]=="source")==1;
            if has20XScan
                index20xImage = find([imageInfo{index20xImage, 6}] == "source");
            else% get the largest of the 20x images
                [~,index20xImage] = max([imageInfo{index20xImage, 1}]);
            end % End IF: has20xScan

            % read 20x image from svs file
            if ~isempty(index20xImage)
                fprintf("%s - %s %d %s %s\n", string(datetime), "Located 20x image in layer",index20xImage, "of", app.currentFileNameExt)
                % load image
                fprintf("%s - %s %s\n",string(datetime),"Reading image from ",app.currentFileNameExt)
                wholeImage=imread(filePath,'Index',imageInfo{index20xImage,3});
                fprintf("%s - %s %s\n",string(datetime),"Loaded image from ",app.currentFileNameExt)
                % store image resolution
                app.IMAGE_RESOLUTION = imageInfo{index20xImage,4};
                % log image resolution and if source/calculated/assumed
                fprintf("%s - %s %.4f %s%s%s\n", string(datetime), "20x image has a",app.IMAGE_RESOLUTION, "microns/pixel (", imageInfo{index20xImage,6}, ")")
            else % no 20x image found
                fprintf("%s - %s %s\n", string(datetime), "Unable to locate 20x image in", filePath)
                error('Could not find 20x images in the svs file!');
            end % End IF: ~isempty(index20xImage)
            logactivity(app,"finish",false);
        end % End function: readsvsfile

        function [imageInfo] = getsvsinfo(app,pathToImage)
            % Read file header and return images size, resolution, and apparent magnification
            % from svs file
            %- svs files are arranged in a standard format
            %- Image 1: Full size scan
            %-- This image has useful info in the ImageDescription field
            %- Image 2: Thumbnail from full size scan
            %-- This image copies the ImageDescription field from Image 1
            %-- Includes dimension scaling in ImageDescription (MxN -> mxn)
            %- Image 3: 1/2 sized image from full size scan
            %-- Includes dimension scaling in ImageDescription (MxN -> mxn)
            %- Image 4: 1/4 sized image from full size scan
            %-- Includes dimension scaling in ImageDescription (MxN -> mxn)
            %- Image 5: 1/5.565 sized image from full size scan
            %-- this image layer is not included in a 20x scan
            %-- Includes dimension scaling in ImageDescription (MxN -> mxn)
            %- Image n-1: Slide label image
            %-- Includes 'label' in ImageDescription
            %- Image n: Slide macro image (not from full size scan)
            %-- Includes 'macro' in ImageDescription
            logactivity(app,"start",false);
            fprintf("%s - %s\n",string(datetime),"Getting metadata from svs file")

            try %error handling
                % get svs metadata
                svsImageInfo = imfinfo(pathToImage);

                % get number of images in svs file
                nImagesInSVS = size(svsImageInfo,1);
                fprintf("%s - %s %.0f %s %s\n",string(datetime),"Found", nImagesInSVS, "images in",pathToImage)

                %initialize matrix to store relevent info
                %- width, height, index in file, MPP, AppMag, value source
                %-- 'value source' will tell if MPP and AppMag are from the
                %-- ImageDescription field ('source') or calculated ('calculated')
                imageInfo = cell([nImagesInSVS 6]);

                % iterate over images in svs file
                for iImageInSVS = 1:nImagesInSVS

                    % store image dimensions
                    imageInfo{iImageInSVS,1} = svsImageInfo(iImageInSVS).Width;
                    imageInfo{iImageInSVS,2} = svsImageInfo(iImageInSVS).Height;

                    % store index of image in svs file
                    imageInfo{iImageInSVS,3} = iImageInSVS;

                    % Get image magnification and resolutions from
                    % ImageDescription field
                    % pull image description
                    %- only full size scan and thubmnail have this metadata
                    %- in svs files
                    imageDescription=svsImageInfo(iImageInSVS).ImageDescription;

                    % split into pieces
                    %- ImageDescription field is pipe delimited
                    imageDescription=strsplit(imageDescription, '|');

                    % only trust values from full size scan
                    %- ignore rescaled images, slide label image, and slide
                    %- macro image
                    imageRescaled = imageDescription(contains(imageDescription, '->'));
                    imageLabel = imageDescription(contains(imageDescription,'label'));
                    imageMacro = imageDescription(contains(imageDescription,'macro'));
                    isFullResolutionScan = isempty(imageRescaled) && isempty(imageLabel) && isempty(imageMacro);
                    if isFullResolutionScan
                        try % find image layers with defined resolution and magnification
                            % find pixel resolution (aka 'MPP')
                            imageMPP=imageDescription(contains(imageDescription, 'MPP'));
                            % find scan magnification
                            imageAppMag = imageDescription(contains(imageDescription,'AppMag'));

                            % store values if both resolution and
                            % magnfication are present
                            hasImageInfo = (~isempty(imageMPP) && ~isempty(imageAppMag));
                            if hasImageInfo
                                % get value to right of '=' in string
                                imageMPP = strsplit(imageMPP{1},'=');
                                imageAppMag=strsplit(imageAppMag{1},'=');
                                % convert string to double
                                imageMPP = str2double(imageMPP{2});
                                imageAppMag = str2double(imageAppMag{2});

                                % add to imageInfo matrix
                                imageInfo{iImageInSVS,4} = imageMPP;
                                imageInfo{iImageInSVS,5} = imageAppMag;
                                imageInfo{iImageInSVS,6} = "source";
                            else
                                % throw error to revert to default assumptions
                                error("No image with defined Resolution and Magnification");
                            end % End IF: hasImageInfo

                        catch % revert to default assumptions if info cant be found
                            message_text = "Could not find a defined image resolution and magnification for " + app.currentFileNameExt +...
                                newline + "Proceeding with largest image in file. Assuming a 20x magnification with 0.5022 micron/pixel resolution."+...
                                newline + "Analysis may be severely affected if this assumption is incorrect.";
                            uialert(app.GLASSAIUIFigure,message_text,"Image warning", "Icon", "info")
                            fprintf("%s - %s %s\n",string(datetime),"[WARNING]: Could not find an image with defined resolution and magnification for",app.currentFileNameExt)
                            fprintf("%s - %s %s\n",string(datetime),"[WARNING]: Defaulting to largest image with assumed 0.5022 micron/pixel resolution and 20x magnification for",app.currentFileNameExt)
                            [~,largestImageInSVS] = max(cell2mat(imageInfo(:,1)));
                            % default assumptions
                            imageInfo{largestImageInSVS,4} = 0.5022;
                            imageInfo{largestImageInSVS,5} = 20;
                            imageInfo{largestImageInSVS,6} = "assumed";
                        end % End TRY: find image layers with defined resolution and magnification
                    else
                        imageInfo{iImageInSVS,4} = NaN;
                        imageInfo{iImageInSVS,5} = NaN;
                        imageInfo{iImageInSVS,6} = "calculated";
                    end % End IF: isFullResolutionScan
                end % End FOR: loop over image layers in SVS file
                % fill in missing resolutions magnifications for rescaled images
                %- this will identify the 20x rescale from 40x scans
                %-- MPP for rescaled 20x is not exactly the same as 20x scans
                imageInfo = estimateimagemagnifications(app,imageInfo);

            catch ME
                % alert user that an error occured if not already done
                if ~app.ErrorAlertAlreadyCreated
                    app.ErrorAlertAlreadyCreated = true;
                    message_text = "GLASS-AI encountered an error while getting info from svs file:" + app.currentFileNameExt+ ...
                        newline + "[ERROR MESSAGE]" +...
                        newline + ME.message;
                    uialert(app.GLASSAIUIFigure,message_text,"I/O error")
                end
                fprintf("%s - %s %s\n",string(datetime),"[ERROR]: An error occured while getting info from", app.currentFileNameExt)
                %rethrow error to stop execution
                rethrow(ME);
            end % end TRY: error handling

            logactivity(app,"finish",false);
        end % End function: getsvsinfo


        function splitimagetoblockfiles(app, wholeImage, xImagePixels, yImagePixels, bigBlockSize)
            % Breaks the image into smaller blocks for reduced memory
            % usage. Saves blocks to disk; will be significantly impacted
            % by I/O speed of disk.
            logactivity(app,"start",false);

            %initialize storage cell arrays
            blockNames =  cell(app.nBigBlocksX, app.nBigBlocksY);
            blockCoords = cell(app.nBigBlocksX, app.nBigBlocksY);

            try %error handling
                %iterate over each block in image
                for iBigBlocksX=1:app.nBigBlocksX
                    for iBigBlocksY=1:app.nBigBlocksY

                        % Compute block coordinates
                        leftCoordinate = (bigBlockSize * (iBigBlocksX-1)) + 1; %left
                        rightCoordinate = leftCoordinate + bigBlockSize - 1; %right
                        topCoordinate = (bigBlockSize * (iBigBlocksY-1)) + 1; %top
                        bottomCoordinate = topCoordinate + bigBlockSize - 1; %bottom

                        % make sure block coordinates are not out of range
                        if(rightCoordinate>xImagePixels),rightCoordinate=xImagePixels;end %keep right edge in range
                        if(bottomCoordinate>yImagePixels),bottomCoordinate=yImagePixels;end %keep bottom edge in range
                        if(leftCoordinate<1),leftCoordinate=1;end %keep left edge in range
                        if(topCoordinate<1),topCoordinate=1;end %keep top edge in range

                        % Get the current block from image
                        currentImageBlock = wholeImage(leftCoordinate:rightCoordinate, topCoordinate:bottomCoordinate, :);
                        % store formatted block name "x-y.tiff"
                        currentImageBlockName = sprintf("%d-%d.tif",iBigBlocksX,iBigBlocksY);
                        blockNames{iBigBlocksX,iBigBlocksY} = currentImageBlockName;
                        % store block coordinates
                        blockCoords{iBigBlocksX,iBigBlocksY} = [leftCoordinate rightCoordinate topCoordinate bottomCoordinate];
                        % write to file
                        imwrite(currentImageBlock,fullfile("ImageBlocksTemp",currentImageBlockName),"tif");
                        fprintf("%s - %s %s %s\n",string(datetime),"Low memory mode: Saved",currentImageBlockName, "in ImageBlocksTemp folder")
                    end %End FOR: iBigBlocksY=1:app.nBigBlocksY
                end %End FOR: iBigBlocksX=1:app.nBigBlocksX
            catch ME
                % alert user that an error occured if not already done
                if ~app.ErrorAlertAlreadyCreated
                    app.ErrorAlertAlreadyCreated = true;
                    message_text = "GLASS-AI encountered an error during image division." + ...
                        newline + "[ERROR MESSAGE]" + newline + ME.message;
                    uialert(app.GLASSAIUIFigure,message_text,"Analysis error")
                end
                fprintf("%s - %s %s\n",string(datetime),"[ERROR]: An error occured during division of", app.currentFileNameExt)
                %rethrow error to stop execution
                rethrow(ME);
            end %end TRY: error handling
            logactivity(app,"finish",false);
        end % End function: splitimagetoblockfiles

        function [classBlock,maxScoreBlock] = gradeimage(app,imageBlock,net)
            % Breaks the imageblocks into small patches and classify them.
            % Returns a matrix of classification for each pixel in the image
            % Optionally returns matrix of maximum activation weight for each
            % pixel in the image and all activation weights.

            logactivity(app,"start",true)

            % Remove existing TempFolder
            if exist('TempFolder', 'dir'), rmdir('TempFolder', 's'); end

            % add padding pixels to imageBlock if needed
            imageBlock = padimageblock(app,imageBlock);
            imageBlockXYPixels = [size(imageBlock,1) size(imageBlock,2)];
            % create image patches from input imageBlock
            patchedImageBlock = makeimagepatchesfromblock(app,imageBlock);
            %try to use GPU unless forced, otherwise use CPU for classification
            useGPU = canUseGPU  && ~app.FORCE_CPU;
            if useGPU
                statusupdate(app,sprintf("Analyzing patch %d of %d using GPU",...
                    app.iBigBlock, app.nBigBlocks));
            else %using cpu
                statusupdate(app,sprintf("Analyzing patch %d of %d using CPU",...
                    app.iBigBlock, app.nBigBlocks));
            end % End IF: useGPU

            %mask image to skip empty space
            maskedPatchedImageBlockSet = maskemptypatches(app,patchedImageBlock,useGPU);

            %classify image patches
            try %error handling
                %if all of the patches are skipped fill score with 0
                if max(size(maskedPatchedImageBlockSet.ImageNumber)) == 0
                    fprintf("%s - %s%.0f %s\n", string(datetime),"[NOTE]: All patches in block #",app.iBigBlock, "were skipped")
                    scoresBlock = zeros([imageBlockXYPixels 7]);
                else
                    pixelScores = apply(patchedImageBlock,@(block)classifypatches(app,useGPU, block.Data, net),...
                        'BlockLocationSet', maskedPatchedImageBlockSet,...
                        'UseParallel',useGPU,...
                        'OutputLocation','TempFolder');

                    %collect output scores
                    scoresBlock = gather(pixelScores);

                end % End IF: max(size(maskedPatchedImageBlockSet.ImageNumber)) == 0

                % clean temp folder
                if exist('TempFolder', 'dir'), rmdir('TempFolder', 's'); end

                % get max score and associated class
                [maxScoreBlock,classBlock] = max(scoresBlock,[],3);
                % set skipped pixels' class to 0
                %- skipped pixels have all scores == 0
                classBlock(maxScoreBlock==0) = 0;

                % Smooth classifications to remove artifacts from patch edges
                classBlock = smoothclasses(app,classBlock);

                logactivity(app,"finish",true)

            catch ME
                % alert user that an error occured if not already done
                if ~app.ErrorAlertAlreadyCreated
                    app.ErrorAlertAlreadyCreated = true;
                    message_text = "GLASS-AI encountered an error during patch classification." + ...
                        newline + "[ERROR MESSAGE]" + newline + ME.message;
                    uialert(app.GLASSAIUIFigure,message_text,"Analysis error")
                end
                fprintf("%s - %s %s %s%.0f\n",string(datetime),"[ERROR]: An error ocurred while classfying patches in",app.currentFileNameExt,"block #",app.iBigBlock)
                %rethrow error to stop execution
                rethrow(ME);
            end % End TRY: error handling
        end % End function gradeimage

        function pixelScores = classifypatches(~,useGPU,imagePatch,net)
            % Predict tumor grades in image patch using GLASS-AI.

            % Get dimensions of image
            %imagePatch = patch.Data;
            [xImagePixels,yImagePixels,~] = size(imagePatch);

            % If image patch is too small, pad bottom and right sides with
            % white space
            %- make sure it's at least 224x224 pixels
            %-- use this instead of padding patches in apply call to improve
            %-- performance on patch edges.
            xPadPixels = 224-xImagePixels;
            yPadPixels = 224-yImagePixels;
            if xImagePixels < 224
                %pad columns with white pixels
                xPadArray = zeros([xPadPixels yImagePixels 3])+255;
                imagePatch = [imagePatch; xPadArray];
            end

            if yImagePixels < 224
                %pad rows with white pixels
                yPadArray = zeros([224 yPadPixels 3])+255;
                imagePatch = [imagePatch yPadArray];
            end

            % Predict grades
            % use CPU if forced otherwise try GPU before CPU
            if useGPU
                exEnv = "auto";
            else
                exEnv = "cpu";
            end

            [~,~,pixelScores] = semanticseg(imagePatch, net,...
                'ExecutionEnvironment',exEnv);

            % trim padded area off scores before returning
            pixelScores = pixelScores(1:xImagePixels, 1:yImagePixels, :);
        end % End function: classifypatches

        function [Grade1,Grade2,Grade3,Grade4,Airway,Alveoli,Background,tumorMask] = extractclassmasks(~,classes)
            % Get masks of each class and combined tumor areas

            % Mask for each class
            Grade1 = classes==1; % grade 1 tumor
            Grade2 = classes==2; % grade 2 tumor
            Grade3 = classes==3; % grade 3 tumor
            Grade4 = classes==4; % grade 4 tumor
            Alveoli = classes==5; % normal aleveoli
            Airway = classes==6; % normal airways
            Background = classes==7; % background/void

            % Combined mask for tumor areas
            tumorMask = Grade1|Grade2|Grade3|Grade4;

        end % End function: extractclassmasks


        function [smoothedClasses] = smoothclasses(app,inputClasses)
            % Applies a smoothing kernel across tumor classes to
            % minimize artifacts from patch edges. After smoothing,
            % airway, alveoli, and background pixels are restored.
            logactivity(app,"start",true)

            try % error handling
                % create copy of input data.
                %- input values will be used to restore airway, alveoli,
                %- and background pixels fater smoothing
                smoothedClasses = inputClasses;

                % treat skipped pixels as background
                %- skipped pixels come from tissue thresholding
                smoothedClasses(inputClasses==0) = 7;

                % perform smoothing with selected method
                switch app.SMOOTH_METHOD
                    case "smoothing_median"
                        fprintf("%s - %s %s %s%.0f\n",string(datetime),"Performing median smoothing on tumor classes in",app.currentFileNameExt,"block #",app.iBigBlock)
                        % perform smoothing
                        smoothedClasses = medfilt2(smoothedClasses,app.SMOOTH_SIZE,'symmetric');
                        fprintf("%s - %s\n",string(datetime), "Finished smoothing image with median smoothing")
                    case "smoothing_mode"
                        fprintf("%s - %s %s %s%.0f\n",string(datetime),"Performing mode smoothing on tumor classes in",app.currentFileNameExt,"block #",app.iBigBlock)
                        % make sure smoothing kernel is odd length
                        if any(mod(app.SMOOTH_SIZE,2) == 0)
                            app.SMOOTH_SIZE = app.SMOOTH_SIZE + (mod(app.SMOOTH_SIZE,2)-1);
                        end
                        % perform smoothing
                        smoothedClasses = modefilt(smoothedClasses,app.SMOOTH_SIZE,'symmetric');
                        fprintf("%s - %s\n",string(datetime), "Finished smoothing image with mode smoothing")
                    case "smoothing_bilateral"
                        fprintf("%s - %s %s %s%.0f\n",string(datetime),"Performing bilateral smoothing on tumor classes in",app.currentFileNameExt,"block #",app.iBigBlock)
                        % make sure smoothing kernel is odd length
                        if any(mod(app.SMOOTH_SIZE,2) == 0)
                            app.SMOOTH_SIZE = app.SMOOTH_SIZE+(mod(app.SMOOTH_SIZE,2)-1);
                        end
                        % perform smoothing
                        smoothedClasses = imbilatfilt(smoothedClasses,10,floor((app.SMOOTH_SIZE(1)/2)/2));
                        fprintf("%s - %s\n",string(datetime), "Finished smoothing image with bilateral smoothing")
                    case "smoothing_hamming"
                        fprintf("%s - %s %s %s%.0f\n",string(datetime),"Performing Hamming window smoothing on tumor classes in",app.currentFileNameExt,"block #",app.iBigBlock)
                        % convert classifications to double since uint8 can't store
                        % NaN values
                        smoothedClasses = double(smoothedClasses);
                        % mask out non-tumor classes with NaN
                        nontumorClasses = smoothedClasses==5|smoothedClasses==6|smoothedClasses==7;
                        smoothedClasses(nontumorClasses) = NaN;
                        % generate Hamming window
                        window = generatehammingwindow(app);
                        % perform smoothing
                        smoothedClasses = applyhammingwindow(app,window,smoothedClasses);

                        fprintf("%s - %s\n",string(datetime), "Finished smoothing image with Hamming window")
                    case "smoothing_none"
                        % return input as ouput
                        smoothedClasses = inputClasses;
                        fprintf("%s - %s %s %s%.0f\n",string(datetime),"Skipped smoothing on tumor classes in",app.currentFileNameExt,"block #",app.iBigBlock)
                        return
                    otherwise
                        error("No smooothing method defined for selection.")
                end % End switch: app.SMOOTH_METHOD


                % remove any decimals introduced by smoothing
                smoothedClasses = round(smoothedClasses);
                smoothedTumorMask = smoothedClasses==1|smoothedClasses==2|smoothedClasses==3|smoothedClasses==4;

                % close small gaps within and between tumors
                MERGE_RADIUS = ceil(app.TUMOR_MERGE_RADIUS / app.IMAGE_RESOLUTION); % convert microns to pixels
                smoothedTumorMask = imclose(smoothedTumorMask,strel('disk',MERGE_RADIUS));

                % restore any tumor pixels that dropped out during smoothing
                restoreTumorMask = inputClasses==1|inputClasses==2|inputClasses==3|inputClasses==4;
                restoreTumorMask = restoreTumorMask & ~smoothedTumorMask;
                % don't restore tumors less than size threshold
                PIXEL_AREA = app.IMAGE_RESOLUTION^2;
                restoreTumorMask = bwareaopen(restoreTumorMask,ceil(app.TUMOR_SIZE_THRESHOLD/PIXEL_AREA));
                smoothedClasses(restoreTumorMask) = inputClasses(restoreTumorMask);
                fprintf("%s - %s %s %s%.0f\n",...
                    string(datetime),...
                    "Restored dropped tumor pixels in",...
                    app.currentFileNameExt,...
                    "block #",...
                    app.iBigBlock)
                clear restoreTumorMask

                % restore any alveoli pixels outside of tumors
                % that were lost during smoothing.
                restoreAlveoliMask = (inputClasses==5) & ~smoothedTumorMask;
                smoothedClasses(restoreAlveoliMask) = 5;
                fprintf("%s - %s %s %s%.0f\n",...
                    string(datetime),...
                    "Restored normal alveoli pixels in",...
                    app.currentFileNameExt,...
                    "block #",...
                    app.iBigBlock)
                clear restoreAlveoliMask

                % restore any airway pixels outside of tumors
                % that were lost during smoothing.
                restoreAirwayMask = (inputClasses==6) & ~smoothedTumorMask;
                smoothedClasses(restoreAirwayMask) = 6;
                fprintf("%s - %s %s %s%.0f\n", string(datetime),...
                    "Restored normal airway pixels in",...
                    app.currentFileNameExt,"block #",...
                    app.iBigBlock)
                clear restoreAirwayMask

                % restore background and masked pixels
                smoothedClasses(inputClasses==0) = 0;
                smoothedClasses(inputClasses==7) = 7;
                fprintf("%s - %s %s %s%.0f\n", string(datetime), ...
                    "Restored background and skipped pixels in", ...
                    app.currentFileNameExt, ...
                    "block #", app.iBigBlock)

                if app.SMOOTH_METHOD == "smoothing_hamming"
                    % hamming window smoothing can leave some NaNs inside of tumor
                    % regions that will not be filled in correctly with
                    % pre-smoothing values. Fill these in with the nearest value
                    % instead.
                    %- applying this before replacing values as above would result
                    %- in all non-tumor regions being filled with tumor classes.
                    %- Have to do this before converting smoothedClasses back to
                    %- uint8 otherwise NaNs will become zeros
                    smoothedClasses = fillmissing(smoothedClasses,"nearest");
                end

                % convert back to uint8
                smoothedClasses = uint8(smoothedClasses);
                logactivity(app,"finish",true)
            catch ME
                % alert user that an error occured if not already done
                if ~app.ErrorAlertAlreadyCreated
                    app.ErrorAlertAlreadyCreated = true;
                    message_text = "GLASS-AI encountered an error during patch smoothing." + ...
                        newline + "[ERROR MESSAGE]" + newline + ME.message;
                    uialert(app.GLASSAIUIFigure,message_text,"Analysis error")
                end
                fprintf("%s - %s %s %s%.0f\n",string(datetime),"[ERROR]: An error curred while smoothing patches in",app.currentFileNameExt,"block #",app.iBigBlock)
                %rethrow error to stop execution
                rethrow(ME);
            end % End TRY: error handling
        end % End function: smoothclasses

        function individualTumorStats = individualtumoranalysis(app,classifications,segmentedTumorMask)
            % Calculates stats for individual tumors in image
            logactivity(app,"start",false)

            PIXEL_AREA = app.IMAGE_RESOLUTION^2;

            try
                % get indices for pixels of each grade
                indicesG1 = find(classifications==1);
                indicesG2 = find(classifications==2);
                indicesG3 = find(classifications==3);
                indicesG4 = find(classifications==4);
                clear classifications %free up some memory

                % get tumor centroids for labeling
                tumorCC = bwconncomp(segmentedTumorMask,8); % Segment individual tumors
                s = regionprops(tumorCC,'Centroid'); % Get centroid coordinates for tumor labels
                tumorCentroids = cat(1,s.Centroid); % Convert centroid coordinates to [x y] matrix
                clear segmentedTumorMask

                fprintf("%s - %s %.0f %s %s\n",string(datetime),"Calculated tumor centroids for", length(tumorCentroids),"tumors in", app.currentFileNameExt)

                % individual tumor table
                %- define column names and data types
                individualTumorTableCols = { %15 variables
                    %column name            %data type
                    'image_id'              'string'
                    'tumor_id'              'double'
                    'tumor_grade'           'double'
                    'grade_assign_method'   'string'
                    'g1_percentage'         'double'
                    'g2_percentage'         'double'
                    'g3_percentage'         'double'
                    'g4_percentage'         'double'
                    'g1_area'               'double'
                    'g2_area'               'double'
                    'g3_area'               'double'
                    'g4_area'               'double'
                    'total_tumor_area'      'double'
                    'centroid_x'            'double'
                    'centroid_y'            'double'
                    }'; %transpose to horizontal cell array before assignment
                %- initialize table
                individualTumorTableColsCount = size(individualTumorTableCols,2);

                % analyze individual tumors
                %- skip if no tumors were found in slide
                if ~isempty(tumorCentroids)
                    fprintf("%s - %s %d %s %s\n",string(datetime),"Performing individual tumor analysis for",length(tumorCentroids(:,1)), "tumors in", app.currentFileNameExt)

                    % Get segmented tumor count
                    totalTumorCountInSlide = length(tumorCentroids(:,1));

                    % intialize individual tumors table for slide
                    individualTumorStats = table( ...
                        'Size',[totalTumorCountInSlide individualTumorTableColsCount],...
                        'VariableNames',individualTumorTableCols(1,:),...
                        'VariableTypes',individualTumorTableCols(2,:));

                    % analyze each segmented tumor in image
                    for iTumor = 1:totalTumorCountInSlide
                        % get indices of pixels in tumor
                        tumorIndices=tumorCC.PixelIdxList{iTumor};

                        % Calculate area of each grade in individual tumor
                        tumorG1Area = nnz(ismember(tumorIndices,indicesG1))*PIXEL_AREA;
                        tumorG2Area = nnz(ismember(tumorIndices,indicesG2))*PIXEL_AREA;
                        tumorG3Area = nnz(ismember(tumorIndices,indicesG3))*PIXEL_AREA;
                        tumorG4Area = nnz(ismember(tumorIndices,indicesG4))*PIXEL_AREA;

                        % Sum area of all grades in individual tumor
                        tumorTotalArea = tumorG1Area + tumorG2Area + tumorG3Area + tumorG4Area;

                        % Calculate proportion of each grade in tumor
                        tumorG1Percent = (double(tumorG1Area)/tumorTotalArea);
                        tumorG2Percent = (double(tumorG2Area)/tumorTotalArea);
                        tumorG3Percent = (double(tumorG3Area)/tumorTotalArea);
                        tumorG4Percent = (double(tumorG4Area)/tumorTotalArea);

                        % Assign overall grade to tumor
                        if app.ASSIGN_OVERALL_GRADES
                            switch app.ASSIGN_GRADES_METHOD
                                case "majority"
                                    [~,tumorGrade] = max([tumorG1Percent tumorG2Percent tumorG3Percent tumorG4Percent]);
                                case "highest"
                                    if tumorG4Percent >= app.ASSIGN_GRADES_THRESHOLD
                                        tumorGrade = 4;
                                    elseif tumorG3Percent >= app.ASSIGN_GRADES_THRESHOLD
                                        tumorGrade = 3;
                                    elseif tumorG2Percent >= app.ASSIGN_GRADES_THRESHOLD
                                        tumorGrade = 2;
                                    elseif tumorG1Percent >= app.ASSIGN_GRADES_THRESHOLD
                                        tumorGrade = 1;
                                    end
                                otherwise
                                    tumorGrade = 0;
                            end % End SWITCH: app.ASSIGN_GRADES_METHOD
                        else
                            tumorGrade = 0;
                        end % End IF: app.ASSIGN_OVERALL_GRADES

                        % add individual tumor stats to table
                        individualTumorStats(iTumor,:) = {
                            %variable                   %column name            %data type
                            app.currentFileName,...     'image_id'              'string'
                            iTumor,...                  'tumor_id'              'double'
                            tumorGrade,...              'tumor_grade'           'double'
                            app.ASSIGN_GRADES_METHOD,...'grade_assign_method'   'string'
                            tumorG1Percent,...          'g1_percentage'         'double'
                            tumorG2Percent,...          'g2_percentage'         'double'
                            tumorG3Percent,...          'g3_percentage'         'double'
                            tumorG4Percent,...          'g4_percentage'         'double'
                            tumorG1Area,...             'g1_area'               'double'
                            tumorG2Area,...             'g2_area'               'double'
                            tumorG3Area,...             'g3_area'               'double'
                            tumorG4Area,...             'g4_area'               'double'
                            tumorTotalArea,...          'total_tumor_area'      'double'
                            tumorCentroids(iTumor,1),...'centroid_x'            'double'
                            tumorCentroids(iTumor,2),...'centroid_y'            'double'
                            };
                    end %end FOR: individual tumors in slide

                else %no tumors found in slide
                    fprintf("%s - %s %s\n",string(datetime),"No tumors found in",app.currentFileNameExt)
                    % output empty individual tumors table
                    individualTumorStats = table( ...
                        'Size',[0 individualTumorTableColsCount],...
                        'VariableNames',individualTumorTableCols(1,:),...
                        'VariableTypes',individualTumorTableCols(2,:));
                end % End IF: ~isempty(tumorCentroids)

                fprintf("%s - %s %s\n",string(datetime),"Saved individual tumor stats for",app.currentFileNameExt)
            catch ME
                % alert user that an error occured if not already done
                if ~app.ErrorAlertAlreadyCreated
                    app.ErrorAlertAlreadyCreated = true;
                    message_text = "GLASS-AI encountered an error during individual tumor analysis." + ...
                        newline + "[ERROR MESSAGE]" + newline + ME.message;
                    uialert(app.GLASSAIUIFigure,message_text,"Analysis error")
                end
                fprintf("%s - %s %s\n",string(datetime),"[ERROR]: An error occured during individual tumor analysis of",app.currentFileNameExt)
                %rethrow error to stop execution
                rethrow(ME);
            end
            logactivity(app,"finish",false)
        end % End function: individualtumoranalysis


        function gradeImage = createtumorgradeimage(app,classifications)
            % make tumor grade image from classifications.
            logactivity(app,"start",false)
            fprintf("%s - %s %s\n", string(datetime),"Making tumor grade image for", app.currentFileNameExt)
            %initialize gradeImage RGB arrays
            [classificationsWidth,classificationsHeight] = size(classifications);
            ch1 = zeros(classificationsWidth,classificationsHeight, 'uint8');
            ch2 = zeros(classificationsWidth,classificationsHeight, 'uint8');
            ch3 = zeros(classificationsWidth,classificationsHeight, 'uint8');

            % Skipped Patches
            Inds = classifications==0;
            ch1(Inds) = app.SKIPPED_PATCH_COLOR(1);
            ch2(Inds) = app.SKIPPED_PATCH_COLOR(2);
            ch3(Inds) = app.SKIPPED_PATCH_COLOR(3);
            fprintf("%s - %s %s\n", string(datetime),"Adding skipped pixels to tumor grade map for", app.currentFileNameExt)

            % Grade 1
            Inds = classifications==1;
            ch1(Inds) = app.GRADE_1_COLOR(1);
            ch2(Inds) = app.GRADE_1_COLOR(2);
            ch3(Inds) = app.GRADE_1_COLOR(3);
            fprintf("%s - %s %s\n", string(datetime),"Adding Grade 1 LUAD pixels to tumor grade map for", app.currentFileNameExt)

            %Grade 2
            Inds = classifications==2;
            ch1(Inds) = app.GRADE_2_COLOR(1);
            ch2(Inds) = app.GRADE_2_COLOR(2);
            ch3(Inds) = app.GRADE_2_COLOR(3);
            fprintf("%s - %s %s\n", string(datetime),"Adding Grade 2 LUAD pixels to tumor grade map for", app.currentFileNameExt)

            % Grade 3
            Inds = classifications==3;
            ch1(Inds) = app.GRADE_3_COLOR(1);
            ch2(Inds) = app.GRADE_3_COLOR(2);
            ch3(Inds) = app.GRADE_3_COLOR(3);
            fprintf("%s - %s %s\n", string(datetime),"Adding Grade 3 LUAD pixels to tumor grade map for", app.currentFileNameExt)

            % Grade 4
            Inds = classifications==4;
            ch1(Inds) = app.GRADE_4_COLOR(1);
            ch2(Inds) = app.GRADE_4_COLOR(2);
            ch3(Inds) = app.GRADE_4_COLOR(3);
            fprintf("%s - %s %s\n", string(datetime),"Adding Grade 4 LUAD pixels to tumor grade map for", app.currentFileNameExt)

            % Alveoli
            Inds = classifications==5;
            ch1(Inds) = app.NORMAL_ALVEOLI_COLOR(1);
            ch2(Inds) = app.NORMAL_ALVEOLI_COLOR(2);
            ch3(Inds) = app.NORMAL_ALVEOLI_COLOR(3);
            fprintf("%s - %s %s\n", string(datetime),"Adding normal alveoli pixels to tumor grade map for", app.currentFileNameExt)

            % Airways
            Inds = classifications==6;
            ch1(Inds) = app.NORMAL_AIRWAY_COLOR(1);
            ch2(Inds) = app.NORMAL_AIRWAY_COLOR(2);
            ch3(Inds) = app.NORMAL_AIRWAY_COLOR(3);
            fprintf("%s - %s %s\n", string(datetime),"Adding normal airway pixels to tumor grade map for", app.currentFileNameExt)

            % Background/void = white
            Inds = classifications==7;
            ch1(Inds) = app.BACKGROUND_COLOR(1);
            ch2(Inds) = app.BACKGROUND_COLOR(2);
            ch3(Inds) = app.BACKGROUND_COLOR(3);
            fprintf("%s - %s %s\n", string(datetime),"Adding background/void pixels to tumor grade map for", app.currentFileNameExt)

            %merge channels to create RGB image
            gradeImage = cat(3,ch1,ch2,ch3);
            %convert to uint8 to reduce size
            gradeImage = uint8(gradeImage);

            logactivity(app,"finish",false)
        end %end function: createtumorgradeimage


        function segmentationImage = createsegmentationimage(app,inputImage, segmentedTumorMask, individualTumorStats)
            %create an image with labeled tumor segmentations overlayed on
            %H&E image
            logactivity(app,"start",false)
            fprintf("%s - %s %s\n",string(datetime), "Making segmentation image for",app.currentFileNameExt)

            %adjust tumor mask to output scale
            segmentedTumorMask = imresize(segmentedTumorMask, app.OUTPUT_SEGMENTATION_IMAGE_SCALE,"nearest");

            %initialize image channel arrays
            inputImage = imresize(inputImage,app.OUTPUT_SEGMENTATION_IMAGE_SCALE);
            fprintf("%s - %s %s %s %.2f%s\n", string(datetime),"Rescaled image from", app.currentFileNameExt, "by", app.OUTPUT_SEGMENTATION_IMAGE_SCALE,"x")

            ch1 = inputImage(:,:,1);
            ch2 = inputImage(:,:,2);
            ch3 = inputImage(:,:,3);

            %make red overlay from tumorMask
            ch2(segmentedTumorMask) = 0; %remove green signal from annotated image
            ch3(segmentedTumorMask) = 0; %remove blue signal from annotated image
            segmentationImage = cat(3,ch1,ch2,ch3);
            clear ch1 ch2 ch3
            fprintf("%s - %s %s\n", string(datetime),"Added red overlay to tumors in", app.currentFileNameExt)


            % get tumor IDs and centroids for adding labels
            IDs = individualTumorStats.tumor_id;
            Centroid_x = individualTumorStats.centroid_x;
            Centroid_y = individualTumorStats.centroid_y;
            clear individualTumorStats

            %adjust image and centroid coordinates to output scale
            Centroid_x = Centroid_x*app.OUTPUT_SEGMENTATION_IMAGE_SCALE;
            Centroid_y = Centroid_y*app.OUTPUT_SEGMENTATION_IMAGE_SCALE;
            %round down to make coordinates integers
            Centroid_x = floor(Centroid_x);
            Centroid_y = floor(Centroid_y);
            fprintf("%s - %s %s %s %.2f%s\n", string(datetime),"Rescaled centroids from", app.currentFileNameExt, "by", app.OUTPUT_SEGMENTATION_IMAGE_SCALE,"x")

            % Add outline to segmented tumors
            Boundry = bwperim(segmentedTumorMask,8);
            clear tumorMask

            Boundry = imdilate(Boundry,strel('disk',3));
            segmentationImage = imoverlay(segmentationImage,Boundry,'b');
            clear Boundry
            fprintf("%s - %s %s\n", string(datetime),"Added segmentation border to segmented tumors in", app.currentFileNameExt)


            % Add tumor ID labels on the image
            for iTumor = 1:size(Centroid_x,1)
                position = [round(Centroid_x(iTumor)) round(Centroid_y(iTumor))];
                text_str = ['ID: ' num2str(IDs(iTumor), '%d')];

                % Using the insertText function from the computer vision
                % toolbox is extremely memory intensive.
                % Use Label Image package by Amitabh Verma instead
                %- (https://www.mathworks.com/matlabcentral/fileexchange/31187-label-image)
                segmentationImage = labelimg(segmentationImage, text_str, position,1);
            end % end for loop: Add tumor ID labels on the image
            fprintf("%s - %s %s\n", string(datetime),"Added tumor labels border to tumors in", app.currentFileNameExt)

            logactivity(app,"finish",false)
        end % End function: createsegmentationimage


        function [normalizedImage] = normalizeStaining(app, inputImage)
            % Normalize the staining appearance of images originating from H&E stained
            % sections.
            %
            % Input:
            % Ii         - RGB input image;
            % maxCRef   - (optional) reference maximum stain concentrations for H&E (default value is defined);

            %% These values are defined in the Stain Normalization options
            %% at runtime
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

            logactivity(app,"start",true)
            % reference maximum stain concentrations for H&E
            maxCRef = [
                1.9705
                1.0308
                ];

            % get image dimensions
            workingImageHeightPixels = size(inputImage,1);
            workingImageWidthPixels = size(inputImage,2);

            % create working copy of input image
            workingImage = double(inputImage);
            workingImage = reshape(workingImage, [], 3);

            % calculate optical density
            OD = -log((workingImage+1)/app.NORMALIZE_IO);

            % remove transparent pixels from vector calculation
            ODHat = OD(~any(OD < app.NORMALIZE_BETA, 2), :);

            %skip normalization if < threshold percent of opaque pixels
            if size(ODHat,1)/size(OD,1) < (app.NORMALIZE_THRESHOLD/100)
                normalizedImage = inputImage;
                fprintf("%s - %s %s %s%.0f %s\n",string(datetime),"[NOTE] Stain normalization for", app.currentFileNameExt,"block #",app.iBigBlock,"was skipped due to low tissue content")
                return
            end

            try %error handling
                % calculate OD eigenvectors
                try % avoid error if no opaque pixels present
                    [V, ~] = eig(cov(ODHat));
                    % project on the plane spanned by the eigenvectors corresponding to the two
                    % largest eigenvalues
                    thetaHat = ODHat*V(:,2:3);
                    clear ODHat

                    % find the min and max vectors and project back to OD space
                    phi = atan2(thetaHat(:,2), thetaHat(:,1));
                    clear thetaHat

                    minPhi = prctile(phi, app.NORMALIZE_ALPHA);
                    maxPhi = prctile(phi, 100-app.NORMALIZE_ALPHA);
                    clear phi

                    vMin = V(:,2:3)*[cos(minPhi); sin(minPhi)];
                    vMax = V(:,2:3)*[cos(maxPhi); sin(maxPhi)];

                    % a heuristic to make the vector corresponding to hematoxylin first and the
                    % one corresponding to eosin second
                    if vMin(1) > vMax(1)
                        hematoxylinStainDensity = [vMin vMax];
                    else
                        hematoxylinStainDensity = [vMax vMin];
                    end

                    % rows correspond to channels (RGB), columns to OD values
                    Y = reshape(OD, [], 3)';

                    % determine concentrations of the individual stains
                    C = hematoxylinStainDensity \ Y;

                    % normalize stain concentrations
                    maxC = prctile(C, 99, 2);
                    C = bsxfun(@rdivide, C, maxC);
                    C = bsxfun(@times, C, maxCRef);

                    % recreate the image using reference mixing matrix
                    normalizedImage = app.NORMALIZE_IO*exp(-app.NORMALIZE_HEREF * C);
                    normalizedImage = reshape(normalizedImage', workingImageHeightPixels, workingImageWidthPixels, 3);
                    normalizedImage = uint8(normalizedImage);

                    fprintf("%s - %s %s %s%.0f\n",string(datetime),"Normalized H&E stain for", app.currentFileNameExt,"block #",app.iBigBlock)
                catch ME %skip normalization if error occurs
                    normalizedImage = inputImage;
                    fprintf("%s - %s %s %s%.0f %s\n",string(datetime),"[WARNING]: Skipping stain normalization for", app.currentFileNameExt,"block #",app.iBigBlock, "because an error occured")
                    message_text = "GLASS-AI encountered an error during stain normalization." + ...
                        newline + "Stain normalization was not performed." + ...
                        newline + "[ERROR]" +newline +ME.message;
                    % Alert user stain normalization was skipped
                    uialert(app.GLASSAIUIFigure,message_text,"Analysis alert", "Icon", "info")
                end % End TRY: calculate OD eigenvectors
            catch ME
                % alert user that an error occured if not already done
                if ~app.ErrorAlertAlreadyCreated
                    app.ErrorAlertAlreadyCreated = true;
                    message_text = "GLASS-AI encountered an error during stain normalization." + ...
                        newline + "[ERROR MESSAGE]" + newline + ME.message;
                    uialert(app.GLASSAIUIFigure,message_text,"Stain normalization error")
                end
                fprintf("%s - %s %s %s%.0f\n",string(datetime),"[ERROR]: An error occured during stain normalization of",app.currentFileNameExt,"in block #",app.iBigBlock)
                %rethrow error to stop execution
                rethrow(ME);
            end % End TRY: error handling



            logactivity(app,"finish",true)
        end % End function: normalizeStaining


        function rebuiltImage = rebuildimagefromblockfiles(app,inputFilePath, xImagePixels, yImagePixels, zImagePixels, blockNames, blockCoords)
            % use split images in input folder to rebuild image
            logactivity(app,"start",false)
            fprintf("%s - %s %s %s %s\n", string(datetime),"[Low memory mode]: Rebuilding image for",app.currentFileNameExt, "from blocks in", inputFilePath)
            %initialize output image
            rebuiltImage = zeros([xImagePixels yImagePixels zImagePixels],"uint8");

            %iterate over image blocks
            for iBlockX = 1:app.nBigBlocksX
                for iBlockY = 1:app.nBigBlocksY
                    %get output image coordinates
                    outputCoordinates = blockCoords{iBlockX,iBlockY};
                    leftCoordinate = outputCoordinates(1);
                    rightCoordinate = outputCoordinates(2);
                    topCoordinate = outputCoordinates(3);
                    bottomCoordinate = outputCoordinates(4);
                    %read image file into target coordinates of output file
                    fetchedImage = imread(fullfile(inputFilePath,blockNames{iBlockX,iBlockY}));
                    rebuiltImage(leftCoordinate:rightCoordinate,topCoordinate:bottomCoordinate,:) = fetchedImage(1:(rightCoordinate-leftCoordinate)+1,1:(bottomCoordinate-topCoordinate)+1,:);
                end
            end
            fprintf("%s - %s %s %s\n", string(datetime),"[Low memory mode]: Finished rebuilding image for",inputFilePath, "from image blocks")
            logactivity(app,"false",false)
        end %End function: rebeuildimagefromblockfiles

        function [blockNames, blockCoords] = generateimageblockinfo(app,bigBlockSize,xImagePixels,yImagePixels)
            % Generate the file names and image pixel coordinates for each of
            % the image blocksto be used when splitting the image.

            logactivity(app,"start",false)

            % calculate the number of analysis blocks
            app.nBigBlocksX = ceil(xImagePixels/bigBlockSize);
            app.nBigBlocksY = ceil(yImagePixels/bigBlockSize);
            app.nBigBlocks = app.nBigBlocksX * app.nBigBlocksY; % capture total number of blocks for status updates
            fprintf("%s - %s %s %0.f %s%.0d%s%.0f%s\n",string(datetime),app.currentFileNameExt,"will be divided into",app.nBigBlocks, ...
                "blocks (",app.nBigBlocksX,"x",app.nBigBlocksY,")")
            app.iBigBlock = 0; % initialize analysis block counter to 0 for current image

            % initialize output variable cells
            blockNames  = cell(app.nBigBlocksX, app.nBigBlocksY);
            blockCoords = cell(app.nBigBlocksX, app.nBigBlocksY);

            % iterate over each image block
            for iBigBlockX = 1:app.nBigBlocksX
                for iBigBlockY = 1:app.nBigBlocksY

                    % Compute block coordinates
                    leftCoordinate = (bigBlockSize * (iBigBlockX-1)) + 1; %left
                    rightCoordinate = leftCoordinate + bigBlockSize - 1; %right

                    topCoordinate = (bigBlockSize * (iBigBlockY-1)) + 1; %top
                    bottomCoordinate = topCoordinate + bigBlockSize - 1; %bottom

                    % make sure block coordinates are not out of range
                    if(rightCoordinate>xImagePixels), rightCoordinate = xImagePixels;end %keep right edge in range
                    if(bottomCoordinate>yImagePixels), bottomCoordinate = yImagePixels;end %keep bottom edge in range
                    if(leftCoordinate<1), leftCoordinate = 1;end %keep left edge in range
                    if(topCoordinate<1), topCoordinate = 1;end %keep top edge in range

                    % Get the current block
                    blockNames{iBigBlockX,iBigBlockY} = sprintf("%d-%d.tif",iBigBlockX,iBigBlockY);
                    blockCoords{iBigBlockX,iBigBlockY} = [leftCoordinate rightCoordinate topCoordinate bottomCoordinate];
                end %End FOR loop nBigBlocksY
            end %End FOR loop nBigBlocksX

            logactivity(app,"finish",false)
        end % End function: generateimageblockinfo

        function cleanUpGLASSAI(app)
            % cleanup the temporary files generated during analysis run
            logactivity(app,"start",false)
            % remove temporary folders from previous analysis
            if exist('TempFolder', 'dir'), rmdir('TempFolder', 's'); end
            if exist('ImageBlocksTemp', 'dir'), rmdir('ImageBlocksTemp', 's'); end
            if exist('NormBlocksTemp', 'dir'), rmdir('NormBlocksTemp', 's'); end
            if exist('ClassBlocksTemp', 'dir'), rmdir('ClassBlocksTemp', 's'); end
            logactivity(app,"finish",false)
        end % End function: cleanUpGLASSAI

        function outputWindow = generatehammingwindow(app)
            %generate Hamming window for smoothing
            logactivity(app,"start",false)

            % get dimensions of window
            windowHeight = app.SMOOTH_SIZE(1);
            windowWidth  = app.SMOOTH_SIZE(2);

            %create vertical Hamming vector
            sizeVerticalVector = windowHeight*2;
            veriticalVector = zeros(windowHeight,1);
            for n = 0:sizeVerticalVector
                veriticalVector(n+1,1) = 0.54-0.46*cos(2*pi*(n/sizeVerticalVector-1));
            end
            %create horizontal Hamming vector
            sizeHorizontalVector = windowWidth*2;
            horizontalVector = zeros(1,windowWidth);
            for n = 0:sizeHorizontalVector
                horizontalVector(1,n+1) = 0.54-0.46*cos(2*pi*(n/sizeHorizontalVector-1));
            end

            % make 2D window from outer product of vectors
            outputWindow = veriticalVector*horizontalVector;
            logactivity(app,"finish",false)
        end % End function: generatehammingwindow

        function smoothedOutput = applyhammingwindow(app,hammingWindow,inputImage)
            %perform feature smoothing using Hamming window
            logactivity(app,"start",false)

            % Check for NaN's:
            indexNan = isnan(inputImage);
            imageHasNan = any(indexNan(:));

            % calculate rescaling factor
            if imageHasNan
                %set NaN values to 0 for smoothing
                inputImage(indexNan) = 0;
                rescaleFactor = imfilter(double(~indexNan),hammingWindow,'replicate','conv');
            else
                rescaleFactor = sum(hammingWindow(:));
            end

            % make Hamming window values float datatype if not already
            if ~isfloat(hammingWindow)
                hammingWindow = double(hammingWindow);
            end

            if imageHasNan
                smoothedOutput = imfilter(inputImage,hammingWindow,'replicate','conv');
                smoothedOutput = smoothedOutput./rescaleFactor;
            else
                smoothedOutput = imfilter(inputImage,hammingWindow/rescaleFactor,'replicate','conv');
            end

            % replace NaN values from inputImage
            smoothedOutput(indexNan) = NaN;
            logactivity(app,"finish",false)
        end % End function: applyhammingwindow


        function  writetiff(app,Image,filename)
            %write tiff files with metadata
            logactivity(app,"start",false)
            fprintf("%s - %s %s\n",string(datetime),"Writing image to ",fullfile(app.OUTPUT_PATH, filename))

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
            logactivity(app,"finish",false)
        end


        function outInfo = estimateimagemagnifications(app,imageInfo)
            %estimate missing image magnifications in .svs files using the
            %largest image present. Used to identify 20x magnification
            %images from slides scanned at higher magnifications.

            logactivity(app,"start",false)
            % keep input values if nothing changes
            outInfo = imageInfo;

            % find row with values defined by scanner ("source") in col #6
            sourceInfo = imageInfo(contains([imageInfo{:,6}],"source"),:);

            if ~isempty(sourceInfo)
                %calculate relative image sizes
                imageRelativeSizes = [imageInfo{:,1}]./sourceInfo{1};

                % calculate resolutions (MPP)
                outInfo(:,4) = num2cell(round(sourceInfo{4}./sqrt(imageRelativeSizes),4))';

                %calculate magnifications (AppMag)
                outInfo(:,5) = num2cell(round(sourceInfo{5}.*sqrt(imageRelativeSizes),2))';

            end % End IF: ~isempty(sourceInfo)
            logactivity(app,"finish",false)
        end % End function: estimateimagemagnifications

        function segmentedTumorMask = segmentindividualtumors(app, classifications)
            % create a binary image mask of tumors after filling holes,
            % merging nearby tumor pixels, and filtering out small tumors

            logactivity(app,"start",false)

            PIXEL_AREA = app.IMAGE_RESOLUTION^2;
            MERGE_RADIUS = ceil(app.TUMOR_MERGE_RADIUS/app.IMAGE_RESOLUTION); % convert microns to pixels
            SIZE_THRESHOLD = ceil(app.TUMOR_SIZE_THRESHOLD/PIXEL_AREA); % convert sq. microns to pixels

            % make a mask of tumor pixels
            tumorMask = classifications==1|classifications==2|classifications==3|classifications==4;
            clear classifications %free up some memory

            % Fill holes in tumors and merge tumors within app.TUMOR_MERGE_RADIUS
            tumorMask = imfill(tumorMask,'holes'); % fill exisiting holes
            tumorMask = imclose(tumorMask,strel('disk',MERGE_RADIUS));
            tumorMask = imfill(tumorMask,'holes'); % fill new holes

            % Filter tumors smaller than app.TUMOR_SIZE_THRESHOLD
            segmentedTumorMask = bwareaopen(tumorMask,SIZE_THRESHOLD,8);

            logactivity(app,"finish",false)
        end % End function: segmentindividualtumors

        function tumorIdLabelMask = maketumorlabelmask(app, segmentedTumorMask)
            % Make a mask of each segmented tumor that stores the ID of the
            % tumor as the pixel intensity.

            logactivity(app,"start",false)
            % initialize labeled tumor image
            %- use uint16 data type to fit ≥ 256 individual tumors
            tumorIdLabelMask = zeros(size(segmentedTumorMask),"uint16");

            % get tumor centroids for labeling
            tumorCC = bwconncomp(segmentedTumorMask,8); % Segment individual tumors
            tumorRegionProps = regionprops(tumorCC,'Centroid'); % Get centroid coordinates for tumor labels
            tumorCentroids = cat(1,tumorRegionProps.Centroid); % Convert centroid coordinates to [x y] matrix
            fprintf("%s - %s %.0f %s %s\n",string(datetime),"Calculated tumor centroids for", length(tumorCentroids),"tumors in", app.currentFileNameExt)

            hasTumors = ~isempty(tumorCentroids);
            if hasTumors
                % Get segmented tumor count
                totalTumorCountInSlide = length(tumorCentroids(:,1));

                % analyze each segmented tumor in image
                for iTumor=1:totalTumorCountInSlide
                    % get indices of pixels in tumor
                    classificationIndices=tumorCC.PixelIdxList{iTumor};

                    % add tumor to labeled tumor mask
                    %- use tumor ID as pixel intensity
                    tumorIdLabelMask(classificationIndices) = iTumor;
                end % end FOR: analyze each segemented tumor in image
            else % no tumors found in slide
                return
            end % end IF: hasTumors
            logactivity(app,"false",false)
        end % End function: maketumorlabelmask

        function overallTumorGradeMask = makeoveralltumorgrademask(app,classifications,tumorIdLabelMask,individualTumorStats)
            % mask individual tumors with overall grade as pixel intensity
            logactivity(app,"start",false)
            % copy original pixel values to keep normal/background
            overallTumorGradeMask = classifications;

            % iterate over segmented tumors
            for iTumor = 1:height(individualTumorStats)
                % assign pixel value based on overall grade
                %- overall grade assigning is done in analyzeindividualtumors()
                %-- method for assigning grade is decided by user
                overallTumorGradeMask(tumorIdLabelMask==iTumor) = individualTumorStats.tumor_grade(iTumor);
            end
            logactivity(app,"false",false)
        end % end function: makeoveralltumorgrademask

        function logactivity(app,temporality,includeBlockNumber)
            % write start/stop for calling parent function to logfile
            % include analysis block number if requested.

            % get name of invoking function
            %- Expected string: GLASS_AI_APP.function
            parentFunctionName = dbstack(1).name;
            parentFunctionName = strsplit(parentFunctionName, '.');
            parentFunctionName = parentFunctionName{2};

            % include analysis block number if requested
            %- default to not include if argument not provided
            if includeBlockNumber
                targetText = sprintf("block#%d of %s", app.iBigBlock, app.currentFileNameExt);
            else
                targetText = app.currentFileNameExt;
            end

            switch lower(temporality)
                case "start"
                    fprintf("%s - Starting %s for %s\n", string(datetime),parentFunctionName,targetText)
                case "finish"
                    fprintf("%s - Finished %s for %s\n", string(datetime),parentFunctionName,targetText)
                otherwise
                    fprintf("%s - Running %s for %s\n", string(datetime),parentFunctionName,targetText)
            end
        end

        function patchedImageBlock = makeimagepatchesfromblock(app,imageBlock)
            % create a blockedImage object with blocksizes appropriate for
            % inputting into GLASS-AI
            logactivity(app,"start",true)
            try
                patchedImageBlock = blockedImage(imageBlock,'BlockSize',app.PATCH_SIZE);
            catch ME
                % alert user that an error occured if not already done
                if ~app.ErrorAlertAlreadyCreated
                    app.ErrorAlertAlreadyCreated = true;
                    message_text = "GLASS-AI encountered an error during imageBlock creation." + ...
                        newline + "[ERROR MESSAGE]" + newline + ME.message;
                    uialert(app.GLASSAIUIFigure,message_text,"Analysis error")
                end
                fprintf("%s - %s %s %s%d\n",string(datetime),"[ERROR]: An error occured with making the patch blockedimage for",app.currentFileNameExt,"block #",app.iBigBlock)
                %rethrow error to stop execution
                rethrow(ME);
            end
            logactivity(app,"finish",true)
        end %end function: makeimagepatchesfromblock

        function imageBlock = padimageblock(app,imageBlock)
            % If image block is too small, pad bottom and right sides with
            % white space
            logactivity(app,"start",true)

            % Get dimensions of image
            [xImagePixels,yImagePixels,~] = size(imageBlock);
            fprintf("%s - %s%.0f %s%.0f %s %.0f%s\n",string(datetime),"Dimensions of block #",app.iBigBlock,"(",xImagePixels,"x",yImagePixels,")")

            % pad x
            if xImagePixels < 224
                xPadPixels = 224-xImagePixels;
                %pad columns with white pixels
                xPadArray = zeros([xPadPixels yImagePixels 3])+255;
                imageBlock = [imageBlock; xPadArray];
                fprintf("%s - %s%d %d %s\n",string(datetime),"[NOTE]: Padding block #",app.iBigBlock, xPadPixels, "pixels on the right")
            end

            % pad y
            if yImagePixels < 224
                yPadPixels = 224 - yImagePixels;
                %pad rows with white pixels
                yPadArray = zeros([224 yPadPixels 3])+255;
                imageBlock = [imageBlock yPadArray];
                fprintf("%s - %s%d %d %s\n",string(datetime),"[NOTE]: Padding block #",app.iBigBlock, yPadPixels, "pixels on the bottom")
            end

            logactivity(app,"finish",true)
        end

        function maskedPatchedImageBlockSet = maskemptypatches(app,patchedImageBlock,useGPU)
            % mask out empty patches in imageBlock using tissue theshold

            logactivity(app,"start",true)

            try %error handling
                if app.PATCH_SKIP_THRESHOLD > 0
                    try %skip if masking fails the first time
                        fprintf("%s - %s %s %s%.0f\n",string(datetime),"Making empty patch mask for",app.currentFileNameExt,"block #",app.iBigBlock)
                        % find tissue by looking for pixels of low luminosity
                        % keep patches with ≥ app.PATCH_SKIP_THRESHOLD/100
                        % percent of pixels with low luminosity
                        %- moderate hematoxylin staining should have luminosity
                        %- around 60. Eosin staining should have luminosity
                        %- around 100. A threshold of 120 is will ensure stains
                        %- are picked up even in lightly stained slides.
                        luminosityThreshold = 120;
                        bmask = apply(patchedImageBlock, @(bs)rgb2gray(bs.Data)<luminosityThreshold,...
                            "Level",1,...
                            'UseParallel',useGPU);
                        maskedPatchedImageBlockSet = selectBlockLocations(patchedImageBlock,...
                            'BlockSize',app.PATCH_SIZE(1:2),...
                            'Mask', bmask,...
                            'InclusionThreshold', app.PATCH_SKIP_THRESHOLD/100,...
                            'UseParallel',useGPU);
                        fprintf("%s - %s %s %s%.0f\n",string(datetime),"Made masked patch blockset for",app.currentFileNameExt,"block #",app.iBigBlock)
                    catch
                        %skip masking if failed
                        fprintf("%s - %s %s %s%.0f\n",string(datetime),"[NOTE]: Empty patch masking failed in ",app.currentFileNameExt,"block #",app.iBigBlock)
                        maskedPatchedImageBlockSet = selectBlockLocations(patchedImageBlock,...
                            'BlockSize',app.PATCH_SIZE(1:2),...
                            'UseParallel',useGPU,...
                            'InclusionThreshold',0,'Levels',1);
                        fprintf("%s - %s %s %s%.0f\n",string(datetime),"Made patch blockset for",app.currentFileNameExt,"block #",app.iBigBlock)
                        % alert user first time patch skipping fails
                        if app.SkipPatchFailed == 0
                            message_text = "GLASS-AI encountered an error due to empty patch skipping." + ...
                                newline + "Empty patches were not skipped in at least one analysis block in this run.";
                            uialert(app.GLASSAIUIFigure,message_text,"Analysis alert", "Icon", "info")
                            app.SkipPatchFailed = 1;
                            fprintf("%s - %s\n",string(datetime),"[NOTE]: Alerted user the patch skipping failed")
                        end % End IF: app.SkipPatchFailed == 0
                    end % End TRY:mask image to skip empty space
                else %skip masking if no threshold set
                    fprintf("%s - %s %s %s%.0f\n",string(datetime),"No patch masking was requested for",app.currentFileNameExt,"block #",app.iBigBlock)
                    maskedPatchedImageBlockSet = selectBlockLocations(patchedImageBlock,...
                        'BlockSize',app.PATCH_SIZE(1:2),...
                        'InclusionThreshold',0,...
                        'UseParallel',useGPU);
                    fprintf("%s - %s %s %s%.0f\n",string(datetime),"Made patch blockset for",app.currentFileNameExt,"block #",app.iBigBlock)
                end % End IF: app.PATCH_SKIP_THRESHOLD > 0
            catch ME
                % alert user that an error occured if not already done
                if ~app.ErrorAlertAlreadyCreated
                    app.ErrorAlertAlreadyCreated = true;
                    message_text = "GLASS-AI encountered making patches in analysis blocks." + ...
                        newline + "[ERROR MESSAGE]" + newline + ME.message;
                    uialert(app.GLASSAIUIFigure,message_text,"Analysis error");
                end
                fprintf("%s - %s %s %s%.0f\n",string(datetime),"[ERROR]: An error ocurred while making patches for",app.currentFileNameExt,"block #",app.iBigBlock)
                %rethrow error to halt execution
                rethrow(ME);
            end % End TRY: error handling

            nSkippedPatches = prod(patchedImageBlock.SizeInBlocks)-size(maskedPatchedImageBlockSet.ImageNumber);
            fprintf("%s - %s %d %s %s %s %s%d\n", string(datetime),"Skipped",nSkippedPatches,"patches in", app.currentFileNameExt,"block #",app.iBigBlock)
            logactivity(app,"finish",true)
        end % End function: maskemptypatches

        function createtemporaryfolders(app)
            % make temporary folders used to store divided images when using low
            % memory mode
            logactivity(app,"start",false)

            try
                if exist('ImageBlocksTemp', 'dir'), rmdir('ImageBlocksTemp', 's'); end
                mkdir("ImageBlocksTemp");
                fprintf("%s - %s\n",string(datetime),"Low Memory Mode: Created ImageBlocksTemp directory.")
                % class blocks
                if exist('ClassBlocksTemp', 'dir'), rmdir('ClassBlocksTemp', 's'); end
                mkdir("ClassBlocksTemp");
                fprintf("%s - %s\n",string(datetime),"Low Memory Mode: Created ClassBlocksTemp directory.")
                % class probability blocks
                if app.MAKE_CONFIDENCE_MAP
                    if exist('MaxClassProbabilityBlocksTemp', 'dir'), rmdir('MaxClassProbabilityBlocksTemp', 's'); end
                    mkdir("MaxClassProbabilityBlocksTemp");
                    fprintf("%s - %s\n",string(datetime),"Low Memory Mode: Created MaxClassProbabilityBlocksTemp directory.")
                end

                % normalized image blocks
                if app.NORMALIZE_STAINS
                    if exist('NormBlocksTemp', 'dir'), rmdir('NormBlocksTemp', 's'); end
                    mkdir("NormBlocksTemp");
                    fprintf("%s - %s\n",string(datetime),"Low Memory Mode: Created NormBlocksTemp directory.")
                end
            catch ME
                % alert user that an error occured if not already done
                if ~app.ErrorAlertAlreadyCreated
                    app.ErrorAlertAlreadyCreated = true;
                    message_text = "There was an error making directories for storing image blocks on disk." + ...
                        newline + "Make sure that you have read/write permission for the Output directory." +...
                        newline + app.OUTPUT_PATH + newline + "[ERROR MESSAGE]" + newline + ME.message;
                    uialert(app.GLASSAIUIFigure,message_text,"Folder creation error")
                end
                fprintf("%s - %s %s\n",string(datetime),"[ERROR]: There was an error making temporary directories for",app.currentFileExt)
                %rethrow error to stop execution
                rethrow(ME);
            end % End TRY: prepare temporary folders for split images
            logactivity(app,"finish",false)
        end % End function: createtemporaryfolders

        function imageTumorStatsTable = imageleveltumoranalysis(app, classifications, individualTumorStats)
            % Calculates summary of tumor stats across the image
            logactivity(app,"start",false)

            PIXEL_AREA = app.IMAGE_RESOLUTION^2;

            % change skipped pixels to background
            classifications(classifications==0) = 7;
            % calculate total tissue area in slide
            %- should have no pixels == 0. All tissue pixels < 7.
            imageTotalTissueArea = nnz(classifications<7)*PIXEL_AREA;

            % calculate tumor counts
            imageTotalTumorCount = height(individualTumorStats);

            % calculate the number of tumors of each grade if requested
            %- grade assigment method defined by user
            if app.ASSIGN_OVERALL_GRADES == true
                imageG1TumorCount = nnz(individualTumorStats.tumor_grade==1);
                imageG2TumorCount = nnz(individualTumorStats.tumor_grade==2);
                imageG3TumorCount = nnz(individualTumorStats.tumor_grade==3);
                imageG4TumorCount = nnz(individualTumorStats.tumor_grade==4);
            else
                imageG1TumorCount = NaN;
                imageG2TumorCount = NaN;
                imageG3TumorCount = NaN;
                imageG4TumorCount = NaN;
            end

            % calculate total area of each grade in the image
            imageG1Area = nnz(classifications==1)*PIXEL_AREA;
            imageG2Area = nnz(classifications==2)*PIXEL_AREA;
            imageG3Area = nnz(classifications==3)*PIXEL_AREA;
            imageG4Area = nnz(classifications==4)*PIXEL_AREA;

            % calculate total tumor area in slide
            imageTotalTumorArea = imageG1Area+imageG2Area+imageG3Area+imageG4Area;

            % Define tables to save stats
            % Whole slide summary table
            %- define column names and data types
            imageTumorStatsTableCols = { %17 variables
                %column name                    data type
                'image_id'                      'string'
                'number_of_tumors'              'double'
                'g1_tumor_count'                'double'
                'g2_tumor_count'                'double'
                'g3_tumor_count'                'double'
                'g4_tumor_count'                'double'
                'grade_assign_method'           'string'
                'g1_percentage_in_image'        'double'
                'g2_percentage_in_image'        'double'
                'g3_percentage_in_image'        'double'
                'g4_percentage_in_image'        'double'
                'g1_area_in_image'              'double'
                'g2_area_in_image'              'double'
                'g3_area_in_image'              'double'
                'g4_area_in_image'              'double'
                'total_tumor_area_in_image'     'double'
                'total_tissue_area_in_image'    'double'
                }';%transpose to horizontal cell array before assignment

            %- intialize table
            imageTumorStatsTable = table( ...
                'Size',[1 size(imageTumorStatsTableCols,2)],...
                'VariableNames',imageTumorStatsTableCols(1,:), ...
                'VariableTypes',imageTumorStatsTableCols(2,:));


            % save whole slide stats
            imageTumorStatsTable(1,:) = {
                %variable                               column name                 data type
                app.currentFileName,...                            'image_id'                  'string'
                imageTotalTumorCount,...              'number_of_tumors'          'double'
                imageG1TumorCount,...                   'g1_tumor_count'            'double'
                imageG2TumorCount,...                   'g2_tumor_count'            'double'
                imageG3TumorCount,...                   'g3_tumor_count'            'double'
                imageG4TumorCount,...                   'g4_tumor_count'            'double'
                app.ASSIGN_GRADES_METHOD,...            'grade_assign_method'       'string'
                (imageG1Area / imageTotalTumorArea),... 'g1_percentage_in_image'    'double'
                (imageG2Area / imageTotalTumorArea),... 'g2_percentage_in_image'    'double'
                (imageG3Area / imageTotalTumorArea),... 'g3_percentage_in_image'    'double'
                (imageG4Area / imageTotalTumorArea),... 'g4_percentage_in_image'    'double'
                imageG1Area,...                         'g1_area_in_image'          'double'
                imageG2Area,...                         'g2_area_in_image'          'double'
                imageG3Area,...                         'g3_area_in_image'          'double'
                imageG4Area,...                         'g4_area_in_image'          'double'
                imageTotalTumorArea,...                 'total_tumor_area_in_image' 'double'
                imageTotalTissueArea,...                'total_tissue_area_in_image''double'
                };

            fprintf("%s - %s %s\n",string(datetime),"Saved image-level stats for",app.currentFileNameExt)
            logactivity(app,"finish",false)
        end % End function: imageleveltumoranalysis

        function colorMap = getcolormap(app)
            % get a 255 element color map based on user's selection
            logactivity(app,"start",false)
            try
                numberOfColors = 256;
                targetColorMap = app.CONFIDENCE_MAP_COLOR;
                switch targetColorMap
                    case "hot"
                        colorMap = hot(numberOfColors);
                    case "gray"
                        colorMap = gray(numberOfColors);
                    case "bone"
                        colorMap = bone(numberOfColors);
                    case "turbo"
                        colorMap = turbo(numberOfColors);
                    case "cool"
                        colorMap = cool(numberOfColors);
                    otherwise
                        error("Not a valide color map selection")
                end % End SWITCH : targetColorMap
            catch ME
                % alert user that an error occured if not already done
                if ~app.ErrorAlertAlreadyCreated
                    app.ErrorAlertAlreadyCreated = true;
                    message_text = "GLASS-AI encountered an error while fetching the color palette for the class confidence map." + ...
                        newline + "[ERROR MESSAGE]" + newline + ME.message;
                    uialert(app.GLASSAIUIFigure,message_text,"Output error");
                end
                fprintf("%s - %s %s\n",string(datetime),"[ERROR]: An error ocurred while while fetching the color palette for the class confidence map for",app.currentFileNameExt)
                %rethrow error to halt execution
                rethrow(ME);
            end % End TRY: get a 255 element color map based on user's selection
            logactivity(app,"finish",false)
        end % End function: getcolormap


        function startparpool(app)
            % start parallel processing pool for available GPUs

            availableGPUs = gpuDeviceCount("available");
            %         gpuInfo = gpuDevice();
            %         gpuDevice(1); %reset GPU device to clear memory
            %         % calculate safe number of workers to use for parallel
            %         % processing tasks
            %         %- leave 1GB buffer
            %         parPoolSize = uint8(floor(gpuInfo.TotalMemory/(1.5*10^9)))-1;
            parPoolSize = availableGPUs;
            % start parallel processing pool if it doens't exist
            if isempty(gcp('nocreate'))
                app.StatusLabel.Text="Starting parallel processing pool...";
                parpool('Processes',parPoolSize);
                fprintf("%s - %s %d %s\n",string(datetime),"Started parpool with",parPoolSize,"workers.")
            else % processing pool does exist
                % release if local pool and not expected number of workers
                gcpInfo = gcp('nocreate');
                isOurParPool = strcmpi(gcpInfo.Cluster.Type,'Local') && gcpInfo.NumWorkers == parPoolSize;
                if ~isOurParPool
                    fprintf("%s - %s %d ^s\n",string(datetime),"Destroyed existing parpool with",gcpInfo.NumWorkers,"workers.")
                    delete(gcp('nocreate'))
                    app.StatusLabel.Text="Starting parallel processing pool...";
                    parpool('Processes',parPoolSize);
                    fprintf("%s - %s %d %s\n",string(datetime),"Started parpool with",parPoolSize,"workers.")
                end % End IF: ~isOurParPool
                %leave existing, safe pool running
            end % End IF: isempty(gcp('nocreate'))
        end % End function: startparpool
    end % End methods: functions

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            echo off all;
            clc;
            
            % start logging
            % make formatted date string for prefixing logfile entries
            dateString = string(datetime);
            dateString = replace(dateString,":","-");
            dateString = replace(dateString," ","_");

            % make logfile
            app.logFileName = strcat("GLASS-AI_log_",dateString,".txt");
            app.logFilePath = pwd;
            diary(fullfile(app.logFilePath,app.logFileName));
            
            %log system info
            fprintf("%s:\t%s\n","App is deployed", string(isdeployed));
            fprintf("%s:\t%s\n","System type", computer);
            fprintf("%s:\t %s\n","Can use GPU", string(canUseGPU));

            %get system memory size for low memory mode suggestion
            if ispc
                [~, app.SYSTEM_MEMORY]=memory;
                app.SYSTEM_MEMORY = ceil(app.SYSTEM_MEMORY.PhysicalMemory.Total/(1024^3));
            else
                [~, app.SYSTEM_MEMORY]=system('sysctl hw.memsize | awk ''{print $2}''');
                app.SYSTEM_MEMORY = round(str2double(app.SYSTEM_MEMORY)/(1024^3));
            end
            fprintf("%s:\t%d\n","System memory (GB)", app.SYSTEM_MEMORY);
            
            %let window load
            pause(1); 
            app.StatusLabel.Text="Loading GLASS-AI neural network...";
            app.VersionLabel.Text = app.GLASSAI_APP_VERSION;
            
            if isdeployed %do if standalone app
                if ismac % default ctf is within app contents
                    %navigate to proper directory to load GLASS-AI
                    fprintf("%s:\t%s\n","Mac start dir", pwd);
                    echo on;
                    cd(ctfroot);
                    cd('../../../..');
                    echo off;
                    fprintf("%s:\t%s\n","Mac expected location", pwd);
                end
                % load GLASS-AI model from MAT file
                try
                    pathToGLASSAI = fullfile('Net','GLASS_AI.mat');
                    app.GLASS_AI = load(pathToGLASSAI);
                    %get DAGnet object from struct
                    app.GLASS_AI = app.GLASS_AI.net;
                    %log GLASS-AI.mat location
                    fprintf("%s:\t%s\n","Path to GLASS-AI.mat", pathToGLASSAI);
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
                    app.ErrorAlertAlreadyCreated = true;
                    %log error
                    fprintf("%s:\t%s\n","GLASS-AI model not found at", pathToGLASSAI);

                    %rethrow error to stop execution
                    rethrow(ME);

                end % End TRY: load GLASS-AI model from MAT file
            else %not deployed
                try
                    %search for GLASS-AI network in directory and
                    %subdirectories
                    filelist = dir(fullfile(pwd, '**','GLASS_AI.mat'));
                    for file = 1:length(filelist)
                        if filelist(file).bytes == 61020398
                            pathToGLASSAI = fullfile(filelist(file).folder,filelist(file).name);
                        end
                    end

                    app.GLASS_AI = load(pathToGLASSAI);
                    app.GLASS_AI = app.GLASS_AI.net; % get DAGnet from struct
                    %log GLASS-AI.mat location
                    fprintf("%s:\t%s\n","Path to GLASS-AI.mat", pathToGLASSAI);

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
                    app.ErrorAlertAlreadyCreated = true;

                    fprintf("%s:\t%s\n","GLASS-AI model not found within", pathToGLASSAI);

                    % rethrow error to stop execution
                    rethrow(ME);
                end %end TRY: load GLASS-AI model from MAT file
            end

            % change directory to user folder to make finding input/output
            % directories easier
            if ismac
                cd('~');
                % change directory to desktop
                try
                    cd('Desktop');
                catch
                    % remain in user folder if no Desktop folder
                end
            end
            if ispc
                user = getenv('USERPROFILE');
                cd(fullfile(user));
                % change directory to desktop
                try
                    cd('Desktop');
                catch
                    % remain in user folder if no Desktop folder
                end
            end
            app.LAST_SELECTED_DIR = pwd;
            app.StatusLabel.Text="GLASS-AI loaded. Awaiting input/selection.";

            % disable GPU option on mac. It is not supported by MATLAB.
            if ismac
                app.ForceCPUCheckBox.Enable = false;
                app.ForceCPUCheckBox.Value = true;
                app.ForceCPUCheckBox.Tooltip = sprintf("Parallel computing is not available on Mac; must use CPU for analysis.\n%s",app.ForceCPUCheckBox.Tooltip{1});
            end
            logactivity(app,"finish",false)

        end

        % Button pushed function: BrowseButton
        function BrowseButtonPushed(app, event)
            % Get target directory from user
            app.INPUT_PATH=uigetdir(app.LAST_SELECTED_DIR,'Select folder containing images');

            % handle 'cancel' button press from UI  (val == 0)
            if app.INPUT_PATH == 0
                app.INPUT_PATH = "";
                % restore INPUT_PATH value if previously defined
                if ~isempty(app.InputFolderLocationLabel.Text)
                    app.INPUT_PATH = app.InputFolderLocationLabel.Text;
                end
            else
                %Sets the label text to be the selected path
                app.InputFolderLocationLabel.Text=app.INPUT_PATH;
                app.LAST_SELECTED_DIR = app.INPUT_PATH;
            end

            % Find valid image files in target directory (tiff and svs)
            files=[dir(fullfile(app.INPUT_PATH,"*.tif"))
                dir(fullfile(app.INPUT_PATH,"*.tiff"))
                dir(fullfile(app.INPUT_PATH,"*.svs"))];

            % Gets the name of the files/folders of the contents and stores them in a cell array
            fileNames={files(:).name}';
            app.FileTable.Data = fileNames;

            % Refresh figure to update TargetFolderLocationLabel
            app.GLASSAIUIFigure.Visible = 'off';
            app.GLASSAIUIFigure.Visible = 'on';

            fprintf("%s - %s:\t%s\n",string(datetime),"Input directory selected:", app.INPUT_PATH);

            % Ready check
            if isempty(fileNames) %no go
                app.InputFolderLamp.Color=[1,0,0];
                runcheck(app);
            else % go
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

            for n = 1:length(app.SELECTED_FILES) % Get system file paths for selected files
                app.SELECTED_PATHS = cellfun(@(x) fullfile(app.INPUT_PATH,x), app.SELECTED_FILES, 'Uniform',0);
                fprintf("%s - %s:\t%s\t%.2f %s\n",string(datetime),"File selected", app.SELECTED_PATHS{n}, dir(app.SELECTED_PATHS{n}).bytes/(1024^2),"MB");
            end

            if app.LowmemorymodeSwitch.Value == "Off" %skip if low memory mode is already enabled
                for file = 1: numel(app.SELECTED_PATHS) % compare file size to system memory
                    if dir(app.SELECTED_PATHS{file}).bytes/(1024^3) >= app.SYSTEM_MEMORY/20
                        suggestLowMemoryMode = true;
                        fprintf("%s - %s:\t%s\n","Low mememory mode suggested for ", app.SELECTED_PATHS{file});
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
            if ~isempty(app.SELECTED_FILES) % go
                app.FileSelectLamp.Color = [0,1,0];
                runcheck(app);
            else
                app.FileSelectLamp.Color = [1,0,0]; %no go
                runcheck(app);
            end


        end

        % Button pushed function: RunButton
        function RunButtonPushed(app, event)
            echo off
            % disable run button
            app.RunButton.Enable = false;

            % start stopwatch for analysis run
            app.analysisStartTime = tic;

            % reset create UI alert on error flag
            app.ErrorAlertAlreadyCreated = false;

            %move logfile to output directory if not already there
            if ~strcmp(app.logFilePath,app.OUTPUT_PATH)
                diary("off");
                movefile(fullfile(app.logFilePath,app.logFileName),fullfile(app.OUTPUT_PATH,app.logFileName));
                app.logFilePath = app.OUTPUT_PATH;
                diary(fullfile(app.logFilePath,app.logFileName));
            end


            fprintf("%s\n","%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
            fprintf("%s - %s\n",string(datetime),"Run button pushed.");
            fprintf("%s\n","%%%%%%% File selection %%%%%%%")

            % get system file paths for selected files
            app.nImages = length(app.SELECTED_FILES);
            fprintf("%.0f %s\n",app.nImages,"files selected for analysis:")

            for n = 1:length(app.SELECTED_FILES)
                app.SELECTED_PATHS = cellfun(@(x) fullfile(app.INPUT_PATH,x), app.SELECTED_FILES, 'Uniform',0);
                % record paths and size of files for debugging
                fprintf("%s\t%.2f %s\n", app.SELECTED_PATHS{n}, dir(app.SELECTED_PATHS{n}).bytes/(1024^2),"MB");
            end

            % collect and log analysis run parameters
            fprintf("%s\n","%%%%%%% Run parameters %%%%%%%")

            % Analysis Options panel
            app.APPEND_SLIDE_SUMMARY = app.OverwriteSlideSummaryInput.Value;
            fprintf("%s:\t%s\n","Append slide summary", string(app.APPEND_SLIDE_SUMMARY));
            app.IMAGE_BLOCK_SIZE = app.AnalysisBlockSizeInput.Value;
            fprintf("%s:\t%.0f\n","Analysis block size", app.IMAGE_BLOCK_SIZE);
            app.NORMALIZE_STAINS = strcmpi(app.NormalizestainingSwitch.Value,"true");
            fprintf("%s:\t%s\n","Normalize staining", string(app.NORMALIZE_STAINS));
            app.OUTPUT_IMAGE_PREVIEW = strcmpi(app.PreviewoutputimagesSwitch.Value,"true");
            fprintf("%s:\t%s\n","Make preview images", string(app.OUTPUT_IMAGE_PREVIEW));
            app.LowMemoryMode = strcmpi(app.LowmemorymodeSwitch.Value,"true");
            fprintf("%s:\t%s\n","Use low memory mode", string(app.LowMemoryMode));
            app.FORCE_CPU = app.ForceCPUCheckBox.Value;
            fprintf("%s:\t%s\n","Force CPU", string(app.FORCE_CPU));

            % GLASS-AI Parameters tab
            app.PATCH_SKIP_THRESHOLD = app.PatchTissueThresholdInput.Value;
            fprintf("%s:\t%.0f\n","Patch skip threshold", app.PATCH_SKIP_THRESHOLD);
            app.SMOOTH_METHOD = app.SmoothingMethodDropDown.Value;
            fprintf("%s:\t%s\n","Smoothing method", app.SMOOTH_METHOD);
            app.SMOOTH_SIZE = [app.SmoothingSizeSpinner.Value app.SmoothingSizeSpinner.Value];
            fprintf("%s:\t%.0f\n","Smoothing diameter", app.SmoothingSizeSpinner.Value);
            app.TUMOR_SIZE_THRESHOLD = app.TumorSizeThresholdInput.Value;
            fprintf("%s:\t%.0f\n","Tumor size threshold", app.TUMOR_SIZE_THRESHOLD);
            app.TUMOR_MERGE_RADIUS = app.TumorMergeRadiusInput.Value;
            fprintf("%s:\t%.0f\n","Tumor merge distance", app.TUMOR_MERGE_RADIUS);
            app.ASSIGN_OVERALL_GRADES = app.AssignoverallgradetoeachtumorCheckBox.Value;
            fprintf("%s:\t%s\n","Assign overall grades to each tumor", string(app.ASSIGN_OVERALL_GRADES));
            if app.ASSIGN_OVERALL_GRADES == 1
                app.ASSIGN_GRADES_METHOD = app.AssignmentmethodDropDown.Value;
                fprintf("%s:\t%s\n","Overall tumor grade assignment method", app.ASSIGN_GRADES_METHOD);
                if app.ASSIGN_GRADES_METHOD == "highest"
                    app.ASSIGN_GRADES_THRESHOLD = (app.TumorgradethresholdEditField.Value)/100;
                    fprintf("%s:\t%.2f\n","Overall tumor grade assignment threshold", app.ASSIGN_GRADES_THRESHOLD);
                end
            else
                app.ASSIGN_GRADES_METHOD = "none";
            end


            % Stain Normalization Parameters tab
            app.NORMALIZE_ALPHA = app.NormPseudomaxTolerance.Value;
            fprintf("%s:\t%.3f\n","Stain normalization alpha", app.NORMALIZE_ALPHA);
            app.NORMALIZE_BETA = app.NormTransparencyThreshold.Value;
            fprintf("%s:\t%.3f\n","Stain normalization beta", app.NORMALIZE_BETA);
            app.NORMALIZE_IO = app.NormBackgroundIntensity.Value;
            fprintf("%s:\t%.3f\n","Stain normalization background", app.NORMALIZE_IO);
            app.NORMALIZE_THRESHOLD = app.NormMinimumTissuePercent.Value;
            fprintf("%s:\t%.3f\n","Stain normalization tissue threshold", app.NORMALIZE_THRESHOLD);
            app.NORMALIZE_HEREF = [
                app.HemRedInput.Value       app.EosRedInput.Value
                app.HemGreenInput.Value     app.EosGreenInput.Value
                app.HemBlueInput.Value      app.EosBlueInput.Value
                ];
            fprintf("%s:\t%.3f\t%.3f\t%.3f\n","Stain normalization hematoxylin", app.HemRedInput.Value,app.HemGreenInput.Value, app.HemBlueInput.Value);
            fprintf("%s:\t%.3f\t%.3f\t%.3f\n","Stain normalization eosin", app.EosRedInput.Value,app.EosGreenInput.Value, app.EosBlueInput.Value);

            % Grade Map Colors tab
            app.NORMAL_ALVEOLI_COLOR = [app.NormalAlveoliColorEditField_R.Value, app.NormalAlveoliColorEditField_G.Value, app.NormalAlveoliColorEditField_B.Value];
            fprintf("%s:\t%.0f\t%.0f\t%.0f\n","Alveoli Color",app.NORMAL_ALVEOLI_COLOR(1),app.NORMAL_ALVEOLI_COLOR(2),app.NORMAL_ALVEOLI_COLOR(3))
            app.NORMAL_AIRWAY_COLOR = [app.NormalAirwayColorEditField_R.Value, app.NormalAirwayColorEditField_G.Value, app.NormalAirwayColorEditField_B.Value];
            fprintf("%s:\t%.0f\t%.0f\t%.0f\n","Airway Color",app.NORMAL_AIRWAY_COLOR(1),app.NORMAL_AIRWAY_COLOR(2),app.NORMAL_AIRWAY_COLOR(3))
            app.GRADE_1_COLOR = [app.Grade1ColorEditField_R.Value, app.Grade1ColorEditField_G.Value, app.Grade1ColorEditField_B.Value];
            fprintf("%s:\t%.0f\t%.0f\t%.0f\n","Grade 1 LUAD Color",app.GRADE_1_COLOR(1),app.GRADE_1_COLOR(2),app.GRADE_1_COLOR(3))
            app.GRADE_2_COLOR = [app.Grade2ColorEditField_R.Value, app.Grade2ColorEditField_G.Value, app.Grade2ColorEditField_B.Value];
            fprintf("%s:\t%.0f\t%.0f\t%.0f\n","Grade 2 LUAD Color",app.GRADE_2_COLOR(1),app.GRADE_2_COLOR(2),app.GRADE_2_COLOR(3))
            app.GRADE_3_COLOR = [app.Grade3ColorEditField_R.Value, app.Grade3ColorEditField_G.Value, app.Grade3ColorEditField_B.Value];
            fprintf("%s:\t%.0f\t%.0f\t%.0f\n","Grade 3 LUAD Color",app.GRADE_3_COLOR(1),app.GRADE_3_COLOR(2),app.GRADE_3_COLOR(3))
            app.GRADE_4_COLOR = [app.Grade4ColorEditField_R.Value, app.Grade4ColorEditField_G.Value, app.Grade4ColorEditField_B.Value];
            fprintf("%s:\t%.0f\t%.0f\t%.0f\n","Grade 4 LUAD Color",app.GRADE_4_COLOR(1),app.GRADE_4_COLOR(2),app.GRADE_4_COLOR(3))
            app.BACKGROUND_COLOR = [app.BackgroundColorEditField_R.Value, app.BackgroundColorEditField_G.Value, app.BackgroundColorEditField_B.Value];
            fprintf("%s:\t%.0f\t%.0f\t%.0f\n","Background class Color",app.BACKGROUND_COLOR(1),app.BACKGROUND_COLOR(2),app.BACKGROUND_COLOR(3))
            app.SKIPPED_PATCH_COLOR = [app.SkippedPatchColorEditField_R.Value, app.SkippedPatchColorEditField_G.Value, app.SkippedPatchColorEditField_B.Value];
            fprintf("%s:\t%.0f\t%.0f\t%.0f\n","Skipped patch Color",app.SKIPPED_PATCH_COLOR(1),app.SKIPPED_PATCH_COLOR(2),app.SKIPPED_PATCH_COLOR(3))

            %Output Image Scaling tab
            app.OUTPUT_GRADE_IMAGE_SCALE = app.GradeMapScalingSlider.Value/100;
            fprintf("%s:\t%.3f\n","Grade map output scale", app.OUTPUT_GRADE_IMAGE_SCALE);
            app.MAKE_SEGMENTATION_IMAGE = [app.SegmentationImageCheckBox.Value];
            fprintf("%s:\t%.3f\n","Make segmentation image", app.MAKE_SEGMENTATION_IMAGE);
            app.OUTPUT_SEGMENTATION_IMAGE_SCALE = app.SegmentationScalingSlider.Value/100;
            fprintf("%s:\t%.3f\n","Segmentation image output scale", app.OUTPUT_SEGMENTATION_IMAGE_SCALE);
            app.OUTPUT_NORMALIZED_IMAGE_SCALE = app.StainNormalizedImageScalingSlider.Value/100;
            fprintf("%s:\t%.3f\n","Stain normalize image output scale", app.OUTPUT_NORMALIZED_IMAGE_SCALE);
            app.MAKE_CONFIDENCE_MAP = [app.ConfidenceMapCheckBox.Value];
            fprintf("%s:\t%.3f\n","Make confidence map", app.MAKE_CONFIDENCE_MAP);
            app.OUTPUT_CONFIDENCE_MAP_SCALE = app.ConfidenceMapScalingSlider.Value/100;
            fprintf("%s:\t%.3f\n","Confidence map output scale", app.OUTPUT_CONFIDENCE_MAP_SCALE);
            app.CONFIDENCE_MAP_COLOR = app.ConfidenceMapPaletteDropDown.Value;
            fprintf("%s:\t%.3f\n","Confidence map output color map", app.CONFIDENCE_MAP_COLOR);
            fprintf("%s\n","%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")
            fprintf("%s\n","Begin analysis")
            % Begin analysis
            try
                runglassai(app);
                message_text = "GLASS-AI successfully completed the analysis of " +...
                    app.nImages +" images in " + string(duration([0,0,app.analysisRunTime]));
                uialert(app.GLASSAIUIFigure,message_text,"Analysis complete", 'Icon',"success")
            catch ME
                % alert user that an error occured if not already done
                if ~app.ErrorAlertAlreadyCreated
                    message_text = "GLASS-AI encountered an unexpected error." + ...
                        newline + "[ERROR MESSAGE]" + newline + ME.message +...
                        newline + "See logfile for details.";
                    uialert(app.GLASSAIUIFigure,message_text,"Unexpected error")
                    fprintf("%s - %s \n",string(datetime),"Analysis terminated due to unexpected error.")
                end
                % output error trace to logfile and stop run
                fprintf('%s\n',ME.getReport('extended', 'hyperlinks','off'));
                return
            end
            % recheck readiness to prepare for next analysis run
            runcheck(app);
        end

        % Button pushed function: OutputFolderButton
        function OutputFolderButtonPushed(app, event)
            % Get output path from user
            app.OUTPUT_PATH = uigetdir(app.LAST_SELECTED_DIR,'Select folder for GLASS-AI output');

            % handle 'cancel' button press from UI (val == 0)
            if app.OUTPUT_PATH == 0
                app.OUTPUT_PATH = "";
                % if value is already defined, restore OUTPUT_PATH value
                if ~isempty(app.OutputFolderLocationLabel.Text)
                    app.OUTPUT_PATH = app.OutputFolderLocationLabel.Text;
                end
            else
                app.OutputFolderLocationLabel.Text=app.OUTPUT_PATH;  % Display selected output path
                app.LAST_SELECTED_DIR = app.OUTPUT_PATH;
            end

            % Refresh figure to update OutputFolderLocationLabel
            app.GLASSAIUIFigure.Visible = 'off';
            app.GLASSAIUIFigure.Visible = 'on';

            fprintf("%s - %s:\t%s\n",string(datetime),"Output directory selected:", app.OUTPUT_PATH);
            % Ready check
            if isfolder(app.OUTPUT_PATH) % Green light if output folder exists
                app.OutputFolderLamp.Color = [0,1,0];
                runcheck(app);
            else
                app.OutputFolderLamp.Color = [1,0,0];
                runcheck(app);
            end
        end

        % Close request function: GLASSAIUIFigure
        function GLASSAIUIFigureCloseRequest(app, event)
            cleanUpGLASSAI(app)
            % release parallel processing pool if it exists
            if ~isempty(gcp('nocreate')),delete(gcp('nocreate')),end
            fprintf("%s - %s\n",string(datetime),"Released parallel processing pool.");
            fprintf("%s - %s\n",string(datetime),"Application terminated.");
            echo off all;
            diary("off");
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
            app.GLASSAIUIFigure.Position = [100 100 733 665];
            app.GLASSAIUIFigure.Name = 'GLASS-AI';
            app.GLASSAIUIFigure.CloseRequestFcn = createCallbackFcn(app, @GLASSAIUIFigureCloseRequest, true);

            % Create AnalysisOptionsPanel
            app.AnalysisOptionsPanel = uipanel(app.GLASSAIUIFigure);
            app.AnalysisOptionsPanel.Title = 'Analysis Options';
            app.AnalysisOptionsPanel.BackgroundColor = [0.902 0.902 0.902];
            app.AnalysisOptionsPanel.FontAngle = 'italic';
            app.AnalysisOptionsPanel.FontWeight = 'bold';
            app.AnalysisOptionsPanel.Position = [10 338 306 156];

            % Create Analysisblocksize20100Label
            app.Analysisblocksize20100Label = uilabel(app.AnalysisOptionsPanel);
            app.Analysisblocksize20100Label.HorizontalAlignment = 'right';
            app.Analysisblocksize20100Label.Tooltip = {'Set number of image patches to analyze per batch. Lower values will require less RAM, but will take longer to process.'};
            app.Analysisblocksize20100Label.Position = [15 105 171 28];
            app.Analysisblocksize20100Label.Text = 'Analysis block size (20 – 100)';

            % Create AnalysisBlockSizeInput
            app.AnalysisBlockSizeInput = uispinner(app.AnalysisOptionsPanel);
            app.AnalysisBlockSizeInput.Limits = [20 100];
            app.AnalysisBlockSizeInput.RoundFractionalValues = 'on';
            app.AnalysisBlockSizeInput.ValueDisplayFormat = '%.0f';
            app.AnalysisBlockSizeInput.Tooltip = {'Set number (NxN) of image patches to analyze per batch. Lower values will require less RAM, but will increase analysis time.'};
            app.AnalysisBlockSizeInput.Position = [193 108 77 22];
            app.AnalysisBlockSizeInput.Value = 40;

            % Create OverwriteSlideSummaryInput
            app.OverwriteSlideSummaryInput = uicheckbox(app.AnalysisOptionsPanel);
            app.OverwriteSlideSummaryInput.Tooltip = {'When checked, GLASS-AI will append any new whole slide summaries onto an exisiting "Whole slide summary.xlsx" file in the output folder.'; ''; 'Otherwise, GLASS-AI will overwrite any existing "Whole slide summary.xlsx" file with the results from the next analysis run.'};
            app.OverwriteSlideSummaryInput.Text = 'Append to existing image summary data';
            app.OverwriteSlideSummaryInput.Position = [26 -3 267 28];
            app.OverwriteSlideSummaryInput.Value = true;

            % Create LowmemorymodeSwitchLabel
            app.LowmemorymodeSwitchLabel = uilabel(app.AnalysisOptionsPanel);
            app.LowmemorymodeSwitchLabel.Tooltip = {'Reduces memory requirements by writing analysis blocks to disk. This will significantly slow down processing speed, but also reduces the amount of memory needed to analyze large images.'};
            app.LowmemorymodeSwitchLabel.Position = [122 19 109 22];
            app.LowmemorymodeSwitchLabel.Text = 'Low memory mode';

            % Create LowmemorymodeSwitch
            app.LowmemorymodeSwitch = uiswitch(app.AnalysisOptionsPanel, 'slider');
            app.LowmemorymodeSwitch.ItemsData = {'false', 'true'};
            app.LowmemorymodeSwitch.Tooltip = {'Reduces memory requirements by writing analysis blocks to disk. This will significantly slow down processing speed, but also reduces the amount of memory needed to analyze large images.'};
            app.LowmemorymodeSwitch.Position = [48 21 45 20];
            app.LowmemorymodeSwitch.Value = 'false';

            % Create PreviewoutputimagesSwitchLabel
            app.PreviewoutputimagesSwitchLabel = uilabel(app.AnalysisOptionsPanel);
            app.PreviewoutputimagesSwitchLabel.Tooltip = {'Generate preview images of outputs after analysis completes. Disabling this option will speed up analysis.'};
            app.PreviewoutputimagesSwitchLabel.Position = [122 41 128 22];
            app.PreviewoutputimagesSwitchLabel.Text = 'Preview output images';

            % Create PreviewoutputimagesSwitch
            app.PreviewoutputimagesSwitch = uiswitch(app.AnalysisOptionsPanel, 'slider');
            app.PreviewoutputimagesSwitch.ItemsData = {'false', 'true'};
            app.PreviewoutputimagesSwitch.Tooltip = {'Generate preview images of outputs after analysis completes. Disabling this option will speed up analysis.'};
            app.PreviewoutputimagesSwitch.Position = [48 43 45 20];
            app.PreviewoutputimagesSwitch.Value = 'true';

            % Create NormalizestainingSwitchLabel
            app.NormalizestainingSwitchLabel = uilabel(app.AnalysisOptionsPanel);
            app.NormalizestainingSwitchLabel.Tooltip = {'Perform stain normalization step before GLASS-AI analysis. This option is recommended to improve consistency of analysis by GLASS-AI. If GLASS-AI performs well without normalization, disabling will slightly improve analysis time. The normalized H&E image will be output alongside GLASS-AI results.'};
            app.NormalizestainingSwitchLabel.Position = [122 63 104 22];
            app.NormalizestainingSwitchLabel.Text = 'Normalize staining';

            % Create NormalizestainingSwitch
            app.NormalizestainingSwitch = uiswitch(app.AnalysisOptionsPanel, 'slider');
            app.NormalizestainingSwitch.ItemsData = {'false', 'true'};
            app.NormalizestainingSwitch.Tooltip = {'Perform stain normalization step before GLASS-AI analysis. This option is recommended to improve consistency of analysis by GLASS-AI. If GLASS-AI performs well without normalization, disabling will slightly improve analysis time. The normalized H&E image will be output alongside GLASS-AI results.'};
            app.NormalizestainingSwitch.Position = [48 65 45 20];
            app.NormalizestainingSwitch.Value = 'true';

            % Create ForceCPUCheckBox
            app.ForceCPUCheckBox = uicheckbox(app.AnalysisOptionsPanel);
            app.ForceCPUCheckBox.Tooltip = {'Force GLASS-AI to use the CPU for analysis even if a compatible GPU is available.'};
            app.ForceCPUCheckBox.Text = 'Ignore GPU; use CPU only';
            app.ForceCPUCheckBox.Position = [26 88 164 22];

            % Create BrowseButton
            app.BrowseButton = uibutton(app.GLASSAIUIFigure, 'push');
            app.BrowseButton.ButtonPushedFcn = createCallbackFcn(app, @BrowseButtonPushed, true);
            app.BrowseButton.Tooltip = {'Select the directory that contains your images for analysis. All SVS and TIFF images in the selected directory will be displayed in File Name Table below for selection.'};
            app.BrowseButton.Position = [216 581 100 24];
            app.BrowseButton.Text = 'Browse';

            % Create InputFolderLocationLabel
            app.InputFolderLocationLabel = uilabel(app.GLASSAIUIFigure);
            app.InputFolderLocationLabel.BackgroundColor = [1 1 1];
            app.InputFolderLocationLabel.Position = [329 581 361 24];
            app.InputFolderLocationLabel.Text = 'Input Folder Location';

            % Create FileTable
            app.FileTable = uitable(app.GLASSAIUIFigure);
            app.FileTable.ColumnName = {'File Name'};
            app.FileTable.RowName = {};
            app.FileTable.CellSelectionCallback = createCallbackFcn(app, @FileTableCellSelection, true);
            app.FileTable.Position = [329 80 361 453];

            % Create RunButton
            app.RunButton = uibutton(app.GLASSAIUIFigure, 'push');
            app.RunButton.ButtonPushedFcn = createCallbackFcn(app, @RunButtonPushed, true);
            app.RunButton.FontSize = 18;
            app.RunButton.FontWeight = 'bold';
            app.RunButton.Enable = 'off';
            app.RunButton.Position = [590 26 100 46];
            app.RunButton.Text = 'Run';

            % Create OutputFolderButton
            app.OutputFolderButton = uibutton(app.GLASSAIUIFigure, 'push');
            app.OutputFolderButton.ButtonPushedFcn = createCallbackFcn(app, @OutputFolderButtonPushed, true);
            app.OutputFolderButton.Tooltip = {'Select an output directory for GLASS-AI.'};
            app.OutputFolderButton.Position = [216 544 100 24];
            app.OutputFolderButton.Text = 'Output folder';

            % Create OutputFolderLocationLabel
            app.OutputFolderLocationLabel = uilabel(app.GLASSAIUIFigure);
            app.OutputFolderLocationLabel.BackgroundColor = [1 1 1];
            app.OutputFolderLocationLabel.Position = [329 544 361 24];
            app.OutputFolderLocationLabel.Text = 'Output Folder Location';

            % Create InputFolderLamp
            app.InputFolderLamp = uilamp(app.GLASSAIUIFigure);
            app.InputFolderLamp.Tooltip = {'Red: Select input folder with valid image files (.tif, .tiff, or .svs)'};
            app.InputFolderLamp.Position = [697 583 20 20];
            app.InputFolderLamp.Color = [1 0 0];

            % Create OutputFolderLamp
            app.OutputFolderLamp = uilamp(app.GLASSAIUIFigure);
            app.OutputFolderLamp.Tooltip = {'Red: Select valid output folder'};
            app.OutputFolderLamp.Position = [697 546 20 20];
            app.OutputFolderLamp.Color = [1 0 0];

            % Create Step1Label
            app.Step1Label = uilabel(app.GLASSAIUIFigure);
            app.Step1Label.FontWeight = 'bold';
            app.Step1Label.Position = [10 582 153 22];
            app.Step1Label.Text = 'Step 1: Select input folder';

            % Create Step2Label
            app.Step2Label = uilabel(app.GLASSAIUIFigure);
            app.Step2Label.FontWeight = 'bold';
            app.Step2Label.Position = [10 545 162 22];
            app.Step2Label.Text = 'Step 2: Select output folder';

            % Create Step3Label
            app.Step3Label = uilabel(app.GLASSAIUIFigure);
            app.Step3Label.FontWeight = 'bold';
            app.Step3Label.Position = [10 503 306 30];
            app.Step3Label.Text = 'Step 3: Select files to analyze with GLASS-AI';

            % Create GLASSAILabel
            app.GLASSAILabel = uilabel(app.GLASSAIUIFigure);
            app.GLASSAILabel.HorizontalAlignment = 'center';
            app.GLASSAILabel.WordWrap = 'on';
            app.GLASSAILabel.FontSize = 20;
            app.GLASSAILabel.FontWeight = 'bold';
            app.GLASSAILabel.Position = [118 612 556 50];
            app.GLASSAILabel.Text = 'GLASS-AI: Grading of Lung Adenocarcinoma with Simultaneous Segmentation by an Artificial Intelligence';

            % Create StatusLabel
            app.StatusLabel = uilabel(app.GLASSAIUIFigure);
            app.StatusLabel.BackgroundColor = [1 1 1];
            app.StatusLabel.VerticalAlignment = 'top';
            app.StatusLabel.WordWrap = 'on';
            app.StatusLabel.Position = [217 26 361 45];
            app.StatusLabel.Text = '';

            % Create FileSelectLamp
            app.FileSelectLamp = uilamp(app.GLASSAIUIFigure);
            app.FileSelectLamp.Position = [697 508 20 20];
            app.FileSelectLamp.Color = [1 0 0];

            % Create RunCheckLamp
            app.RunCheckLamp = uilamp(app.GLASSAIUIFigure);
            app.RunCheckLamp.Position = [697 40 20 20];
            app.RunCheckLamp.Color = [1 0 0];

            % Create RUOLabel
            app.RUOLabel = uilabel(app.GLASSAIUIFigure);
            app.RUOLabel.HorizontalAlignment = 'center';
            app.RUOLabel.FontWeight = 'bold';
            app.RUOLabel.Position = [217 5 352 22];
            app.RUOLabel.Text = 'For reseach use only— not for use in diagnostic procedures';

            % Create CopyrightLabel
            app.CopyrightLabel = uilabel(app.GLASSAIUIFigure);
            app.CopyrightLabel.HorizontalAlignment = 'center';
            app.CopyrightLabel.Position = [22 5 167 22];
            app.CopyrightLabel.Text = '(c) Moffitt Cancer Center 2023';

            % Create Image
            app.Image = uiimage(app.GLASSAIUIFigure);
            app.Image.Tooltip = {'To contribute to the prevention and cure of cancer'};
            app.Image.Position = [21 29 170 42];
            app.Image.ImageSource = 'moffitt.png';

            % Create VersionLabel
            app.VersionLabel = uilabel(app.GLASSAIUIFigure);
            app.VersionLabel.HorizontalAlignment = 'right';
            app.VersionLabel.Enable = 'off';
            app.VersionLabel.Position = [653 640 74 22];
            app.VersionLabel.Text = 'version #.#.#';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.GLASSAIUIFigure);
            app.TabGroup.Position = [10 79 306 250];

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
            app.TumorSizeThresholdInput.Position = [225 115 71 22];
            app.TumorSizeThresholdInput.Value = 20;

            % Create TumorsizethresholdsqmLabel
            app.TumorsizethresholdsqmLabel = uilabel(app.GLASSAIParametersTab);
            app.TumorsizethresholdsqmLabel.HorizontalAlignment = 'right';
            app.TumorsizethresholdsqmLabel.Tooltip = {'Tumor with areas smaller than this size will be excluded from analyses and will not be shown on the tumor segmentation map.'};
            app.TumorsizethresholdsqmLabel.Position = [59 115 163 22];
            app.TumorsizethresholdsqmLabel.Text = 'Tumor size threshold (sq. µm)';

            % Create TumorMergeRadiusInput
            app.TumorMergeRadiusInput = uieditfield(app.GLASSAIParametersTab, 'numeric');
            app.TumorMergeRadiusInput.Limits = [0 Inf];
            app.TumorMergeRadiusInput.Tooltip = {'Tumors that are within this distance of each other will be combined during analysis.'};
            app.TumorMergeRadiusInput.Position = [226 88 71 22];
            app.TumorMergeRadiusInput.Value = 5;

            % Create TumormergeradiusmLabel
            app.TumormergeradiusmLabel = uilabel(app.GLASSAIParametersTab);
            app.TumormergeradiusmLabel.HorizontalAlignment = 'right';
            app.TumormergeradiusmLabel.Tooltip = {'Tumors that are within this distance of each other will be combined during analysis.'};
            app.TumormergeradiusmLabel.Position = [83 89 139 22];
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
            app.SmoothingMethodDropDownLabel.Tooltip = {''};
            app.SmoothingMethodDropDownLabel.Position = [113 169 109 22];
            app.SmoothingMethodDropDownLabel.Text = 'Smoothing Method';

            % Create SmoothingMethodDropDown
            app.SmoothingMethodDropDown = uidropdown(app.GLASSAIParametersTab);
            app.SmoothingMethodDropDown.Items = {'None', 'Mode', 'Hamming window (tumor only)', 'Median', 'Bilateral (slow)'};
            app.SmoothingMethodDropDown.ItemsData = {'smoothing_none', 'smoothing_mode', 'smoothing_hamming', 'smoothing_median', 'smoothing_bilateral', '', ''};
            app.SmoothingMethodDropDown.Tooltip = {'Select a method for the smoothing kernel applied after grading. "Mode" is strongly recommended over other methods, as they are prone to creating artifacts from interpolating classes between regions of different classes.'; 'Default = "Mode"'};
            app.SmoothingMethodDropDown.Position = [225 169 72 22];
            app.SmoothingMethodDropDown.Value = 'smoothing_mode';

            % Create SmoothingSizeSpinnerLabel
            app.SmoothingSizeSpinnerLabel = uilabel(app.GLASSAIParametersTab);
            app.SmoothingSizeSpinnerLabel.HorizontalAlignment = 'right';
            app.SmoothingSizeSpinnerLabel.Tooltip = {'Defines the diameter of the smoothing kernel. Smaller numbers reduce the effect of the smoothing.'};
            app.SmoothingSizeSpinnerLabel.Position = [129 142 90 22];
            app.SmoothingSizeSpinnerLabel.Text = 'Smoothing Size';

            % Create SmoothingSizeSpinner
            app.SmoothingSizeSpinner = uispinner(app.GLASSAIParametersTab);
            app.SmoothingSizeSpinner.Step = 10;
            app.SmoothingSizeSpinner.Limits = [10 200];
            app.SmoothingSizeSpinner.RoundFractionalValues = 'on';
            app.SmoothingSizeSpinner.ValueDisplayFormat = '%.0f';
            app.SmoothingSizeSpinner.Tooltip = {'Defines the diameter of the smoothing kernel. Smaller numbers reduce the effect of the smoothing.'};
            app.SmoothingSizeSpinner.Position = [226 142 73 22];
            app.SmoothingSizeSpinner.Value = 200;

            % Create AssignoverallgradetoeachtumorCheckBox
            app.AssignoverallgradetoeachtumorCheckBox = uicheckbox(app.GLASSAIParametersTab);
            app.AssignoverallgradetoeachtumorCheckBox.Tooltip = {'When checked, individual tumors in images will be assigned an overall grade using the method chosen below. A map of these tumor grades will be output alongside the normal tumor grade map. Individual umor grades will be recorded in output spreadsheets.'};
            app.AssignoverallgradetoeachtumorCheckBox.Text = 'Assign overall grade to each tumor';
            app.AssignoverallgradetoeachtumorCheckBox.Position = [87 62 210 22];
            app.AssignoverallgradetoeachtumorCheckBox.Value = true;

            % Create TumorgradethresholdEditFieldLabel
            app.TumorgradethresholdEditFieldLabel = uilabel(app.GLASSAIParametersTab);
            app.TumorgradethresholdEditFieldLabel.HorizontalAlignment = 'right';
            app.TumorgradethresholdEditFieldLabel.Position = [69 10 148 22];
            app.TumorgradethresholdEditFieldLabel.Text = 'Tumor grade threshold (%)';

            % Create TumorgradethresholdEditField
            app.TumorgradethresholdEditField = uieditfield(app.GLASSAIParametersTab, 'numeric');
            app.TumorgradethresholdEditField.Limits = [0 25];
            app.TumorgradethresholdEditField.Tooltip = {'Define threshold of tumor area used when assigning overall tumor grades using "Highest, above threshold" method. Default value is 10.'};
            app.TumorgradethresholdEditField.Position = [226 10 70 22];
            app.TumorgradethresholdEditField.Value = 10;

            % Create AssignmentmethodDropDownLabel
            app.AssignmentmethodDropDownLabel = uilabel(app.GLASSAIParametersTab);
            app.AssignmentmethodDropDownLabel.HorizontalAlignment = 'right';
            app.AssignmentmethodDropDownLabel.Position = [8 36 113 22];
            app.AssignmentmethodDropDownLabel.Text = 'Assignment method';

            % Create AssignmentmethodDropDown
            app.AssignmentmethodDropDown = uidropdown(app.GLASSAIParametersTab);
            app.AssignmentmethodDropDown.Items = {'Highest, above threshold', 'Most prevalent'};
            app.AssignmentmethodDropDown.ItemsData = {'highest', 'majority'};
            app.AssignmentmethodDropDown.Tooltip = {'Select method to assign overall grade to individual tumors.'; 'Default setting is to use the highest tumor grade present that comprises ≥10% of the tumor''s area. This is based on current reccomendations for clinical grading of human lung adenocarcinoma.'};
            app.AssignmentmethodDropDown.Position = [129 36 168 22];
            app.AssignmentmethodDropDown.Value = 'highest';

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
            app.EosGreenInput.Value = 0.783;

            % Create EosBlueInput
            app.EosBlueInput = uieditfield(app.StainODMatrixPanel, 'numeric');
            app.EosBlueInput.Limits = [0 1];
            app.EosBlueInput.ValueChangedFcn = createCallbackFcn(app, @StainVectorValueChanged, true);
            app.EosBlueInput.Position = [74 53 48 22];
            app.EosBlueInput.Value = 0.334;

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
            app.HemGreenInput.Value = 0.863;

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
            app.NormBackgroundIntensity.Value = 240;

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
            app.NormTransparencyThreshold.Value = 0.1;

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
            app.GradeMapScalingLabel.Position = [53 192 69 28];
            app.GradeMapScalingLabel.Text = {'Grade Map '; 'Scaling'};

            % Create GradeMapScalingSlider
            app.GradeMapScalingSlider = uislider(app.OutputImageScalingTab);
            app.GradeMapScalingSlider.Limits = [12.5 100];
            app.GradeMapScalingSlider.MajorTicks = [12.5 25 50 100];
            app.GradeMapScalingSlider.MajorTickLabels = {'1/8', '1/4', '1/2', 'FULL'};
            app.GradeMapScalingSlider.ValueChangedFcn = createCallbackFcn(app, @DiscreteSliderValueChanged, true);
            app.GradeMapScalingSlider.MinorTicks = [];
            app.GradeMapScalingSlider.Tooltip = {'Set the scaling factor used when generating the output tumor grade map. Default = 1/4'};
            app.GradeMapScalingSlider.Position = [134 208 150 3];
            app.GradeMapScalingSlider.Value = 25;

            % Create SegmentationScalingLabel
            app.SegmentationScalingLabel = uilabel(app.OutputImageScalingTab);
            app.SegmentationScalingLabel.HorizontalAlignment = 'right';
            app.SegmentationScalingLabel.Position = [38 139 84 28];
            app.SegmentationScalingLabel.Text = {'Segmentation '; 'Scaling'};

            % Create SegmentationScalingSlider
            app.SegmentationScalingSlider = uislider(app.OutputImageScalingTab);
            app.SegmentationScalingSlider.Limits = [12.5 100];
            app.SegmentationScalingSlider.MajorTicks = [12.5 25 50 100];
            app.SegmentationScalingSlider.MajorTickLabels = {'1/8', '1/4', '1/2', 'FULL'};
            app.SegmentationScalingSlider.ValueChangedFcn = createCallbackFcn(app, @DiscreteSliderValueChanged, true);
            app.SegmentationScalingSlider.MinorTicks = [];
            app.SegmentationScalingSlider.Tooltip = {'Set the scaling factor used when generating the output tumor segmentation map. Default = 1/2'};
            app.SegmentationScalingSlider.Position = [134 155 150 3];
            app.SegmentationScalingSlider.Value = 50;

            % Create StainNormalizedImageScalingLabel
            app.StainNormalizedImageScalingLabel = uilabel(app.OutputImageScalingTab);
            app.StainNormalizedImageScalingLabel.HorizontalAlignment = 'right';
            app.StainNormalizedImageScalingLabel.Position = [26 93 97 28];
            app.StainNormalizedImageScalingLabel.Text = {'Stain Normalized'; ' Image Scaling'};

            % Create StainNormalizedImageScalingSlider
            app.StainNormalizedImageScalingSlider = uislider(app.OutputImageScalingTab);
            app.StainNormalizedImageScalingSlider.Limits = [12.5 100];
            app.StainNormalizedImageScalingSlider.MajorTicks = [12.5 25 50 100];
            app.StainNormalizedImageScalingSlider.MajorTickLabels = {'1/8', '1/4', '1/2', 'FULL'};
            app.StainNormalizedImageScalingSlider.ValueChangedFcn = createCallbackFcn(app, @DiscreteSliderValueChanged, true);
            app.StainNormalizedImageScalingSlider.MinorTicks = [];
            app.StainNormalizedImageScalingSlider.Tooltip = {'Set the scaling factor used when generating the output stain normalized image. Default = FULL'};
            app.StainNormalizedImageScalingSlider.Position = [135 109 150 3];
            app.StainNormalizedImageScalingSlider.Value = 100;

            % Create SegmentationImageCheckBox
            app.SegmentationImageCheckBox = uicheckbox(app.OutputImageScalingTab);
            app.SegmentationImageCheckBox.Tooltip = {'When checked, an output image with individual tumors segmented and labeled will be generated. The tumor labeling process can take some time in large images.'};
            app.SegmentationImageCheckBox.Text = '';
            app.SegmentationImageCheckBox.Position = [4 148 25 22];
            app.SegmentationImageCheckBox.Value = true;

            % Create ConfidenceMapScalingSliderLabel
            app.ConfidenceMapScalingSliderLabel = uilabel(app.OutputImageScalingTab);
            app.ConfidenceMapScalingSliderLabel.HorizontalAlignment = 'right';
            app.ConfidenceMapScalingSliderLabel.Position = [27 42 98 28];
            app.ConfidenceMapScalingSliderLabel.Text = {'Confidence Map '; 'Scaling'};

            % Create ConfidenceMapScalingSlider
            app.ConfidenceMapScalingSlider = uislider(app.OutputImageScalingTab);
            app.ConfidenceMapScalingSlider.Limits = [12.5 100];
            app.ConfidenceMapScalingSlider.MajorTicks = [12.5 25 50 100];
            app.ConfidenceMapScalingSlider.MajorTickLabels = {'1/8', '1/4', '1/2', 'FULL'};
            app.ConfidenceMapScalingSlider.MinorTicks = [];
            app.ConfidenceMapScalingSlider.Tooltip = {'Set the scaling factor used when generating the maximum class confidence/probability map. '; 'Default = 1/4'};
            app.ConfidenceMapScalingSlider.Position = [137 58 150 3];
            app.ConfidenceMapScalingSlider.Value = 25;

            % Create ConfidenceMapCheckBox
            app.ConfidenceMapCheckBox = uicheckbox(app.OutputImageScalingTab);
            app.ConfidenceMapCheckBox.Tooltip = {'When checked, outputs a map of predicted class confidence/probabiilty for GLASS-AI''s prediction. A .mat file containing the activation weights of each class for each pixel will also be created.'};
            app.ConfidenceMapCheckBox.Text = '';
            app.ConfidenceMapCheckBox.Position = [5 50 25 22];

            % Create ConfidenceMappaletteDropDownLabel
            app.ConfidenceMappaletteDropDownLabel = uilabel(app.OutputImageScalingTab);
            app.ConfidenceMappaletteDropDownLabel.HorizontalAlignment = 'right';
            app.ConfidenceMappaletteDropDownLabel.Position = [50 5 134 22];
            app.ConfidenceMappaletteDropDownLabel.Text = 'Confidence Map palette';

            % Create ConfidenceMapPaletteDropDown
            app.ConfidenceMapPaletteDropDown = uidropdown(app.OutputImageScalingTab);
            app.ConfidenceMapPaletteDropDown.Items = {'Hot', 'Gray', 'Bone', 'Turbo', 'Cool'};
            app.ConfidenceMapPaletteDropDown.ItemsData = {'hot', 'gray', 'bone', 'turbo', 'cool'};
            app.ConfidenceMapPaletteDropDown.Tooltip = {'Select the color map to use for the maximum class confidence/probability map. '; 'Default = "Hot"'};
            app.ConfidenceMapPaletteDropDown.Position = [199 5 100 22];
            app.ConfidenceMapPaletteDropDown.Value = 'hot';

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
        function app = GLASS_AI_APP_dev

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
