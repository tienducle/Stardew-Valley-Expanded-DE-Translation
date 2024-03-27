#!/bin/bash

TAG=$1

if [ -z "$TAG" ]
then
      echo "No tag provided"
      exit -1
fi

git checkout $TAG

find . -name ".DS_Store" -exec rm {} \;
rm -rf tmp/*.zip
cp "nsis/Stardew Valley Expanded - German Translation.exe" .
zip -r "tmp/Grandpa's Farm.zip" "Grandpa's Farm"
zip -r "tmp/Immersive Farm 2 Remastered.zip" "Immersive Farm 2 Remastered"
zip -r "tmp/Stardew Valley Expanded.zip" "Stardew Valley Expanded" "Stardew Valley Expanded - German Translation" "Stardew Valley Expanded - German Translation.exe" -x "*default.json"
rm -rf "./Stardew Valley Expanded - German Translation.exe"

git checkout main
