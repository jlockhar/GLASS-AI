function normalizedImage = applystainnormalization(inputImage,inputStainMatrix,inputStainConc,options)
arguments
    inputImage (:,:,3) uint8 %m-by-n RGB image
    inputStainMatrix (3,2) double %3-by-2 matrix of stain absorbances
    inputStainConc (2,1) double %2-by-1 vector of stain concentrations
    options.Io (1,1) double = 245 %intensity of transparent pixels
    options.referenceStainMatrix (3,2) double = [0.551 0.171; 0.863 0.783; 0.339 0.334] %reference stain color matrix
    options.referenceStainConc = [1.9705 ; 1.0308];
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