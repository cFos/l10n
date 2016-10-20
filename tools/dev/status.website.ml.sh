#!/bin/sh

TYPE=website
PREFIX=input_lang

sourceMlFile="../../build/ml.$TYPE.cfos.txt"

tempUntranslatedDir="_temp.untranslated.$TYPE"
tempDir="_temp.$TYPE"
tempBat="_temp.$TYPE.bat"

rm -r $tempDir
mkdir $tempDir

rm -r $tempUntranslatedDir
mkdir $tempUntranslatedDir

sh awk < $sourceMlFile -v d="\\$tempDir\\" "/#language/{x=d "F"++i;}{print > x\".cfos.txt\";}"

printf "set type=$TYPE\n set lang_prefix=$PREFIX\n set tempUntranslatedDir=$tempUntranslatedDir\n set tempDir=$tempDir\n set tempBat=$tempBat\n call \"../scripts/finilize.status.bat\"" > $tempBat

start $tempBat