classdef ResNet18PackageInfo < matlab.addons.internal.SupportPackageInfoBase
    %ResNet18 support package support for MATLAB Compiler.
    
    %   Copyright 2018 The MathWorks, Inc.
    
    methods        
        function obj = ResNet18PackageInfo()
            obj.baseProduct = 'Deep Learning Toolbox';            
            obj.displayName = 'Deep Learning Toolbox Model for ResNet-18 Network';
            obj.name        = 'Deep Learning Toolbox Model for ResNet-18 Network';
           
            sproot = matlabshared.supportpkg.getSupportPackageRoot();
 
            % Define all the data that should be deployed from the support
            % package. This includes the actual language data, which will
            % be archived in the CTF.
            obj.mandatoryIncludeList = {...
					fullfile(sproot, 'toolbox','nnet','supportpackages','resnet18','+nnet') ...
                    fullfile(sproot, 'toolbox','nnet','supportpackages','resnet18','license_addendum') ...
                    fullfile(sproot, 'toolbox','nnet','supportpackages','resnet18','data','resnet18.mat') }; 
            
            % Specify that the resnet18.mat data file should only be
            % suggested in the deploy app if the resnet18.m file is used in
            % the application code. Otherwise, there is no need to mention
            % it.
            obj.conditionalIncludeMap = containers.Map;
            obj.conditionalIncludeMap(fullfile(toolboxdir('nnet'), 'cnn', 'spkgs', 'resnet18.m')) = {};
                            
        end
    end
end
