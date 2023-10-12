# GLASS-AI: Grading of Lung Adenocarcinoma with Simultaneous Segmentation by an Artificial Intelligence

Preclinical mouse models of lung adenocarcinoma are invaluable for studying the molecular drivers of tumor formation, progression, and therapeutic resistance. Histological analyses of these preclinical models require significant investments of time and training to ensure accuracy and consistency. Analysis by a clinical pathologist is the gold standard in this approach but may be difficult to obtain due to the cost and availability of their services. As an alternative, we have developed a digital pathology tool to identify, segment, grade, and analyze tumors in mouse models of lung adenocarcinoma. 

GLASS-AI was developed using [MATLAB v2021a](https://www.mathworks.com/products/matlab.html) using the [Image Processing v11.3](https://www.mathworks.com/products/image.html), [Deep Learning v14.2](https://www.mathworks.com/products/deep-learning.html), [Computer Vision 10.0](https://www.mathworks.com/products/computer-vision.html), and [Parallel Computing v7.4](https://www.mathworks.com/products/parallel-computing.html) Toolboxes. MATLAB is not free software, but it does allow us to compile our code to a standalone application/executable for distribution using the [MATLAB Compiler v8.2](https://www.mathworks.com/products/compiler.html). The code within these standalone applications is automatically obfuscated by MATLAB. The uncompiled code used to build these applications is provided in the `GLASS_AI_APP.m` file.

GLASS-AI is based on the [ResNet-18 Network](https://www.mathworks.com/matlabcentral/fileexchange/68261-deep-learning-toolbox-model-for-resnet-18-network). The program accepts hematoxylin and eosin (H&E)-stained images or digital whole slide images and outputs tumor segmentation and grading maps with accompanying spreadsheets. We trained GLASS-AI using 33 H&E-stained whole slide images from 4 different mouse models of lung adenocarcinoma. Our whole slide images were captured using a Leica Aperio ScanScope AT2 Slide Scanner at 20x magnification with a 0.5022 microns/pixel resolution. These slides were divided among and graded by 3 expert raters to produce a training data set with 36,000 annotated image patches. 

![GLASS-AI Network Architecture](https://user-images.githubusercontent.com/43050409/141231551-a65dc8c0-5cd9-4cdc-8488-9b95a634e948.png)
Diagram of the GLASS-AI network architecture. Taken from [Lockhart *et al.*, *npj Prec Onc*, 2023](https://doi.org/10.1038/s41698-023-00419-3) [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.7967749.svg)](https://doi.org/10.5281/zenodo.7967749). 

![GLASS-AI Training Data](https://user-images.githubusercontent.com/43050409/141231991-ebf9389e-086c-4fef-86d9-dfec65c08b4a.png)
Diagram of the data used to train GLASS-AI. Taken from [Lockhart *et al.*, *npj Prec Onc*, 2023](https://doi.org/10.1038/s41698-023-00419-3) [![License: CC BY 4.0](https://licensebuttons.net/l/by/4.0/80x15.png)](https://creativecommons.org/licenses/by/4.0/)

The full training data set has been made available for public use on [Zenodo](doi.org/10.5281/zenodo.7967749) [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.7967749.svg)](https://doi.org/10.5281/zenodo.7967749). 

## Installation
Download and run the latest version of GLASS-AI for your operating system [here](https://moffitt.box.com/s/xii1rsfm93v7vnnokp2m8lx8vprojc1c). Installers are hosted by Moffitt Cancer Center as the files are too large to upload to GitHub.
   - Older versions of GLASS-AI can be found [here](https://moffitt.box.com/s/k0ewz5krbp7tb0arlke7iykoh5lgclwc).

Each installer will also install a copy of the MATLAB Runtime required to run the program without a pre-existing copy of MATLAB (and requisite toolboxes). **You do not need a MATLAB license to run the precompiled versions of GLASS-AI**.

You can also use the `GLASS_AI_APP.m` file in this repository if you have the required MATLAB version and toolboxes (described above). You will also need to download the pre-trained GLASS-AI neural network from [here](https://moffitt.box.com/s/v2vnfhft8j8pu3k8jkptq2qllzyjsrei) as the file is too large to host on GitHub.

A set of demo images is also available as a `.zip` file [here](https://moffitt.box.com/s/3t3uz331nrf20yxsc0a62e034bmimlr6).

*Installation time should be < 5 minutes.*

## Usage
GLASS-AI accepts `SVS` or `TIF` files as input. For the best results, these images should be captured at 20x magnification with a 0.502 microns/pixel resolution, as that is what GLASS-AI was trained on.

The steps for running GLASS-AI are written in the graphic user interface (GUI), but they are as follows:

1. Click the `Browse` button to navigate to the directory containing the images you want to analyze.
   * The software will populate the `File Name` table with any `.svs`, `.tif`, or `.tiff` files it finds in the selected directory.
2. Click the `Output folder` button to navigate to the directory where you would like the output images and spreadsheets to be deposited.
3. Select the file(s) that you want to analyze from the `File Name` table.
	* You can select all files by clicking the 'File Name' bar.
	* You can select multiple contiguous files by selecting the first file and then Shift+Left Clicking the last file.
	* You can select multiple dis-contiguous files by Control + Left Click (Command + Left Click on Mac) and then Shift + Left Clicking on each file.
		* File selection will be changed to using system dialogs in a future version to avoid this issue.
4. Change any analysis options you wish to adjust.
   - Tooltips for each option are shown if you hover your mouse over them.
   - Depending on the memory available on your computer and the input image size, GLASS-AI may automatically enable "Low Memory Mode".
   - The results reported in [Lockhart *et al.*, *npj Prec Onc*, 2023](https://doi.org/10.1038/s41698-023-00419-3) were generated using the default values.
5.  Click `Run` and wait for the results
    - The `Run` button will not be enabled until Steps 1 - 3 are completed (indicated by green lights)
    - The program will provide status updates at each step of the analysis to give you an idea of how far along it is.
    - GLASS-AI will attempt to use your GPU to perform analysis before resorting to using the CPU. Using a GPU is much faster but requires specific [Nvidia hardware and CUDA drivers](https://www.mathworks.com/help/parallel-computing/gpu-support-by-release.html).
      - GPU acceleration is not available on Mac OS.
    - If something goes wrong during analysis, check the end of the log file that GLASS-AI creates in the output folder.  	
    
### Time saver options
Using these options will greatly speed up the analysis, at the expense of some outputs and introducing minor artifacts during smoothing.

* Analysis options
	* Increase analysis block size to the maximum your system can handle.
	* Turn off `Preview output images`.
	* Keep `Low memory mode` off if possible.
	* Uncheck the box for `Assign overall grade to each tumor` <sup>*</sup>.
* GLASS-AI parameters
	* Increase `Patch tissue threshold` to 1 or 2%
	* Set `Smoothing mode` to 'Hamming Window' or 'Median' <sup>**</sup>. 
* Output Image Scaling
	* Set all scales to `1/8`.
	* Uncheck the box for `Segmentation Scaling` to skip making a segmentation map <sup>***</sup>. 

<sup>\*</sup><small>You can calculate this in Excel if needed</small></br>
<sup>\*\*</sup><small>This will interpolate small intermediate-grade regions in tumors with regions of different tumor grades (e.g., Grade 3 between adjacent Grade 2 and Grade 4 regions)</small></br>
<sup>\*\*\*</sup><small>This image is particularly time-intensive to make. Recommend disabling unless you want to look at specific tumors later.</small> 		

## Benchmarking
A set of H&E images of various sizes is available as a `.zip` file [here](https://moffitt.box.com/s/3t3uz331nrf20yxsc0a62e034bmimlr6).

You should try running GLASS-AI on some of these files before using your own data. Not only will this tell you if the installation worked correctly, but it will also allow you to benchmark the performance of GLASS-AI on your computer. Before distribution, GLASS-AI was tested on a few different systems using the default analysis options. The results from these tests are provided below, along with the hardware specifications of each computer.

> Image Name | Image Size  | PC 1 Time | PC 2 Time | Mac 1 Time | Mac 2 Time
> ----------:|------------:|:---------:|:---------:|:----------:|:---------:
> [10patch.tif](https://moffitt.box.com/s/e7mum83f2a4mkhbxzyxg1o8jfickcf6z)| 1112x1112µm | 00:00:25 | 00:00:23 | 00:00:26 | 00:00:32
> [20patch.tif](https://moffitt.box.com/s/r9phbnflb66gf3142uyukidmlgr3skub)| 2224x2224µm | 00:01:18 | 00:00:54 | 00:01:07 | 00:01:20
> [40patch.tif](https://moffitt.box.com/s/3n9k117l2x8c59iizcvt7bpck33b6o9r)| 4448x4448µm | 00:06:26 | 00:02:37 | 00:04:30 | 00:05:25
> [xxsmall.tif](https://moffitt.box.com/s/xxhxraizeser8tglut450n0f14288p28)| 1500x1500µm | 00:00:45 | 00:00:28 | 00:00:57 | 00:00:39
> [xsmall.tif](https://moffitt.box.com/s/ca9qqyxp4e2dd15349k9a5zjyckbbl4p)| 3480x3480µm | 00:03:40 |  00:01:52 | 00:02:36 | 00:03:15
> [small.tif](https://moffitt.box.com/s/59ff8wrdqnpoqfzutt54d72j0g1fkwyj)| 6746x6746µm | 00:14:25 | 00:07:03 | 00:09:39 | 00:12:05
> [medium.tif](https://moffitt.box.com/s/o7p9v65vyuzh35tm1o7imir8p9ifk7sf)| 8987x9726µm | 00:27:44 | 00:13:54 | 00:20:59 | 00:25:23
> [slide.svs](https://moffitt.box.com/s/gx77h1d9zxa7so92lnczae20p66ktiez)|25000x23813µm|           |           | 02:18:48 <br>(low memory mode) | 03:10:43

> Computer Name | Operating System | CPU                         | GPU                                             | Memory              | Storage Type
> :------------:|:----------------:|:---------------------------:|:-----------------------------------------------:|:-------------------:|:------------:
> PC 1          | Windows 10       | 3.8Ghz 8-core AMD Ryzen 7 1700X | AMD Radeon RX 580 GTS 8 GB (not used in testing)| 16 GB | SSD
> PC 2          | Windows 10       | 2.7GHz 28-core Intel Xeon® Gold 6258R | NVIDIA QUADRO RTX 5000 16 GB| 128 GB 1934 MHz | SSD
> Mac 1 (2019 Macbook Pro)        | MacOS 10.15.7    | 2.6GHz 6-core Intel Core i7 | AMD Radeon Pro 5300 M 4 GB (not used in testing)| 16 GB 2667 MHz DDR4 | SSD
> Mac 2 (2013 Mac Pro)       | MacOS 10.14.6    | 3.5GHz 6-core Intel Xeon E5 | 2x AMD FirePro D500 3 GB (not used in testing)  | 16 GB 1866 MHz DDR3 | SSD

## Accessory files/scripts
* **GLASS-AI report generator** 
	* GLASS-AI can help analyze large sets of images, but you'll still need to interpret the results from the output tables and images. I've put together an R file that graphs the results from GLASS-AI in many different ways (e.g., tumor counts, total tumor area, the proportion of lung area occupied by tumors, and intratumor heterogeneity estimates). This file can also perform some basic statistical comparisons between groups.
* **GLASS-AI manual annotation editor** 
	* GLASS-AI is not infallible, but the primary issues arise from unknown/untrained features in the analyzed images. This MATLAB app allows you to incorporate manual annotations created in [QuPath](https://qupath.github.io/) into the annotations produced by GLASS-AI (for example, including 'Grade 5' LUAD tumor areas or excluding non-lung tissue.
* **Merge individual tumor files**
	* These small scripts concatenate all of the files containing the individual tumors from each image into a single `.csv` file (mainly for feeding into old versions of the GLASS-AI report generator; the current version can do this automatically). The bash version is deprecated, as the current version of GLASS-AI outputs `.xlsx` files for each image, which can't be easily interacted with using a command line interface.

## License
**This software is for research use only — not for use in diagnostic procedures.** 

If you use this code for your research, please cite: Lockhart, J.H., Ackerman, H.D., Lee, K., *et al.* Grading of lung adenocarcinomas with simultaneous segmentation by artificial intelligence (GLASS-AI). *npj Precis. Onc.* 7, 68 (2023). [![DOI](https://zenodo.org/badge/DOI/10.1038/s41698-023-00419-3.svg)](https://doi.org/10.1038/s41698-023-00419-3)

Figures reproduced from Lockhart, *et al.*, *npj Prec. Onc.* 2023 are used under Creative Commons Attribution 4.0 International License [![License: CC BY 4.0](https://licensebuttons.net/l/by/4.0/80x15.png)](https://creativecommons.org/licenses/by/4.0/)

This software is provided under an MIT license, reproduced below. [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)


---

**GLASS-AI Standalone App Use License**

Copyright (c) 2021 Moffitt Cancer Center

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

