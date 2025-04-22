# GLASS-AI: Grading of Lung Adenocarcinoma with Simultaneous Segmentation by an Artificial Intelligence

🐭 Mouse models of lung adenocarcinoma are invaluable for studying drivers of tumor formation, progression, and therapeutic resistance. 

🔬 Histological analyses of these preclinical models require significant investments of time and training to ensure accuracy and consistency. 

👩‍⚕️ Analysis by a clinical pathologist is the gold standard in this approach but may be difficult to obtain due to the cost and availability. 

🤖 As an alternative, we developed a GLASS-AI to grade, segment, and analyze tumors in mouse models of lung adenocarcinoma. 
<p align="center">
	<img width="460" height="300" src="https://github.com/user-attachments/assets/4cfd2143-ce5e-45ca-8de1-e8e633e7c172">
</p>


---

GLASS-AI was developed using [MATLAB](https://www.mathworks.com/products/matlab.html) using the [Image Processing v11.3](https://www.mathworks.com/products/image.html), [Deep Learning v14.2](https://www.mathworks.com/products/deep-learning.html), [Computer Vision 10.0](https://www.mathworks.com/products/computer-vision.html), and [Parallel Computing v7.4](https://www.mathworks.com/products/parallel-computing.html) Toolboxes. MATLAB is not free software, but it does allow us to compile our code to a standalone application/executable for distribution using the [MATLAB Compiler v8.2](https://www.mathworks.com/products/compiler.html). The code within these standalone applications is automatically obfuscated by MATLAB. The uncompiled code used to build these applications is provided in the `GLASS_AI_APP_dev.mlapp` file and `GLASS_AI_APP.m`, the latter of which is readable on GitHub.

GLASS-AI is based on the [ResNet-18 Network](https://www.mathworks.com/matlabcentral/fileexchange/68261-deep-learning-toolbox-model-for-resnet-18-network). The program accepts hematoxylin and eosin (H&E)-stained images or digital whole slide images and outputs tumor segmentation and grading maps with accompanying spreadsheets. We trained GLASS-AI using 33 H&E-stained whole slide images from 4 different mouse models of lung adenocarcinoma. Our whole slide images were captured using a Leica Aperio ScanScope AT2 Slide Scanner at 20x magnification with a 0.5022 microns/pixel resolution. These slides were divided among and graded by 3 expert raters to produce a training data set with 36,000 annotated image patches. 

![GLASS-AI Network Architecture](https://user-images.githubusercontent.com/43050409/141231551-a65dc8c0-5cd9-4cdc-8488-9b95a634e948.png)
Diagram of the GLASS-AI network architecture. Taken from [Lockhart *et al.*, *npj Prec Onc*, 2023](https://doi.org/10.1038/s41698-023-00419-3) [![License: CC BY 4.0](https://licensebuttons.net/l/by/4.0/80x15.png)](https://creativecommons.org/licenses/by/4.0/)

![GLASS-AI Training Data](https://user-images.githubusercontent.com/43050409/141231991-ebf9389e-086c-4fef-86d9-dfec65c08b4a.png)
Diagram of the data used to train GLASS-AI. Taken from [Lockhart *et al.*, *npj Prec Onc*, 2023](https://doi.org/10.1038/s41698-023-00419-3) [![License: CC BY 4.0](https://licensebuttons.net/l/by/4.0/80x15.png)](https://creativecommons.org/licenses/by/4.0/)

The full training data set has been made available for public use on [Zenodo](doi.org/10.5281/zenodo.7967749) [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.7967749.svg)](https://doi.org/10.5281/zenodo.7967749). 

## Installation
Download and run the latest version of GLASS-AI for your operating system [here](https://moffitt.box.com/s/xii1rsfm93v7vnnokp2m8lx8vprojc1c). Installers are hosted by Moffitt Cancer Center as the files are too large to upload to GitHub.

   - **Mac users: Please make sure you use the correct installer based on your CPU (Intel or Silicon)**
   - **Mac users: If you get a 'GLASS-AI....app can't be opened' or 'GLASS-AI....app is damaged' error when trying to run the installer, it is being blocked by your security settings in  MacOS. If you can't enable installation from third-party developers, you can remove the quarantine flag that MacOS adds to downloaded apps by running `xattr -c <path/to/GLASS-AI_installer.app>` in Terminal before running the installer.**
   - Older versions of GLASS-AI can be found [here](https://moffitt.box.com/s/k0ewz5krbp7tb0arlke7iykoh5lgclwc).
   - During startup, GLASS-AI will check for new versions of the app here on GitHub and let you know if an update is available.

Each installer will also install a copy of the MATLAB Runtime required to run the program without a pre-existing copy of MATLAB (and requisite toolboxes). **You do not need a MATLAB license to run the precompiled versions of GLASS-AI**.

You can also use the `GLASS_AI_APP.m` file in this repository if you have the required MATLAB version and toolboxes (described above). 
You will also need to download some support files, including the pre-trained GLASS-AI neural network from [here](https://moffitt.box.com/s/v2vnfhft8j8pu3k8jkptq2qllzyjsrei) as the file is too large to host on GitHub.
This `GLASS-AI resources` directory is expected to be in the same folder as the `GLASS_AI_APP.m` file.

A set of demo images is also available as a `.zip` file [here](https://moffitt.box.com/s/3t3uz331nrf20yxsc0a62e034bmimlr6).

*Installation time should be < 5 minutes, but may take longer depending on download speeds between your computer and MATHWORKS. Any updates to GLASS-AI that do not require updating the MATLAB Runtime should install almost instantly.*

## Usage
**A lot of changes were implemented in v2.0.0 of the GLASS-AI app, including changes to the default outputs of GLASS-AI. These instructions do not cover all of the steps needed to run previous versions of GLASS-AI.**

GLASS-AI accepts `SVS`, `TIF`, `PNG`, or `JPEG` files as input. For the best results, these images should be captured at 20x magnification with a 0.5022 microns/pixel resolution, as that is what GLASS-AI was trained on. Using lower magnification or lower resolution images will likely produce unreliable results from GLASS-AI.

The steps for running GLASS-AI are indicated in the graphic user interface (GUI), but they are as follows:

1. Click the `Select Images` button to select the images you want to analyze.
	- The software will filter for `.svs`, `.tif`/`.tiff`, `.png`, and `.jpg`/`.jpeg` files while browsing.
	- It is highly recommended that you move the files you plan to analyze with GLASS-AI to a local folder on your computer (i.e., not a network drive) to minimize I/O bottlenecks.
2. Click the `Output folder` button to navigate to the folder where you would like the output images and spreadsheets to be deposited.
	- A `TempFolder` will also be created here during the analysis run and deleted after the analysis is completed. 
	- It is highly recommended that you select a local folder on your computer (i.e., not a network drive) as the `Output folder` to minimize I/O bottlenecks.
3. Change any analysis options you wish to adjust.
   	- Tooltips for each option are shown if you hover your mouse over them.
   	- The results reported in [Lockhart *et al.*, *npj Prec Onc*, 2023](https://doi.org/10.1038/s41698-023-00419-3) were generated using the default values.
   	- By default, GLASS-AI will not generate the Tumor Segmentation Map or Prediction Confidence Map or save the Stain Normalized H&E image to save analysis time. These outputs can be toggled on in the `Output Images` tab in the bottom-left panel of the UI.
4.  Click `Run` and wait for the results.
  	- The `Run` button will not be enabled until Steps 1 & 2 are completed (indicated by green lights)
  	- The program will provide status updates at each step of the analysis to give you an idea of how far along it is.
	- A `Stop Analysis` toggle button will appear while GLASS-AI analyzes your images. When this button is toggled on, GLASS-AI will abort the analysis at the next possible step.
 		- Some steps (e.g., gathering results, tumor segmentation image creation) may take some time to complete before GLASS-AI can abort the analysis.
    - GLASS-AI will delete the `TempFolder` after analysis completes. This process can take up to about a minute for whole slide images due to the large number of files created during semantic segmentation and can take much longer if using a remote location for your `Output Folder`.


If something goes wrong during analysis, check the end of the log file that GLASS-AI creates in the output folder.

For troubleshooting advice, please reach out to us by (preferably) [opening a new issue on Github](https://github.com/jlockhar/GLASS-AI/issues/new) or contacting the authors via the correspondence email included in the [GLASS-AI manuscript](https://doi.org/10.1038/s41698-023-00419-3).	

## Benchmarking
A set of H&E images of various sizes is available as a `.zip` file [here](https://moffitt.box.com/s/3t3uz331nrf20yxsc0a62e034bmimlr6).

You should try running GLASS-AI on some of these files before using your own data. Not only will this tell you if the installation worked correctly, but it will also allow you to benchmark the performance of GLASS-AI on your computer. Before distribution, GLASS-AI was tested on a few different systems using the default analysis options. The results from these tests are provided below, along with the hardware specifications of each computer.

> Image Name                                                               | Image Size  | PC1 Time | PC2 Time | Mac1 Time| Mac2 Time
> ------------------------------------------------------------------------:|------------:|:--------:|:--------:|:--------:|:--------:
> [10patch.tif](https://moffitt.box.com/s/e7mum83f2a4mkhbxzyxg1o8jfickcf6z)| 1112x1112µm | 00:00:10 | 00:00:43 | 00:01:01 | 00:00:48
> [20patch.tif](https://moffitt.box.com/s/r9phbnflb66gf3142uyukidmlgr3skub)| 2224x2224µm | 00:00:23 | 00:01:16 | 00:01:07 | 00:01:23
> [40patch.tif](https://moffitt.box.com/s/3n9k117l2x8c59iizcvt7bpck33b6o9r)| 4448x4448µm | 00:01:18 | 00:04:02 | 00:04:08 | 00:04:22
> [xxsmall.tif](https://moffitt.box.com/s/xxhxraizeser8tglut450n0f14288p28)| 1500x1500µm | 00:00:13 | 00:00:40 | 00:00:37 | 00:00:37
> [xsmall.tif](https://moffitt.box.com/s/ca9qqyxp4e2dd15349k9a5zjyckbbl4p) | 3480x3480µm | 00:00:50 | 00:03:04 | 00:02:58 | 00:02:32 
> [small.tif](https://moffitt.box.com/s/59ff8wrdqnpoqfzutt54d72j0g1fkwyj)  | 6746x6746µm | 00:01:42 | 00:06:55 | 00:06:21 | 00:07:13
> [medium.tif](https://moffitt.box.com/s/o7p9v65vyuzh35tm1o7imir8p9ifk7sf) | 8987x9726µm | 00:14:25 | 00:13:28 | 00:11:37 | 00:12:42
> [slide.svs](https://moffitt.box.com/s/gx77h1d9zxa7so92lnczae20p66ktiez)  |25000x23813µm| 00:30:16 | 00:56:19 | 00:54:21 | 00:51:51

> Computer Name           | Operating System  | CPU                          | GPU\*                              | Memory\*\*             | Storage Type
> :----------------------:|:-----------------:|:----------------------------:|:----------------------------------:|:----------------------:|:------------:
> PC1                     | Windows 10        | 2.9 GHz 8-core Intel i7      | NVIDIA GeForce GTX 1660 SUPER 6 GB | 128 GB 2933 MHz DDR4   | SSD
> PC2                     | Windows 10        | 3.8 Ghz 8-core AMD Ryzen 7   | AMD Radeon RX 580 GTS 8 GB         | 64 GB 2933 MHz DDR4    | SSD
> Mac1 (2019 Macbook Pro) | MacOS Sonoma 14.3 | 2.6 GHz 6-core Intel Core i7 | AMD Radeon Pro 5300 M 4 GB         | 16 GB 2667 MHz DDR4    | SSD
> Mac2 (2020 iMac)        | MacOS 12.X        | 3.2 GHz 8-core Apple M1      | 7-core integrated M1 GPU           | 16 GB 3200 Mhz LPDDR4X | SSD

*\*GPU acceleration is only possible on CUDA-capable NVIDIA GPUs. The only step in which GLASS-AI may use a GPU (if a suitable one is available) is during semantic segmentation. The remainder of the analysis is parallelized using the CPU.*

*\**16 GB of memory should be sufficient to analyze most whole slide images (like the example slide.svs). Slides with more than 1 section may require additional memory to process. If your computer has insufficient memory to run this version of the GLASS-AI app, you can try an older version (e.g., v1.0.1) using the `Low memory mode` option during runtime. However, this version of the GLASS-AI app is 2-3x faster than previous versions.*

## Ancillary projects
* [**GLASS-AI report generator**](https://github.com/jlockhar/GLASS-AI-ReportR)
	* GLASS-AI can help analyze large sets of images, but you'll still need to interpret the results from the output tables and images. This R notebook analyzes and graphs the results from GLASS-AI in many different ways (e.g., tumor counts, total tumor area, the proportion of lung area occupied by tumors, and intratumor heterogeneity estimates). This file can also be used to perform some basic statistical comparisons between groups that you define.
* [**GLASS-AI manual annotation editor**](https://github.com/jlockhar/GLASS-AI-annotation-editor)
	* GLASS-AI is not infallible, but the primary issues we've observed arise from unknown/untrained features in the analyzed images. This MATLAB app allows you to incorporate manual annotations created in [QuPath](https://qupath.github.io/) into the annotations produced by GLASS-AI (for example, including 'Grade 5' LUAD tumor areas or excluding non-lung tissue).
* [**DEPRECATED-Merge individual tumor files**](https://github.com/jlockhar/GLASS-AI/tree/main/GLASS-AI%20resources/deprecated_merge%20tumor%20files)
	* These small scripts concatenate all of the files containing the individual tumors from each image into a single `.csv` file (mainly for feeding into old versions of the GLASS-AI report generator; the current version can do this automatically). The bash version is deprecated, as the current version of GLASS-AI outputs `.xlsx` files for each image, which can't be easily interacted with using a command line interface.
* [**Stained-GLASS-AI**](https://github.com/jlockhar/Stained-GLASS-AI)
	* The high-resolution grading provided by GLASS-AI can empower molecular analyses of particular cell types, gene expression changes, or activation of signaling cascades marked by immunohistochemistry (IHC). By registering an IHC-stained slide with the one analyzed by GLASS-AI, cell annotations can be projected onto the tumor grade maps output by GLASS-AI. In addition, a peritumoral analysis module is included to assess changes in the recruitment of cells to regions surrounding tumors.

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
