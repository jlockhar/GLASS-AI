%project info
projectRoot = "/Users/4470641/Documents/GitHub/GLASS-AI/";
mlappFile = 'GLASS_AI_APP.mlapp';

%compiled application info
applicationName = "GLASS-AI";
applicationIconImage = fullfile(projectRoot, "Resources","UI Files", "GLASS-AI splash.png");
applicationSplashImage = fullfile(projectRoot, "Resources","UI Files", "GLASS-AI splash.png");
applicationAdditionalFiles = "Resources/";

%installer info
installerIconImage = applicationIconImage;
installerSplashImage = applicationSplashImage;
installerSidebarImage = fullfile(projectRoot, "Sidebar image.png");
installerApplicationSummary = "Grading of Lung Adenocarcinoma with Simultaneous Segmentation by an Artificial Intelligence";
installerApplicationDescription = "GLASS-AI is based on the ResNet-18 Network. The program accepts hematoxylin and eosin (H&E)-stained images or digital whole slide images and outputs tumor segmentation and grading maps with accompanying spreadsheets. We trained GLASS-AI using 33 H&E-stained whole slide images from 4 different mouse models of lung adenocarcinoma. Our whole slide images were captured using a Leica Aperio ScanScope AT2 Slide Scanner at 20x magnification with a 0.5022 microns/pixel resolution. These slides were divided among and graded by 3 expert raters to produce a training data set with 36,000 annotated image patches.";
installerInstallationNotes = "If you run into any issues using this software, please open an issue on the GitHub repository.";

%author info
authorName = "John Lockhart";
authorEmail = "john.lockhart@moffitt.org";
authorCompany = "H. Lee Moffitt Cancer Center & Research Institute";

%%%%%%automated processing below%%%%%%%
inputFiles = [fullfile(projectRoot, mlappFile), applicationIconImage, ...
    applicationSplashImage, installerIconImage, installerSplashImage, ...
    installerSidebarImage];
%validate that input files exist
if ~isfolder(projectRoot)
    error("Project root does not exist: %s", projectRoot);
end

missingFiles = inputFiles(~isfile(inputFiles));
if ~isempty(missingFiles)
    error("The following input files do not exist:\n%s", ...
        strjoin(missingFiles, newline));
end

%define output directories
buildOutputDir = fullfile(projectRoot, applicationName + " Standalone Application", "output", "build");
buildExecutableName = regexprep(applicationName, '\W', '_');
packageOutputDir = fullfile(projectRoot, applicationName + " Standalone Application", "output", "package");

%get version from mlapp file
xmlContent = unzip(fullfile(projectRoot, mlappFile), tempdir);
appVersion = string(readstruct(fullfile(tempdir, 'metadata', 'coreProperties.xml')).cp_version);
appVersion_nums = sscanf(appVersion, '%d.%d.%d');
appVersion = sprintf('%d.%d.%d', appVersion_nums);

%adjust for deployment OS
if ispc
    defaultInstallLocation = "%ProgramFiles%/" + buildExecutableName;
    installerName = applicationName + " Installer_WIN_v" + appVersion;
elseif ismac
    defaultInstallLocation = "/Applications/" + buildExecutableName;
    installerName = applicationName + " Installer_MAC_v" + appVersion;
else
    defaultInstallLocation = fullfile(getenv("HOME"), buildExecutableName);
    installerName = applicationName + " Installer_LINUX_v" + appVersion;
end

% Create target build options object, set build properties and build.
buildOpts = compiler.build.StandaloneApplicationOptions(fullfile(projectRoot, mlappFile));
buildOpts.AutoDetectDataFiles = true;
buildOpts.AdditionalFiles = applicationAdditionalFiles;
buildOpts.OutputDir = buildOutputDir;
buildOpts.SupportPackages = "none";
buildOpts.ObfuscateArchive = false;
buildOpts.Verbose = true;
buildOpts.EmbedArchive = true;
buildOpts.ExecutableIcon = applicationIconImage;
buildOpts.ExecutableSplashScreen = applicationSplashImage;
buildOpts.ExecutableName = buildExecutableName;
buildOpts.ExecutableVersion = appVersion;
buildOpts.TreatInputsAsNumeric = false;
if ispc
    buildResult = compiler.build.standaloneWindowsApplication(buildOpts);
else
    buildResult = compiler.build.standaloneApplication(buildOpts);
end


% Create package options object, set package properties and package.
packageOpts = compiler.package.InstallerOptions(buildResult);
packageOpts.ApplicationName = applicationName;
packageOpts.AuthorName = authorName;
packageOpts.AuthorEmail = authorEmail;
packageOpts.AuthorCompany = authorCompany;
packageOpts.DefaultInstallationDir = defaultInstallLocation;
packageOpts.InstallerIcon = installerIconImage;
packageOpts.InstallerLogo = installerSidebarImage;
packageOpts.InstallerSplash = installerSplashImage;
if ispc
    packageOpts.AddRemoveProgramsIcon = applicationIconImage;
end
packageOpts.InstallerName = installerName;
packageOpts.Version = appVersion;
packageOpts.OutputDir = packageOutputDir;
packageOpts.Summary = installerApplicationSummary;
packageOpts.Description = installerApplicationDescription;
packageOpts.InstallationNotes = installerInstallationNotes;
packageOpts.Verbose = true;
compiler.package.installer(buildResult, "Options", packageOpts);