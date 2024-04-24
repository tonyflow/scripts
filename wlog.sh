#!/bin/bash

BASE_FOLDER="/Users/niko/Workspace/worklogs"
FOLDER_MONTH=$(date "+%B")
FOLDER_YEAR=$(date "+%Y")
WL_FILE_NAME="$(date "+%A %d").md"
FULLY_QUALIFIED_FOLDER_PATH="$BASE_FOLDER/$FOLDER_YEAR/$FOLDER_MONTH"
FULLY_QUALIFIED_WL_PATH="$FULLY_QUALIFIED_FOLDER_PATH/$WL_FILE_NAME"
CONTENT_TEMPLATE=$'## TODO\n\n\n## QUESTIONS\n\n\n## CODE\n\n\n'

check_create_and_append(){
	if [ -f "$FULLY_QUALIFIED_WL_PATH" ]; then
    	echo "Work log for $WL_FILE_NAME exists. Opening it..."
	else
    	echo "Work log for $WL_FILE_NAME does not exist. Creating it..."
    	mkdir -p "$FULLY_QUALIFIED_FOLDER_PATH"
		touch "$FULLY_QUALIFIED_WL_PATH"
		echo "$CONTENT_TEMPLATE" >> "$FULLY_QUALIFIED_WL_PATH"

	fi
}


if [ -d "$FULLY_QUALIFIED_FOLDER_PATH" ]; then
	echo "Folder structure for $FULLY_QUALIFIED_FOLDER_PATH exists. Will not create it..."
	check_create_and_append
	subl "$FULLY_QUALIFIED_FOLDER_PATH/$WL_FILE_NAME"
else
	echo "Folder structure for $FULLY_QUALIFIED_FOLDER_PATH does not exist. Creating it..."
	check_create_and_append
	subl "$FULLY_QUALIFIED_FOLDER_PATH/$WL_FILE_NAME"
fi
