#!/bin/bash

TAG=$1

if [ -z "$TAG" ]
then
      echo "No tag provided"
      echo "Usage example for version '0.0.12': ./create-nexus-archives-from-tag.sh 0.0.12"
      exit -1
fi

git fetch --all
git checkout $TAG

find . -name ".DS_Store" -exec rm {} \;
rm -rf tmp
mkdir tmp
cp "nsis/stardew-valley-expanded-german-translation-installer.zip" "./tmp/stardew-valley-expanded-german-translation-installer.zip"
zip -r "tmp/Frontier Farm - German.zip" "Frontier Farm - German" -x "*default.json"
zip -r "tmp/Grandpa's Farm - German.zip" "Grandpa's Farm - German" -x "*default.json"
zip -r "tmp/Immersive Farm 2 Remastered - German.zip" "Immersive Farm 2 Remastered - German" -x "*default.json"
zip -r "tmp/Stardew Valley Expanded - German.zip" "Stardew Valley Expanded - German" -x "*default.json"

git checkout main
