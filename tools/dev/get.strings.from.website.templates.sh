#!/bin/bash

extractLocaleCode=1046

destDir="../../locales.website.templates"

templatesDir="../../misc/templates--temp"
templatesExt=".tpl"
totalTemplates=325

sourceMlFile="../../build/ml.website.cfos.txt"

mltoolExe="../../tools/bin/mltool"
curlExe="../../tools/bin/curl"

rm -r $destDir
mkdir $destDir

shopt -s nullglob

i=0
for dir in $(find $templatesDir -type d);
do

    # remove path for dirname
    cleandir=/${dir#$templatesDir}

    # mirror directories structure
    mkdir $destDir/$cleandir -p

    for file in $dir/*$templatesExt
    do

        i=$((i+1))

        # remove path and trailing / from filename
        cleanfile=/${file#$templatesDir}
        # echo "clean1: $cleanfile"
        cleanfile=${cleanfile#$cleandir}
        # echo "clean2: $cleanfile"
        cleanfile=${cleanfile#/}
        # echo "clean3: $cleanfile"

        htmfile=${cleanfile%$templatesExt}.htm

        if [ "$cleandir" = "/" ] || [ "$cleandir" = ""  ]
            then
                processedPath=$cleandir
            else
                processedPath=$cleandir/
        fi

        fullPath=$processedPath$cleanfile
        htmPath=http://www.cfos.de/en$processedPath$htmfile

        echo "===================================================="
        echo "=== $i/$totalTemplates: $fullPath"
        echo "===================================================="

        # Check http status of page
        echo "— Checking http status"
        httpStatus=$($curlExe -s --head -w %{http_code} $htmPath -o /dev/null)
        echo "http status: $httpStatus"
        if [ "$httpStatus" = "200" ]
            then
                isTpl=""
                commentSrc="/: $htmPath\n"
            else
                # added this to non-existing web-pages
                isTpl="_"
                commentSrc="/. template\n/: $fullPath\n"
        fi

        fullTplPath=$processedPath$isTpl$cleanfile

        # run mtool gex
        echo "— Running mtool gex"
        $mltoolExe -m $sourceMlFile gex -h $file -o $destDir$fullTplPath.cfos.txt

        # remove all, but those strings, write into temp
        echo "— Removing other languages"
        sed -n "/^#language $extractLocaleCode/,/#language/p" < $destDir$fullTplPath.cfos.txt > $destDir/temp

        # remove unneeded parts

        # remove language declaration
        # sed -i "/^#language $extractLocaleCode/d" $destDir/temp

        sed -i "/^#fallback.*$/d" $destDir/temp
        sed -i "/^#charset.*$/d" $destDir/temp
        sed -i "/^language = .*$/d" $destDir/temp

        # remove all `#language` except extracted one
        sed -i "/^#language $extractLocaleCode/!s/^#language.*$//" $destDir/temp

        # insert comment with source
        sed -i '1i\'"$commentSrc" $destDir/temp

        # convert to UTF-8 with BOM
        sed -i '1s/^/\xef\xbb\xbf/' $destDir/temp

        # rename temp to real filename
        mv $destDir/temp $destDir$fullTplPath.cfos.txt

    done

done
