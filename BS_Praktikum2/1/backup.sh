#!/bin/bash

mkdir /backup/20200131

cp -r home $archive_dir/$current_date
cp -r etc $archive_dir/$current_date

apt list --installed > $archive_dir/$current_date/31-01-2020_10-59-54.txt


