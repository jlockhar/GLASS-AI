dir_select = uigetdir();
files = dir(dir_select);
xlsxfiles =[];
for file = 1:length(files)
    if endsWith(files(file).name,"xlsx") && ~endsWith(files(file).name,"summary.xlsx") && ~startsWith(files(file).name,"~")
        xlsxfiles = [xlsxfiles; string(files(file).name)];
    end
end

merged = table();
for file = 1:length(xlsxfiles)
    infile = readtable(fullfile(dir_select,xlsxfiles(file)));
    if file == 1
        merged = infile;
    else
        merged = [merged; infile];
    end
sprintf("%s: %d",xlsxfiles(file),height(infile))
end
writetable(merged,fullfile(dir_select,"merged_areas.csv"));
