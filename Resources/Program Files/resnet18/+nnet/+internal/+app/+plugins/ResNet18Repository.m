classdef ResNet18Repository < nnet.internal.app.plugins.Repository
    % ResNet18Repository  Holds ResNet18 content for Deep Network Designer
    
    %   Copyright 2019 The MathWorks, Inc.
    
    properties
        Layers = {nnet.resnet18.internal.app.layer.ResNet18PreprocessingLayerTemplate()};
    end
end