# GLASS-AI: Grading of Lung Adenocarcinoma with Simultaneous Segmentation by an Artificial Intelligence

>Analyzing histological images is time consuming process. 🐌
>
>Tumor grading is determined using an algorithm. 📋
>
>Sounds like a job for a computer. 🤖

Histological grading of lung adenocarcnioma (LUAD) provides a ordinal measure of tumor progression, and thereby disease prognosis. While these systmes are routinely used by patholgists in a clincical setting, they are less commonly employed in the analysis of preclincal models of cancer. Researchers can be trained to grade their samples by others with sufficient expertise, but the gold standard for such analysis is still review by a clinical pathologist. However, reseachers may not have access to a collaborative pathologist, and clinicians may not be (readily) available to work on preclinical samples. A tool that can perform accurate, reproducible analysis of tumor grades in preclinical models would enhance and accelerate this imporant level of research. To that end we developed GLASS-AI to provide a simple means for anyone to automatically analyze their LUAD slides.

GLASS-AI was developed using [MATLAB v2021a](https://www.mathworks.com/products/matlab.html) using the [Image Processing v11.3](https://www.mathworks.com/products/image.html), [Deep Learning v14.2](https://www.mathworks.com/products/deep-learning.html), [Computer Vision 10.0](https://www.mathworks.com/products/computer-vision.html), and [Parallel Computing v7.4](https://www.mathworks.com/products/parallel-computing.html) Toolboxes. MATLAB is not a free software, but it does allow us to compile our code to standalone application/executable for distribution using the [MATLAB Compiler v8.2](https://www.mathworks.com/products/compiler.html). The code within these standalone applications is automatically obfuscated by MATLAB. The uncompiled code used to build these applications is provided in the `/src` folder with each version of GLASS-AI.

GLASS-AI is based on the [ResNet-18 Network](https://www.mathworks.com/matlabcentral/fileexchange/68261-deep-learning-toolbox-model-for-resnet-18-network). The program accepts hematoxylin and eosin (H&E)-stained images or digitial whole slide images and outputs tumor semgentation and grading maps with accompanying spreadsheets. We trained GLASS-AI using 36 H&E-stained whole slide images from 4 different mouse models of lung adenocarcinoma. Our whole slide images were captured using a Leica Aperio ScanScope AT2 Slide Scanner at 20x magnification with a resolution of 0.502 microns/pixel. These slides were then graded 3 expert raters to produce a training data set with 36,000 annotated image patches. 

![GLASS-AI Network Architecture](https://user-images.githubusercontent.com/43050409/141231551-a65dc8c0-5cd9-4cdc-8488-9b95a634e948.png)
Layout of the GLASS-AI network.

![GLASS-AI Training Data](https://user-images.githubusercontent.com/43050409/141231991-ebf9389e-086c-4fef-86d9-dfec65c08b4a.png)
Training data use for GLASS-AI.

## Installation
Download and run the installer for your operating system [here](http://timex.moffitt.org/GLASS-AI/) or `Right click` > `Save Link As...` on the link your operating system here: [Mac](http://timex.moffitt.org/GLASS-AI/Installers/GLASS-AI_installer_Mac.app.zip)  |  [Windows](http://timex.moffitt.org/GLASS-AI/Installers/GLASS_AI_Installer_Win.zip). Installers are hosted on by Moffitt Cancer Center due to their large file size. 

Each installer will also install a copy of the MATLAB Runtime that is required to run the program without a pre-existing copy of MATLAB (and requisite toolboxes). 

A set of demo images is also included in the installers (see **Benchmarking** section below). Should you need to redownload the images, they are available as a `.zip` file [here](http://timex.moffitt.org/GLASS-AI/Resources/Demo_images/GLASS-AI_DemoImages.zip).

Installation time should be approximately 5 minutes.

## Usage
GLASS-AI accepts SVS or TIF files as input. These images should be captured at 20x magnfication with a 0.502 microns/pixel resolution for best results.
The steps for successfully running GLASS-AI are written in the graphic user interface (GUI), but they are as follows:
1. Click `Browse` button to navigate to directory containing the images you want to analyze.
   - The software will populate the `File Name` table with any `.svs`, `.tif`, or `.tiff` files it finds in the selected directory.
2. Click `Output folder` button to navigate to directory where you would like the output images and spreadsheets to be deposited.
3. Select file(s) that you want to analyze from the `File Name` table.
4. Change any analysis options you wish to adjust.
   - The results reported in [Lockhart *et al.* 2022](add a link when paper is published) were generated using the values set by default.
   - `Analysis block size` determines how many image patches should be analyzed at once. Adjusted downward if your computer has a smaller amount of memory.
      - A series of image files with various sizes is included in `\Demo data` and can be used to benchmark performance on your machine.
   - `Tumor size threshold` will filter out smaller tumors from the spreadsheet and tumor segmentation map.
   - `Tumor merge radius` will connect tumors within the set edge-to-edge distance into a single tumor.
6.  Click `Run` and wait for results
    - The `Run` button will not be enabled until Steps 1 - 3 are completed (indicated by green lights)
    - The program will provide status updates at each step of the analysis to give you an idea of how far along it is.
    - GLASS-Ai will attempt to use your GPU to perform analysis before resorting to using the CPU. Using a GPU is much faster, but requires specific [Nvidia hardware and CUDA drivers](https://www.mathworks.com/help/parallel-computing/gpu-support-by-release.html).
      - GPU acceleration is not available on Mac OS. 
    - The "Analyzing Images" step is by far the longest. The status will update for each analysis block. A dialog window will show you the progress on the current block with an estimated time to completion.
    - An preview of the original H&E image, output tumor grade map, and output tumor segmentaiton map will be displayed after each image is analyzed.

## Benchmarking
A set of H&E images of various sizes are included in each distribution of GLASS-AI in the `Demo Data` folder. Should you need to redownload the images, they are available as a `.zip` file [here](http://timex.moffitt.org/GLASS-AI/Resources/Demo_images/GLASS-AI_DemoImages.zip).

It is recommended that you try running GLASS-AI on some of these files before using your own data. Not only will this tell you if the installation worked correctly, but it will also allow you to benchmark the performance of GLASS-AI on your computer. Prior to distirbution GLASS-AI was tested on a few different systems using the default analysis options, and the results from these tests are provided below along with the hardware specifications of each computer.

> Image Name | Image Size  | PC 1 Time | PC 2 Time | Mac 1 Time | Mac 2 Time
> ----------:|------------:|----------:|----------:|-----------:|----------:
> [10patch.tif](http://timex.moffitt.org/GLASS-AI/Resources/Demo_images/10patch.tif)| 1112x1112µm | 00:00:25  |           |  00:00:26  |  00:00:32
> [20patch.tif](http://timex.moffitt.org/GLASS-AI/Resources/Demo_images/20patch.tif)| 2224x2224µm | 00:01:18  |           |  00:01:07  |  00:01:20
> [40patch.tif](http://timex.moffitt.org/GLASS-AI/Resources/Demo_images/40patch.tif)| 4448x4448µm | 00:06:26  |           |  00:04:30  |  00:05:25
> [xxsmall.tif](http://timex.moffitt.org/GLASS-AI/Resources/Demo_images/XXSmall.tif)| 1500x1500µm | 00:00:45  |           |  00:00:57  |  00:00:39
> [xsmall.tif](http://timex.moffitt.org/GLASS-AI/Resources/Demo_images/XSmall.tif)| 3480x3480µm | 00:03:40  |           |  00:02:36  |  00:03:15
> [small.tif](http://timex.moffitt.org/GLASS-AI/Resources/Demo_images/Small.tif)| 6746x6746µm | 00:14:25  |           |  00:09:39  |  00:12:05
> [medium.tif](http://timex.moffitt.org/GLASS-AI/Resources/Demo_images/Medium.tif)| 8987x9726µm | 00:27:44  |           |  00:20:59  |  00:25:23
> [slide.svs](http://timex.moffitt.org/GLASS-AI/Resources/Demo_images/whole%20slide.svs)|25000x23813µm|           |           |            | 

> Computer Name | Operating System | CPU                         | GPU                                             | Memory              | Storage Type
> :------------:|:----------------:|:---------------------------:|:-----------------------------------------------:|:-------------------:|:------------:
> PC 1          | Windows 10       | 
> PC 2          | Windows 10       |
> Mac 1         | MacOS 10.15.7    | 2.6GHz 6-core Intel Core i7 | AMD Radeon Pro 5300 M 4 GB (not used in testing)| 16 GB 2667 MHz DDR4 | SSD
> Mac 2         | MacOS 10.14.6    | 3.5GHz 6-core Intel Xeon E5 | 2x AMD FirePro D500 3 GB (not used in testing)  | 16 GB 1866 MHz DDR3 | SSD


## License
**This software is for research use only—not for use in diagnostic procedures.** 

This software is provided under a [MIT license](https://choosealicense.com/licenses/mit/), reproduced below.

If you use this code for your research please cite: [Lockhart *et al.* 2022](add a link when paper is published)

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

