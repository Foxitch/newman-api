#!/bin/bash

date=$(date '+%Y:%m:%d:%H:%M:%S')

reports_dir="report"

if ! [ -d ./$reports_dir/ ]; then
mkdir $reports_dir
fi

newman run user_api.json --reporters cli,htmlextra --reporter-htmlextra-export ./$reports_dir/report_"$date".html
