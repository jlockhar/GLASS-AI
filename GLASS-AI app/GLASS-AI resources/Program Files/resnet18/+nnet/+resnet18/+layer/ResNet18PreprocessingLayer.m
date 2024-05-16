classdef ResNet18PreprocessingLayer < nnet.layer.Layer ...
    & nnet.internal.cnn.layer.CPUFusableLayer ...
    & nnet.internal.cnn.layer.Traceable
    % ResNet18PreprocessingLayer   A layer implementing the preprocessing 
    % for ResNet-18
    %
    %   layer = ResNet18PreprocessingLayer(Name) creates a layer with name
    %   Name that preprocesses the input data by first transforming the data
    %   into a range of [0, 1] and then normalizing the data using the mean 
    %   ([0.485, 0.456, 0.406]) and standard deviation per channel ([0.229, 
    %   0.224, 0.225]).
    
    %   Copyright 2018-2020 The MathWorks, Inc.
    methods
        function layer = ResNet18PreprocessingLayer(name)
            if ~(isstring(name) || ischar(name))
                error('First argument must be a string or character vector.');
            end
            layer.Name = name;
            layer.Description = 'Preprocessing for ResNet-18';
            layer.Type = 'Preprocessing';
        end
        
        function Z = predict(layer, X)
            % Scale 
            Z = X./255;
            % Normalize
            sizeZ = size(Z);
            meanC = zeros(sizeZ(1),sizeZ(2),sizeZ(3));
            stdC = zeros(sizeZ(1),sizeZ(2),sizeZ(3));
            m = [0.485, 0.456, 0.406];
            s = [0.229, 0.224, 0.225];
            meanC(:,:,1) = m(1);
            meanC(:,:,2) = m(2);
            meanC(:,:,3) = m(3);
            stdC(:,:,1) = s(1);
            stdC(:,:,2) = s(2);
            stdC(:,:,3) = s(3);
            Z = (Z - meanC)./stdC; 
        end
        
        function dLdX = backward(layer, X, Z, dLdZ, memory)
            dLdX = (dLdZ./255);
            sizedLdZ = size(dLdZ);
            s = [0.229, 0.224, 0.225];
            stdC = zeros(sizedLdZ(1),sizedLdZ(2),sizedLdZ(3));
            stdC(:,:,1) = s(1);
            stdC(:,:,2) = s(2);
            stdC(:,:,3) = s(3);
            dLdX = (dLdX./stdC);
        end
  
    end

    methods (Hidden)
        function layerArgs = getFusedArguments(~)
            % getFusedArguments  Returned the arguments needed to call the
            % layer in a fused network.
            m = [0.485, 0.456, 0.406];
            s = [0.229, 0.224, 0.225];
            layerArgs = { 'linscale', single([1./(255*s(:)), -m(:)./s(:)]) };
        end

        function tf = isFusable(~, ~, ~)
            % isFusable  Indicates if the layer is fusable in a given network.
            tf = true;
        end
    end
end
