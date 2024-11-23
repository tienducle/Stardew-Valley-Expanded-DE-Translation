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
zip -r "tmp/Frontier Farm - German.zip" "Frontier Farm" -x "*default.json" -x "*.ignore"
zip -r "tmp/Grandpa's Farm - German.zip" "Grandpa's Farm" -x "*default.json" -x "*.ignore"
zip -r "tmp/Immersive Farm 2 Remastered - German.zip" "Immersive Farm 2 Remastered" -x "*default.json" -x "*.ignore"
zip -r "tmp/Stardew Valley Expanded - German.zip" "Stardew Valley Expanded" -x "*default.json" -x "*.ignore"
git checkout main
