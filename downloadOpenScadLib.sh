#!/bin/bash

# Define the folder path
folder_path="/usr/share/openscad"

# Function to clone or pull a repository
clone_or_pull() {
    local repo_url="$1"
    local repo_name="$(basename "$repo_url" .git)"
    local repo_folder="$folder_path/$repo_name"

    if [ -d "$repo_folder" ]; then
        echo "Repository '$repo_name' exists. Performing git pull..."
        cd "$repo_folder" || exit
        git pull
    else
        echo "Repository '$repo_name' does not exist. Performing git clone..."
        git clone "$repo_url" "$repo_folder"
    fi
}

# Clone or pull each repository
clone_or_pull https://github.com/revarbat/BOSL.git
clone_or_pull https://github.com/revarbat/BOSL2.git
clone_or_pull https://github.com/JustinSDK/dotSCAD.git
clone_or_pull https://github.com/nophead/NopSCADlib.git
clone_or_pull https://github.com/UBaer21/UB.scad.git
clone_or_pull https://github.com/thehans/FunctionalOpenSCAD.git
clone_or_pull https://github.com/solidboredom/constructive.git
clone_or_pull https://github.com/boltsparts/BOLTS_archive.git
clone_or_pull https://github.com/thehans/funcutils.git
clone_or_pull https://github.com/sbambach/MarksEnclosureHelper.git
clone_or_pull https://github.com/Irev-Dev/Round-Anything.git
clone_or_pull https://github.com/rcolyer/threads-scad.git
clone_or_pull https://github.com/rcolyer/smooth-prim.git
clone_or_pull https://github.com/rcolyer/plot-function.git
clone_or_pull https://github.com/rcolyer/closepoints.git
clone_or_pull https://github.com/sofian/openscad-tray.git
clone_or_pull https://github.com/mrWheel/YAPP_Box.git
clone_or_pull https://github.com/Cantareus/Stemfie_OpenSCAD.git
clone_or_pull https://github.com/mmalecki/catchnhole.git
clone_or_pull https://github.com/dinther/pathbuilder.git
clone_or_pull https://github.com/ridercz/A2D.git
clone_or_pull https://github.com/openscad/scad-utils.git
clone_or_pull https://github.com/adrianschlatter/threadlib.git
