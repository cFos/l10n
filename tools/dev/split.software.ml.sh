#!/bin/sh

TYPE=software
PREFIX=htm_lang_prefix

sourceMlFile="../../build/ml.$TYPE.cfos.txt"
destDir="..\..\locales.$TYPE"

tempDir="_temp.$TYPE"
tempBat="_temp.$TYPE.bat"

rm -r $tempDir
mkdir $tempDir

awk < $sourceMlFile -v d="\\$tempDir\\" "/#language/{x=d "F"++i;}{print > x\".cfos.txt\";}"

printf "set type=$TYPE\n set lang_prefix=$PREFIX\n set destDir=$destDir\n set tempDir=$tempDir\n set tempBat=$tempBat\n call \"../scripts/finilize.split.ml.bat\"" > $tempBat

start $tempBat