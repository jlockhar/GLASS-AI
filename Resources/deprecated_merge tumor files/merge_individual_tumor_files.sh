#!/bin/bash
#merge_tumor_areas
#Current version: 1.0

#v1 combines tumor records from each slide file output by GLASS-AI into a single .csv file.


awk '

    FNR==1 && NR!=1 { while (/^Slide ID/) getline; }

    1 {print}

' *_Tumor_areas.csv > merged_areas.csv

