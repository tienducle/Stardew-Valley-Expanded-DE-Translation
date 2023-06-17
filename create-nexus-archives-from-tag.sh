#!/bin/bash

TAG=$1

if [ -z "$TAG" ]
then
      echo "No tag provided"
      exit -1
fi

git checkout $TAG

rm -rf tmp/*.zip
zip -r "tmp/Grandpa's Farm.zip" "Grandpa's Farm"
zip -r "tmp/Immersive Farm 2 Remastered.zip" "Immersive Farm 2 Remastered"
zip -r "tmp/Stardew Valley Expanded.zip" "Stardew Valley Expanded"

git checkout main