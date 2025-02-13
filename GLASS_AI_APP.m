classdef GLASS_AI_APP < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        GLASSAIUIFigure                 matlab.ui.Figure
        UpdateAvailableButton           matlab.ui.control.Button
        GLASSAILogo                     matlab.ui.control.Image
        StopAnalysisButton              matlab.ui.control.StateButton
        MoffittLogo                     matlab.ui.control.Image
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
        RemovepurecolorpixelsCheckBox   matlab.ui.control.CheckBox
        NormMinimumTissuePercent        matlab.ui.control.NumericEditField
        MinimumTissuePercentEditFieldLabel  matlab.ui.control.Label
        NormPseudomaxTolerance          matlab.ui.control.NumericEditField
        PseudomaxToleranceEditFieldLabel  matlab.ui.control.Label
        NormTransparencyThreshold       matlab.ui.control.NumericEditField
        TransparencyThresholdEditFieldLabel  matlab.ui.control.Label
        NormBackgroundIntensity         matlab.ui.control.NumericEditField
        BackgroundIntensityLabel        matlab.ui.control.Label
        RefStainMatrixPanel             matlab.ui.container.Panel
        ConcentrationLabel              matlab.ui.control.Label
        EosConc                         matlab.ui.control.NumericEditField
        HemConc                         matlab.ui.control.NumericEditField
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
        NormalizedImageOutputCheckBox   matlab.ui.control.CheckBox
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
        GLASSAIAnnotationEditorGitHubLink  matlab.ui.control.Hyperlink
        FloresLabLink                   matlab.ui.control.Hyperlink
        GLASSAIManuscriptLink           matlab.ui.control.Hyperlink
        GLASSAIGitHubLink               matlab.ui.control.Hyperlink
        CopytobaseButton                matlab.ui.control.Button
        VersionLabel                    matlab.ui.control.Label
        CopyrightLabel                  matlab.ui.control.Label
        RUOLabel                        matlab.ui.control.Label
        RunCheckLamp                    matlab.ui.control.Lamp
        StatusLabel                     matlab.ui.control.Label
        GLASSAILabel                    matlab.ui.control.Label
        Step2Label                      matlab.ui.control.Label
        Step1Label                      matlab.ui.control.Label
        OutputFolderLamp                matlab.ui.control.Lamp
        InputFolderLamp                 matlab.ui.control.Lamp
        OutputFolderLocationLabel       matlab.ui.control.Label
        OutputFolderButton              matlab.ui.control.Button
        RunButton                       matlab.ui.control.Button
        FileTable                       matlab.ui.control.Table
        InputFolderLocationLabel        matlab.ui.control.Label
        SelectimagesButton              matlab.ui.control.Button
        AnalysisOptionsPanel            matlab.ui.container.Panel
        NormalizestainingSwitch         matlab.ui.control.Switch
        NormalizestainingSwitchLabel    matlab.ui.control.Label
        PreviewoutputimagesSwitch       matlab.ui.control.Switch
        PreviewoutputimagesSwitchLabel  matlab.ui.control.Label
        OverwriteSlideSummaryInput      matlab.ui.control.CheckBox
    end


    properties (Access = private)
        % PROPERTIES %
        GLASSAI_APP_VERSION = '2.1.1' % Version of GLASS-AI standalone app
        GLASS_AI_NET % Network object for machine learning model
        RESOURCE_DIR_PATH %store path to GLASS_AI_resources directory
        START_DIR

        % RUNTIME_VARS %
        LAST_SELECTED_DIR % Path to last selected directory
        INPUT_PATH  % Path selected using BrowseButton
        OUTPUT_PATH % Path selected using OutputFolderButton
        SELECTED_FILES % List of files selected for analysis
        SELECTED_PATHS % Full path for selected files
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
        NORMALIZE_REF_STAINMATRIX % Color vectors for hematoxylin and eosin stain
        NORMALIZATION_REF_CONC % Reference stain concentrations for normalization
        REMOVE_PURE_COLORS % Remove pure colors during stain normalization
        OUTPUT_IMAGE_PREVIEW % True = make preview figure of output images
        OUTPUT_GRADE_IMAGE_SCALE % scaling applied to grade map output image
        MAKE_NORMALIZED_IMAGE % Save normalized H&E image to file
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
        ASSIGN_OVERALL_GRADES % Assign overall grades to each tumor
        ASSIGN_GRADES_METHOD % Method to use for overall tumor grade assignment
        ASSIGN_GRADES_THRESHOLD % Percentage of tumor area required for grade assignment

        % nCounts and iIterators %
        nImages % Total number of images selected for analysis
        iImage % Current image number (of total) being processed)

        % Status Tracking %
        analysisStepDescription % Current analysis step
        analysisStopWatch % Store time analysis was started
        analysisRunTime % Store time elapsed since analysis was started
        analysisEndTime % Store time analysis completed
        imageStopWatch % Stopwatch for individual image
        imageRunTime %Store time elapsed since analysis was started on image
        currentFileName % Store file name of the image being analyzed
        currentFileExt % Store extension of the image being analyzed
        currentFileNameExt % Store file name and extension of the image being analyzed
        currentFilePath % Store path to image being analyzed
        logFileName % name of log file
        logFilePath % location of log file
        ErrorAlertAlreadyCreated = false % Flag to store if an error has occured in a defined try block

    end % End Properties

    methods (Access = private)

        function main(app)
            % Run GLASS-AI analysis on input images. Performs tumor
            % grading and segmentation on the input images using
            % the parameters set through the GUI. Outputs overlay
            % images and data sheets for further analysis.

            % clean up temporary folders on completion or termination
            cleanup = onCleanup(@()cleanUpGLASSAI(app));

            %% start analysis
            net = app.GLASS_AI_NET;

            try % catch unexpected errors during any analysis step

                while true % stop button function
                    app.iImage = 0; %initialize image tracking counter to 0
                    % process each image
                    %- use currentImage because app properties (i.e., app.iImage)
                    %- can't be used as iterators in a for loop
                    for currentImage = 1 : app.nImages
                        if app.StopAnalysisButton.Value == 1
                            app.StopAnalysisButton.Text = "Stopped";
                            app.StopAnalysisButton.Enable = "off";
                            fprintf("%s - %s\n",string(datetime),"ANALYSIS STOP REQUESTED BY USER. Breaking from FOR loop over input image files in main().")
                            break %escape from FOR loop over input images
                        end

                        app.iImage = app.iImage + 1;

                        %% clean leftover temp files
                        if isfolder(fullfile(app.OUTPUT_PATH,'TempFolder'))
                            app.StatusLabel.Text =  "Cleaning temporary files";
                            deletetemporaryfiles(app,true)
                        end

                        %% start parallel processing pool
                        if app.StopAnalysisButton.Value == 1
                            app.StopAnalysisButton.Text = "Stopped";
                            fprintf("%s - %s\n",string(datetime),"ANALYSIS STOP REQUESTED BY USER. Breaking from FOR loop over input image files in main().")
                            break %escape from FOR loop over input images
                        end
                        % start parallel processing pool if
                        % possible/allowed and one does not already exist
                        %- do this for each image because pool may be destroyed
                        %- if not used for an extended period of time
                        p = gcp('nocreate'); 
                        if isempty(p)
                            parpool('Processes');
                        app.StatusLabel.Text = "Starting parallel processing pool...";
                        fprintf("%s - %s %d %s\n",string(datetime),"PARPOOL: Created parpool with",gcp('nocreate').NumWorkers,"workers.")
                        end
                        

                        %% get image file info
                        app.currentFilePath = app.SELECTED_PATHS{currentImage};
                        [~,app.currentFileName,app.currentFileExt] = fileparts(app.currentFilePath);
                        app.currentFileNameExt = strcat(app.currentFileName,app.currentFileExt);

                        %% analyze image
                        %mark the image currently being processed in the FileTable
                        processingstyle = uistyle("Icon",fullfile(app.RESOURCE_DIR_PATH,"UI files","processing.svg"));
                        addStyle(app.FileTable,processingstyle,"cell",[app.iImage 3])
                        scroll(app.FileTable,"row",app.iImage)

                        runglassai(app,net)

                        %remove any temporary files
                        deletetemporaryfiles(app);

                        %catch stop analysis request after returning from
                        %runglassai()
                        if app.StopAnalysisButton.Value == 1
                            app.StopAnalysisButton.Text = "Stopped";
                            app.StopAnalysisButton.Enable = "off";
                            fprintf("%s - %s\n",string(datetime),"ANALYSIS STOP REQUESTED BY USER. Breaking from FOR loop over input image files in main().")
                            %mark image that was active when analysis was stopped
                            stopstyle = uistyle("Icon","warning");
                            addStyle(app.FileTable,stopstyle,"cell",[app.iImage 3])
                            break %escape from FOR loop over input images
                        end
                        
                        %mark image as completed in file table
                        finishedstyle = uistyle("Icon","success");
                        addStyle(app.FileTable,finishedstyle,"cell",[app.iImage 3])
                    end % End FOR loop over input images

                    %% Finish Analysis Run
                    cleanUpGLASSAI(app);
                    runcheck(app); %recheck options are valid for next run
                    break %exit while=true loop after last image
                end %while loop: stop button function
            catch ME % try: catch errors during any analysis step
                % write error message to logfile
                fprintf("%s - %s %s\n",string(datetime),"[ERROR]: Analysis terminated due to error:", ME.message)
                % update status window to alert user to error
                app.StatusLabel.Text= sprintf("An error occured. Analysis Terminated.\n Check logfile for more details.");
                %rethrow error to stop execution
                %- error reporting in RunButtonPushed callback
                rethrow(ME)
            end % try: catch errors during any analysis step
        end % End function: main()

        function runglassai(app,net)
            % Run GLASS-AI analysis on current image. Performs tumor
            % grading and segmentation on the input images using
            % the parameters set through the GUI. Outputs overlay
            % images and data sheets for further analysis.

            %initialize log and stopwatch for current image
            fprintf("%s %0.0f %s\n","----- Start image",app.iImage,"-----")
            fprintf("%s - %s %s\n",string(datetime),"Beginning analysis of", app.currentFileNameExt)
            %start stopwatch for current image
            app.imageStopWatch = tic;

            try % catch unexpected errors during any analysis step
                %% read input image
                statusupdate(app,"Loading image");
                %check stop button status before proceeding
                if app.StopAnalysisButton.Value == 1
                    app.StopAnalysisButton.Text = "Stopped";                     
                    app.StopAnalysisButton.Enable = "off";
                    fprintf("%s - %s\n",string(datetime),"ANALYSIS STOP REQUESTED BY USER. Returning control from runglassai().")
                    return
                end
                try
                    fprintf("%s - %s %s\n",string(datetime),"Creating blockedImage from",app.currentFileNameExt)
                    %read image as blocked image. get index of target
                    %image resolution.
                    [wholeImage, imageIndex] = readimage(app,app.currentFilePath);
                    xImagePixels = wholeImage.Size(imageIndex,2);
                    yImagePixels = wholeImage.Size(imageIndex,1);
                    zImagePixels = wholeImage.Size(imageIndex,3);
                    fprintf("%s - %s %s\n",string(datetime),"Created blockedImage from",app.currentFileNameExt)

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


                %% make overview image for stain estimation and tissue masking
                statusupdate(app,"Creating overview image");
                %check stop button status before proceeding
                if app.StopAnalysisButton.Value == 1
                    app.StopAnalysisButton.Text = "Stopped";
                    fprintf("%s - %s\n",string(datetime),"ANALYSIS STOP REQUESTED BY USER. Returning control from runglassai().")
                    return
                end

                %make low res overview image (1/16 scale).
                if prod(wholeImage.Size(1:2)) > 100000000
                fprintf("%s - %s %s\n",string(datetime),"Creating overview image of", app.currentFileNameExt)
                overviewImage = makeMultiLevel2D(wholeImage,...
                    Scales=0.125,...
                    Adapter=images.blocked.PNGBlocks,...
                    Interpolation="nearest",...
                    UseParallel = true,...
                    OutputLocation = fullfile(app.OUTPUT_PATH,'TempFolder','overviewImage'));
                %make sure that the overview is at least 1 full block
                overviewImage.BlockSize = min(overviewImage.Size,overviewImage.BlockSize);
                fprintf("%s - %s %s\n",string(datetime),"Created overview image of", app.currentFileNameExt)
                else
                    fprintf("%s - %s %s %s\n",string(datetime),"Skipping overview image of", app.currentFileNameExt,"due to small image size")
                    overviewImage = wholeImage;
                end


                %% mask empty image patchs
                statusupdate(app,"Masking out empty patches");
                %check stop button status before proceeding
                if app.StopAnalysisButton.Value == 1
                    app.StopAnalysisButton.Text = "Stopped";                     
                    app.StopAnalysisButton.Enable = "off";
                    fprintf("%s - %s\n",string(datetime),"ANALYSIS STOP REQUESTED BY USER. Returning control from runglassai().")
                    return
                end

                %Identify low luminosity pixels (i.e., tissue)
                luminosityThreshold = 200;
                fprintf("%s - %s %s %s%d\n",string(datetime),"Masking tissue pixels in", app.currentFileNameExt,"with luminosity <",luminosityThreshold)
                tissueBlockMask = apply(overviewImage, @(bs)rgb2gray(bs.Data)<luminosityThreshold,...
                    'UseParallel',true,...,
                    'OutputLocation',fullfile(app.OUTPUT_PATH,'TempFolder','tissueMask'));
                fprintf("%s - %s %s\n",string(datetime),"Masked tissue pixels in", app.currentFileNameExt)
                fprintf("%s - %s %s\n",string(datetime),"Gathering tissue mask for", app.currentFileNameExt)
                tissueBlockMask = gather(tissueBlockMask);
                fprintf("%s - %s %s\n",string(datetime),"Finished gathering tissue mask for", app.currentFileNameExt)

                %Clean up tissue mask by morphological closing, removing
                %small objects, and including a 50 pixel border around
                %remaining objects
                tissueBlockMask = imclose(tissueBlockMask,strel('square',10));
                fprintf("%s - %s %s\n",string(datetime),"Performed morphological closing on tissue mask for", app.currentFileNameExt)
                tissueBlockMask = bwareaopen(tissueBlockMask,1000);
                fprintf("%s - %s %s\n",string(datetime),"Removed objects < 1000 pixels in tissue mask for", app.currentFileNameExt)
                tissueBlockMask = imdilate(tissueBlockMask,strel('square',50));
                fprintf("%s - %s %s\n",string(datetime),"Added 50 pixel border to objects in tissue mask for", app.currentFileNameExt)

                %convert mask to blockedImage to make blockLocationSet
                tissueBlockMask = blockedImage(tissueBlockMask, BlockSize=[224 224]);
                fprintf("%s - %s %s %s\n",string(datetime),"Converted tissue mask for", app.currentFileNameExt,"to blockedImage")
                %make spatial referencing the same as input image
                tissueBlockMask.WorldEnd = wholeImage.WorldEnd(imageIndex,1:2);
                maskedTissueBlockSet = selectBlockLocations(wholeImage,...
                    'BlockSize',[224 224 3],...
                    'Levels',imageIndex,...
                    'Mask', tissueBlockMask,...
                    'InclusionThreshold', app.PATCH_SKIP_THRESHOLD/100,...
                    'UseParallel',true);
                fprintf("%s - %s %s\n",string(datetime),"Created blockLocationSet using tissue mask for", app.currentFileNameExt)

                %% normalize staining
                if app.NORMALIZE_STAINS
                    statusupdate(app,"Estimating stain concentration");
                    %check stop button status before proceeding
                    if app.StopAnalysisButton.Value == 1
                        app.StopAnalysisButton.Text = "Stopped";
                        app.StopAnalysisButton.Enable = "off";
                        fprintf("%s - %s\n",string(datetime),"ANALYSIS STOP REQUESTED BY USER. Returning control from runglassai().")
                        return
                    end
                
                    %estimate stain from overview image
                    fprintf("%s - %s %s\n",string(datetime),"Gathering overview image for", app.currentFileNameExt)
                    gathered_overviewImage = gather(overviewImage);
                    fprintf("%s - %s %s\n",string(datetime),"Gathered overview image for", app.currentFileNameExt)
                    [stainMatrix, stainConc] = estimatestaining(app,gathered_overviewImage);
                    fprintf("%s - %s %s\n",string(datetime),"Estimated staining using overview image for", app.currentFileNameExt)
                    fprintf("%s\n","Stain Matrix")
                    fprintf("%0.4f\t%0.4f\n",transpose(stainMatrix(:,1)),transpose(stainMatrix(:,2)))
                    fprintf("Estimated stain concentrations: %0.4f\t%0.4f\n",stainConc(1),stainConc(2))
                    clear gathered_overviewImage %dont use for preview in case 1/16 downsampling is too much
                    
                    %apply stain to wholeImage
                    statusupdate(app,"Performing stain normalization");
                    Io = app.NORMALIZE_IO;
                    refStainMatrix = app.NORMALIZE_REF_STAINMATRIX;
                    refStainConcentration = app.NORMALIZATION_REF_CONC;
                    fprintf("%s - %s %s\n",string(datetime),"Applying stain normalization to", app.currentFileNameExt)
                    normalizedImage = apply(wholeImage,@(bim) applystainnormalization(app, bim.Data, stainMatrix,stainConc,...
                            Io = Io,...
                            referenceStainMatrix = refStainMatrix,...
                            referenceStainConc = refStainConcentration),...
                        'BlockLocationSet',maskedTissueBlockSet,...
                        'Adapter',images.blocked.PNGBlocks,...
                        'Level',imageIndex,...
                        'UseParallel',true,...
                        'OutputLocation',fullfile(app.OUTPUT_PATH,'TempFolder','normalized_image'));
                    fprintf("%s - %s %s\n",string(datetime),"Finished applying stain normalization to", app.currentFileNameExt)
                end


                %% grade tumors
                statusupdate(app,"Performing tumor grading");
                if app.StopAnalysisButton.Value == 1
                    app.StopAnalysisButton.Text = "Stopped";
                    app.StopAnalysisButton.Enable = "off";
                    fprintf("%s - %s\n",string(datetime),"ANALYSIS STOP REQUESTED BY USER. Returning control from runglassai().")
                    return
                end

                %perform semantic segmentation
                fprintf("%s - %s %s\n",string(datetime),"Starting semantic segmentation on", app.currentFileNameExt)
                if app.NORMALIZE_STAINS
                   fprintf("%s - %s\n",string(datetime),"SEMANTIC SEG: Using stain normalized image for analysis")
                    [classifications,maxClassProbability,~] = apply(normalizedImage, @(bs) semanticseg(bs.Data, net,OutputType="uint8",ExecutionEnvironment="auto"), ...
                        'BlockLocationSet', maskedTissueBlockSet,...
                        'PadPartialBlocks',true,...
                        'PadMethod','symmetric',...
                        'Adapter',images.blocked.MATBlocks,...
                        'UseParallel',true,...
                        'OutputLocation',fullfile(app.OUTPUT_PATH,'TempFolder','scores'));
                else
                    fprintf("%s - %s\n",string(datetime),"SEMANTIC SEG: Using input image for analysis")
                    [classifications,maxClassProbability,~] = apply(wholeImage, @(bs) semanticseg(bs.Data, net,OutputType="uint8",ExecutionEnvironment="auto"), ...
                        'BlockLocationSet', maskedTissueBlockSet,...
                        'PadPartialBlocks',true,...
                        'PadMethod','symmetric',...
                        'Level',imageIndex,...
                        'Adapter',images.blocked.MATBlocks,...  
                        'UseParallel',true,...
                        'OutputLocation',fullfile(app.OUTPUT_PATH,'TempFolder','scores'));
                end
                %Trim any padding added to the image during semanticseg.
                classifications = crop(classifications,[1 1],[yImagePixels xImagePixels]);
                maxClassProbability = crop(maxClassProbability,[1 1],[yImagePixels xImagePixels]);
                fprintf("%s - %s %s\n",string(datetime),"Finished semantic segmentation on", app.currentFileNameExt)


                %% process semantic segmentation results
                statusupdate(app,"Gathering pixel classifications");
                if app.StopAnalysisButton.Value == 1
                    app.StopAnalysisButton.Text = "Stopped";
                    app.StopAnalysisButton.Enable = "off";
                    fprintf("%s - %s\n",string(datetime),"ANALYSIS STOP REQUESTED BY USER. Returning control from runglassai().")
                    return
                end

                %Results need to be gathered to perform smoothing. 
                %Padding the blockedImage with data from neighboring blocks
                %makes this take way too long.
                fprintf("%s - %s %s\n",string(datetime),"Gathering classifications from blockedImage for", app.currentFileNameExt)
                classifications = gather(classifications);
                fprintf("%s - %s %s\n",string(datetime),"Started gathering classifications from blockedImage for", app.currentFileNameExt)

                %Smooth classifications using user-selected method and
                %window size
                if app.SMOOTH_METHOD ~= "none"
                    %_Status Update_%
                    statusupdate(app,"Smoothing pixel classifications");
                    %%%%%%%%%%%%%%%%%
                    %check stop button status before proceeding
                    drawnow
                    if app.StopAnalysisButton.Value == 1
                        app.StopAnalysisButton.Text = "Stopped";
                        app.StopAnalysisButton.Enable = "off";
                        fprintf("%s - %s\n",string(datetime),"ANALYSIS STOP REQUESTED BY USER. Returning control from runglassai().")
                        return
                    end
                    fprintf("%s - %s %s\n",string(datetime),"Starting pixel classification smoothing on", app.currentFileNameExt)
                    classifications = smoothclasses(app,classifications);
                    fprintf("%s - %s %s\n",string(datetime),"Finished pixel classification smoothing on", app.currentFileNameExt)
                end

                %% save classifications 
                statusupdate(app,"Saving classifications to file");
                if app.StopAnalysisButton.Value == 1
                    app.StopAnalysisButton.Text = "Stopped";
                    app.StopAnalysisButton.Enable = "off";
                    fprintf("%s - %s\n",string(datetime),"ANALYSIS STOP REQUESTED BY USER. Returning control from runglassai().")
                    return
                end
                try
                    %classifications were already gathered for smoothing
                    classificationOutputFilePath = fullfile(app.OUTPUT_PATH,strcat(app.currentFileName,'_classes.mat'));
                    %check for existing file and prompt to replace
                    overwriteAll = ""; %not yet defined by user, initialize as empty string
                    [classificationOutputFilePath, overwriteAll] = promptreplacexistingfile(app,classificationOutputFilePath,overwriteAll,".mat","_new.mat");
                    fprintf("%s - %s %s %s %s\n", string(datetime),"Saving classifications for",app.currentFileNameExt,"to",classificationOutputFilePath)
                    save(classificationOutputFilePath,'classifications', '-v7.3');
                    fprintf("%s - %s %s %s %s\n", string(datetime),"Saved raw classifications for",app.currentFileNameExt,"to",classificationOutputFilePath)
                catch ME
                    % alert user that an error occured if not already done
                    if ~app.ErrorAlertAlreadyCreated
                        app.ErrorAlertAlreadyCreated = true;
                        message_text = "GLASS-AI encountered an error while saving image classifications." + ...
                            newline + "[ERROR MESSAGE]" + newline + ME.message;
                        uialert(app.GLASSAIUIFigure,message_text,"Analysis error")
                    end
                    fprintf("%s - %s %s %s %s\n",string(datetime),"[ERROR]: An error occured during saving of classes for",app.currentFileNameExt,"to",classificationOutputFilePath)
                    %rethrow error to stop execution
                    rethrow(ME);
                end % End TRY: save the classifications in the output folder in a .mat file

                %% segment individual tumors
                statusupdate(app,"Segmenting individual tumors");
                if app.StopAnalysisButton.Value == 1
                    app.StopAnalysisButton.Text = "Stopped";
                    app.StopAnalysisButton.Enable = "off";
                    fprintf("%s - %s\n",string(datetime),"ANALYSIS STOP REQUESTED BY USER. Returning control from runglassai().")
                    return
                end
                %Find, merge, and filter tumor pixels into objects
                segmentedTumorMask = segmentindividualtumors(app, classifications);

                %% make tumor ID label mask
                statusupdate(app,"Making tumor label mask");
                if app.StopAnalysisButton.Value == 1
                    app.StopAnalysisButton.Text = "Stopped";
                    app.StopAnalysisButton.Enable = "off";
                    fprintf("%s - %s\n",string(datetime),"ANALYSIS STOP REQUESTED BY USER. Returning control from runglassai().")
                    return
                end

                %Make a mask with intensities equal to the number of the
                %individual tumors ID
                tumorIdLabelMask = maketumorlabelmask(app, segmentedTumorMask);


                %% Save tumor ID label mask
                statusupdate(app,"Saving tumor label mask");
                if app.StopAnalysisButton.Value == 1
                    app.StopAnalysisButton.Text = "Stopped";
                    app.StopAnalysisButton.Enable = "off";
                    fprintf("%s - %s\n",string(datetime),"ANALYSIS STOP REQUESTED BY USER. Returning control from runglassai().")
                    return
                end
                try
                    tumorLabelOutputFilePath=fullfile(app.OUTPUT_PATH, strcat(app.currentFileName,'_tumor_labels.mat'));
                    [tumorLabelOutputFilePath, overwriteAll] = promptreplacexistingfile(app,tumorLabelOutputFilePath,overwriteAll,".mat","_new.mat");
                    fprintf("%s - %s %s %s %s\n", string(datetime),"Saving tumor label mask for",app.currentFileNameExt,"to",tumorLabelOutputFilePath)
                    save(tumorLabelOutputFilePath,'tumorIdLabelMask', '-v7.3');
                    fprintf("%s - %s %s %s %s\n", string(datetime),"Saved tumor label mask for",app.currentFileNameExt,"to",tumorLabelOutputFilePath)
                    %Clear after saving since this mask is uint16. It is more
                    %memory sparing to just refind the connected
                    %components later.
                    clear tumorIdLabelMask
                catch ME
                    % alert user that an error occured if not already done
                    if ~app.ErrorAlertAlreadyCreated
                        app.ErrorAlertAlreadyCreated = true;
                        message_text = "GLASS-AI encountered an error while saving tumor label mask." + ...
                            newline + "[ERROR MESSAGE]" + newline + ME.message;
                        uialert(app.GLASSAIUIFigure,message_text,"Analysis error")
                    end
                    fprintf("%s - %s %s\n",string(datetime),"[ERROR]: An error occured during saving of tumor label mask for",app.currentFileNameExt)
                    %rethrow error to stop execution
                    rethrow(ME);
                end


                %% Analyze individual tumors compositions and areas
                statusupdate(app,"Analyzing individual tumors");
                if app.StopAnalysisButton.Value == 1
                    app.StopAnalysisButton.Text = "Stopped";
                    app.StopAnalysisButton.Enable = "off";
                    fprintf("%s - %s\n",string(datetime),"ANALYSIS STOP REQUESTED BY USER. Returning control from runglassai().")
                    return
                end
                
                [individualTumorStats]=individualtumoranalysis(app,classifications,segmentedTumorMask);


                %% Generate spreadsheet of individual tumors from each input image
                statusupdate(app,"Saving individual tumor stats");
                if app.StopAnalysisButton.Value == 1
                    app.StopAnalysisButton.Text = "Stopped";
                    app.StopAnalysisButton.Enable = "off";
                    fprintf("%s - %s\n",string(datetime),"ANALYSIS STOP REQUESTED BY USER. Returning control from runglassai().")
                    return
                end
                
                individualTumorStatsFilePath = fullfile(app.OUTPUT_PATH,strcat(app.currentFileName, ".xlsx"));
                [individualTumorStatsFilePath, overwriteAll] = promptreplacexistingfile(app,individualTumorStatsFilePath,overwriteAll,".xlsx","_new.xlsx");
                %get name of the indiviudal tumor stats file to use in the
                %image level stats file
                [~,imageName,~] = fileparts(individualTumorStatsFilePath);
                fprintf("%s - %s %s %s %s\n", string(datetime),"Saving individual tumor stats for",app.currentFileNameExt,"to",individualTumorStatsFilePath)
                writetable(individualTumorStats,individualTumorStatsFilePath,'WriteMode','overwrite','Sheet',1);
                fprintf("%s - %s %s %s %s\n", string(datetime),"Saved individual tumor stats for",app.currentFileNameExt,"to",individualTumorStatsFilePath)

                %% summarize tumors across the image
                %_Status Update_%
                statusupdate(app,"Summarizing tumors stats");
                %check stop button status before proceeding
                drawnow
                if app.StopAnalysisButton.Value == 1
                    app.StopAnalysisButton.Text = "Stopped";
                    app.StopAnalysisButton.Enable = "off";
                    fprintf("%s - %s\n",string(datetime),"ANALYSIS STOP REQUESTED BY USER. Returning control from runglassai().")
                    return
                end
                
                %Calculate tumor counts, counts of tumors of each grade,
                %total area of tissue of each grade, and percent of tumor
                %area of each grade in the whole image
                [imageTumorStats]=imageleveltumoranalysis(app,classifications,individualTumorStats,imageName);

                %Save summary stats for image
                statusupdate(app,"Saving tumor summary to image summary file");
                if app.StopAnalysisButton.Value == 1
                    app.StopAnalysisButton.Text = "Stopped";
                    app.StopAnalysisButton.Enable = "off";
                    fprintf("%s - %s\n",string(datetime),"ANALYSIS STOP REQUESTED BY USER. Returning control from runglassai().")
                    return
                end

                % make new file if first image and not appending to old file
                doMakeNewFile = (app.iImage==1 && ~app.APPEND_SLIDE_SUMMARY);

                fprintf("%s - %s %s %s %s\n", string(datetime),"Saving image-level tumor stats for",imageName,"to","Whole slide summary.xlsx")
                if doMakeNewFile
                    % overwrite existing file
                    if exist(fullfile(app.OUTPUT_PATH,'Whole slide summary.xlsx'), 'file')
                        fprintf("%s - %s\n",string(datetime),"[NOTE]: Overwriting existing 'Whole slide summary.xlsx' file")
                    end
                    writetable(imageTumorStats,fullfile(app.OUTPUT_PATH,'Whole slide summary.xlsx'),'WriteMode','overwrite','Sheet',1);
                    fprintf("%s - %s %s %s %s\n", string(datetime),"Saved image-level tumor stats for",imageName,"to","Whole slide summary.xlsx")
                else % not first image or appending to old file
                    % append entries to existing file
                    writetable(imageTumorStats,fullfile(app.OUTPUT_PATH,'Whole slide summary.xlsx'),'WriteMode','append','Sheet',1);
                    fprintf("%s - %s %s %s %s\n", string(datetime),"Appended image-level tumor stats for",imageName,"to","Whole slide summary.xlsx")
                end


                %% create map of pixel grades
                statusupdate(app,"Creating pixel-level tumor grade map");
                if app.StopAnalysisButton.Value == 1
                    app.StopAnalysisButton.Text = "Stopped";
                    app.StopAnalysisButton.Enable = "off";
                    fprintf("%s - %s\n",string(datetime),"ANALYSIS STOP REQUESTED BY USER. Returning control from runglassai().")
                    return
                end

                try
                    %Make an RGB image of pixel classifications using the 
                    %colormap defined in the 'Grade Map Colors' tab
                    %-This could theoretically be done using blockedImages
                    %-but classifications is already gathered to do the
                    %-classification smoothing
                    gradeImage = createtumorgradeimage(app,classifications);               

                    %Resize gradeImage to requested scaling factors
                    gradeImage = imresize(gradeImage, app.OUTPUT_GRADE_IMAGE_SCALE, 'nearest');
                    fprintf("%s - %s %.2f%s\n", string(datetime),"Resized tumor grade image to", app.OUTPUT_GRADE_IMAGE_SCALE,"x")

                    %Save tumor grade image to file
                    statusupdate(app,"Saving pixel-level tumor grade map");
                    tumorGradeImageFilePath = fullfile(app.OUTPUT_PATH,strcat(app.currentFileName+"_grades.tif"));
                    [tumorGradeImageFilePath, overwriteAll] = promptreplacexistingfile(app,tumorGradeImageFilePath,overwriteAll);
                    if (xImagePixels * yImagePixels) > 40000000 %write as tiled tiff for large images
                        writetiff(app,gradeImage,tumorGradeImageFilePath);
                        fprintf("%s - %s %s %s %s %s\n", string(datetime),"Saved tumor grade image for", app.currentFileNameExt, "to",tumorGradeImageFilePath,"using writetiff")
                    else
                        imwrite(gradeImage,tumorGradeImageFilePath,'tif','Compression','lzw');
                        fprintf("%s - %s %s %s %s %s\n", string(datetime),"Saved tumor grade image for", app.currentFileNameExt, "to",tumorGradeImageFilePath,"using imwrite with LZW compression")
                    end % End IF: write as tiled tiff for large images

                    %Resize or clear gradeImage to reduce memory load
                    if app.OUTPUT_IMAGE_PREVIEW
                        %resize image for preview
                        resizeX = min(xImagePixels,5000);
                        resizeY = min(yImagePixels,5000);
                        gradeImage = imresize(gradeImage,[resizeX,resizeY],'nearest');
                        fprintf("%s - %s %.0f%s%.0f %s\n", string(datetime),"Resized tumor grade image to", resizeX,"x",resizeY, "for output preview")
                    else
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


                %% create an overall tumor grade image if requested
                if app.StopAnalysisButton.Value == 1
                    app.StopAnalysisButton.Text = "Stopped";
                    app.StopAnalysisButton.Enable = "off";
                    fprintf("%s - %s\n",string(datetime),"ANALYSIS STOP REQUESTED BY USER. Returning control from runglassai().")
                    return
                end

                if app.ASSIGN_OVERALL_GRADES
                    statusupdate(app,"Assigning overall grades to tumors")
                    try
                        %Make a mask of the tumors where the pixel
                        %intensity is equal to the overall grade based on
                        %the method defined by the user
                        classifications = makeoveralltumorgrademask(app,classifications,segmentedTumorMask,individualTumorStats);

                        %Save overall tumor grade mask to file
                        statusupdate(app,"Saving overall tumor grade mask")
                        overallTumorGradeOutputFilePath = fullfile(app.OUTPUT_PATH, strcat(app.currentFileName,'_overall_tumor_grades.mat'));
                        [overallTumorGradeOutputFilePath, overwriteAll] = promptreplacexistingfile(app,overallTumorGradeOutputFilePath,overwriteAll,".mat","_new.mat");
                        fprintf("%s - %s %s %s %s\n", string(datetime),"Saving overall tumor grade mask for",app.currentFileNameExt,"to",overallTumorGradeOutputFilePath)
                        save(overallTumorGradeOutputFilePath,'classifications', '-v7.3');
                        fprintf("%s - %s %s %s %s\n", string(datetime),"Saved overall tumor grade mask for",app.currentFileNameExt,"to",overallTumorGradeOutputFilePath)

                    catch ME
                        % alert user that an error occured if not already done
                        if ~app.ErrorAlertAlreadyCreated
                            app.ErrorAlertAlreadyCreated = true;
                            message_text = "GLASS-AI encountered an error while saving overall tumor grade mask." + ...
                                newline + "[ERROR MESSAGE]" + newline + ME.message;
                            uialert(app.GLASSAIUIFigure,message_text,"Analysis error")
                        end
                        fprintf("%s - %s %s\n",string(datetime),"[ERROR]: An error occured during saving of overall tumor grade mask for",app.currentFileNameExt)
                        %rethrow error to stop execution
                        rethrow(ME);
                    end % End TRY: save overall tumor grade mask to file

                    %Make an RGB image of overall tumor grades using the 
                    %colormap defined in the 'Grade Map Colors' tab
                    statusupdate(app,"Making overall tumor grade map");
                    try
                        %Use the same function to make overall grade
                        %image that was used to make the pixel grade image
                        %since the classifications matrix has been adjusted
                        overallTumorGradeImage = createtumorgradeimage(app,classifications);
                        fprintf("%s - %s %s\n", string(datetime),"Finished making overall tumor grade image for", app.currentFileNameExt)
                        
                        %Clear classifications to reduce memory load
                        clear classifications; 

                        %Resize overallTumorGradeImage to set scaling factors
                        overallTumorGradeImage = imresize(overallTumorGradeImage, app.OUTPUT_GRADE_IMAGE_SCALE, 'nearest');
                        fprintf("%s - %s %.2f%s\n", string(datetime),"Resized tumor grade image to", app.OUTPUT_GRADE_IMAGE_SCALE,"x")

                        % save overallTumorGradeImage to file
                        statusupdate(app,"Saving overall tumor grade map")
                        overallTumorGradeImageFilePath = fullfile(app.OUTPUT_PATH,strcat(app.currentFileName+"_overall_grades.tif"));
                        [overallTumorGradeImageFilePath, overwriteAll] = promptreplacexistingfile(app,overallTumorGradeImageFilePath,overwriteAll);
                        if (xImagePixels * yImagePixels) > 40000000 % use writetiff() for large images
                            writetiff(app,overallTumorGradeImage,overallTumorGradeImageFilePath);
                            fprintf("%s - %s %s %s %s %s\n", string(datetime),"Saved tumor grade image for", app.currentFileNameExt, "to",overallTumorGradeImageFilePath,"using writetiff")
                        else %use imwrite for smaller images
                            imwrite(overallTumorGradeImage,overallTumorGradeImageFilePath,'tif','Compression','lzw');
                            fprintf("%s - %s %s %s %s %s\n", string(datetime),"Saved tumor grade image for", app.currentFileNameExt, "to",overallTumorGradeImageFilePath,"using imwrite with LZW compression")
                        end % End IF: use writetiff() for large images

                        %Resize or clear overallTumorGradeImage to 
                        %reduce memory load
                        if app.OUTPUT_IMAGE_PREVIEW
                            resizeX = min(xImagePixels,5000);
                            resizeY = min(yImagePixels,5000);
                            overallTumorGradeImage = imresize(overallTumorGradeImage,[resizeX,resizeY],'nearest');
                            fprintf("%s - %s %.0f%s%.0f %s\n", string(datetime),"Resized overall tumor grade image to", resizeX,"x",resizeY, "for output preview")
                        else
                            clear overallTumorGradeImage;
                        end % End IF: app.OUTPUT_IMAGE_PREVIEW

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
                end %if: app.ASSIGN_OVERALL_GRADES

                %Reduce segmentedTumorMask size to requested output scale
                %of semgentation image or clear from memory to reduce load
                if app.MAKE_SEGMENTATION_IMAGE
                    segmentedTumorMask = imresize(segmentedTumorMask,app.OUTPUT_SEGMENTATION_IMAGE_SCALE);
                else
                    clear segmentedTumorMask
                end

                %% make tumor segmentation image if requested
                %check stop button status before proceeding
                drawnow
                if app.StopAnalysisButton.Value == 1
                    app.StopAnalysisButton.Text = "Stopped";
                    app.StopAnalysisButton.Enable = "off";
                    fprintf("%s - %s\n",string(datetime),"ANALYSIS STOP REQUESTED BY USER. Returning control from runglassai().")
                    return
                end

                if app.MAKE_SEGMENTATION_IMAGE
                    statusupdate(app,"Making tumor segmentation image");
                    try
                        % use stain normalized image if available
                        if app.NORMALIZE_STAINS
                            fprintf("%s - %s %s\n", string(datetime),"Gathering stain normalized image for making segmentation image of", app.currentFileNameExt)
                            segmentationImage = gather(normalizedImage);
                            fprintf("%s - %s %s\n", string(datetime),"Finished gathering stain normalized image for making segmentation image of", app.currentFileNameExt)

                            %Adjust inputs to output scale to prevent
                            %distortion of added text.
                            segmentationImage = imresize(segmentationImage,app.OUTPUT_SEGMENTATION_IMAGE_SCALE);
                            segmentationImage = createsegmentationimage(app,segmentationImage, segmentedTumorMask, individualTumorStats);
                            fprintf("%s - %s %s\n", string(datetime),"Finished making tumor segmentation image for", app.currentFileNameExt)
                        else
                            fprintf("%s - %s %s\n", string(datetime),"Gathering input image for making segmentation image of", app.currentFileNameExt)
                            segmentationImage = gather(wholeImage);
                            fprintf("%s - %s %s\n", string(datetime),"Finished gathering input image for making segmentation image of", app.currentFileNameExt)

                            %Adjust inputs to output scale to prevent
                            %distortion of added text.
                            segmentationImage = imresize(segmentationImage,app.OUTPUT_SEGMENTATION_IMAGE_SCALE);
                            segmentationImage = createsegmentationimage(app,segmentationImage, segmentedTumorMask, individualTumorStats);
                            fprintf("%s - %s %s\n", string(datetime),"Finished making tumor segmentation image for", app.currentFileNameExt)
                        end

                        %No longer need segmentedTumorMask. Free up memory.
                        clear segmentedTumorMask

                        %Save tumor segmentation image to file
                        statusupdate(app,"Saving tumor segmentation image");
                        segmentationImageFilePath = fullfile(app.OUTPUT_PATH,strcat(app.currentFileName+"_segmentation.tif"));
                        [segmentationImageFilePath, overwriteAll] = promptreplacexistingfile(app,segmentationImageFilePath,overwriteAll);
                        if (xImagePixels * yImagePixels) > 40000000 %write as tiled tiff for large images
                            writetiff(app,segmentationImage,segmentationImageFilePath);
                            fprintf("%s - %s %s %s %s %s\n", string(datetime),"Saved tumor segmentation image for", app.currentFileNameExt, "to",segmentationImageFilePath,"using writetiff")
                        else
                            imwrite(segmentationImage,segmentationImageFilePath,'tif','Compression','lzw');
                            fprintf("%s - %s %s %s %s %s\n", string(datetime),"Saved tumor segmentation image for", app.currentFileNameExt, "to",segmentationImageFilePath,"using imwrite with LZW compression")
                        end

                        %Resize or clear segmentationImage to 
                        %reduce memory load
                        if app.OUTPUT_IMAGE_PREVIEW
                            segmentationImage = imresize(segmentationImage, [resizeX resizeY],'nearest');
                            fprintf("%s - %s %.0f%s%.0f %s\n", string(datetime),"Resized tumor segmentation image to", resizeX,"x",resizeY, "for output preview")
                        else
                            clear segmentationImage;
                        end % End IF: app.OUTPUT_IMAGE_PREVIEW
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
                end % End IF: app.MAKE_SEGMENTATION_IMAGE


                %% save stain normalized image if requested
                %check stop button status before proceeding
                drawnow
                if app.StopAnalysisButton.Value == 1
                    app.StopAnalysisButton.Text = "Stopped";
                    app.StopAnalysisButton.Enable = "off";
                    fprintf("%s - %s\n",string(datetime),"ANALYSIS STOP REQUESTED BY USER. Returning control from runglassai().")
                    return
                end

                if app.NORMALIZE_STAINS
                    if app.NormalizedImageOutputCheckBox.Value
                        statusupdate(app,"Saving stain normalized image");
                        try
                            %normalizedImage is still a blockedImage. When
                            %used for making the segmentationImage it is
                            %gathered to a different variable name.
                            normalizedImageFilePath = fullfile(app.OUTPUT_PATH,strcat(app.currentFileName+"_normalized.tif"));    
                            adapter = images.blocked.TIFF;
                            adapter.Compression = Tiff.Compression.LZW;
                            %Write function can't overwrite by default.
                            %prompt user to replace existing file or rename
                            %current output
                            [normalizedImageFilePath, overwriteAll] = promptreplacexistingfile(app,normalizedImageFilePath,overwriteAll);
                            fprintf("%s - %s %s %s %s\n", string(datetime),"Saving stain normalized image for", app.currentFileNameExt, "to",normalizedImageFilePath)
                            write(normalizedImage,normalizedImageFilePath,'Adapter',adapter);
                            fprintf("%s - %s %s %s %s\n", string(datetime),"Finished saving stain normalized image for", app.currentFileNameExt, "to",normalizedImageFilePath)
                        catch ME
                            % alert user that an error occured if not already done
                            if ~app.ErrorAlertAlreadyCreated
                                app.ErrorAlertAlreadyCreated = true;
                                message_text = "GLASS-AI encountered an error while saving stain normalized image." + ...
                                    newline + "[ERROR MESSAGE]" + newline + ME.message;
                                uialert(app.GLASSAIUIFigure,message_text,"Analysis error")
                            end

                            fprintf("%s - %s %s %s\n",string(datetime),"[ERROR]: An error occured during normalized H&E image output for",app.currentFileNameExt)
                            %rethrow error to stop execution
                            rethrow(ME);
                        end % End TRY: make stain normalization image
                    end % End IF: app.NormalizedImageOutputCheckbox.Value
                end % End IF: app.NORMALIZE_STAINS


                %% create max class score map if requested
                %- convert matrix to RGB image and reload for preview
                %check stop button status before proceeding
                drawnow
                if app.StopAnalysisButton.Value == 1
                    app.StopAnalysisButton.Text = "Stopped";
                    app.StopAnalysisButton.Enable = "off";
                    fprintf("%s - %s\n",string(datetime),"ANALYSIS STOP REQUESTED BY USER. Returning control from runglassai().")
                    return
                end
                try
                    if app.MAKE_CONFIDENCE_MAP
                        statusupdate(app,"Making class confidence map")
                        %generate 256 element colormap based on selected
                        %color palette
                        maxClassProbablityColorMap = getcolormap(app);

                        %gather blockedImage for saving
                        fprintf("%s - %s %s\n", string(datetime),"Gathering max class probility map of", app.currentFileNameExt)
                        maxClassProbability = gather(maxClassProbability);
                        fprintf("%s - %s %s\n", string(datetime),"Finished gathering max class probility map of", app.currentFileNameExt)
                        
                        %Change from 0-1 scaled double to 0-255 scaled
                        %uint8
                        maxClassProbability = uint8(maxClassProbability*255);

                        % resize to user defined scale and apply colormap
                        maxClassProbability = imresize(maxClassProbability,app.OUTPUT_CONFIDENCE_MAP_SCALE,'nearest');

                        %apply user-selected colormap to maxClassProbablity
                        maxClassProbability = ind2rgb(maxClassProbability,maxClassProbablityColorMap);
                        %convert to uint8 RGB image
                        maxClassProbability = uint8(maxClassProbability*255);

                        %Save image to file
                        maxClassProbabilityImageFilePath = fullfile(app.OUTPUT_PATH,strcat(app.currentFileName+"_max_probability.tif"));
                        [maxClassProbabilityImageFilePath, overwriteAll] = promptreplacexistingfile(app,maxClassProbabilityImageFilePath,overwriteAll);
                        fprintf("%s - %s %s %s %s\n", string(datetime),"Saving max probability map for",app.currentFileNameExt,"to",maxClassProbabilityImageFilePath)
                        if (xImagePixels * yImagePixels) > 40000000 %write as tiled tiff for large images
                            writetiff(app,maxClassProbability,maxClassProbabilityImageFilePath);
                            fprintf("%s - %s %s %s %s %s\n", string(datetime),"Saved max probability map for", app.currentFileNameExt, "to",maxClassProbabilityImageFilePath,"using writetiff")
                        else
                            imwrite(maxClassProbability,maxClassProbablityColorMap,maxClassProbabilityImageFilePath,'tif','Compression','lzw');
                            fprintf("%s - %s %s %s %s %s\n", string(datetime),"Saved max probability map for", app.currentFileNameExt, "to",maxClassProbabilityImageFilePath,"using imwrite with LZW compression")
                        end

                        %Resize or clear maxClassProbability to 
                        %reduce memory load
                        if app.OUTPUT_IMAGE_PREVIEW
                            maxClassProbability = imresize(maxClassProbability, [resizeX resizeY],'nearest');
                        else
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
                %check stop button status before proceeding
                drawnow
                if app.StopAnalysisButton.Value == 1
                    app.StopAnalysisButton.Text = "Stopped";
                    app.StopAnalysisButton.Enable = "off";
                    fprintf("%s - %s\n",string(datetime),"ANALYSIS STOP REQUESTED BY USER. Returning control from runglassai().")
                    return
                end
                try
                    if app.OUTPUT_IMAGE_PREVIEW
                        fprintf("%s - %s %s\n", string(datetime),"Creating output image preview for",app.currentFileNameExt);
                        %_Status Update_%
                        statusupdate(app,"Generating preview images");
                        %make sure orignial image is loaded for display and
                        %resize to preview size if needed

                        fprintf("%s - %s %s\n", string(datetime),"Gathering input image for previewing", app.currentFileNameExt)
                        wholeImage = gather(wholeImage,'Level',imageIndex);
                        fprintf("%s - %s %s\n", string(datetime),"Finished gathering input image for previewing", app.currentFileNameExt)
                        wholeImage = imresize(wholeImage,[resizeX resizeY],'nearest');
                        fprintf("%s - %s %.2f%s\n", string(datetime),"Resized input H&E image to", app.OUTPUT_NORMALIZED_IMAGE_SCALE,"x")

                        if app.NORMALIZE_STAINS
                            fprintf("%s - %s %s\n", string(datetime),"Gathering stain normalized image for previewing", app.currentFileNameExt)
                            normalizedImage = gather(normalizedImage);
                            fprintf("%s - %s %s\n", string(datetime),"Finished gathering stain normalized image for previewing", app.currentFileNameExt)
                            normalizedImage = imresize(normalizedImage,[resizeX resizeY],'nearest');
                            fprintf("%s - %s %.2f%s\n", string(datetime),"Resized normalized H&E image to", app.OUTPUT_NORMALIZED_IMAGE_SCALE,"x")
                        end
                        %% display preview images
                        % set up figure environement for image display
                        previewFigureName = sprintf("GLASS-AI Results Preview - %s",app.currentFileNameExt);
                        previewFigure = figure('Name',previewFigureName);
                        previewLayout = tiledlayout(previewFigure,"flow",'TileSpacing','Compact','Padding',"compact");
                        axesList = [];

                        %show original image
                        originalPanel = nexttile(previewLayout);
                        originalPanel.PlotBoxAspectRatioMode  = 'manual';
                        imshow(wholeImage,'Parent',originalPanel)
                        title("Original Image")
                        axesList = [axesList originalPanel];
                        fprintf("%s - %s %s\n", string(datetime),"Added original H&E image to preview for",app.currentFileNameExt);

                        %show stain normalized image if done
                        if app.NORMALIZE_STAINS
                            normalizedPanel = nexttile(previewLayout);
                            normalizedPanel.PlotBoxAspectRatioMode  = 'manual';
                            imshow(normalizedImage,'Parent',normalizedPanel)
                            title("Normalized Image")
                            axesList = [axesList normalizedPanel];
                            fprintf("%s - %s %s\n", string(datetime),"Added normalized H&E image to preview for",app.currentFileNameExt);
                        end

                        % show tumor segmentation map
                        if app.MAKE_SEGMENTATION_IMAGE
                            tumorSegmentationPanel = nexttile(previewLayout);
                            tumorSegmentationPanel.PlotBoxAspectRatioMode  = 'manual';
                            imshow(segmentationImage,'Parent',tumorSegmentationPanel)
                            title("Tumor Segmentation");
                            axesList = [axesList tumorSegmentationPanel];
                            fprintf("%s - %s %s\n", string(datetime),"Added tumor segmentation image to preview for",app.currentFileNameExt);
                        end

                        % show tumor grade map
                        gradeMapPanel = nexttile(previewLayout);
                        gradeMapPanel.PlotBoxAspectRatioMode  = 'manual';
                        imshow(gradeImage, 'Parent',gradeMapPanel)
                        title("Tumor Grades")
                        axesList = [axesList gradeMapPanel];
                        fprintf("%s - %s %s\n", string(datetime),"Added tumor grade image to preview for",app.currentFileNameExt);

                        % show max class probability map if requested
                        if app.MAKE_CONFIDENCE_MAP
                            maxClassProbabilityPanel = nexttile(previewLayout);
                            maxClassProbabilityPanel.PlotBoxAspectRatioMode  = 'manual';
                            imshow(maxClassProbability,maxClassProbablityColorMap,'Parent',maxClassProbabilityPanel)
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
                            overallGrademapPanel.PlotBoxAspectRatioMode  = 'manual';
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
                fprintf("%s - %s %s %s %s\n", string(datetime),"Completed analysis and output of",app.currentFileNameExt, "in", string(duration(0,0,toc(app.imageStopWatch))))
                fprintf("%s %0.0f %s\n","----- End image",app.iImage,"-----")

            catch ME % try: catch errors during any analysis step
                % write error message to logfile
                fprintf("%s - %s %s\n",string(datetime),"[ERROR]: Analysis terminated due to error:", ME.message)
                % update status window to alert user to error
                app.StatusLabel.Text= sprintf("An error occured. Analysis Terminated.\n Check logfile for more details.");
                %rethrow error to stop execution
                %- error reporting in RunButtonPushed callback
                rethrow(ME)
            end % try: catch errors during any analysis step
        end % End function: runglassai2


        function versioncheck(app)
            %Check for updated version of GLASS-AI standalone app on Github
            %Look in the raw code of the main branch for the version
            %property. Extract using regexexp and compare to version
            %property in this application
            %https://raw.githubusercontent.com/jlockhar/GLASS-AI/main/GLASS-AI app/GLASS_AI_APP.m
            try
                if strfind(app.GLASSAI_APP_VERSION,"dev")
                    app.StatusLabel.Text = sprintf("%s\n%s",app.StatusLabel.Text,"This is a development/unpublished version of the GLASS-AI app.");
                else
                    %fetch current version of the GLASS-AI app code from GitHub
                    gitData = webread("https://raw.githubusercontent.com/jlockhar/GLASS-AI/main/GLASS_AI_APP.m");
                    %extract version property and parse into major minor patch
                    versionPattern = regexpPattern("(?<=GLASSAI_APP_VERSION \= \')([0-9\.]+)(?=\')");
                    gitVersion = string(extract(gitData,versionPattern));

                    fprintf("%s: %s\n","Current GLASS-AI app version on GitHub",gitVersion);
                    app.VersionLabel.Tooltip = sprintf("%s: %s\n","Current GLASS-AI app version on GitHub",gitVersion);

                    gitVersionMajor = extract(gitVersion,regexpPattern("(?<=^)[0-9]+(?=\.)"));
                    gitVersionMinor = extract(gitVersion,regexpPattern("(?<=^[0-9]+\.)[0-9]+(?=\.)"));
                    gitVersionPatch = extract(gitVersion,regexpPattern("(?<=^[0-9]+\.[0-9]+\.)[0-9]+(?=$)"));

                    %parse major minor patch version from this app
                    appVersionMajor = extract(app.GLASSAI_APP_VERSION,regexpPattern("(?<=^)[0-9]+(?=\.)"));
                    appVersionMinor = extract(app.GLASSAI_APP_VERSION,regexpPattern("(?<=^[0-9]\.)[0-9]+(?=\.)"));
                    appVersionPatch = extract(app.GLASSAI_APP_VERSION,regexpPattern("(?<=^[0-9]\.[0-9]\.)[0-9]+(?=$)"));

                    %compare version numbers
                    majorUpdateAvailable = str2double(appVersionMajor) < str2double(gitVersionMajor);
                    minorUpdateAvailable = ~majorUpdateAvailable & str2double(appVersionMinor) < str2double(gitVersionMinor);
                    patchUpdateAvailable = ~majorUpdateAvailable & ~minorUpdateAvailable & str2double(appVersionPatch) < str2double(gitVersionPatch);

                    
                    %prompt user to update the app if version is behind GitHub
                    if majorUpdateAvailable
                        app.UpdateAvailableButton.BackgroundColor = [1 0 0];
                        app.UpdateAvailableButton.Tooltip = sprintf("A major version update (%s) is available for GLASS-AI! Click to get the installer for the latest version.",gitVersion);
                        app.UpdateAvailableButton.Visible = "on";
                        app.UpdateAvailableButton.Enable = "on";
                        app.StatusLabel.Text = sprintf("%s\n%s",app.StatusLabel.Text,"A major update is available for GLASS-AI.");
                        return
                    end
                    if minorUpdateAvailable
                        app.UpdateAvailableButton.BackgroundColor = [1 1 0];
                        app.UpdateAvailableButton.Tooltip = sprintf("A minor version update (%s) is available for GLASS-AI! Click to get the installer for the latest version.",gitVersion);
                        app.UpdateAvailableButton.Visible = "on";
                        app.UpdateAvailableButton.Enable = "on";
                        app.StatusLabel.Text = sprintf("%s\n%s",app.StatusLabel.Text,"A minor update is available for GLASS-AI.");
                        return
                    end
                    if patchUpdateAvailable
                        app.UpdateAvailableButton.BackgroundColor = [0 1 1];
                        app.UpdateAvailableButton.Tooltip = sprintf("A patch update (%s) is available for GLASS-AI! Click to get the installer for the latest version.",gitVersion);
                        app.UpdateAvailableButton.Visible = "on";
                        app.UpdateAvailableButton.Enable = "on";
                        app.StatusLabel.Text = sprintf("%s\n%s",app.StatusLabel.Text,"A patch update is available for GLASS-AI.");
                        return
                    else %app.GLASSAI_APP_VERSION == gitVersion
                        %don't do anything if this is the latest version
                        %app.StatusLabel.Text = sprintf("%s\n%s",app.StatusLabel.Text,"This is the latest version of the GLASS-AI app.")
                    end
                end
            catch ME
                fprintf("%s: %s","There was an during version comparison",ME.message);
                app.StatusLabel.Text = sprintf("%s\n%s",app.StatusLabel.Text,"Could not check GLASS-AI app version against main branch on Github. Check for updates manually.");
            end
        end %End function: versioncheck
         
        function runcheck(app)
            % Check that all steps have been completed before enabling run
            % button

            % Good to go if all lights are green
            if all(app.InputFolderLamp.Color==[0 1 0]) && ...
                    all(app.OutputFolderLamp.Color==[0 1 0])
                % Enable run button
                app.RunCheckLamp.Color = [0,1,0];
                app.RunButton.Text = "Run";
                app.RunButton.Enable="on";
            else
                app.RunCheckLamp.Color = [1,0,0];
                app.RunButton.Enable="off";
            end

        end % End function: runcheck

        function statusupdate(app,statusMessage)
            % Provide status updates to users based on analysis step and images
            % remaining to be processed

            % Get time elapsed from start of analysis and start of currrent
            % image
            app.analysisRunTime = toc(app.analysisStopWatch);
            app.imageRunTime = toc(app.imageStopWatch);
            % Display update in StatusLabel
            app.StatusLabel.Text=sprintf("%s for %s (image %d of %d)\n Time Elapsed: %s (Total: %s)",...
                statusMessage,... %s
                app.SELECTED_FILES{app.iImage},... %s
                app.iImage,... %d
                app.nImages,... %d
                duration(0,0,app.imageRunTime),... %s
                duration(0,0,app.analysisRunTime)); %s
            drawnow %refresh app.StatusLabel text before continuing

        end % End function: statusupdate

        function logfunctioncall(app,temporality)
            % write start/stop for calling parent function to logfile
            % include analysis block number if requested.

            % get name of invoking function
            %- Expected string: GLASS_AI_APP.function
            parentFunctionName = dbstack(1).name;
            parentFunctionName = strsplit(parentFunctionName, '.');
            parentFunctionName = parentFunctionName{2};

            switch lower(temporality)
                case "start"
                    fprintf("%s - Starting %s for %s\n", string(datetime),parentFunctionName,app.currentFileNameExt)
                case "finish"
                    fprintf("%s - Finished %s for %s\n", string(datetime),parentFunctionName,app.currentFileNameExt)
                otherwise
                    fprintf("%s - Running %s for %s\n", string(datetime),parentFunctionName,app.currentFileNameExt)
            end
        end % End function: logfunctioncall

                function [wholeImage,imageIndex] = readimage(app,filePath)
            %   Reads input image. Will attempt to find 20x magnification
            %   images in .svs files. Tif images are assumed to be at 20x
            %   magnification with 0.5022 microns/pixel resolution.
            %   Supported formats: tif , svs
            logfunctioncall(app,"start");
            % get image extension
            [~,fileName,fileExt] = fileparts(filePath);
            fileExt = lower(fileExt);

            switch fileExt
                case {'.tif', '.tiff','.jpeg','.jpg','.png'}
                    % Read tif file. Assumed to be in 20x magnification
                    % with a 0.5022 microns/pixel resolution
                    imageIndex = 1;
                    wholeImage = blockedImage(filePath);
                    fprintf("%s - %s %s\n",string(datetime),"Image loaded as blockedImage from",app.currentFileNameExt)
                    app.IMAGE_RESOLUTION = 0.5022;
                    fprintf("%s - %s %s %.3f %s\n",string(datetime),fileName,"is assumed to have a resolution of", ...
                        app.IMAGE_RESOLUTION,"microns per pixel")

                case '.svs'
                    % get image metadata to find 20x image layer
                    [imageInfo] = getsvsinfo(app,filePath);

                    % find the 20x images
                    imageIndex = [imageInfo{:,5}] == 20;
                    
                    % use 20x scan if available
                    has20XScan = nnz([imageInfo{imageIndex, 6}]=="source")==1;
                    if has20XScan
                        imageIndex = find([imageInfo{imageIndex, 6}] == "source");
                    else% get the largest of the 20x images
                        [~,imageIndex] = max([imageInfo{imageIndex, 1}]);
                    end % End IF: has20xScan

                    % read svs file
                    [wholeImage] = blockedImage(filePath);
                    app.IMAGE_RESOLUTION = imageInfo{imageIndex,4};
                case '.qptiff' 
                    % get image metadata to find 20x image layer
                    qptiffInfo = getqptiffinfo(app,filePath);

                    imageInfo = cell([length(qptiffInfo) 4]);
                    %parse imageInfo into find highest resolution 20X image
                    for imageLayer = 1:length(imageInfo)
                        imageInfo{imageLayer,1} = qptiffInfo(imageLayer).Width;
                        imageInfo{imageLayer,2} = qptiffInfo(imageLayer).Height;
                        imageInfo{imageLayer,3} = imageLayer;
                        imageInfo{imageLayer,6} = qptiffInfo(imageLayer).ImageDescription.ImageType;
                    end
                    
                    %get index of full resolution scan. This should be == 1
                    % pull info for this for calculating downsampled image
                    % info
                    fullResScanIndex = find(matches([imageInfo{:,6}],"FullResolution"));
                    imageInfo{fullResScanIndex,4} = qptiffInfo(fullResScanIndex).ImageDescription.ScanProfile.root.ScanResolution.PixelSizeMicrons;
                    imageInfo{fullResScanIndex,5} = qptiffInfo(fullResScanIndex).ImageDescription.ScanProfile.root.ScanResolution.Magnification;
                    imageInfo{fullResScanIndex,6} = "source";

                    imageInfo = estimateimagemagnifications(app,imageInfo);

                    % use 20x full resolution scan if available
                    has20XScan = matches(qptiffInfo(fullResScanIndex).ImageDescription.Objective,"20x");
                   
                    if has20XScan
                        imageIndex = fullResScanIndex;
                        app.IMAGE_RESOLUTION = qptiffInfo(fullResScanIndex).ImageDescription.ScanProfile.root.ScanResolution.PixelSizeMicrons;
                    else% get the largest of the 20x images
                        index20XImage = find(imageInfo{:,5} == 20);
                        [~,imageIndex] = max([imageInfo{index20XImage, 1}]);
                    end % End IF: has20xScan

                    % read qptiff file as blockedImage
                    [wholeImage]=blockedImage(filePath);
                    app.IMAGE_RESOLUTION = imageInfo{imageIndex,4};
                otherwise % another filetype somehow gets loaded
                    fprintf("%s - %s %s\n",string(datetime),fileName,"is not a supported file format")
                    error('File format is not supported!');
            end % End SWITCH: fileExt
            logfunctioncall(app,"finish");
        end % End function: readimage

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
            logfunctioncall(app,"start");
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

            logfunctioncall(app,"finish");
        end % End function: getsvsinfo

        function qptiffinfo = getqptiffinfo(~,qptiff_file)

            %get image info
            qptiffinfo = imfinfo(qptiff_file);

            % parse image desciption XML
            % remove extraneous header info
            for imageLayer = 1:length(qptiffinfo) 
                %remove extra info line that causes errors during XML
                %parsing
                qptiffinfo(imageLayer).ImageDescription = strtrim(regexprep(qptiffinfo(imageLayer).ImageDescription,'(<\?.*\?>[\r\n])',''));
           
                % Store the XML data in a temp file
                filename = ['temp' '.xml'];
                fid = fopen(filename,'Wt');
                fwrite(fid,qptiffinfo(imageLayer).ImageDescription);
                fclose(fid);

                % Read the file into an struct
                xmlStruct = readstruct(filename);
                % Delete the temp file
                delete(filename);
                % replace ImageDescription with new struct
                qptiffinfo(imageLayer).ImageDescription = xmlStruct;
            end % end  for imageLayer = 1:length(qptiffinfo) 
        end %end function getqptiffinfo

        function outInfo = estimateimagemagnifications(app,imageInfo)
            %estimate missing image magnifications in .svs files using the
            %largest image present. Used to identify 20x magnification
            %images from slides scanned at higher magnifications.

            logfunctioncall(app,"start")
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
            logfunctioncall(app,"finish")
        end % End function: estimateimagemagnifications

        function [stainMatrix, stainConc] = estimatestaining(app,inputImage)

            if app.REMOVE_PURE_COLORS
                %set pure color pixels to white
                redPoints = inputImage(:,1)==255 & inputImage(:,2)==0 & inputImage(:,3)==0;
                greenPoints = inputImage(:,1)==0 & inputImage(:,2)==255 & inputImage(:,3)==0;
                bluePoints = inputImage(:,1)==0 & inputImage(:,2)==0 & inputImage(:,3)==255;
                yellowPoints = inputImage(:,1)==255 & inputImage(:,2)==255 & inputImage(:,3)==0;
                magentaPoints = inputImage(:,1)==255 & inputImage(:,2)==0 & inputImage(:,3)==255;
                cyanPoints = inputImage(:,1)==0 & inputImage(:,2)==255 & inputImage(:,3)==255;
                blackPoints = inputImage(:,1)==0 & inputImage(:,2)==0 & inputImage(:,3)==0;

                setTransparentPoints = any([redPoints greenPoints bluePoints yellowPoints magentaPoints cyanPoints blackPoints],2);
                inputImage = reshape(double(inputImage), [], 3);
                inputImage(setTransparentPoints,:) = 255;

            else
                inputImage = reshape(double(inputImage), [], 3);
            end
            % calculate optical density
            OD = -log((double(inputImage)+1)/app.NORMALIZE_IO);

            % remove transparent pixels from vector calculation
            ODHat = OD(~any(OD < app.NORMALIZE_BETA, 2), :);

            [V, ~] = eig(cov(ODHat));
            % project on the plane spanned by the eigenvectors corresponding to the two
            % largest eigenvalues
            thetaHat = ODHat*V(:,2:3);


            % find the min and max vectors and project back to OD space
            phi = atan2(thetaHat(:,2), thetaHat(:,1));


            minPhi = prctile(phi, app.NORMALIZE_ALPHA);
            maxPhi = prctile(phi, 100-app.NORMALIZE_ALPHA);


            vMin = V(:,2:3)*[cos(minPhi); sin(minPhi)];
            vMax = V(:,2:3)*[cos(maxPhi); sin(maxPhi)];

            % a heuristic to make the vector corresponding to hematoxylin first and the
            % one corresponding to eosin second
            if vMin(1) > vMax(1)
                stainMatrix = [vMin vMax];
            else
                stainMatrix = [vMax vMin];
            end

            %calculate stain concentrations
            OD = OD';
            OD = stainMatrix \ OD;
            stainConc = prctile(OD, 99, 2);
        end

        function normalizedImage = applystainnormalization(app,inputImage,inputStainMatrix,inputStainConc,options)
            arguments
                app
                inputImage (:,:,3) uint8 %m-by-n RGB image
                inputStainMatrix (3,2) double %3-by-2 matrix of stain absorbances
                inputStainConc (2,1) double %2-by-1 vector of stain concentrations
                options.Io (1,1) double = 245 %intensity of transparent pixels
                options.referenceStainMatrix (3,2) double = [0.551 0.171; 0.863 0.783; 0.339 0.334] %reference stain color matrix
                options.referenceStainConc (2,1) double = [1.9705 ; 1.0308];
            end
            [height, width, channels] = size(inputImage);
            %calculate OD
            normalizedImage = reshape(double(inputImage), [], 3);
            normalizedImage = -log((double(normalizedImage)+1)/options.Io);

            % determine concentrations of the individual stains
            normalizedImage = normalizedImage';
            normalizedImage = inputStainMatrix \ normalizedImage;

            % normalize stain concentrations
            normalizedImage = bsxfun(@rdivide, normalizedImage, inputStainConc);
            normalizedImage = bsxfun(@times, normalizedImage, options.referenceStainConc);

            % recreate the image using reference mixing matrix
            normalizedImage = options.Io*exp(-options.referenceStainMatrix * normalizedImage);
            normalizedImage = reshape(normalizedImage', height, width, channels);
            normalizedImage = uint8(normalizedImage);
        end

        function smoothedClasses = smoothclasses(app,inputClasses)
            % Applies a smoothing kernel across tumor classes to
            % minimize artifacts from patch edges. After smoothing,
            % airway, alveoli, and background pixels are restored.
            %logfunctioncall(app,"start")

            smoothSize = app.SMOOTH_SIZE;

            try % error handling
                % create copy of input data.
                %- input values will be used to restore airway, alveoli,
                %- and background pixels
                smoothedClasses = inputClasses;

                % treat skipped pixels as background
                %- skipped pixels come from tissue thresholding
                smoothedClasses(inputClasses==0) = 7;
                fprintf("%s - %s: %s\n",string(datetime),"SMOOTHING","Set skipped pixels to background")
               
                %Downscale image to speed up smoothing. 
                smoothedClasses = imresize(smoothedClasses,1/16,'nearest');
                fprintf("%s - %s: %s\n",string(datetime),"SMOOTHING","Downscaled image to 1/16")
                %Smoothing window is also reduced in size proportionally.
                smoothSize = round(smoothSize / 16);

                % make filter for selected method
                switch app.SMOOTH_METHOD
                    case "smoothing_median"
                        f = @(x) medfilt2(x,smoothSize,'symmetric');
                        fprintf("%s - %s: %s\n",string(datetime),"SMOOTHING","Made median filter")
                    case "smoothing_mode"
                        % make sure smoothing kernel is odd length
                        if any(mod(smoothSize,2) == 0)
                            smoothSize = smoothSize + (mod(smoothSize,2)-1);
                        end
                        f = @(x) modefilt(x,smoothSize,'symmetric');
                        fprintf("%s - %s: %s\n",string(datetime),"SMOOTHING","Made mode filter")
                    case "smoothing_bilateral"
                        % make sure smoothing kernel is odd length
                        if any(mod(smoothSize,2) == 0)
                            smoothSize = smoothSize+(mod(smoothSize,2)-1);
                        end
                        % perform smoothing
                        f = @(x) imbilatfilt(x,10,floor((smoothSize(1)/2)/2));
                        fprintf("%s - %s: %s\n",string(datetime),"SMOOTHING","Made bilateral filter")
                    case "smoothing_hamming"
                        % convert classifications to double since uint8 can't store
                        % NaN values
                        smoothedClasses = double(smoothedClasses);
                        % mask out non-tumor classes with NaN
                        nontumorClasses = smoothedClasses==5|smoothedClasses==6|smoothedClasses==7;
                        smoothedClasses(nontumorClasses) = NaN;
                        % generate Hamming window
                        window = generatehammingwindow(app,smoothSize);

                    case "smoothing_none"
                        % return input as ouput
                        smoothedClasses = inputClasses;
                        fprintf("%s - %s: %s\n",string(datetime),"SMOOTHING","No smoothing requested. Returning input image.")
                        return
                    otherwise
                        error("No smoothing method defined for selection.")
                end % End switch: app.SMOOTH_METHOD

                %perform smoothing on just tissue pixels
                tissuePixelMask = smoothedClasses < 7;
                fprintf("%s - %s: %s\n",string(datetime),"SMOOTHING","Made tissue pixel mask.")
                fprintf("%s - %s: %s\n",string(datetime),"SMOOTHING","Started applying smoothing filter to tissue pixels")
                if app.SMOOTH_METHOD == "smoothing_hamming"
                    % perform smoothing
                        smoothedClasses = applyhammingwindow(app,window,smoothedClasses);
                else
                    smoothedClasses = roifilt2(smoothedClasses,tissuePixelMask,f);
                end
                fprintf("%s - %s: %s\n",string(datetime),"SMOOTHING","Finished applying smoothing filter to tissue pixels")
                clear tissuePixelMask %free up memory
                
                
                % remove any decimals introduced by smoothing
                smoothedClasses = round(smoothedClasses);
                fprintf("%s - %s: %s\n",string(datetime),"SMOOTHING","Rounded off decimals introduced by smoothing")
                %bring smoothedClasses back to full size
                smoothedClasses = imresize(smoothedClasses,size(inputClasses,1:2),'nearest');

                %find tumor areas in smoothedClasses
                smoothedTumorMask = smoothedClasses==1|smoothedClasses==2|smoothedClasses==3|smoothedClasses==4;
                fprintf("%s - %s: %s\n",string(datetime),"SMOOTHING","Made smoothed tumor area mask")

                % close small gaps within and between tumors
                MERGE_RADIUS = ceil(app.TUMOR_MERGE_RADIUS / app.IMAGE_RESOLUTION); % convert microns to pixels
                smoothedTumorMask = imclose(smoothedTumorMask,strel('disk',MERGE_RADIUS));
                fprintf("%s - %s: %s\n",string(datetime),"SMOOTHING","Performed morphological closing on smoothed tumor mask")

                % restore any tumor pixels that dropped out during smoothing
                tumorPixelMask = inputClasses==1|inputClasses==2|inputClasses==3|inputClasses==4;
                fprintf("%s - %s: %s\n",string(datetime),"SMOOTHING","Made input tumor pixel mask")
                restoreTumorMask = tumorPixelMask & ~smoothedTumorMask;
                clear tumorPixelMask %free up memory
                smoothedClasses(restoreTumorMask) = inputClasses(restoreTumorMask);
                fprintf("%s - %s: %s\n",string(datetime),"SMOOTHING","Restored tumor pixels lost during smoothing")
                clear restoreTumorMask %free up memory

                % restore any alveoli pixels outside of tumors
                % that were lost during smoothing.
                restoreAlveoliMask = (inputClasses==5) & ~smoothedTumorMask;
                smoothedClasses(restoreAlveoliMask) = 5;
                fprintf("%s - %s: %s\n",string(datetime),"SMOOTHING","Restored alveoli pixels lost during smoothing")

                % restore any airway pixels outside of tumors
                % that were lost during smoothing.
                restoreAirwayMask = (inputClasses==6) & ~smoothedTumorMask;
                smoothedClasses(restoreAirwayMask) = 6;
                fprintf("%s - %s: %s\n",string(datetime),"SMOOTHING","Restored airway pixels lost during smoothing")

                % restore background and masked pixels
                smoothedClasses(inputClasses==0) = 0;
                fprintf("%s - %s: %s\n",string(datetime),"SMOOTHING","Restored skipped pixels")
                smoothedClasses(inputClasses==7) = 7;
                fprintf("%s - %s: %s\n",string(datetime),"SMOOTHING","Restored background pixels")

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
                fprintf("%s - %s: %s\n",string(datetime),"SMOOTHING","Converted smoothed classifications back to uint8")

            catch ME
                % alert user that an error occured if not already done
                if ~app.ErrorAlertAlreadyCreated
                    app.ErrorAlertAlreadyCreated = true;
                    message_text = "GLASS-AI encountered an error during patch smoothing." + ...
                        newline + "[ERROR MESSAGE]" + newline + ME.message;
                    uialert(app.GLASSAIUIFigure,message_text,"Analysis error")
                end
                fprintf("%s - %s %s\n",string(datetime),"[ERROR]: An error curred while smoothing patches in",app.currentFileNameExt)
                %rethrow error to stop execution
                rethrow(ME);
            end % End TRY: error handling
        end % End function: smoothclasses

        function outputWindow = generatehammingwindow(app,smoothSize)
            %generate Hamming window for smoothing
            logfunctioncall(app,"start")

            % get dimensions of window
            windowHeight = smoothSize(1);
            windowWidth  = smoothSize(2);

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
            logfunctioncall(app,"finish")
        end % End function: generatehammingwindow


        function smoothedOutput = applyhammingwindow(app,hammingWindow,inputImage)
            %perform feature smoothing using Hamming window
            logfunctioncall(app,"start")

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
            logfunctioncall(app,"finish")
        end % End function: applyhammingwindow


        

        function segmentedTumorMask = segmentindividualtumors(app, segmentedTumorMask)
            % create a binary image mask of tumors after filling holes,
            % merging nearby tumor pixels, and filtering out small tumors
            logfunctioncall(app,"start")

            PIXEL_AREA = app.IMAGE_RESOLUTION^2;
            MERGE_RADIUS = ceil(app.TUMOR_MERGE_RADIUS/app.IMAGE_RESOLUTION); % convert microns to pixels
            SIZE_THRESHOLD = ceil(app.TUMOR_SIZE_THRESHOLD/PIXEL_AREA); % convert sq. microns to pixels

            % make a mask of tumor pixels
            segmentedTumorMask = segmentedTumorMask==1|segmentedTumorMask==2|segmentedTumorMask==3|segmentedTumorMask==4;

            % Fill holes in tumors and merge tumors within app.TUMOR_MERGE_RADIUS
            segmentedTumorMask = imfill(segmentedTumorMask,'holes'); % fill exisiting holes
            segmentedTumorMask = imclose(segmentedTumorMask,strel('disk',MERGE_RADIUS));
            segmentedTumorMask = imfill(segmentedTumorMask,'holes'); % fill new holes

            % Filter tumors smaller than app.TUMOR_SIZE_THRESHOLD
            segmentedTumorMask = bwareaopen(segmentedTumorMask,SIZE_THRESHOLD,8);

            logfunctioncall(app,"finish")
        end % End function: segmentindividualtumors

        function tumorLabelMask = maketumorlabelmask(app, tumorLabelMask)
            % Make a mask of each segmented tumor that stores the ID of the
            % tumor as the pixel intensity.
            logfunctioncall(app,"start")

            %Get pixels for each object in input mask which is a logical
            %m-by-n matrix
            tumorCC = bwconncomp(tumorLabelMask,8); % Segment individual tumors
            fprintf("%s - %s: %s\n",string(datetime),"TUMOR LABELING", "Found connected components")
            
            % initialize labeled tumor mask
            %- use uint16 data type to fit ≥ 256 individual tumors
            if tumorCC.NumObjects < 255
                tumorLabelMask = zeros(size(tumorLabelMask),"uint8");
            else
                tumorLabelMask = zeros(size(tumorLabelMask),"uint16");
            end

            fprintf("%s - %s: %s\n",string(datetime),"TUMOR LABELING", "Initialized tumor label mask as uint16")

            if tumorCC.NumObjects > 0
                fprintf("%s - %s: %s\n",string(datetime),"TUMOR LABELING", "Starting tumor label mask assignment")
                % analyze each segmented tumor in image
                for iTumor = 1:tumorCC.NumObjects
                    % get indices of pixels in tumor
                    pixelIndices=tumorCC.PixelIdxList{iTumor};

                    % add tumor to labeled tumor mask
                    %- use tumor ID as pixel intensity
                    tumorLabelMask(pixelIndices) = iTumor;
                end %for iTumor = 1:tumorCC.NumObjects
                fprintf("%s - %s: %s\n",string(datetime),"TUMOR LABELING", "Finished tumor label mask assignment")
            else % no tumors found in slide
                fprintf("%s - %s: %s\n",string(datetime),"TUMOR LABELING", "No tumors found in image")
                return
            end %if tumorCC.NumObjects > 0

        logfunctioncall(app,"finish")
        end %function maketumorlabelmask

        function tumorOverallGradeMask = makeoveralltumorgrademask(app,tumorOverallGradeMask,segmentedTumorMask,individualTumorStats)
            % mask individual tumors with overall grade as pixel intensity
            logfunctioncall(app,"start")

            %get list of pixels for each tumor segmentedTumorMask
            tumorCC = bwconncomp(segmentedTumorMask,8);
            clear segmentedTumorMask

            if tumorCC.NumObjects > 0
                for iTumor = 1:tumorCC.NumObjects
                    % get indices of pixels in tumors
                    pixelIndices=tumorCC.PixelIdxList{iTumor};

                    % add tumor grade to grade mask
                    tumorOverallGradeMask(pixelIndices) = individualTumorStats.tumor_grade(iTumor);
                end
            else
                fprintf("%s - %s: %s\n",string(datetime),"OVERALL GRADING", "No tumors found in image.")
            end %if tumorCC.NumObjects > 0

            logfunctioncall(app,"finish")
        end %function makeoveralltumorgrademask


        function individualTumorStats = individualtumoranalysis(app,classifications,segmentedTumorMask)
            % Calculates stats for individual tumors in image
            logfunctioncall(app,"start")

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
                clear segmentedTumorMask %free up some memory

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
            logfunctioncall(app,"finish")
        end % End function: individualtumoranalysis


        function imageTumorStatsTable = imageleveltumoranalysis(app, classifications, individualTumorStats, imageName)
            
            arguments
                app
                classifications (:,:) uint8
                individualTumorStats (:,:)
                %use currentFileName for imageName by default
                imageName string = app.currentFileName
            end

            % Calculates summary of tumor stats across the image
            logfunctioncall(app,"start")

            PIXEL_AREA = app.IMAGE_RESOLUTION^2;

            % change skipped pixels to background
            classifications(classifications==0) = 7;
            % calculate total tissue area in slide
            %- should have no pixels == 0. All tissue pixels < 7.
            imageTotalTissueArea = nnz(classifications<7)*PIXEL_AREA;

            % calculate tumor counts
            imageTotalTumorCount = height(individualTumorStats);

            % calculate the number of tumors of each grade if requested
            %- grade assignment method defined by user
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
                imageName,...                           'image_id'                  'string'
                imageTotalTumorCount,...                'number_of_tumors'          'double'
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
            logfunctioncall(app,"finish")
        end % End function: imageleveltumoranalysis


        function gradeImage = createtumorgradeimage(app,classifications)
            % make tumor grade image from classifications.
            logfunctioncall(app,"start")

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
            fprintf("%s - %s\n", string(datetime),"GRADE IMAGE: Colored skipped pixels")

            % Grade 1
            Inds = classifications==1;
            ch1(Inds) = app.GRADE_1_COLOR(1);
            ch2(Inds) = app.GRADE_1_COLOR(2);
            ch3(Inds) = app.GRADE_1_COLOR(3);
            fprintf("%s - %s\n", string(datetime),"GRADE IMAGE: Colored Grade 1 pixels")

            %Grade 2
            Inds = classifications==2;
            ch1(Inds) = app.GRADE_2_COLOR(1);
            ch2(Inds) = app.GRADE_2_COLOR(2);
            ch3(Inds) = app.GRADE_2_COLOR(3);
            fprintf("%s - %s\n", string(datetime),"GRADE IMAGE: Colored Grade 2 pixels")

            % Grade 3
            Inds = classifications==3;
            ch1(Inds) = app.GRADE_3_COLOR(1);
            ch2(Inds) = app.GRADE_3_COLOR(2);
            ch3(Inds) = app.GRADE_3_COLOR(3);
            fprintf("%s - %s\n", string(datetime),"GRADE IMAGE: Colored Grade 3 pixels")

            % Grade 4
            Inds = classifications==4;
            ch1(Inds) = app.GRADE_4_COLOR(1);
            ch2(Inds) = app.GRADE_4_COLOR(2);
            ch3(Inds) = app.GRADE_4_COLOR(3);
            fprintf("%s - %s\n", string(datetime),"GRADE IMAGE: Colored Grade 4 pixels")

            % Alveoli
            Inds = classifications==5;
            ch1(Inds) = app.NORMAL_ALVEOLI_COLOR(1);
            ch2(Inds) = app.NORMAL_ALVEOLI_COLOR(2);
            ch3(Inds) = app.NORMAL_ALVEOLI_COLOR(3);
            fprintf("%s - %s\n", string(datetime),"GRADE IMAGE: Colored Alveoli pixels")

            % Airways
            Inds = classifications==6;
            ch1(Inds) = app.NORMAL_AIRWAY_COLOR(1);
            ch2(Inds) = app.NORMAL_AIRWAY_COLOR(2);
            ch3(Inds) = app.NORMAL_AIRWAY_COLOR(3);
            fprintf("%s - %s\n", string(datetime),"GRADE IMAGE: Colored Airway pixels")

            % Background/void = white
            Inds = classifications==7;
            ch1(Inds) = app.BACKGROUND_COLOR(1);
            ch2(Inds) = app.BACKGROUND_COLOR(2);
            ch3(Inds) = app.BACKGROUND_COLOR(3);
            fprintf("%s - %s\n", string(datetime),"GRADE IMAGE: Colored background pixels")

            %merge channels to create RGB image
            gradeImage = cat(3,ch1,ch2,ch3);

            logfunctioncall(app,"finish")
        end %end function: createtumorgradeimage


        function segmentationImage = createsegmentationimage(app,inputImage, segmentedTumorMask, individualTumorStats)
            %create an image with labeled tumor segmentations overlayed on
            %H&E image
            logfunctioncall(app,"start")

            %initialize image channel arrays
            ch1 = inputImage(:,:,1);
            ch2 = inputImage(:,:,2);
            ch3 = inputImage(:,:,3);

            %make red overlay from tumorMask
            ch2(segmentedTumorMask) = 0; %remove green signal from annotated image
            ch3(segmentedTumorMask) = 0; %remove blue signal from annotated image
            segmentationImage = cat(3,ch1,ch2,ch3);
            clear ch1 ch2 ch3
            fprintf("%s - %s\n", string(datetime),"SEG IMAGE: Added red overlay to tumors")


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
            fprintf("%s - %s %.2f%s\n", string(datetime),"SEG IMAGE: Rescaled centroids by", app.OUTPUT_SEGMENTATION_IMAGE_SCALE,"x")

            % Add outline to segmented tumors
            Boundry = bwperim(segmentedTumorMask,8);
            clear tumorMask

            Boundry = imdilate(Boundry,strel('disk',3));
            segmentationImage = imoverlay(segmentationImage,Boundry,'b');
            clear Boundry
            fprintf("%s - %s\n", string(datetime),"SEG IMAGE: Added border to tumors")


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
            fprintf("%s - %s\n", string(datetime),"SEG IMAGE: Added tumor labels border to tumors")

            logfunctioncall(app,"finish")
        end % End function: createsegmentationimage
        
        function colorMap = getcolormap(app)
            % get a 256 element color map based on user's selection
            logfunctioncall(app,"start")
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
                        error("Not a valid color map selection")
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
            logfunctioncall(app,"finish")
        end % End function: getcolormap

        function [fullFilePath, applyToAllFiles] = promptreplacexistingfile(app,fullFilePath,applyToAllFiles,oldEnd,newEnd)
            arguments
            app
            fullFilePath {mustBeTextScalar}
            applyToAllFiles string = ""
            oldEnd {mustBeTextScalar} = ".tif"
            newEnd {mustBeTextScalar} = "_new.tif"
            end

            %check if file exists, if so prompt to
            %delete and replace
            if isfile(fullFilePath)
                if applyToAllFiles == "overwrite"
                    replaceFile = 'Yes to all';
                elseif applyToAllFiles == "keep"
                    replaceFile = 'No to all';
                else
                    fprintf("%s - %s %s\n", string(datetime),fullFilePath,"already exists. Prompting for overwrite permission.")
                    promptMessage = sprintf("%s already exits.\n Overwrite existing file?",fullFilePath);
                    replaceFile = uiconfirm(app.GLASSAIUIFigure,promptMessage,"Replace file?", ...
                        "Options",["Yes to all","Yes","No","No to all"], ...
                        "DefaultOption",2);
                      replaceFile = string(replaceFile);
                end

                switch replaceFile
                    case "Yes"
                        fprintf("%s - %s %s\n", string(datetime),"User requested overwrite of existing",fullFilePath)
                        delete(fullFilePath)
                        applyToAllFiles = "";
                    case "Yes to all"
                        fprintf("%s - %s %s\n", string(datetime),"User allowed overwriting of all existing files, including",fullFilePath)
                        delete(fullFilePath)
                        applyToAllFiles = "overwrite";
                    case "No to all"
                        fprintf("%s - %s %s\n", string(datetime),"User refused overwriting of all existing files, including",fullFilePath)
                        fullFilePath = replace(fullFilePath,oldEnd,newEnd);
                        fprintf("%s - %s %s\n", string(datetime),"Changed file name to",fullFilePath)
                        applyToAllFiles = "keep";
                    case "No"
                        fprintf("%s - %s %s\n", string(datetime),"User declined overwrite of existing",fullFilePath)
                        %append new to the end of the file name before .ext
                        fullFilePath = replace(fullFilePath,oldEnd,newEnd);
                        fprintf("%s - %s %s\n", string(datetime),"Changed file name to",fullFilePath)
                end %switch replaceFile
            end % if isfile(fullFilePath)
        end % function promptreplaceexistingfile

        function  writetiff(app,Image,filePath)
            %write tiff files with metadata
            logfunctioncall(app,"start")
            fprintf("%s - %s %s\n",string(datetime),"WRITETIFF: Writing to ",filePath)

            bt = Tiff(filePath,'w8');
            tags.ImageLength         = size(Image,1);
            tags.ImageWidth          = size(Image,2);
            tags.Photometric         = Tiff.Photometric.RGB;
            tags.BitsPerSample       = 8;
            tags.SamplesPerPixel     = size(Image,3);
            tags.TileWidth           = 128;
            tags.TileLength          = 128;
            tags.Compression         = Tiff.Compression.LZW;
            tags.PlanarConfiguration = Tiff.PlanarConfiguration.Chunky;
            tags.Software            = 'MATLAB/GLASS-AI';

            setTag(bt, tags);
            write(bt, Image);
            close(bt);
            logfunctioncall(app,"finish")
        end %End function: writetiff

        function cleanUpGLASSAI(app)
            % cleanup the temporary files generated during analysis run
            logfunctioncall(app,"start")

            deletetemporaryfiles(app);

            logfunctioncall(app,"finish")

            %return matlab to location of mlapp file
            if ~isdeployed
                try
                    cd(app.RESOURCE_DIR_PATH)
                    cd("..")
                end

            end
        end % End function: cleanUpGLASSAI

        function deletetemporaryfiles(app,showwaitbar)
            arguments
                app
                showwaitbar logical = true
            end

            %capture current status text to replace after cleanup
            oldStatusLabel = app.StatusLabel.Text;

            app.StatusLabel.Text = "Cleaning up temporary files...";
            drawnow

            if exist(fullfile(app.OUTPUT_PATH,'TempFolder'), 'dir') 
                folderList = dir(fullfile(app.OUTPUT_PATH,'TempFolder'));
                % remove all files (isdir property is 0)
                folderList = folderList([folderList(:).isdir]);
                % remove '.' and '..' 
                folderList = folderList(~ismember({folderList(:).name},{'.','..'}));
                if showwaitbar
                    wb = waitbar(0,"Deleting temporary files");
                    nFolders = length(folderList);
                    for iFolder = 1:nFolders
                        waitbar(iFolder/nFolders,wb,sprintf("Deleting %s", folderList(iFolder).name));
                        rmdir(fullfile(folderList(iFolder).folder,folderList(iFolder).name), 's'); 
                        drawnow
                    end
                    close(wb)
                    drawnow
                end %if showwaitbar
                rmdir(fullfile(app.OUTPUT_PATH,'TempFolder'),'s')
            end %if exist(fullfile(app.OUTPUT_PATH,'TempFolder'), 'dir') 

            %restore previous status text
            app.StatusLabel.Text = oldStatusLabel;
            
        end %function: deletetemporaryfiles

    end %methods: functions

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
            if isdeployed
                app.logFilePath = ctfroot;
            else
                app.logFilePath = pwd;
            end

            diary(fullfile(app.logFilePath,app.logFileName));

            %log system info
            fprintf("%s:\t%s\n","App is deployed", string(isdeployed));
            fprintf("%s:\t%s\n","System type", computer);
            fprintf("%s:\t %s\n","Can use GPU", string(canUseGPU));
            fprintf("%s:\t%s\n","ctfroot", string(ctfroot));
            fprintf("%s:\t%s\n","working directory", string(pwd));

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
            app.StatusLabel.Text="Loading GLASS-AI neural network...";
            app.VersionLabel.Text = sprintf("version %s",app.GLASSAI_APP_VERSION);
            fprintf("%s:\t%s\n","GLASS-AI version",app.GLASSAI_APP_VERSION)

            % locate where the application is launched from
            %- use mfilename("fullpath") to get location of launched file
            %- strip off mfilename at the end of the char vector to get
            %- folder that should contain the mlapp file and the
            %- 'Resources' directory.
            %-- This approach should work regardless of platform and
            %-- deployment
            mlapp_location = replace(mfilename('fullpath'),[filesep mfilename()]+textBoundary('end'),'');

            % set path to expected 'Resources' folder location
            app.RESOURCE_DIR_PATH = fullfile(mlapp_location,"Resources");
            
            %validate RESOURCE_DIR_PATH by changing UI images
            %change window icon to GLASS-AI
            app.GLASSAIUIFigure.Icon = fullfile(app.RESOURCE_DIR_PATH,"UI Files","icon_48.png");
            %add moffitt logo to UI
            app.MoffittLogo.ImageSource = fullfile(app.RESOURCE_DIR_PATH,"UI Files","moffitt.png");
            %add GLASS-AI logo to UI
            app.GLASSAILogo.ImageSource = fullfile(app.RESOURCE_DIR_PATH,"UI Files","GLASS-AI icon.png");
            
            
            %get starting directory to recall during development
            if not(isdeployed)
                % change directory to where .mlapp or .m file is located
                cd(mlapp_location)
                app.START_DIR = mlapp_location;
                %reveal copy to base button for debugging
                app.CopytobaseButton.Visible = 'on';
                app.CopytobaseButton.Enable = 'on';
                % show path to common folders
                uialert(app.GLASSAIUIFigure,sprintf("ctfroot: %s\npwd: %s\nmfilename: %s\n",ctfroot,pwd,mlapp_location),"Current File Paths","Icon","info")
            end % if not(isdeployed)

            fprintf("%s:\t%s\n","resource directory", string(app.RESOURCE_DIR_PATH));

            %make file table visible but not interactable
            app.FileTable.Enable = 'inactive';
            drawnow

            %make sure stop button is disabled,hidden, and not 'pushed'
            app.StopAnalysisButton.Enable = "off";
            app.StopAnalysisButton.Visible = "off";
            app.StopAnalysisButton.Text = "Stop analysis";
            app.StopAnalysisButton.Value = 0;

            try % load GLASS-AI from .mat file
                pathToGLASSAI = fullfile(app.RESOURCE_DIR_PATH,"Program Files","GLASS_AI.mat");

                
                if isfile(pathToGLASSAI)
                    app.GLASS_AI_NET = load(pathToGLASSAI);
                    app.GLASS_AI_NET = app.GLASS_AI_NET.net; % get DAGnet from struct

                    %check that DAGNetwork in GLASS_AI.mat loads the
                    %correct number of layers
                    if size(app.GLASS_AI_NET.Layers,1) == 101
                        fprintf("%s:\t%s\n","Loaded GLASS-AI.mat from", pathToGLASSAI);
                        app.StatusLabel.Text="GLASS-AI loaded. Awaiting input/selection.";
                    else
                        fprintf("%s","GLASS-AI was not loaded in expected configuration. Loaded layers:")
                        fprintf("%s\n",app.GLASS_AI_NET.Layers.Names)
                        app.StatusLabel.Text="ERROR: GLASS-AI was not loaded in expected configuration.";
                        error("GLASS-AI was not loaded in expected configuration.")
                    end
                else
                    fprintf("%s:\t%s\n","GLASS-AI.mat was not in the expected location at", pathToGLASSAI);
                    error("%s: %s","GLASS-AI was not found in the expected location. Please verify that 'GLASS_AI.mat' is present at",pathToGLASSAI)
                end

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
                app.StatusLabel.Text="ERROR: GLASS-AI neural network failed to load.";
                fprintf("%s:\t%s\n","GLASS-AI model not found within", pathToGLASSAI);
                % rethrow error to stop execution
                rethrow(ME);

            end %end TRY: load GLASS-AI model from MAT file

            %cleanup any leftover directories from previous runs
            try
                rmdir(fullfile(app.OUTPUT_PATH,'TempFolder'),'s')
            catch
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
            elseif ispc
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

            %check for app updates
            versioncheck(app)
            

            logfunctioncall(app,"finish")

        end

        % Button pushed function: UpdateAvailableButton
        function UpdateAvailableButtonPushed(app, event)
            %open latest GLASS-AI app installer folder on Box in web
            %browser
            web("https://moffitt.box.com/s/xii1rsfm93v7vnnokp2m8lx8vprojc1c");
        end

        % Button pushed function: SelectimagesButton
        function SelectimagesButtonPushed(app, event)
            % get list of files from user
            [app.SELECTED_FILES, pathToFileDir] = uigetfile({'*.svs;*.qptiff;*.tif;*.tiff;*.jpg;*.jpeg;*.png','Image Files (*.svs,*.qptiff,*.tif,*.tiff,*.jpg,*.jpeg,*.png)'},'Select images for GLASS-AI',app.LAST_SELECTED_DIR, "MultiSelect","on");

            if ~isequal(app.SELECTED_FILES, 0)
                app.InputFolderLocationLabel.Text = pathToFileDir;
                app.LAST_SELECTED_DIR = pathToFileDir;
                %clear existing data from table
                app.FileTable.Data = {};
                if isequal(class(app.SELECTED_FILES), 'char')
                    app.FileTable.Data{1,1} = app.SELECTED_FILES;
                    app.SELECTED_FILES = {app.SELECTED_FILES}; %change to cell
                else
                    for n = 1:length(app.SELECTED_FILES)
                        app.FileTable.Data{n,1} = char(app.SELECTED_FILES{n});
                    end
                end
            else
                return
            end

            for n = 1:length(app.SELECTED_FILES) % Get system file paths for selected files
                app.SELECTED_PATHS = cellfun(@(x) fullfile(pathToFileDir,x), app.SELECTED_FILES, 'Uniform',0);
                filesize = dir(app.SELECTED_PATHS{n}).bytes/(1024^2);
                app.FileTable.Data{n,2} = char(sprintf("%.2f MB",filesize));
                app.FileTable.Data{n,3} = '';
            end

            waitstyle = uistyle("Icon",fullfile(app.RESOURCE_DIR_PATH,"UI files", "waiting.svg"));
            addStyle(app.FileTable,waitstyle,"column",3)

            %refresh the GUI to show changes
            drawnow

            % Ready check
            if isempty(app.SELECTED_FILES) %no go
                app.InputFolderLamp.Color=[1,0,0];
                runcheck(app);
            else % go
                app.InputFolderLamp.Color=[0,1,0];
                runcheck(app);
            end
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
            drawnow

            
            % Ready check
            if isfolder(app.OUTPUT_PATH) % Green light if output folder exists
                app.OutputFolderLamp.Color = [0,1,0];
                runcheck(app);
            else
                app.OutputFolderLamp.Color = [1,0,0];
                runcheck(app);
            end
        end

        % Button pushed function: RunButton
        function RunButtonPushed(app, event)
            echo off
            % disable run button
            app.RunButton.Enable = "off";
            app.RunButton.Text = "Running";

            %enable stop button
            app.StopAnalysisButton.Enable = "on";
            app.StopAnalysisButton.Visible = "on";
            app.StopAnalysisButton.Text = "Stop analysis";
            app.StopAnalysisButton.Value = 0;

            %refresh GUI
            drawnow

            % start stopwatch for analysis run
            app.analysisStopWatch = tic;

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

            for n = 1:length(app.SELECTED_FILES) % Get system file paths for selected files
                filesize = dir(app.SELECTED_PATHS{n}).bytes/(1024^2);
                fprintf("%s:\t%s\t%.2f MB\n","File selected", app.SELECTED_PATHS{n}, filesize);
            end

            fprintf("%s:\t%s\n","Output directory selected", app.OUTPUT_PATH);fprintf("%s - %s:\t%s\n",string(datetime),"Output directory selected", app.OUTPUT_PATH);
            % collect and log analysis run parameters
            fprintf("%s\n","%%%%%%% Run parameters %%%%%%%")

            % Analysis Options panel
            app.APPEND_SLIDE_SUMMARY = app.OverwriteSlideSummaryInput.Value;
            fprintf("%s:\t%s\n","Append slide summary", string(app.APPEND_SLIDE_SUMMARY));
            app.NORMALIZE_STAINS = strcmpi(app.NormalizestainingSwitch.Value,"true");
            fprintf("%s:\t%s\n","Normalize staining", string(app.NORMALIZE_STAINS));
            app.OUTPUT_IMAGE_PREVIEW = strcmpi(app.PreviewoutputimagesSwitch.Value,"true");
            fprintf("%s:\t%s\n","Make preview images", string(app.OUTPUT_IMAGE_PREVIEW));

            % GLASS-AI Parameters tab
            app.PATCH_SKIP_THRESHOLD = app.PatchTissueThresholdInput.Value;
            fprintf("%s:\t%.0f\n","Patch skip threshold", app.PATCH_SKIP_THRESHOLD);
            app.SMOOTH_METHOD = char(app.SmoothingMethodDropDown.Value);
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
            app.NORMALIZE_REF_STAINMATRIX = [
                app.HemRedInput.Value       app.EosRedInput.Value
                app.HemGreenInput.Value     app.EosGreenInput.Value
                app.HemBlueInput.Value      app.EosBlueInput.Value
                ];
            fprintf("%s:\t%.3f\n","Stain normalization hematoxylin reference concentation", app.HemConc.Value);
            fprintf("%s:\t%.3f\n","Stain normalization eosin reference concentation", app.EosConc.Value);
            app.NORMALIZATION_REF_CONC = [app.HemConc.Value, app.EosConc.Value];
            app.REMOVE_PURE_COLORS = app.RemovepurecolorpixelsCheckBox.Value;
            fprintf("%s:\t%s\n","Remove pure colors during normalization", string(app.REMOVE_PURE_COLORS));

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
            app.MAKE_SEGMENTATION_IMAGE = app.SegmentationImageCheckBox.Value;
            fprintf("%s:\t%s\n","Make segmentation image", string(app.MAKE_SEGMENTATION_IMAGE));
            app.OUTPUT_SEGMENTATION_IMAGE_SCALE = app.SegmentationScalingSlider.Value/100;
            fprintf("%s:\t%.3f\n","Segmentation image output scale", app.OUTPUT_SEGMENTATION_IMAGE_SCALE);
            app.MAKE_NORMALIZED_IMAGE = app.NormalizedImageOutputCheckBox.Value;
            fprintf("%s:\t%s\n","Make normalized image", string(app.MAKE_NORMALIZED_IMAGE));
            app.OUTPUT_NORMALIZED_IMAGE_SCALE = app.StainNormalizedImageScalingSlider.Value/100;
            fprintf("%s:\t%.3f\n","Stain normalize image output scale", app.OUTPUT_NORMALIZED_IMAGE_SCALE);
            app.MAKE_CONFIDENCE_MAP = [app.ConfidenceMapCheckBox.Value];
            fprintf("%s:\t%s\n","Make confidence map", string(app.MAKE_CONFIDENCE_MAP));
            app.OUTPUT_CONFIDENCE_MAP_SCALE = app.ConfidenceMapScalingSlider.Value/100;
            fprintf("%s:\t%.3f\n","Confidence map output scale", app.OUTPUT_CONFIDENCE_MAP_SCALE);
            app.CONFIDENCE_MAP_COLOR = app.ConfidenceMapPaletteDropDown.Value;
            fprintf("%s:\t%s\n","Confidence map output color map", app.CONFIDENCE_MAP_COLOR);
            fprintf("%s\n","%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%")

            % Begin analysis
            fprintf("%s\n","Begin analysis")

            try
                main(app);
                totalAnalysisTime = toc(app.analysisStopWatch);
                if app.StopAnalysisButton.Text == "Stopped"
                    if app.iImage > 1
                        message_text = "GLASS-AI completed the analysis of " +...
                            string(app.iImage-1) +" images in " + string(duration(0,0,totalAnalysisTime)) + "before analysis was stopped by the user.";
                        uialert(app.GLASSAIUIFigure,message_text,"Analysis stopped", 'Icon',"success")
                    else
                        message_text = "GLASS-AI was stopped by the user before any images were analyzed.";
                        uialert(app.GLASSAIUIFigure,message_text,"Analysis stopped", 'Icon',"error")
                    end
                else
                    app.StatusLabel.Text = sprintf("%s %d %s %s", "Analysis completed on all", app.iImage, "images in", string(duration(0,0,totalAnalysisTime)));
                    message_text = "GLASS-AI successfully completed the analysis of " +...
                        string(app.iImage) +" images in " + string(duration(0,0,totalAnalysisTime));
                    uialert(app.GLASSAIUIFigure,message_text,"Analysis complete", 'Icon',"success")
                end
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

            %disable stop button and reset
            app.StopAnalysisButton.Enable = "off";
            app.StopAnalysisButton.Visible = "off";
            app.StopAnalysisButton.Text = "Stop analysis";
            app.StopAnalysisButton.Value = 0;

            %clean up temporary folder
            cleanUpGLASSAI(app)

            %refresh GUI
            drawnow

            % recheck readiness to prepare for next analysis run
            runcheck(app);
        end

        % Value changed function: BackgroundColorEditField_B, 
        % ...and 23 other components
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
        % ...and 2 other components
        function DiscreteSliderValueChanged(app, event)
            % make sliders stick to major tick values only
            value = event.Source.Value;
            % determine which discrete option the current value is closest to.
            [~, minIdx] = min(abs(value - event.Source.MajorTicks(:)));
            % move the slider to that option
            event.Source.Value = event.Source.MajorTicks(minIdx);
        end

        % Value changed function: EosBlueInput, EosGreenInput, 
        % ...and 4 other components
        function StainVectorValueChanged(app, event)
            %change colors on swatches in Stain Normalization Parameters
            %tab
            app.HemSwatch.BackgroundColor = [1-app.HemRedInput.Value, 1-app.HemGreenInput.Value, 1-app.HemBlueInput.Value];
            app.EosSwatch.BackgroundColor = [1-app.EosRedInput.Value, 1-app.EosGreenInput.Value, 1-app.EosBlueInput.Value];
        end

        % Button pushed function: ResetStainParametersButton
        function ResetStainParametersButtonPushed(app, event)
            % reset the values of the stain normalization panel to the
            % default values calculated from the slides used to train
            % GLASS-AI.
            app.HemRedInput.Value = 0.551;
            app.HemGreenInput.Value = 0.863;
            app.HemBlueInput.Value = 0.339;
            app.EosRedInput.Value = 0.171;
            app.EosGreenInput.Value = 0.783;
            app.EosBlueInput.Value = 0.334;
            app.NormMinimumTissuePercent.Value = 1;
            app.NormPseudomaxTolerance.Value = 1;
            app.NormTransparencyThreshold.Value = 0.1;
            app.NormBackgroundIntensity.Value = 240;
            app.HemConc.Value = 1.970;
            app.EosConc.Value = 1.031;
            %refresh colors on swatches
            app.HemSwatch.BackgroundColor = [1-app.HemRedInput.Value, 1-app.HemGreenInput.Value, 1-app.HemBlueInput.Value];
            app.EosSwatch.BackgroundColor = [1-app.EosRedInput.Value, 1-app.EosGreenInput.Value, 1-app.EosBlueInput.Value];
        end

        % Close request function: GLASSAIUIFigure
        function GLASSAIUIFigureCloseRequest(app, event)
            cleanUpGLASSAI(app)
            % release parallel processing pool if it exists
            if isdeployed
                if ~isempty(gcp('nocreate')),delete(gcp('nocreate')),end
                fprintf("%s - %s\n",string(datetime),"Released parallel processing pool.");
            end
               
            deletetemporaryfiles(app,true);
            %Close any result preview images when applications window is
            %terminated.
            try
                appFigures = findobj('-regexp','Name',"GLASS-AI");
                close(appFigures)
            end

            % return to invoking directory in dev environment on app close
            if not(isdeployed)
                cd(app.START_DIR)
            end

            fprintf("%s - %s\n",string(datetime),"Application terminated.");
            echo off all;
            diary("off");
            delete(app)
        end

        % Button pushed function: CopytobaseButton
        function CopytobaseButtonPushed(app, event)
            % copy app to base workspace for debugging
            %- closing app window destroys data in the base variable too
            if not(isdeployed)
                assignin("base","app",app)
            end
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create GLASSAIUIFigure and hide until all components are created
            app.GLASSAIUIFigure = uifigure('Visible', 'off');
            app.GLASSAIUIFigure.Position = [100 100 723 581];
            app.GLASSAIUIFigure.Name = 'GLASS-AI';
            app.GLASSAIUIFigure.CloseRequestFcn = createCallbackFcn(app, @GLASSAIUIFigureCloseRequest, true);

            % Create AnalysisOptionsPanel
            app.AnalysisOptionsPanel = uipanel(app.GLASSAIUIFigure);
            app.AnalysisOptionsPanel.Title = 'Analysis Options';
            app.AnalysisOptionsPanel.BackgroundColor = [0.902 0.902 0.902];
            app.AnalysisOptionsPanel.FontAngle = 'italic';
            app.AnalysisOptionsPanel.FontWeight = 'bold';
            app.AnalysisOptionsPanel.Position = [11 349 306 100];

            % Create OverwriteSlideSummaryInput
            app.OverwriteSlideSummaryInput = uicheckbox(app.AnalysisOptionsPanel);
            app.OverwriteSlideSummaryInput.Tooltip = {'When checked, GLASS-AI will append any new whole slide summaries onto an exisiting "Whole slide summary.xlsx" file in the output folder.'; ''; 'Otherwise, GLASS-AI will overwrite any existing "Whole slide summary.xlsx" file with the results from the next analysis run.'};
            app.OverwriteSlideSummaryInput.Text = 'Append to existing image summary data';
            app.OverwriteSlideSummaryInput.Position = [26 1 267 28];
            app.OverwriteSlideSummaryInput.Value = true;

            % Create PreviewoutputimagesSwitchLabel
            app.PreviewoutputimagesSwitchLabel = uilabel(app.AnalysisOptionsPanel);
            app.PreviewoutputimagesSwitchLabel.Tooltip = {'Generate preview images of outputs after analysis completes. Disabling this option will speed up analysis.'};
            app.PreviewoutputimagesSwitchLabel.Position = [122 30 128 22];
            app.PreviewoutputimagesSwitchLabel.Text = 'Preview output images';

            % Create PreviewoutputimagesSwitch
            app.PreviewoutputimagesSwitch = uiswitch(app.AnalysisOptionsPanel, 'slider');
            app.PreviewoutputimagesSwitch.ItemsData = {'false', 'true'};
            app.PreviewoutputimagesSwitch.Tooltip = {'Generate preview images of outputs after analysis completes. Disabling this option will speed up analysis.'};
            app.PreviewoutputimagesSwitch.Position = [48 31 45 20];
            app.PreviewoutputimagesSwitch.Value = 'true';

            % Create NormalizestainingSwitchLabel
            app.NormalizestainingSwitchLabel = uilabel(app.AnalysisOptionsPanel);
            app.NormalizestainingSwitchLabel.Tooltip = {'Perform stain normalization step before GLASS-AI analysis. This option is recommended to improve consistency of analysis by GLASS-AI. If GLASS-AI performs well without normalization, disabling will slightly improve analysis time. The normalized H&E image will be output alongside GLASS-AI results.'};
            app.NormalizestainingSwitchLabel.Position = [122 53 104 22];
            app.NormalizestainingSwitchLabel.Text = 'Normalize staining';

            % Create NormalizestainingSwitch
            app.NormalizestainingSwitch = uiswitch(app.AnalysisOptionsPanel, 'slider');
            app.NormalizestainingSwitch.ItemsData = {'false', 'true'};
            app.NormalizestainingSwitch.Tooltip = {'Perform stain normalization step before GLASS-AI analysis. This option is recommended to improve consistency of analysis by GLASS-AI. If GLASS-AI performs well without normalization, disabling will slightly improve analysis time. The normalized H&E image will be output alongside GLASS-AI results.'};
            app.NormalizestainingSwitch.Position = [48 54 45 20];
            app.NormalizestainingSwitch.Value = 'true';

            % Create SelectimagesButton
            app.SelectimagesButton = uibutton(app.GLASSAIUIFigure, 'push');
            app.SelectimagesButton.ButtonPushedFcn = createCallbackFcn(app, @SelectimagesButtonPushed, true);
            app.SelectimagesButton.BusyAction = 'cancel';
            app.SelectimagesButton.Tooltip = {'Select the directory that contains your images for analysis. All SVS and TIFF images in the selected directory will be displayed in File Name Table below for selection.'};
            app.SelectimagesButton.Position = [216 497 100 24];
            app.SelectimagesButton.Text = 'Select images';

            % Create InputFolderLocationLabel
            app.InputFolderLocationLabel = uilabel(app.GLASSAIUIFigure);
            app.InputFolderLocationLabel.BackgroundColor = [1 1 1];
            app.InputFolderLocationLabel.Position = [329 497 361 24];
            app.InputFolderLocationLabel.Text = 'Input Folder Location';

            % Create FileTable
            app.FileTable = uitable(app.GLASSAIUIFigure);
            app.FileTable.ColumnName = {'File Name'; 'Size'; 'Status'};
            app.FileTable.ColumnWidth = {235, 75, 50};
            app.FileTable.RowName = {};
            app.FileTable.SelectionType = 'row';
            app.FileTable.Multiselect = 'off';
            app.FileTable.Enable = 'off';
            app.FileTable.Position = [329 88 360 361];

            % Create RunButton
            app.RunButton = uibutton(app.GLASSAIUIFigure, 'push');
            app.RunButton.ButtonPushedFcn = createCallbackFcn(app, @RunButtonPushed, true);
            app.RunButton.BusyAction = 'cancel';
            app.RunButton.FontSize = 18;
            app.RunButton.FontWeight = 'bold';
            app.RunButton.Enable = 'off';
            app.RunButton.Position = [588 36 100 46];
            app.RunButton.Text = 'Run';

            % Create OutputFolderButton
            app.OutputFolderButton = uibutton(app.GLASSAIUIFigure, 'push');
            app.OutputFolderButton.ButtonPushedFcn = createCallbackFcn(app, @OutputFolderButtonPushed, true);
            app.OutputFolderButton.Tooltip = {'Select an output directory for GLASS-AI.'};
            app.OutputFolderButton.Position = [216 460 100 24];
            app.OutputFolderButton.Text = 'Output folder';

            % Create OutputFolderLocationLabel
            app.OutputFolderLocationLabel = uilabel(app.GLASSAIUIFigure);
            app.OutputFolderLocationLabel.BackgroundColor = [1 1 1];
            app.OutputFolderLocationLabel.Position = [329 460 361 24];
            app.OutputFolderLocationLabel.Text = 'Output Folder Location';

            % Create InputFolderLamp
            app.InputFolderLamp = uilamp(app.GLASSAIUIFigure);
            app.InputFolderLamp.Tooltip = {'Red: Select input folder with valid image files (.tif, .tiff, or .svs)'};
            app.InputFolderLamp.Position = [697 499 20 20];
            app.InputFolderLamp.Color = [1 0 0];

            % Create OutputFolderLamp
            app.OutputFolderLamp = uilamp(app.GLASSAIUIFigure);
            app.OutputFolderLamp.Tooltip = {'Red: Select valid output folder'};
            app.OutputFolderLamp.Position = [697 462 20 20];
            app.OutputFolderLamp.Color = [1 0 0];

            % Create Step1Label
            app.Step1Label = uilabel(app.GLASSAIUIFigure);
            app.Step1Label.FontWeight = 'bold';
            app.Step1Label.Position = [37 498 152 22];
            app.Step1Label.Text = 'Step 1: Select input file(s)';

            % Create Step2Label
            app.Step2Label = uilabel(app.GLASSAIUIFigure);
            app.Step2Label.FontWeight = 'bold';
            app.Step2Label.Position = [37 461 162 22];
            app.Step2Label.Text = 'Step 2: Select output folder';

            % Create GLASSAILabel
            app.GLASSAILabel = uilabel(app.GLASSAIUIFigure);
            app.GLASSAILabel.WordWrap = 'on';
            app.GLASSAILabel.FontSize = 18;
            app.GLASSAILabel.FontWeight = 'bold';
            app.GLASSAILabel.Position = [89 528 556 50];
            app.GLASSAILabel.Text = {'GLASS-AI: Grading of Lung Adenocarcinoma with '; 'Simultaneous Segmentation by an Artificial Intelligence'};

            % Create StatusLabel
            app.StatusLabel = uilabel(app.GLASSAIUIFigure);
            app.StatusLabel.BackgroundColor = [1 1 1];
            app.StatusLabel.VerticalAlignment = 'top';
            app.StatusLabel.WordWrap = 'on';
            app.StatusLabel.Position = [215 36 361 45];
            app.StatusLabel.Text = '';

            % Create RunCheckLamp
            app.RunCheckLamp = uilamp(app.GLASSAIUIFigure);
            app.RunCheckLamp.Position = [695 50 20 20];
            app.RunCheckLamp.Color = [1 0 0];

            % Create RUOLabel
            app.RUOLabel = uilabel(app.GLASSAIUIFigure);
            app.RUOLabel.HorizontalAlignment = 'center';
            app.RUOLabel.FontWeight = 'bold';
            app.RUOLabel.Position = [215 9 352 22];
            app.RUOLabel.Text = 'For reseach use only— not for use in diagnostic procedures';

            % Create CopyrightLabel
            app.CopyrightLabel = uilabel(app.GLASSAIUIFigure);
            app.CopyrightLabel.HorizontalAlignment = 'center';
            app.CopyrightLabel.Position = [20 11 167 22];
            app.CopyrightLabel.Text = '(c) Moffitt Cancer Center 2023';

            % Create VersionLabel
            app.VersionLabel = uilabel(app.GLASSAIUIFigure);
            app.VersionLabel.HorizontalAlignment = 'right';
            app.VersionLabel.Enable = 'off';
            app.VersionLabel.Position = [645 558 74 22];
            app.VersionLabel.Text = 'version #.#.#';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.GLASSAIUIFigure);
            app.TabGroup.Position = [11 88 306 250];

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
            app.TumorSizeThresholdInput.Value = 500;

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
            app.SmoothingSizeSpinner.Limits = [16 256];
            app.SmoothingSizeSpinner.RoundFractionalValues = 'on';
            app.SmoothingSizeSpinner.ValueDisplayFormat = '%.0f';
            app.SmoothingSizeSpinner.Tooltip = {'Defines the diameter of the smoothing kernel. Smaller numbers reduce the effect of the smoothing.'};
            app.SmoothingSizeSpinner.Position = [226 142 73 22];
            app.SmoothingSizeSpinner.Value = 160;

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

            % Create RefStainMatrixPanel
            app.RefStainMatrixPanel = uipanel(app.StainNormalizationParametersTab);
            app.RefStainMatrixPanel.Tooltip = {'Define color vectors for hematoxylin and eosin stain. Default vectors were estimated from images used to train GLASS-AI.'};
            app.RefStainMatrixPanel.Title = 'Ref. Stain Matrix';
            app.RefStainMatrixPanel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.RefStainMatrixPanel.FontWeight = 'bold';
            app.RefStainMatrixPanel.Position = [175 7 126 212];

            % Create EosRedInput
            app.EosRedInput = uieditfield(app.RefStainMatrixPanel, 'numeric');
            app.EosRedInput.Limits = [0 1];
            app.EosRedInput.ValueChangedFcn = createCallbackFcn(app, @StainVectorValueChanged, true);
            app.EosRedInput.Position = [74 150 48 22];
            app.EosRedInput.Value = 0.171;

            % Create EosGreenInput
            app.EosGreenInput = uieditfield(app.RefStainMatrixPanel, 'numeric');
            app.EosGreenInput.Limits = [0 1];
            app.EosGreenInput.ValueChangedFcn = createCallbackFcn(app, @StainVectorValueChanged, true);
            app.EosGreenInput.Position = [74 127 48 22];
            app.EosGreenInput.Value = 0.783;

            % Create EosBlueInput
            app.EosBlueInput = uieditfield(app.RefStainMatrixPanel, 'numeric');
            app.EosBlueInput.Limits = [0 1];
            app.EosBlueInput.ValueChangedFcn = createCallbackFcn(app, @StainVectorValueChanged, true);
            app.EosBlueInput.Position = [74 103 48 22];
            app.EosBlueInput.Value = 0.334;

            % Create HemLabel
            app.HemLabel = uilabel(app.RefStainMatrixPanel);
            app.HemLabel.HorizontalAlignment = 'center';
            app.HemLabel.FontWeight = 'bold';
            app.HemLabel.Position = [29 167 35 22];
            app.HemLabel.Text = 'Hem.';

            % Create EosLabel
            app.EosLabel = uilabel(app.RefStainMatrixPanel);
            app.EosLabel.HorizontalAlignment = 'center';
            app.EosLabel.FontWeight = 'bold';
            app.EosLabel.Position = [83 167 30 22];
            app.EosLabel.Text = 'Eos.';

            % Create REditFieldLabel
            app.REditFieldLabel = uilabel(app.RefStainMatrixPanel);
            app.REditFieldLabel.HorizontalAlignment = 'right';
            app.REditFieldLabel.FontWeight = 'bold';
            app.REditFieldLabel.Position = [5 150 11 22];
            app.REditFieldLabel.Text = 'R';

            % Create HemRedInput
            app.HemRedInput = uieditfield(app.RefStainMatrixPanel, 'numeric');
            app.HemRedInput.Limits = [0 1];
            app.HemRedInput.ValueChangedFcn = createCallbackFcn(app, @StainVectorValueChanged, true);
            app.HemRedInput.Position = [23 150 48 22];
            app.HemRedInput.Value = 0.551;

            % Create GEditFieldLabel
            app.GEditFieldLabel = uilabel(app.RefStainMatrixPanel);
            app.GEditFieldLabel.HorizontalAlignment = 'right';
            app.GEditFieldLabel.FontWeight = 'bold';
            app.GEditFieldLabel.Position = [1 127 15 22];
            app.GEditFieldLabel.Text = 'G';

            % Create HemGreenInput
            app.HemGreenInput = uieditfield(app.RefStainMatrixPanel, 'numeric');
            app.HemGreenInput.Limits = [0 1];
            app.HemGreenInput.ValueChangedFcn = createCallbackFcn(app, @StainVectorValueChanged, true);
            app.HemGreenInput.Position = [23 127 48 22];
            app.HemGreenInput.Value = 0.863;

            % Create BEditFieldLabel
            app.BEditFieldLabel = uilabel(app.RefStainMatrixPanel);
            app.BEditFieldLabel.HorizontalAlignment = 'right';
            app.BEditFieldLabel.FontWeight = 'bold';
            app.BEditFieldLabel.Position = [2 103 14 22];
            app.BEditFieldLabel.Text = 'B';

            % Create HemBlueInput
            app.HemBlueInput = uieditfield(app.RefStainMatrixPanel, 'numeric');
            app.HemBlueInput.Limits = [0 1];
            app.HemBlueInput.ValueChangedFcn = createCallbackFcn(app, @StainVectorValueChanged, true);
            app.HemBlueInput.Position = [23 103 48 22];
            app.HemBlueInput.Value = 0.339;

            % Create ResetStainParametersButton
            app.ResetStainParametersButton = uibutton(app.RefStainMatrixPanel, 'push');
            app.ResetStainParametersButton.ButtonPushedFcn = createCallbackFcn(app, @ResetStainParametersButtonPushed, true);
            app.ResetStainParametersButton.Tooltip = {'Push to reset the stain normalization paramaters to the defualt values.'};
            app.ResetStainParametersButton.Position = [24 8 98 22];
            app.ResetStainParametersButton.Text = 'Reset to default';

            % Create EosSwatch
            app.EosSwatch = uilabel(app.RefStainMatrixPanel);
            app.EosSwatch.BackgroundColor = [0.8314 0.1216 0.6196];
            app.EosSwatch.Position = [74 78 48 22];
            app.EosSwatch.Text = '    ';

            % Create HemSwatch
            app.HemSwatch = uilabel(app.RefStainMatrixPanel);
            app.HemSwatch.BackgroundColor = [0.451 0.2392 0.6588];
            app.HemSwatch.Position = [23 78 48 22];
            app.HemSwatch.Text = '    ';

            % Create BEditFieldLabel_2
            app.BEditFieldLabel_2 = uilabel(app.RefStainMatrixPanel);
            app.BEditFieldLabel_2.HorizontalAlignment = 'right';
            app.BEditFieldLabel_2.FontWeight = 'bold';
            app.BEditFieldLabel_2.Position = [5 80 11 22];
            app.BEditFieldLabel_2.Text = '=';

            % Create HemConc
            app.HemConc = uieditfield(app.RefStainMatrixPanel, 'numeric');
            app.HemConc.Limits = [0 5];
            app.HemConc.ValueDisplayFormat = '%.3f';
            app.HemConc.Tooltip = {'Hematoxylin stain concentration to use as reference'};
            app.HemConc.Position = [25 34 47 22];
            app.HemConc.Value = 1.9705;

            % Create EosConc
            app.EosConc = uieditfield(app.RefStainMatrixPanel, 'numeric');
            app.EosConc.Limits = [0 5];
            app.EosConc.ValueDisplayFormat = '%.3f';
            app.EosConc.Tooltip = {'Eosin stain concentration to use as reference'};
            app.EosConc.Position = [76 34 47 22];
            app.EosConc.Value = 1.0308;

            % Create ConcentrationLabel
            app.ConcentrationLabel = uilabel(app.RefStainMatrixPanel);
            app.ConcentrationLabel.FontWeight = 'bold';
            app.ConcentrationLabel.Position = [32 55 86 22];
            app.ConcentrationLabel.Text = 'Concentration';

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

            % Create RemovepurecolorpixelsCheckBox
            app.RemovepurecolorpixelsCheckBox = uicheckbox(app.StainNormalizationParametersTab);
            app.RemovepurecolorpixelsCheckBox.Tooltip = {'When checked, pure color pixels (i.e., with 255 or 0 for each RGB value) will be converted to pure white pixels during stain normalization.'};
            app.RemovepurecolorpixelsCheckBox.Text = 'Remove pure color pixels';
            app.RemovepurecolorpixelsCheckBox.Position = [9 83 158 22];
            app.RemovepurecolorpixelsCheckBox.Value = true;

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

            % Create NormalizedImageOutputCheckBox
            app.NormalizedImageOutputCheckBox = uicheckbox(app.OutputImageScalingTab);
            app.NormalizedImageOutputCheckBox.Tooltip = {'When checked, saves the stain normalized image as .tif file in the output folder.'};
            app.NormalizedImageOutputCheckBox.Text = '';
            app.NormalizedImageOutputCheckBox.Position = [5 102 25 22];

            % Create LinksTab
            app.LinksTab = uitab(app.TabGroup);
            app.LinksTab.Title = 'Links';

            % Create CopytobaseButton
            app.CopytobaseButton = uibutton(app.LinksTab, 'push');
            app.CopytobaseButton.ButtonPushedFcn = createCallbackFcn(app, @CopytobaseButtonPushed, true);
            app.CopytobaseButton.Enable = 'off';
            app.CopytobaseButton.Visible = 'off';
            app.CopytobaseButton.Position = [14 6 100 23];
            app.CopytobaseButton.Text = 'Copy to base';

            % Create GLASSAIGitHubLink
            app.GLASSAIGitHubLink = uihyperlink(app.LinksTab);
            app.GLASSAIGitHubLink.URL = 'https://github.com/jlockhar/GLASS-AI';
            app.GLASSAIGitHubLink.Position = [12 172 170 22];
            app.GLASSAIGitHubLink.Text = 'GLASS-AI GitHub Repository';

            % Create GLASSAIManuscriptLink
            app.GLASSAIManuscriptLink = uihyperlink(app.LinksTab);
            app.GLASSAIManuscriptLink.Position = [12 195 130 22];
            app.GLASSAIManuscriptLink.Text = 'GLASS-AI Manuscript';

            % Create FloresLabLink
            app.FloresLabLink = uihyperlink(app.LinksTab);
            app.FloresLabLink.URL = 'https://www.florescancerlab.org/';
            app.FloresLabLink.Position = [13 128 143 22];
            app.FloresLabLink.Text = 'The Flores Lab @ Moffitt';

            % Create GLASSAIAnnotationEditorGitHubLink
            app.GLASSAIAnnotationEditorGitHubLink = uihyperlink(app.LinksTab);
            app.GLASSAIAnnotationEditorGitHubLink.URL = 'https://github.com/jlockhar/GLASS-AI-annotation-editor';
            app.GLASSAIAnnotationEditorGitHubLink.Position = [12 150 277 22];
            app.GLASSAIAnnotationEditorGitHubLink.Text = 'GLASS-AI Annotation Editor GitHub Repository';

            % Create MoffittLogo
            app.MoffittLogo = uiimage(app.GLASSAIUIFigure);
            app.MoffittLogo.Position = [16 36 181 45];

            % Create StopAnalysisButton
            app.StopAnalysisButton = uibutton(app.GLASSAIUIFigure, 'state');
            app.StopAnalysisButton.Text = 'Stop Analysis';
            app.StopAnalysisButton.BackgroundColor = [1 0 0];
            app.StopAnalysisButton.Position = [588 8 100 23];

            % Create GLASSAILogo
            app.GLASSAILogo = uiimage(app.GLASSAIUIFigure);
            app.GLASSAILogo.Position = [5 531 88 45];

            % Create UpdateAvailableButton
            app.UpdateAvailableButton = uibutton(app.GLASSAIUIFigure, 'push');
            app.UpdateAvailableButton.ButtonPushedFcn = createCallbackFcn(app, @UpdateAvailableButtonPushed, true);
            app.UpdateAvailableButton.BackgroundColor = [0.9412 0.9412 0.9412];
            app.UpdateAvailableButton.FontWeight = 'bold';
            app.UpdateAvailableButton.Enable = 'off';
            app.UpdateAvailableButton.Visible = 'off';
            app.UpdateAvailableButton.Tooltip = {'Click to get the latest version of the GLASS-AI app!'};
            app.UpdateAvailableButton.Position = [606 537 115 23];
            app.UpdateAvailableButton.Text = 'Update Available!';

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