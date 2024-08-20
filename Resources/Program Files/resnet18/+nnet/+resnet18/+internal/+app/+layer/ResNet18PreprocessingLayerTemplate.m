classdef ResNet18PreprocessingLayerTemplate < nnet.internal.app.plugins.LayerTemplate
    % ResNet18PreprocessingLayerTemplate  App support for ResNet18PreprocessingLayer
    
    %   Copyright 2019 The MathWorks, Inc.
    
    properties
        ConstructorName = "nnet.resnet18.layer.ResNet18PreprocessingLayer"
        RequiredArguments = struct('Name', 'preprocessing');
        OptionalArguments = [];
    end
    
    methods
        function this = ResNet18PreprocessingLayerTemplate()
            this.AppearsInPalette = false;
            this.Group = nnet.internal.app.plugins.layer.LayerGroup.Other;
            this.LayerDisplayType = "ResNet18PreprocessingLayer";
        end
    end
end