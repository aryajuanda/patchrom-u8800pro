#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify

echo "original dir: $2"
echo "target dir:$1"
if [ $1 = "MiuiSystemUI" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Mms" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Phone" ];then
	echo "Merge Phone's xml"
	$XMLMERGYTOOL $1/res/values $2/res/values
	echo "replace functions in Phone"
	$PORT_ROOT/honor/replace_functions_in_phone.sh $2
fi

if [ $1 = "MiuiHome" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Settings" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
        for file in `find $1/smali -name *.diff`
          do
	  filepath=`dirname $file`
	  filename=`basename $file .diff`
          dstfile="out/$filepath/$filename"
          patch $dstfile < $file
        done
fi

if [ $1 = "ThemeManager" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Browser" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
    cp $1/assets/quicklinks-zh-rCN/quicklinks.json $2/assets/quicklinks3-zh-rCN/hdpi/quicklinks.json
    cp $1/assets/quicklinks-zh-rCN/zh_thumb_geno.png $2/assets/quicklinks3-zh-rCN/hdpi/zh_thumb_geno.png
    cp $1/assets/quicklinks-zh-rCN/quicklinks.json $2/assets/quicklinks3-zh-rCN/xhdpi/quicklinks.json
    cp $1/assets/quicklinks-zh-rCN/zh_thumb_geno.png $2/assets/quicklinks3-zh-rCN/xhdpi/zh_thumb_geno.png
fi
