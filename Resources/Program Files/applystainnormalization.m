function normalizedImage = applystainnormalization(inputImage,stainMatrix,stainConc,Io,HEREF)
            % reference maximum stain concentrations for H&E
            referenceStainConc = [1.9705 ; 1.0308];

            [height, width, channels] = size(inputImage);
            %calculate OD
            normalizedImage = reshape(double(inputImage), [], 3);
            normalizedImage = -log((double(normalizedImage)+1)/Io);

            % determine concentrations of the individual stains
            normalizedImage = normalizedImage';
            normalizedImage = stainMatrix \ normalizedImage;

            % normalize stain concentrations
            normalizedImage = bsxfun(@rdivide, normalizedImage, stainConc);
            normalizedImage = bsxfun(@times, normalizedImage, referenceStainConc);

            % recreate the image using reference mixing matrix
            normalizedImage = Io*exp(-HEREF * normalizedImage);
            normalizedImage = reshape(normalizedImage', height, width, channels);
            normalizedImage = uint8(normalizedImage);
end