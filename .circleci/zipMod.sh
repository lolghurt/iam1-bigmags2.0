#!/bin/sh
https://github.com/lolghurt/iam1-bigmags2.0/blob/master/.circleci/zipMod.sh
# CHANGE ME
modFolderName="IAM-Part-1-BigMags-2.0"

version=$(git describe --tags)
zipName=$modFolderName-$version.zip
git archive master -o $zipName --prefix $modFolderName-$version/
mkdir -p ./artifacts
mv ./$zipName ./artifacts/
