echo "-------------------------"
echo "Rigi extract string files"
echo "-------------------------"
echo

# Include the Rigi bash library
source $(dirname $0)/lib-rigi.sh

# Use default download folder if no download folder is specified.
if [ -z "$DOWNLOAD_FOLDER" ]; then 
  DOWNLOAD_FOLDER=~/Downloads
fi

# Find the most recent Rigi download in the downloads folder.
DOWNLOAD_FILE=$(ls -Art "$DOWNLOAD_FOLDER"/"$PROJECT_NAME"_generated*.zip 2> /dev/null | tail -n 1) 

# No string files found?
if [ "$DOWNLOAD_FILE" == "" ]; then 
    echo "No Rigi strings file found in download folder:"
    echo "  $DOWNLOAD_FOLDER"/"$PROJECT_NAME""_generated*.zip"
    echo
    echo "Did you specify the correct project name (current is '$PROJECT_NAME') in:"
    echo "  $RIGI/rigi.ini"
    echo
    echo "Rigi extract strings failed 💥"
    echo
    exit 1
fi

echo "Found most recent Rigi strings file in download folder:"
echo "  $DOWNLOAD_FILE"
echo

# echo "Do you want to unzip this file in your Xcode project? "
# echo "  $XCODE_PROJECT"
# echo
# select yn in "Yes" "No"; do
#     case $yn in
#         Yes ) break;;
#         No ) exit;;
#     esac
# done

echo "Do you want to unzip this file in your Xcode project? "
echo "  $XCODE_PROJECT"
echo

while true; do
    read -p "Unzip (y/n)? "  yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo
echo "Unzipping string files in Xcode project:"
echo

pushd "$XCODE_PROJECT" 1> /dev/null
unzip -o "$DOWNLOAD_FILE"
popd 1> /dev/null

echo
echo "Rigi string extract ready 👍"
