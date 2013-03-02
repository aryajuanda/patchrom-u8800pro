#!/bin/bash
#
# $1: dir for miui
# $2: dir for original
#

APKTOOL=$PORT_ROOT/tools/apktool
 
if [ $2 = "out/framework" ];then
	echo "make miui.jar"

	mkdir -p "out/miui/smali"
	touch "out/miui/apktool.yml"
	echo "version: 1.4.3" >> "out/miui/apktool.yml"
	echo "apkFileName: miui.jar" >> "out/miui/apktool.yml"

	mv "out/framework/smali/miui" "out/miui/smali"
	mkdir -p "out/miui/smali/android"
	mv "out/framework/smali/android/widget" "out/miui/smali/android"

	$APKTOOL b  "out/miui" "out/miui.jar"
	mkdir -p "out/ZIP/system/framework"
	cp "out/miui.jar" "out/ZIP/system/framework/miui.jar"
fi
