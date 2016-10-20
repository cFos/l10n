#!/bin/bash
#
sourceDir="../../locales.website.templates"
destFile="../../locales.website.templates.cfos.txt"

find $sourceDir -type f -exec cat {} >> $destFile ";"