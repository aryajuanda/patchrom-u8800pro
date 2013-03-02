#
# Makefile for u8800pro
#

# The original zip file, MUST be specified by each product
local-zip-file     := U8800pro_B928_Geno_full.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_u8800pro.zip

#
local-miui-modified-apps := MiuiSystemUI MiuiHome Mms  Settings Phone ThemeManager Browser

# All apps from original ZIP, but has smali files chanded
local-modified-apps := SettingsProvider MediaProvider

# All apks from MIUI
local-miui-removed-apps     := SettingsProvider MediaProvider Stk Bluetooth

# All apps need to be removed from original ZIP file
local-phone-apps := ApplicationsProvider BackupRestoreConfirmation BluetoothServices CertInstaller \
	DefaultContainerService HTMLViewer HwBluetoothImport HwCamera HwFMRadio HwSoundRecorder \
	HwWiFiHotspot KeyChain OMACP PrivInit ProjectMenuAct SharedStorageBackup \
	WAPPushManager MediaProvider Stk Bluetooth SettingsProvider

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should: 
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:=

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	#rm -rf $(ZIP_DIR)/system/cdrom
#	rm $(ZIP_DIR)/system/bin/su
	rm -rf $(ZIP_DIR)/system/bin/cust
	cp other/build.prop $(ZIP_DIR)/system/build.prop
	cp other/HuaWeiSettings.apk $(ZIP_DIR)/system/app/
	cp other/Generic.kl $(ZIP_DIR)/system/usr/keylayout/
	cp other/HwFMRadio.apk $(ZIP_DIR)/system/app/
	cp other/boot.img $(ZIP_DIR)/boot.img
	cp other/ProjectMenuAct.apk $(ZIP_DIR)/system/app/ProjectMenuAct.apk
	@echo update bootanimation
	rm $(ZIP_DIR)/system/bin/bootanimation
	cp other/bootanimation $(ZIP_DIR)/system/bin/bootanimation
	cp -f other/hw_defaults.xml $(ZIP_DIR)/system/etc/hw_defaults.xml
	cp -f ../addon/app/RootExplorer.apk $(ZIP_DIR)/system/app/RootExplorer.apk
	mkdir -p $(ZIP_DIR)/system/preinstall
	cp -f ../addon/app/oupeng.apk $(ZIP_DIR)/system/preinstall/oupeng.apk
	cp -f ../addon/app/UCBrowser.apk $(ZIP_DIR)/system/preinstall/UCBrowser.apk
	cp -f other/busybox $(ZIP_DIR)/system/xbin/busybox
