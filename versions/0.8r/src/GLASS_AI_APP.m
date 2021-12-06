classdef GLASS_AI_APP_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        GLASSAIUIFigure             matlab.ui.Figure
        VersionLabel                matlab.ui.control.Label
        Image                       matlab.ui.control.Image
        OverwriteSlideSummaryInput  matlab.ui.control.CheckBox
        CopyrightLabel              matlab.ui.control.Label
        RUOLabel                    matlab.ui.control.Label
        RunCheckLamp                matlab.ui.control.Lamp
        FileSelectLamp              matlab.ui.control.Lamp
        ToselectmultiplefilesthatarenotinorderonthetableLeftclickLabel  matlab.ui.control.Label
        StatusLabel                 matlab.ui.control.Label
        GLASSAILabel                matlab.ui.control.Label
        Step3Label                  matlab.ui.control.Label
        Step2Label                  matlab.ui.control.Label
        Step1Label                  matlab.ui.control.Label
        OutputFolderLamp            matlab.ui.control.Lamp
        InputFolderLamp             matlab.ui.control.Lamp
        OutputFolderLocationLabel   matlab.ui.control.Label
        OutputFolderButton          matlab.ui.control.Button
        RunButton                   matlab.ui.control.Button
        FileTable                   matlab.ui.control.Table
        TargetFolderLocationLabel   matlab.ui.control.Label
        BrowseButton                matlab.ui.control.Button
        AnalysisOptionsPanel        matlab.ui.container.Panel
        TumorMergeRadiusInput       matlab.ui.control.NumericEditField
        Tumormergeradiusmicronsdefault5EditFieldLabel  matlab.ui.control.Label
        AnalysisBlockSizeInput      matlab.ui.control.Spinner
        Analysisblocksize20100default40Label  matlab.ui.control.Label
        TumorSizeThresholdInput     matlab.ui.control.NumericEditField
        Tumorsizethresholdsqmicrondefault20Label  matlab.ui.control.Label
    end


    properties (Access = private)

        % CONSTANTS %
        GLASSAI_APP_VERSION = 'v0.8r' % Version of GLASS-AI standalone app
        INPUT_PATH  % Path selected using BrowseButton
        OUTPUT_PATH % Path selected using OutputFolderButton
        SELECTED_FILES % List of files selected in FileTable
        SELECTED_PATHS % List of paths selected in FileTable
        GLASS_AI % Network object for machine learning model
        IMAGE_BLOCK_SIZE % Store size of blocks to use for image processing
        TUMOR_SIZE_THRESHOLD % Store size threshold for individual tumor segmentation
        APPEND_SLIDE_SUMMARY %False=append summary outputs of each slide to previous output
        IMAGE_RESOLUTION % Store image microns/pixel resolution
        TUMOR_MERGE_RADIUS % Store value for smoothing radius

        % nCounts and iIterators %
        nImages % Total number of images selected for analysis
        iImage % Current image number (of total) being processed)
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


            %--% Start Analysis Run

            net = app.GLASS_AI;
            app.iImage = 0; %initialize image counter to 0
            for n = 1 : app.nImages

                %--% Load Image

                app.iImage = app.iImage + 1;
                filePath = app.SELECTED_PATHS{n};
                [~,filename,~] = fileparts(app.SELECTED_FILES{n});

                % Read input image
                %_Status Update_%
                app.analysisStepDescription = "Loading image";
                statusupdate(app);
                %%%%%%%%%%%%%%%%%
                [image] = readimage(app,filePath);

                %--% Classify Image

                % Grade the image and get the classifications
                %_Status Update_%
                app.analysisStepDescription = "Analyzing image";
                statusupdate(app);
                %%%%%%%%%%%%%%%%%
                [classifications]= gradeimage(app,image,net);

                % Save the classifications in the output folder in mat format
                %_Status Update_%
                app.analysisStepDescription = "Saving pixel classifications";
                statusupdate(app);
                %%%%%%%%%%%%%%%%%
                classificationOutputFileName=fullfile(app.OUTPUT_PATH, strcat(filename,'_classes.mat'));
                save(classificationOutputFileName,'classifications', '-v7.3');

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
                [G1,G2,G3,G4,AH,Normal,BG,tumorMask] = extractclassmasks(app,classifications);

                % Analyze individual tumors and total tumor areas
                %_Status Update_%
                app.analysisStepDescription = "Analyzing individual tumors";
                statusupdate(app);
                %%%%%%%%%%%%%%%%%
                [individualTumorStat,wholeSlideStat,segmentedTumorMask]=individualtumoranalysis(app,G1,G2,G3,G4,tumorMask,AH,Normal,filename);

                %--% Output Tables

                % Generate summary spreadsheet for all images submitted as
                % input
                %_Status update_%
                app.analysisStepDescription = "Writing to whole slide analysis file";
                statusupdate(app);
                %%%%%%%%%%%%%%%%%
                if app.iImage==1 && app.APPEND_SLIDE_SUMMARY==false
                    writetable(wholeSlideStat,fullfile(app.OUTPUT_PATH,'Whole slide summary.xlsx'));
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

                % Create overlay images of tumor grades and annotations
                %_Status update_%
                app.analysisStepDescription = "Creating overlay images";
                statusupdate(app);
                %%%%%%%%%%%%%%%%%
                [Org_Image,Tumor_Grades,Tumor_annotation] = createoverlayimage(app,image,G1,G2,G3,G4,AH,Normal, ...
                    BG,segmentedTumorMask,individualTumorStat,false);

                % Save output images to OUTPUT_PATH folder
                %_Status Update_%
                app.analysisStepDescription = "Saving overlay images";
                statusupdate(app);
                %%%%%%%%%%%%%%%%%
                imwrite(Tumor_Grades,fullfile(app.OUTPUT_PATH, ...
                    strcat(filename,'_grades.png'))); % save tumor grade colormap to file
                imwrite(Tumor_annotation,fullfile(app.OUTPUT_PATH, ...
                    strcat(filename,'_annotations.png'))); % save tumor segmentation to file

                % Generate output image preview
                %_Status Update_%
                app.analysisStepDescription = "Generating preview images";
                statusupdate(app);
                %%%%%%%%%%%%%%%%
                if size(image,1) > 5000 || size(image,2) > 5000
                    [Org_Image,Tumor_Grades,Tumor_annotation] = createoverlayimage(app,image,G1,G2,G3,G4,AH,Normal, ...
                        BG,segmentedTumorMask,individualTumorStat,true);
                end
                figure, imshow([Org_Image,Tumor_Grades,Tumor_annotation]); % display output image overview



                %--% Cleanup Workspace

                % Clean up before next iteration
                clearvars -except app net;
            end

            %--% Finish Analysis Run

            %_Final Status Update_%
            app.analysisEndTime = toc(app.analysisStartTime);
            app.StatusLabel.Text= sprintf("Analysis completed on %d images. \n Total run time: %s",app.nImages,duration([0,0,app.analysisEndTime]));
            %%%%%%%%%%%%%%%%%%%%%%%
            runcheck(app); %recheck options are valid for next run

        end % End function runglassai

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

        end % End function runcheck

        function  statusupdate(app)
            % Provide status updates to users based on analysis step and images
            % remaining to be processed

            % Get time elapsed from start of analysis
            app.analysisRunTime = toc(app.analysisStartTime);

            % Display update in StatusLabel
            app.StatusLabel.Text=sprintf("%s for %s (image %d of %d)\n Time Elapsed: %s", app.analysisStepDescription, app.SELECTED_FILES{app.iImage}, app.iImage, app.nImages, duration([0,0,app.analysisRunTime]));
            pause(0.1); %refresh app.StatusLabel text before continuing

        end % End function statusupdate

        function [image] = readimage(app,filePath)
            %   Reads input image
            %   Supported formats: tif , svs

            % get image extension
            [~,~,ext] = fileparts(filePath);


            if strcmpi(ext,'.tif')
                % Read tif file. Assumed to be in 20x magnification
                % with a 0.502 microns/pixel resolution
                image=imread(filePath);
                app.IMAGE_RESOLUTION = 0.502;
            elseif strcmpi(ext,'.svs')
                % read svs file.
                [image]=readsvsfile(app,filePath);
            else
                error('File format is not supported!!');
            end

        end % End function readimage

        function [image]=readsvsfile(app,filePath)
            % reads and returns the largest 20x image from the svs file

            [imageInfo] = getimageinfo(app,filePath);

            % find the 20x images
            pos=find(imageInfo(:,5)==20);

            if ~isempty(pos)
                % find the largest 20x image
                idx=pos(end); % array is sorted by image size already
                image=imread(filePath,'Index',imageInfo(idx,3));
            else
                error('Could not find 20x images in the svs file!');
            end

        end % End function readsvsfile

        function [imageInfo] = getimageinfo(app,path)
            % Read file header and return images sizes and resolution
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

        end % End function getimageinfo

        function [classifications] = gradeimage(app,image,net)
            %   Breaks the images into small patches and classify them (this is for
            %   memory issues).
            %   Returns a matrix of classification for each pixel in the image

            [X,Y,~]=size(image);

            % define analyis block size
            bigBlockSize=224*app.IMAGE_BLOCK_SIZE;
            if(bigBlockSize>X || bigBlockSize>Y)
                bigBlockSize=min(X,Y);
            end

            % Calculate the number of analysis blocks
            nBigBlocksX = ceil(double(X)/bigBlockSize);
            nBigBlocksY = ceil(double(Y)/bigBlockSize);
            app.nBigBlocks = nBigBlocksY * nBigBlocksY; % capture total number of patches for status updates
            app.iBigBlock = 0; % initialize analysis block counter to 0 for current image

            % Intialize classification matrix to save final classes
            classifications = zeros(X,Y, 'uint8');

            % Iterate over analysis blocks and analyze each block
            for x=1:nBigBlocksX
                for y=1:nBigBlocksY
                    app.iBigBlock = app.iBigBlock + 1; %increment image patch counter for curent image

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

                    % Get the current block for analysis
                    Image0=image(X1:X2,Y1:Y2,:);


                    % Creat patches from block
                    Image1 = blockedImage(Image0);
                    patchSize = [224,224,3];
                    bls = selectBlockLocations(Image1,'BlockSize',patchSize(1:2),...
                        'InclusionThreshold',0,'Levels',1);

                    % Remove existing TempFolder
                    if exist('TempFolder', 'dir'), rmdir('TempFolder', 's'); end

                    %try to use GPU, otherwise use CPU for classification
                    %_Status Update_%
                    if  canUseGPU == 1
                        app.analysisStepDescription = sprintf("Analyzing patch %d of %d using GPU", app.iBigBlock, app.nBigBlocks);
                        statusupdate(app);
                    else
                        app.analysisStepDescription = sprintf("Analyzing patch %d of %d using CPU", app.iBigBlock, app.nBigBlocks);
                        statusupdate(app);
                    end
                    %%%%%%%%%%%%%%%%%%
                    
                    try
                        [scores1] = apply(Image1,@(x)classifypatches(app,x, net), ...
                            'Level',1,'BlockLocationSet',bls,'UseParallel',canUseGPU,'OutputLocation','TempFolder');
                    catch
                        if exist('TempFolder', 'dir'), rmdir('TempFolder', 's'); end
                        [scores1] = apply(Image1,@(x)classifypatches(app,x, net), ...
                            'Level',1,'BlockLocationSet',bls,'OutputLocation','TempFolder');
                    end
                  
                    scores = gather(scores1);

                    % clean temp folder
                    if exist('TempFolder', 'dir'), rmdir('TempFolder', 's'); end

                    % save patch classifications to the classification matrix
                    [~, Inds]=(max(scores,[],3));
                    Inds=uint8(Inds);
                    [Inds] = smoothclasses(app,Inds);
                    classifications(X1:X2,Y1:Y2)=Inds();
                end
            end
        end % End function gradeimage

        function [scores] = classifypatches(~,Image,net)
            % Predict tumor grades in image patch using GLASS-AI.
            
            I=Image.Data;
            [X,Y,~]=size(I);
            % If image patch is too small, pad bottom and right sides with
            % zeros
            X_pad=224-X; Y_pad=224-Y;
            I = padarray(I,[X_pad, Y_pad, 0],255,'post');
            
            % Predict grades
            [~,~,scores] = semanticseg(I, net);
            scores =scores(1:X,1:Y,:);
            
        end % End function classifypatches

        function [G1,G2,G3,G4,AH,Normal,BG,tumorMask] = extractclassmasks(~,classes)
            % Get masks of each class and combined tumor areas
            
            % Mask for each class
            G4=classes==4; % grade 4 tumor
            G3=classes==3; % grade 3 tumor
            G2=classes==2; % grade 2 tumor
            G1=classes==1; % grade 1 tumor
            AH=classes==6; % normal airways
            Normal=classes==5; % normal aleveoli
            BG=classes==7; % background/void
             
            % Combined mask for tumor areas
            tumorMask=G1|G2|G3|G4;
            
        end % End function extractclassmasks


        function [smoothedClasses] = smoothclasses(~,classes)
            % Applies a smoothing kernel across predicted classes to
            % minimize artifcats from patch edges.
            
            smoothedClasses = medfilt2(classes,[200 200]);
            smoothedClasses = round(smoothedClasses);

            % restore original 'background' pixels
            M=classes==7;
            smoothedClasses(M)=7;
            
            % restore original 'normal alveoli' pixels
            M=classes==5;
            smoothedClasses(M)=5;
            
        end % End function smoothclasses




        function [IndividualTumorStat,wholeSlideStat,segmentedTumorMask]=individualtumoranalysis(app,G1,G2,G3,G4,tumorMask,AH,Normal,filename)
            % Performs smoothing, merging, segmentation and filtering
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

            CC = bwconncomp(segmentedTumorMask,8); % Segment individual tumors
            s = regionprops(CC,'Centroid'); % Get centroid coordinates for tumor labels
            tumorCentroids = cat(1,s.Centroid); % Convert centroid coordinates to [x y] matrix
            nTumors=length(tumorCentroids(:,1)); % Get segmented tumor count

            %% Define tables to save stats
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
            end


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

        function [image,Grades,annotatedTumorMask] = createoverlayimage(~,image,G1,G2,G3,G4,AH,Normal,BG,tumorMask,IndividualTumorStat,doImageResize)
            % Generate images of tumor grading maps and tumor
            % segmentation maps. When doImageResize is set to true the
            % resulting output images will be resized to 5000x5000 px.

            [X,Y]=size(G1);

            % get tumor centroids
            IDs=IndividualTumorStat.tumor_id;
            Centroid_x=IndividualTumorStat.centroid_x;
            Centroid_y=IndividualTumorStat.centroid_y;

            % if image is too large resize it (this is just for display)

            if doImageResize == true
                resizeX = min(X,5000);
                resizeY = min(Y,5000);
                G1=imresize(G1,[resizeX,resizeY],'nearest');
                G2=imresize(G2,[resizeX,resizeY],'nearest');
                G3=imresize(G3,[resizeX,resizeY],'nearest');
                G4=imresize(G4,[resizeX,resizeY],'nearest');
                AH=imresize(AH,[resizeX,resizeY],'nearest');
                Normal=imresize(Normal,[resizeX,resizeY],'nearest');
                BG=imresize(BG,[resizeX,resizeY],'nearest');
                tumorMask=imresize(tumorMask,[resizeX,resizeY],'nearest');
                image=imresize(image,[resizeX,resizeY],'nearest');
                Centroid_x=Centroid_x.*(resizeX/X);
                Centroid_y=Centroid_y.*(resizeY/Y);
            end

            %--% Make tumor grade map

            % Initialize map to zeroes
            [XX,YY]=size(G1);
            ch1=zeros(XX,YY, 'uint8');
            ch2=zeros(XX,YY, 'uint8');
            ch3=zeros(XX,YY, 'uint8');

            % Grade 1 = Green
            Inds=(find(G1(:)));
            ch2(Inds)=255;

            %Grade 2 = blue
            Inds=(find(G2(:)));
            ch3(Inds)=255;

            % Grade 3 = yellow
            Inds=(find(G3(:)));
            ch1(Inds)=255;
            ch2(Inds)=255;

            % Grade 4 = red
            Inds=(find(G4(:)));
            ch1(Inds)=255;

            % AH = megneta
            Inds=(find(AH(:)));
            ch1(Inds)=255;
            ch3(Inds)=255;

            % Normal = Cyan
            Inds=(find(Normal(:)));
            ch2(Inds)=255;
            ch3(Inds)=255;

            % Background = white
            Inds=(find(BG(:)));
            ch2(Inds)=255;
            ch3(Inds)=255;
            ch1(Inds)=255;

            % Compile grade map to image matrix
            Grades=cat(3,ch1,ch2,ch3);

            %--% Make tumor segmentation map

            % Intialize map to H&E image
            ch1=image(:,:,1);
            ch2=image(:,:,2);
            ch3=image(:,:,3);

            % Find tumors
            Inds=(find(tumorMask));
            % remove blue and green; leave red values intact
            ch2(Inds)=0;
            ch3(tumorMask)=0;
            annotatedTumorMask=cat(3,ch1,ch2,ch3);

            % Close holes in tumor mask
            tumorMask=imfill(tumorMask,'holes');

            % Add black outline to segmented tumors
            Boundry=bwperim(tumorMask);
            Boundry=imdilate(Boundry,strel('disk',3));
            annotatedTumorMask=imoverlay(annotatedTumorMask,Boundry,'b');

            % Add tumor ID labels on the image
            for iTumor=1:size(Centroid_x,1)
                position = [Centroid_x(iTumor) Centroid_y(iTumor)];
                box_color = {'yellow'};
                text_str= ['ID: ' num2str(IDs(iTumor), '%d')];
                annotatedTumorMask = insertText(annotatedTumorMask,position,text_str,'FontSize',40,'BoxColor',...
                    box_color,'BoxOpacity',0.4,'TextColor','black');
            end

        end % End function:createoverlayimage


    end % End methods: functions



    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            pause(.5); %let window load
            app.StatusLabel.Text="Loading GLASS-AI neural network";
            pause(.5);
            app.StatusLabel.Text="Loading GLASS-AI neural network.";
            pause(.5);
            app.StatusLabel.Text="Loading GLASS-AI neural network..";
            pause(.5);
            app.StatusLabel.Text="Loading GLASS-AI neural network...";

            if isdeployed
                if ismac % default ctf is within app contents
                    cd(ctfroot); %navigate to proper directory to load GLASS-AI
                    cd('..');
                    cd('..');
                    cd('..');
                    cd('..');
                    app.GLASS_AI = load(fullfile('Net','GLASS_AI.mat'));
                    app.GLASS_AI = app.GLASS_AI.net; %get DAGnet from struct
                end
            else
                app.GLASS_AI = load(fullfile('Net','GLASS_AI.mat'));
                app.GLASS_AI = app.GLASS_AI.net; % get DAGnet from struct
            end

            app.StatusLabel.Text="GLASS-AI loaded. Awaiting input/selection.";
        end

        % Button pushed function: BrowseButton
        function BrowseButtonPushed(app, event)
            app.INPUT_PATH=uigetdir;        % Get target directory from user
            app.TargetFolderLocationLabel.Text=app.INPUT_PATH;  % Sets the label text to be the selected path
            app.GLASSAIUIFigure.Visible = 'off';     % Refresh figure to update TargetFolderLocationLabel
            app.GLASSAIUIFigure.Visible = 'on';

            files=[dir(fullfile(app.INPUT_PATH,"*.tif")) % Find valid image files in target directory
                dir(fullfile(app.INPUT_PATH,"*.tiff"))
                dir(fullfile(app.INPUT_PATH,"*.svs"))];
            fileNames={files(:).name}';              % Gets the name of the files/folders of the contents and stores them appropriately in a cell array
            app.FileTable.Data = fileNames;

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
            for n = 1:length(app.SELECTED_FILES) % Get full file paths before handing off
                app.SELECTED_PATHS = cellfun(@(x) fullfile(app.INPUT_PATH,x), app.SELECTED_FILES, 'Uniform',0);
            end

            % Set app variables
            app.nImages = length(app.SELECTED_PATHS);
            app.analysisStartTime = tic;
            app.RunButton.Enable=false;
            app.APPEND_SLIDE_SUMMARY = app.OverwriteSlideSummaryInput.Value;
            app.IMAGE_BLOCK_SIZE = app.AnalysisBlockSizeInput.Value;
            app.TUMOR_SIZE_THRESHOLD = app.TumorSizeThresholdInput.Value;
            app.TUMOR_MERGE_RADIUS = app.TumorMergeRadiusInput.Value;

            % Begin analysis
            runglassai(app);
        end

        % Button pushed function: OutputFolderButton
        function OutputFolderButtonPushed(app, event)
            app.OUTPUT_PATH = uigetdir; % Get output path from user
            app.OutputFolderLocationLabel.Text=app.OUTPUT_PATH;  % Display selected output path
            app.GLASSAIUIFigure.Visible = 'off';     % Refresh figure to update OutputFolderLocationLabel
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
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create GLASSAIUIFigure and hide until all components are created
            app.GLASSAIUIFigure = uifigure('Visible', 'off');
            app.GLASSAIUIFigure.Position = [100 100 734 551];
            app.GLASSAIUIFigure.Name = 'GLASS-AI';

            % Create AnalysisOptionsPanel
            app.AnalysisOptionsPanel = uipanel(app.GLASSAIUIFigure);
            app.AnalysisOptionsPanel.Title = 'Analysis Options';
            app.AnalysisOptionsPanel.BackgroundColor = [0.902 0.902 0.902];
            app.AnalysisOptionsPanel.FontAngle = 'italic';
            app.AnalysisOptionsPanel.FontWeight = 'bold';
            app.AnalysisOptionsPanel.Position = [6 78 203 198];

            % Create Tumorsizethresholdsqmicrondefault20Label
            app.Tumorsizethresholdsqmicrondefault20Label = uilabel(app.AnalysisOptionsPanel);
            app.Tumorsizethresholdsqmicrondefault20Label.HorizontalAlignment = 'right';
            app.Tumorsizethresholdsqmicrondefault20Label.Tooltip = {'Tumor with areas smaller than this size will be excluded from analyses and will not be shown on the tumor segmentation map.'};
            app.Tumorsizethresholdsqmicrondefault20Label.Position = [-2 55 128 28];
            app.Tumorsizethresholdsqmicrondefault20Label.Text = {'Tumor size threshold'; '(sq. micron; default 20)'};

            % Create TumorSizeThresholdInput
            app.TumorSizeThresholdInput = uieditfield(app.AnalysisOptionsPanel, 'numeric');
            app.TumorSizeThresholdInput.Limits = [0 Inf];
            app.TumorSizeThresholdInput.RoundFractionalValues = 'on';
            app.TumorSizeThresholdInput.ValueDisplayFormat = '%.0f';
            app.TumorSizeThresholdInput.Tooltip = {'Tumor with areas smaller than this size will be excluded from analyses and will not be shown on the tumor segmentation map.'};
            app.TumorSizeThresholdInput.Position = [129 58 71 22];
            app.TumorSizeThresholdInput.Value = 20;

            % Create Analysisblocksize20100default40Label
            app.Analysisblocksize20100default40Label = uilabel(app.AnalysisOptionsPanel);
            app.Analysisblocksize20100default40Label.HorizontalAlignment = 'right';
            app.Analysisblocksize20100default40Label.Tooltip = {'Set number of image patches to analyze per batch. Lower values will require less RAM, but will take longer to process.'};
            app.Analysisblocksize20100default40Label.Position = [-3 98 118 28];
            app.Analysisblocksize20100default40Label.Text = {'Analysis block size'; '(20 – 100; default 40)'};

            % Create AnalysisBlockSizeInput
            app.AnalysisBlockSizeInput = uispinner(app.AnalysisOptionsPanel);
            app.AnalysisBlockSizeInput.Limits = [20 100];
            app.AnalysisBlockSizeInput.RoundFractionalValues = 'on';
            app.AnalysisBlockSizeInput.ValueDisplayFormat = '%.0f';
            app.AnalysisBlockSizeInput.Tooltip = {'Set number (NxN) of image patches to analyze per batch. Lower values will require less RAM, but will take longer to process.'};
            app.AnalysisBlockSizeInput.Position = [122 101 77 22];
            app.AnalysisBlockSizeInput.Value = 40;

            % Create Tumormergeradiusmicronsdefault5EditFieldLabel
            app.Tumormergeradiusmicronsdefault5EditFieldLabel = uilabel(app.AnalysisOptionsPanel);
            app.Tumormergeradiusmicronsdefault5EditFieldLabel.HorizontalAlignment = 'right';
            app.Tumormergeradiusmicronsdefault5EditFieldLabel.Tooltip = {'Tumors that are within this distance of each other will be combined during analysis.'};
            app.Tumormergeradiusmicronsdefault5EditFieldLabel.Position = [5 12 116 28];
            app.Tumormergeradiusmicronsdefault5EditFieldLabel.Text = {'Tumor merge radius '; '(microns; default 5)'};

            % Create TumorMergeRadiusInput
            app.TumorMergeRadiusInput = uieditfield(app.AnalysisOptionsPanel, 'numeric');
            app.TumorMergeRadiusInput.Limits = [0 Inf];
            app.TumorMergeRadiusInput.Tooltip = {'Tumors that are within this distance of each other will be combined during analysis.'};
            app.TumorMergeRadiusInput.Position = [129 15 71 22];
            app.TumorMergeRadiusInput.Value = 5;

            % Create BrowseButton
            app.BrowseButton = uibutton(app.GLASSAIUIFigure, 'push');
            app.BrowseButton.ButtonPushedFcn = createCallbackFcn(app, @BrowseButtonPushed, true);
            app.BrowseButton.Position = [216 467 100 24];
            app.BrowseButton.Text = 'Browse';

            % Create TargetFolderLocationLabel
            app.TargetFolderLocationLabel = uilabel(app.GLASSAIUIFigure);
            app.TargetFolderLocationLabel.BackgroundColor = [1 1 1];
            app.TargetFolderLocationLabel.Position = [329 467 361 24];
            app.TargetFolderLocationLabel.Text = 'Target Folder Location';

            % Create FileTable
            app.FileTable = uitable(app.GLASSAIUIFigure);
            app.FileTable.ColumnName = {'File Name'};
            app.FileTable.RowName = {};
            app.FileTable.CellSelectionCallback = createCallbackFcn(app, @FileTableCellSelection, true);
            app.FileTable.Position = [216 78 474 341];

            % Create RunButton
            app.RunButton = uibutton(app.GLASSAIUIFigure, 'push');
            app.RunButton.ButtonPushedFcn = createCallbackFcn(app, @RunButtonPushed, true);
            app.RunButton.FontSize = 18;
            app.RunButton.FontWeight = 'bold';
            app.RunButton.Enable = 'off';
            app.RunButton.Position = [590 36 100 32];
            app.RunButton.Text = 'Run';

            % Create OutputFolderButton
            app.OutputFolderButton = uibutton(app.GLASSAIUIFigure, 'push');
            app.OutputFolderButton.ButtonPushedFcn = createCallbackFcn(app, @OutputFolderButtonPushed, true);
            app.OutputFolderButton.Position = [216 430 100 24];
            app.OutputFolderButton.Text = 'Output folder';

            % Create OutputFolderLocationLabel
            app.OutputFolderLocationLabel = uilabel(app.GLASSAIUIFigure);
            app.OutputFolderLocationLabel.BackgroundColor = [1 1 1];
            app.OutputFolderLocationLabel.Position = [329 430 361 24];
            app.OutputFolderLocationLabel.Text = 'Output Folder Location';

            % Create InputFolderLamp
            app.InputFolderLamp = uilamp(app.GLASSAIUIFigure);
            app.InputFolderLamp.Tooltip = {'Red: Select input folder with valid image files (.tif, .tiff, or .svs)'};
            app.InputFolderLamp.Position = [697 469 20 20];
            app.InputFolderLamp.Color = [1 0 0];

            % Create OutputFolderLamp
            app.OutputFolderLamp = uilamp(app.GLASSAIUIFigure);
            app.OutputFolderLamp.Tooltip = {'Red: Select valid output folder'};
            app.OutputFolderLamp.Position = [697 432 20 20];
            app.OutputFolderLamp.Color = [1 0 0];

            % Create Step1Label
            app.Step1Label = uilabel(app.GLASSAIUIFigure);
            app.Step1Label.FontWeight = 'bold';
            app.Step1Label.Position = [10 468 150 22];
            app.Step1Label.Text = 'Step1: Select input folder';

            % Create Step2Label
            app.Step2Label = uilabel(app.GLASSAIUIFigure);
            app.Step2Label.FontWeight = 'bold';
            app.Step2Label.Position = [10 431 162 22];
            app.Step2Label.Text = 'Step 2: Select output folder';

            % Create Step3Label
            app.Step3Label = uilabel(app.GLASSAIUIFigure);
            app.Step3Label.FontWeight = 'bold';
            app.Step3Label.Position = [10 389 176 30];
            app.Step3Label.Text = {'Step 3: Select files to analyze '; 'with GLASS-AI'};

            % Create GLASSAILabel
            app.GLASSAILabel = uilabel(app.GLASSAIUIFigure);
            app.GLASSAILabel.HorizontalAlignment = 'center';
            app.GLASSAILabel.WordWrap = 'on';
            app.GLASSAILabel.FontSize = 20;
            app.GLASSAILabel.FontWeight = 'bold';
            app.GLASSAILabel.Position = [118 498 556 50];
            app.GLASSAILabel.Text = 'GLASS-AI: Grading of Lung Adenocarcinoma with Simultaneous Segmentation by an Artificial Intelligence';

            % Create StatusLabel
            app.StatusLabel = uilabel(app.GLASSAIUIFigure);
            app.StatusLabel.BackgroundColor = [1 1 1];
            app.StatusLabel.VerticalAlignment = 'top';
            app.StatusLabel.WordWrap = 'on';
            app.StatusLabel.Position = [216 22 361 45];
            app.StatusLabel.Text = '';

            % Create ToselectmultiplefilesthatarenotinorderonthetableLeftclickLabel
            app.ToselectmultiplefilesthatarenotinorderonthetableLeftclickLabel = uilabel(app.GLASSAIUIFigure);
            app.ToselectmultiplefilesthatarenotinorderonthetableLeftclickLabel.Position = [10 296 199 76];
            app.ToselectmultiplefilesthatarenotinorderonthetableLeftclickLabel.Text = {'To select multiple files that are'; 'not in order on the table:'; ''; 'Control+Left Click (will outline file),'; ' then Shift+ Left Click on target file.'; ''};

            % Create FileSelectLamp
            app.FileSelectLamp = uilamp(app.GLASSAIUIFigure);
            app.FileSelectLamp.Position = [697 394 20 20];
            app.FileSelectLamp.Color = [1 0 0];

            % Create RunCheckLamp
            app.RunCheckLamp = uilamp(app.GLASSAIUIFigure);
            app.RunCheckLamp.Position = [697 42 20 20];
            app.RunCheckLamp.Color = [1 0 0];

            % Create RUOLabel
            app.RUOLabel = uilabel(app.GLASSAIUIFigure);
            app.RUOLabel.HorizontalAlignment = 'center';
            app.RUOLabel.FontWeight = 'bold';
            app.RUOLabel.Position = [216 1 352 22];
            app.RUOLabel.Text = 'For reseach use only— not for use in diagnostic procedures';

            % Create CopyrightLabel
            app.CopyrightLabel = uilabel(app.GLASSAIUIFigure);
            app.CopyrightLabel.Position = [22 1 167 22];
            app.CopyrightLabel.Text = '(c) Moffitt Cancer Center 2021';

            % Create OverwriteSlideSummaryInput
            app.OverwriteSlideSummaryInput = uicheckbox(app.GLASSAIUIFigure);
            app.OverwriteSlideSummaryInput.Tooltip = {'When checked, GLASS-AI will append any new whole slide summaries onto an exisiting "Whole slide summary.xlsx" file in the output folder.'; ''; 'Otherwise, GLASS-AI will overwrite any existing "Whole slide summary.xlsx" file with the results from the next analysis run.'};
            app.OverwriteSlideSummaryInput.Text = {'Append to existing image'; 'summary data'};
            app.OverwriteSlideSummaryInput.Position = [17 217 159 28];
            app.OverwriteSlideSummaryInput.Value = true;

            % Create Image
            app.Image = uiimage(app.GLASSAIUIFigure);
            app.Image.Tooltip = {'To contribute to the prevention and cure of cancer'};
            app.Image.Position = [20 25 170 42];
            app.Image.ImageSource = 'moffitt.png';

            % Create VersionLabel
            app.VersionLabel = uilabel(app.GLASSAIUIFigure);
            app.VersionLabel.Enable = 'off';
            app.VersionLabel.Position = [667 527 68 22];
            app.VersionLabel.Text = 'version 0.8r';

            % Show the figure after all components are created
            app.GLASSAIUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = GLASS_AI_APP_exported

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