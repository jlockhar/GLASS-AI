function [stainMatrix, stainConc] = estimatestaining(inputImage,options)
arguments
inputImage (:,:,3) uint8 % m-by-n RGB image
options.NORMALIZE_ALPHA (1,1) uint8  = 1 %percentile of pixels to ignore
options.NORMALIZE_BETA (1,1) double = 0.1 %OD minimum for normalization
options.NORMALIZE_IO (1,1) uint8 = 240 %background light intensity
options.IGNORE_PURE_COLORS (1,1) logical = true %consider pure color pixels as transparent
end
            if options.IGNORE_PURE_COLORS
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
            OD = -log((double(inputImage)+1)/double(options.NORMALIZE_IO));

            % remove transparent pixels from vector calculation
            ODHat = OD(~any(OD < options.NORMALIZE_BETA, 2), :);

            [V, ~] = eig(cov(ODHat));
            % project on the plane spanned by the eigenvectors corresponding to the two
            % largest eigenvalues
            thetaHat = ODHat*V(:,2:3);


            % find the min and max vectors and project back to OD space
            phi = atan2(thetaHat(:,2), thetaHat(:,1));


            minPhi = prctile(phi, options.NORMALIZE_ALPHA);
            maxPhi = prctile(phi, 100-options.NORMALIZE_ALPHA);


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