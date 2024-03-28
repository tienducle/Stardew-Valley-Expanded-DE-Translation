#!/bin/bash

TAG=$1

if [ -z "$TAG" ]
then
      echo "No tag provided"
      exit -1
fi

git checkout $TAG

find . -name ".DS_Store" -exec rm {} \;
rm -rf tmp
mkdir tmp
cp "nsis/stardew-valley-expanded-german-translation-installer.exe" "./tmp/stardew-valley-expanded-german-translation-installer.exe"
zip -r "tmp/Grandpa's Farm.zip" "Grandpa's Farm"
zip -r "tmp/Immersive Farm 2 Remastered.zip" "Immersive Farm 2 Remastered"
zip -r "tmp/Stardew Valley Expanded.zip" "Stardew Valley Expanded" "Stardew Valley Expanded - German Translation" -x "*default.json"

git checkout main
