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
                        "DefaultOption","Yes",...
                        "CancelOption","No");
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
                        [fullFilePath, applyToAllFiles] = promptreplacexistingfile(app,fullFilePath,applyToAllFiles,oldEnd,newEnd);
                    case "No"
                        fprintf("%s - %s %s\n", string(datetime),"User declined overwrite of existing",fullFilePath)
                        %append new to the end of the file name before .ext
                        fullFilePath = replace(fullFilePath,oldEnd,newEnd);
                        fprintf("%s - %s %s\n", string(datetime),"Changed file name to",fullFilePath)
                        [fullFilePath, applyToAllFiles] = promptreplacexistingfile(app,fullFilePath,applyToAllFiles,oldEnd,newEnd);
                end %switch replaceFile

            end % if isfile(fullFilePath)
        end % function promptreplaceexistingfile