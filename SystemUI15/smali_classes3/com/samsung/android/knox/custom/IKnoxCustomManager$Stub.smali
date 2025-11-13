.class public abstract Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;
.super Landroid/os/Binder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# static fields
.field public static final TRANSACTION_addAutoCallNumber:I = 0xd5

.field public static final TRANSACTION_addDexShortcut:I = 0xf7

.field public static final TRANSACTION_addDexURLShortcut:I = 0xf9

.field public static final TRANSACTION_addDexURLShortcutExtend:I = 0xfa

.field public static final TRANSACTION_addPackagesToUltraPowerSaving:I = 0x8b

.field public static final TRANSACTION_addRoleHolder:I = 0x12d

.field public static final TRANSACTION_addShortcut:I = 0xe6

.field public static final TRANSACTION_addWidget:I = 0xe8

.field public static final TRANSACTION_allowDexAutoOpenLastApp:I = 0x104

.field public static final TRANSACTION_checkEnterprisePermission:I = 0x1

.field public static final TRANSACTION_clearAnimation:I = 0xc0

.field public static final TRANSACTION_clearDexLoadingLogo:I = 0xff

.field public static final TRANSACTION_clearForcedDisplaySizeDensity:I = 0x115

.field public static final TRANSACTION_deleteHomeScreenPage:I = 0xea

.field public static final TRANSACTION_dialEmergencyNumber:I = 0x2

.field public static final TRANSACTION_getAccessibilitySettingsItems:I = 0xbd

.field public static final TRANSACTION_getAirGestureOptionState:I = 0x90

.field public static final TRANSACTION_getAppBlockDownloadNamespaces:I = 0x49

.field public static final TRANSACTION_getAppBlockDownloadState:I = 0x4b

.field public static final TRANSACTION_getApplicationRestrictionsInternal:I = 0x129

.field public static final TRANSACTION_getAppsButtonState:I = 0xec

.field public static final TRANSACTION_getAsoc:I = 0x120

.field public static final TRANSACTION_getAutoCallNumberAnswerMode:I = 0xd8

.field public static final TRANSACTION_getAutoCallNumberDelay:I = 0xd7

.field public static final TRANSACTION_getAutoCallNumberList:I = 0xd9

.field public static final TRANSACTION_getAutoCallPickupState:I = 0xdb

.field public static final TRANSACTION_getAutoRotationState:I = 0x7

.field public static final TRANSACTION_getBackupRestoreState:I = 0x3c

.field public static final TRANSACTION_getBatteryLevelColourItem:I = 0x4d

.field public static final TRANSACTION_getBsoh:I = 0x122

.field public static final TRANSACTION_getBsohUnbiased:I = 0x123

.field public static final TRANSACTION_getCallScreenDisabledItems:I = 0x4f

.field public static final TRANSACTION_getChargerConnectionSoundEnabledState:I = 0x93

.field public static final TRANSACTION_getChargingLEDState:I = 0x51

.field public static final TRANSACTION_getDeviceSpeakerEnabledState:I = 0x95

.field public static final TRANSACTION_getDexForegroundModePackageList:I = 0xfd

.field public static final TRANSACTION_getDexHDMIAutoEnterState:I = 0x107

.field public static final TRANSACTION_getDexHomeAlignment:I = 0x103

.field public static final TRANSACTION_getDexScreenTimeout:I = 0x101

.field public static final TRANSACTION_getDisplayMirroringState:I = 0x97

.field public static final TRANSACTION_getEthernetConfigurationType:I = 0x53

.field public static final TRANSACTION_getEthernetState:I = 0x55

.field public static final TRANSACTION_getExitUI:I = 0xc

.field public static final TRANSACTION_getExtendedCallInfoState:I = 0xe

.field public static final TRANSACTION_getFavoriteApp:I = 0xf0

.field public static final TRANSACTION_getFavoriteAppsMaxCount:I = 0xef

.field public static final TRANSACTION_getForceAutoShutDownState:I = 0xe4

.field public static final TRANSACTION_getForceAutoStartUpState:I = 0xc3

.field public static final TRANSACTION_getForceSingleView:I = 0x118

.field public static final TRANSACTION_getGearNotificationState:I = 0x57

.field public static final TRANSACTION_getHardKeyBlockState:I = 0x10f

.field public static final TRANSACTION_getHardKeyIntentBroadcast:I = 0x113

.field public static final TRANSACTION_getHardKeyIntentMode:I = 0xf4

.field public static final TRANSACTION_getHardKeyIntentState:I = 0x59

.field public static final TRANSACTION_getHardKeyReportState:I = 0x10e

.field public static final TRANSACTION_getHideNotificationMessages:I = 0x3e

.field public static final TRANSACTION_getHomeActivity:I = 0x10

.field public static final TRANSACTION_getHomeScreenMode:I = 0xf6

.field public static final TRANSACTION_getInfraredState:I = 0x5b

.field public static final TRANSACTION_getInputMethodRestrictionState:I = 0x13

.field public static final TRANSACTION_getKeyboardMode:I = 0x99

.field public static final TRANSACTION_getKeyboardModeOverriden:I = 0x9a

.field public static final TRANSACTION_getLTESettingState:I = 0x60

.field public static final TRANSACTION_getLcdBacklightState:I = 0x9c

.field public static final TRANSACTION_getLoadingLogoPath:I = 0x11b

.field public static final TRANSACTION_getLockScreenHiddenItems:I = 0x5d

.field public static final TRANSACTION_getLockScreenOverrideMode:I = 0x9e

.field public static final TRANSACTION_getLockScreenShortcut:I = 0xdf

.field public static final TRANSACTION_getMacAddress:I = 0xdc

.field public static final TRANSACTION_getMobileNetworkType:I = 0xc6

.field public static final TRANSACTION_getMotionControlState:I = 0x41

.field public static final TRANSACTION_getPowerDialogCustomItems:I = 0xa0

.field public static final TRANSACTION_getPowerDialogCustomItemsState:I = 0xa2

.field public static final TRANSACTION_getPowerDialogItems:I = 0x18

.field public static final TRANSACTION_getPowerDialogOptionMode:I = 0x1a

.field public static final TRANSACTION_getPowerMenuLockedState:I = 0x62

.field public static final TRANSACTION_getPowerSavingMode:I = 0x64

.field public static final TRANSACTION_getProKioskNotificationMessagesState:I = 0x1c

.field public static final TRANSACTION_getProKioskPowerDialogCustomItems:I = 0x1e

.field public static final TRANSACTION_getProKioskPowerDialogCustomItemsState:I = 0x20

.field public static final TRANSACTION_getProKioskState:I = 0x22

.field public static final TRANSACTION_getProKioskStatusBarClockState:I = 0x24

.field public static final TRANSACTION_getProKioskStatusBarIconsState:I = 0x26

.field public static final TRANSACTION_getProKioskStatusBarMode:I = 0x28

.field public static final TRANSACTION_getProKioskString:I = 0x2a

.field public static final TRANSACTION_getProKioskUsbMassStorageState:I = 0x2c

.field public static final TRANSACTION_getProKioskUsbNetAddress:I = 0x2e

.field public static final TRANSACTION_getProKioskUsbNetState:I = 0x30

.field public static final TRANSACTION_getProtectBatteryState:I = 0x109

.field public static final TRANSACTION_getQuickPanelButtons:I = 0xc8

.field public static final TRANSACTION_getQuickPanelEditMode:I = 0xca

.field public static final TRANSACTION_getQuickPanelItems:I = 0xcd

.field public static final TRANSACTION_getRecentLongPressActivity:I = 0x66

.field public static final TRANSACTION_getRecentLongPressMode:I = 0x68

.field public static final TRANSACTION_getRoleHolders:I = 0x12c

.field public static final TRANSACTION_getScreenOffOnHomeLongPressState:I = 0x6a

.field public static final TRANSACTION_getScreenOffOnStatusBarDoubleTapState:I = 0x6c

.field public static final TRANSACTION_getScreenTimeout:I = 0x33

.field public static final TRANSACTION_getScreenWakeupOnPowerState:I = 0x6e

.field public static final TRANSACTION_getSensorDisabled:I = 0x70

.field public static final TRANSACTION_getSerialNumber:I = 0x8e

.field public static final TRANSACTION_getSettingsEnabledItems:I = 0xa4

.field public static final TRANSACTION_getSettingsHiddenState:I = 0x43

.field public static final TRANSACTION_getShowIMEWithHardKeyboard:I = 0x10b

.field public static final TRANSACTION_getStatusBarClockState:I = 0xa6

.field public static final TRANSACTION_getStatusBarIconsState:I = 0xa8

.field public static final TRANSACTION_getStatusBarMode:I = 0xaa

.field public static final TRANSACTION_getStatusBarNotificationsState:I = 0xac

.field public static final TRANSACTION_getStatusBarText:I = 0x72

.field public static final TRANSACTION_getStatusBarTextScrollWidth:I = 0xae

.field public static final TRANSACTION_getStatusBarTextSize:I = 0x74

.field public static final TRANSACTION_getStatusBarTextStyle:I = 0x73

.field public static final TRANSACTION_getSystemSoundsEnabledState:I = 0xcf

.field public static final TRANSACTION_getTcpDump:I = 0x126

.field public static final TRANSACTION_getToastEnabledState:I = 0x76

.field public static final TRANSACTION_getToastGravity:I = 0x78

.field public static final TRANSACTION_getToastGravityEnabledState:I = 0x7c

.field public static final TRANSACTION_getToastGravityXOffset:I = 0x79

.field public static final TRANSACTION_getToastGravityYOffset:I = 0x7a

.field public static final TRANSACTION_getToastShowPackageNameState:I = 0x7e

.field public static final TRANSACTION_getTorchOnVolumeButtonsState:I = 0x80

.field public static final TRANSACTION_getUltraPowerSavingPackages:I = 0x8d

.field public static final TRANSACTION_getUnlockSimOnBootState:I = 0xb0

.field public static final TRANSACTION_getUnlockSimPin:I = 0xb2

.field public static final TRANSACTION_getUsbConnectionType:I = 0xe1

.field public static final TRANSACTION_getUsbConnectionTypeInternal:I = 0xe2

.field public static final TRANSACTION_getUsbMassStorageState:I = 0xb4

.field public static final TRANSACTION_getUsbNetAddress:I = 0xb6

.field public static final TRANSACTION_getUsbNetState:I = 0xb8

.field public static final TRANSACTION_getUsbNetStateInternal:I = 0xb9

.field public static final TRANSACTION_getUserInactivityTimeout:I = 0x38

.field public static final TRANSACTION_getVibrationIntensity:I = 0xd1

.field public static final TRANSACTION_getVolumeButtonRotationState:I = 0x82

.field public static final TRANSACTION_getVolumeControlStream:I = 0x84

.field public static final TRANSACTION_getVolumeKeyAppState:I = 0x88

.field public static final TRANSACTION_getVolumeKeyAppsList:I = 0x86

.field public static final TRANSACTION_getVolumePanelEnabledState:I = 0x8a

.field public static final TRANSACTION_getWifiConnectionMonitorState:I = 0x47

.field public static final TRANSACTION_getWifiFrequencyBand:I = 0xbb

.field public static final TRANSACTION_getWifiHotspotEnabledState:I = 0xd3

.field public static final TRANSACTION_getWifiState:I = 0xd4

.field public static final TRANSACTION_getZeroPageState:I = 0xf2

.field public static final TRANSACTION_isDexAutoOpenLastAppAllowed:I = 0x105

.field public static final TRANSACTION_isKnoxPrivacyPolicyAcceptedInitially:I = 0x12f

.field public static final TRANSACTION_isKnoxPrivacyPolicyAcceptedOrWithdrawnByUserSettings:I = 0x130

.field public static final TRANSACTION_isSupportedForceAutoStartUpState:I = 0xc4

.field public static final TRANSACTION_migrateApplicationRestrictions:I = 0x12b

.field public static final TRANSACTION_powerOff:I = 0xdd

.field public static final TRANSACTION_readFile:I = 0x127

.field public static final TRANSACTION_registerSystemUiCallback:I = 0x11c

.field public static final TRANSACTION_removeAutoCallNumber:I = 0xd6

.field public static final TRANSACTION_removeDexShortcut:I = 0xf8

.field public static final TRANSACTION_removeDexURLShortcut:I = 0xfb

.field public static final TRANSACTION_removeFavoriteApp:I = 0xee

.field public static final TRANSACTION_removeLockScreen:I = 0x3

.field public static final TRANSACTION_removePackagesFromUltraPowerSaving:I = 0x8c

.field public static final TRANSACTION_removeRoleHolder:I = 0x12e

.field public static final TRANSACTION_removeShortcut:I = 0xe7

.field public static final TRANSACTION_removeWidget:I = 0xe9

.field public static final TRANSACTION_setAccessibilitySettingsItems:I = 0xbc

.field public static final TRANSACTION_setAdbState:I = 0x4

.field public static final TRANSACTION_setAirGestureOptionState:I = 0x8f

.field public static final TRANSACTION_setAppBlockDownloadNamespaces:I = 0x48

.field public static final TRANSACTION_setAppBlockDownloadState:I = 0x4a

.field public static final TRANSACTION_setApplicationRestrictionsInternal:I = 0x128

.field public static final TRANSACTION_setAppsButtonState:I = 0xeb

.field public static final TRANSACTION_setAsoc:I = 0x121

.field public static final TRANSACTION_setAudioVolume:I = 0x5

.field public static final TRANSACTION_setAutoCallPickupState:I = 0xda

.field public static final TRANSACTION_setAutoRotationState:I = 0x6

.field public static final TRANSACTION_setBackupRestoreState:I = 0x3b

.field public static final TRANSACTION_setBatteryLevelColourItem:I = 0x4c

.field public static final TRANSACTION_setBluetoothState:I = 0x8

.field public static final TRANSACTION_setBootingAnimation:I = 0xbe

.field public static final TRANSACTION_setBootingAnimationSub:I = 0x119

.field public static final TRANSACTION_setBrightness:I = 0xe5

.field public static final TRANSACTION_setBrowserHomepage:I = 0x91

.field public static final TRANSACTION_setCallScreenDisabledItems:I = 0x4e

.field public static final TRANSACTION_setChargerConnectionSoundEnabledState:I = 0x92

.field public static final TRANSACTION_setChargingLEDState:I = 0x50

.field public static final TRANSACTION_setCpuPowerSavingState:I = 0x9

.field public static final TRANSACTION_setDeveloperOptionsHidden:I = 0xa

.field public static final TRANSACTION_setDeviceSpeakerEnabledState:I = 0x94

.field public static final TRANSACTION_setDexForegroundModePackageList:I = 0xfc

.field public static final TRANSACTION_setDexHDMIAutoEnterState:I = 0x106

.field public static final TRANSACTION_setDexHomeAlignment:I = 0x102

.field public static final TRANSACTION_setDexLoadingLogo:I = 0xfe

.field public static final TRANSACTION_setDexScreenTimeout:I = 0x100

.field public static final TRANSACTION_setDisplayMirroringState:I = 0x96

.field public static final TRANSACTION_setEthernetConfiguration:I = 0x52

.field public static final TRANSACTION_setEthernetState:I = 0x54

.field public static final TRANSACTION_setExitUI:I = 0xb

.field public static final TRANSACTION_setExtendedCallInfoState:I = 0xd

.field public static final TRANSACTION_setFavoriteApp:I = 0xed

.field public static final TRANSACTION_setFlightModeState:I = 0xc1

.field public static final TRANSACTION_setForceAutoShutDownState:I = 0xe3

.field public static final TRANSACTION_setForceAutoStartUpState:I = 0xc2

.field public static final TRANSACTION_setForceSingleView:I = 0x117

.field public static final TRANSACTION_setForcedDisplaySizeDensity:I = 0x114

.field public static final TRANSACTION_setGearNotificationState:I = 0x56

.field public static final TRANSACTION_setHardKeyIntentBroadcast:I = 0x110

.field public static final TRANSACTION_setHardKeyIntentBroadcastExternal:I = 0x111

.field public static final TRANSACTION_setHardKeyIntentBroadcastInternal:I = 0x112

.field public static final TRANSACTION_setHardKeyIntentMode:I = 0xf3

.field public static final TRANSACTION_setHardKeyIntentState:I = 0x58

.field public static final TRANSACTION_setHardKeyReportState:I = 0x10d

.field public static final TRANSACTION_setHideNotificationMessages:I = 0x3d

.field public static final TRANSACTION_setHomeActivity:I = 0xf

.field public static final TRANSACTION_setHomeScreenMode:I = 0xf5

.field public static final TRANSACTION_setInfraredState:I = 0x5a

.field public static final TRANSACTION_setInputMethod:I = 0x11

.field public static final TRANSACTION_setInputMethodRestrictionState:I = 0x12

.field public static final TRANSACTION_setKeyboardMode:I = 0x98

.field public static final TRANSACTION_setKeyedAppStatesReport:I = 0x12a

.field public static final TRANSACTION_setKnoxPrivacyPolicyByUserSettings:I = 0x131

.field public static final TRANSACTION_setLTESettingState:I = 0x5f

.field public static final TRANSACTION_setLcdBacklightState:I = 0x9b

.field public static final TRANSACTION_setLockScreenHiddenItems:I = 0x5c

.field public static final TRANSACTION_setLockScreenOverrideMode:I = 0x9d

.field public static final TRANSACTION_setLockScreenShortcut:I = 0xde

.field public static final TRANSACTION_setLockscreenWallpaper:I = 0x5e

.field public static final TRANSACTION_setMobileDataRoamingState:I = 0x3f

.field public static final TRANSACTION_setMobileDataState:I = 0x14

.field public static final TRANSACTION_setMobileNetworkType:I = 0xc5

.field public static final TRANSACTION_setMotionControlState:I = 0x40

.field public static final TRANSACTION_setMultiWindowState:I = 0x15

.field public static final TRANSACTION_setPassCode:I = 0x16

.field public static final TRANSACTION_setPowerDialogCustomItems:I = 0x9f

.field public static final TRANSACTION_setPowerDialogCustomItemsState:I = 0xa1

.field public static final TRANSACTION_setPowerDialogItems:I = 0x17

.field public static final TRANSACTION_setPowerDialogOptionMode:I = 0x19

.field public static final TRANSACTION_setPowerMenuLockedState:I = 0x61

.field public static final TRANSACTION_setPowerSavingMode:I = 0x63

.field public static final TRANSACTION_setProKioskNotificationMessagesState:I = 0x1b

.field public static final TRANSACTION_setProKioskPowerDialogCustomItems:I = 0x1d

.field public static final TRANSACTION_setProKioskPowerDialogCustomItemsState:I = 0x1f

.field public static final TRANSACTION_setProKioskState:I = 0x21

.field public static final TRANSACTION_setProKioskStatusBarClockState:I = 0x23

.field public static final TRANSACTION_setProKioskStatusBarIconsState:I = 0x25

.field public static final TRANSACTION_setProKioskStatusBarMode:I = 0x27

.field public static final TRANSACTION_setProKioskString:I = 0x29

.field public static final TRANSACTION_setProKioskUsbMassStorageState:I = 0x2b

.field public static final TRANSACTION_setProKioskUsbNetAddresses:I = 0x2d

.field public static final TRANSACTION_setProKioskUsbNetState:I = 0x2f

.field public static final TRANSACTION_setProtectBatteryState:I = 0x108

.field public static final TRANSACTION_setQuickPanelButtons:I = 0xc7

.field public static final TRANSACTION_setQuickPanelEditMode:I = 0xc9

.field public static final TRANSACTION_setQuickPanelItems:I = 0xcb

.field public static final TRANSACTION_setQuickPanelItemsInternal:I = 0xcc

.field public static final TRANSACTION_setRecentLongPressActivity:I = 0x65

.field public static final TRANSACTION_setRecentLongPressMode:I = 0x67

.field public static final TRANSACTION_setScreenOffOnHomeLongPressState:I = 0x69

.field public static final TRANSACTION_setScreenOffOnStatusBarDoubleTapState:I = 0x6b

.field public static final TRANSACTION_setScreenPowerSavingState:I = 0x31

.field public static final TRANSACTION_setScreenTimeout:I = 0x32

.field public static final TRANSACTION_setScreenWakeupOnPowerState:I = 0x6d

.field public static final TRANSACTION_setSensorDisabled:I = 0x6f

.field public static final TRANSACTION_setSettingsEnabledItems:I = 0xa3

.field public static final TRANSACTION_setSettingsHiddenState:I = 0x42

.field public static final TRANSACTION_setShowIMEWithHardKeyboard:I = 0x10a

.field public static final TRANSACTION_setShuttingDownAnimation:I = 0xbf

.field public static final TRANSACTION_setShuttingDownAnimationSub:I = 0x11a

.field public static final TRANSACTION_setStatusBarClockState:I = 0xa5

.field public static final TRANSACTION_setStatusBarIconsState:I = 0xa7

.field public static final TRANSACTION_setStatusBarMode:I = 0xa9

.field public static final TRANSACTION_setStatusBarNotificationsState:I = 0xab

.field public static final TRANSACTION_setStatusBarText:I = 0x71

.field public static final TRANSACTION_setStatusBarTextScrollWidth:I = 0xad

.field public static final TRANSACTION_setStayAwakeState:I = 0x44

.field public static final TRANSACTION_setSystemLocale:I = 0x34

.field public static final TRANSACTION_setSystemRingtone:I = 0x35

.field public static final TRANSACTION_setSystemSoundsEnabledState:I = 0xce

.field public static final TRANSACTION_setSystemSoundsSilent:I = 0x45

.field public static final TRANSACTION_setToastEnabledState:I = 0x75

.field public static final TRANSACTION_setToastGravity:I = 0x77

.field public static final TRANSACTION_setToastGravityEnabledState:I = 0x7b

.field public static final TRANSACTION_setToastShowPackageNameState:I = 0x7d

.field public static final TRANSACTION_setTorchOnVolumeButtonsState:I = 0x7f

.field public static final TRANSACTION_setUnlockSimOnBootState:I = 0xaf

.field public static final TRANSACTION_setUnlockSimPin:I = 0xb1

.field public static final TRANSACTION_setUsbConnectionType:I = 0xe0

.field public static final TRANSACTION_setUsbDeviceDefaultPackage:I = 0x36

.field public static final TRANSACTION_setUsbMassStorageState:I = 0xb3

.field public static final TRANSACTION_setUsbNetAddresses:I = 0xb5

.field public static final TRANSACTION_setUsbNetState:I = 0xb7

.field public static final TRANSACTION_setUserInactivityTimeout:I = 0x37

.field public static final TRANSACTION_setVibrationIntensity:I = 0xd0

.field public static final TRANSACTION_setVolumeButtonRotationState:I = 0x81

.field public static final TRANSACTION_setVolumeControlStream:I = 0x83

.field public static final TRANSACTION_setVolumeKeyAppState:I = 0x87

.field public static final TRANSACTION_setVolumeKeyAppsList:I = 0x85

.field public static final TRANSACTION_setVolumePanelEnabledState:I = 0x89

.field public static final TRANSACTION_setWallpaper:I = 0x10c

.field public static final TRANSACTION_setWifiConnectionMonitorState:I = 0x46

.field public static final TRANSACTION_setWifiFrequencyBand:I = 0xba

.field public static final TRANSACTION_setWifiHotspotEnabledState:I = 0xd2

.field public static final TRANSACTION_setWifiState:I = 0x39

.field public static final TRANSACTION_setWifiStateEap:I = 0x3a

.field public static final TRANSACTION_setZeroPageState:I = 0xf1

.field public static final TRANSACTION_startProKioskMode:I = 0x11d

.field public static final TRANSACTION_startSmartView:I = 0x116

.field public static final TRANSACTION_startTcpDump:I = 0x124

.field public static final TRANSACTION_stayInDexForegroundMode:I = 0x11f

.field public static final TRANSACTION_stopProKioskMode:I = 0x11e

.field public static final TRANSACTION_stopTcpDump:I = 0x125


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.custom.IKnoxCustomManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.knox.custom.IKnoxCustomManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "setKnoxPrivacyPolicyByUserSettings"

    return-object p0

    :pswitch_1
    const-string p0, "isKnoxPrivacyPolicyAcceptedOrWithdrawnByUserSettings"

    return-object p0

    :pswitch_2
    const-string p0, "isKnoxPrivacyPolicyAcceptedInitially"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "removeRoleHolder"

    return-object p0

    :pswitch_4
    const-string p0, "addRoleHolder"

    return-object p0

    :pswitch_5
    const-string p0, "getRoleHolders"

    return-object p0

    :pswitch_6
    const-string p0, "migrateApplicationRestrictions"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "setKeyedAppStatesReport"

    return-object p0

    :pswitch_8
    const-string p0, "getApplicationRestrictionsInternal"

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "setApplicationRestrictionsInternal"

    return-object p0

    :pswitch_a
    const-string/jumbo p0, "readFile"

    return-object p0

    :pswitch_b
    const-string p0, "getTcpDump"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "stopTcpDump"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "startTcpDump"

    return-object p0

    :pswitch_e
    const-string p0, "getBsohUnbiased"

    return-object p0

    :pswitch_f
    const-string p0, "getBsoh"

    return-object p0

    :pswitch_10
    const-string/jumbo p0, "setAsoc"

    return-object p0

    :pswitch_11
    const-string p0, "getAsoc"

    return-object p0

    :pswitch_12
    const-string/jumbo p0, "stayInDexForegroundMode"

    return-object p0

    :pswitch_13
    const-string/jumbo p0, "stopProKioskMode"

    return-object p0

    :pswitch_14
    const-string/jumbo p0, "startProKioskMode"

    return-object p0

    :pswitch_15
    const-string/jumbo p0, "registerSystemUiCallback"

    return-object p0

    :pswitch_16
    const-string p0, "getLoadingLogoPath"

    return-object p0

    :pswitch_17
    const-string/jumbo p0, "setShuttingDownAnimationSub"

    return-object p0

    :pswitch_18
    const-string/jumbo p0, "setBootingAnimationSub"

    return-object p0

    :pswitch_19
    const-string p0, "getForceSingleView"

    return-object p0

    :pswitch_1a
    const-string/jumbo p0, "setForceSingleView"

    return-object p0

    :pswitch_1b
    const-string/jumbo p0, "startSmartView"

    return-object p0

    :pswitch_1c
    const-string p0, "clearForcedDisplaySizeDensity"

    return-object p0

    :pswitch_1d
    const-string/jumbo p0, "setForcedDisplaySizeDensity"

    return-object p0

    :pswitch_1e
    const-string p0, "getHardKeyIntentBroadcast"

    return-object p0

    :pswitch_1f
    const-string/jumbo p0, "setHardKeyIntentBroadcastInternal"

    return-object p0

    :pswitch_20
    const-string/jumbo p0, "setHardKeyIntentBroadcastExternal"

    return-object p0

    :pswitch_21
    const-string/jumbo p0, "setHardKeyIntentBroadcast"

    return-object p0

    :pswitch_22
    const-string p0, "getHardKeyBlockState"

    return-object p0

    :pswitch_23
    const-string p0, "getHardKeyReportState"

    return-object p0

    :pswitch_24
    const-string/jumbo p0, "setHardKeyReportState"

    return-object p0

    :pswitch_25
    const-string/jumbo p0, "setWallpaper"

    return-object p0

    :pswitch_26
    const-string p0, "getShowIMEWithHardKeyboard"

    return-object p0

    :pswitch_27
    const-string/jumbo p0, "setShowIMEWithHardKeyboard"

    return-object p0

    :pswitch_28
    const-string p0, "getProtectBatteryState"

    return-object p0

    :pswitch_29
    const-string/jumbo p0, "setProtectBatteryState"

    return-object p0

    :pswitch_2a
    const-string p0, "getDexHDMIAutoEnterState"

    return-object p0

    :pswitch_2b
    const-string/jumbo p0, "setDexHDMIAutoEnterState"

    return-object p0

    :pswitch_2c
    const-string p0, "isDexAutoOpenLastAppAllowed"

    return-object p0

    :pswitch_2d
    const-string p0, "allowDexAutoOpenLastApp"

    return-object p0

    :pswitch_2e
    const-string p0, "getDexHomeAlignment"

    return-object p0

    :pswitch_2f
    const-string/jumbo p0, "setDexHomeAlignment"

    return-object p0

    :pswitch_30
    const-string p0, "getDexScreenTimeout"

    return-object p0

    :pswitch_31
    const-string/jumbo p0, "setDexScreenTimeout"

    return-object p0

    :pswitch_32
    const-string p0, "clearDexLoadingLogo"

    return-object p0

    :pswitch_33
    const-string/jumbo p0, "setDexLoadingLogo"

    return-object p0

    :pswitch_34
    const-string p0, "getDexForegroundModePackageList"

    return-object p0

    :pswitch_35
    const-string/jumbo p0, "setDexForegroundModePackageList"

    return-object p0

    :pswitch_36
    const-string/jumbo p0, "removeDexURLShortcut"

    return-object p0

    :pswitch_37
    const-string p0, "addDexURLShortcutExtend"

    return-object p0

    :pswitch_38
    const-string p0, "addDexURLShortcut"

    return-object p0

    :pswitch_39
    const-string/jumbo p0, "removeDexShortcut"

    return-object p0

    :pswitch_3a
    const-string p0, "addDexShortcut"

    return-object p0

    :pswitch_3b
    const-string p0, "getHomeScreenMode"

    return-object p0

    :pswitch_3c
    const-string/jumbo p0, "setHomeScreenMode"

    return-object p0

    :pswitch_3d
    const-string p0, "getHardKeyIntentMode"

    return-object p0

    :pswitch_3e
    const-string/jumbo p0, "setHardKeyIntentMode"

    return-object p0

    :pswitch_3f
    const-string p0, "getZeroPageState"

    return-object p0

    :pswitch_40
    const-string/jumbo p0, "setZeroPageState"

    return-object p0

    :pswitch_41
    const-string p0, "getFavoriteApp"

    return-object p0

    :pswitch_42
    const-string p0, "getFavoriteAppsMaxCount"

    return-object p0

    :pswitch_43
    const-string/jumbo p0, "removeFavoriteApp"

    return-object p0

    :pswitch_44
    const-string/jumbo p0, "setFavoriteApp"

    return-object p0

    :pswitch_45
    const-string p0, "getAppsButtonState"

    return-object p0

    :pswitch_46
    const-string/jumbo p0, "setAppsButtonState"

    return-object p0

    :pswitch_47
    const-string p0, "deleteHomeScreenPage"

    return-object p0

    :pswitch_48
    const-string/jumbo p0, "removeWidget"

    return-object p0

    :pswitch_49
    const-string p0, "addWidget"

    return-object p0

    :pswitch_4a
    const-string/jumbo p0, "removeShortcut"

    return-object p0

    :pswitch_4b
    const-string p0, "addShortcut"

    return-object p0

    :pswitch_4c
    const-string/jumbo p0, "setBrightness"

    return-object p0

    :pswitch_4d
    const-string p0, "getForceAutoShutDownState"

    return-object p0

    :pswitch_4e
    const-string/jumbo p0, "setForceAutoShutDownState"

    return-object p0

    :pswitch_4f
    const-string p0, "getUsbConnectionTypeInternal"

    return-object p0

    :pswitch_50
    const-string p0, "getUsbConnectionType"

    return-object p0

    :pswitch_51
    const-string/jumbo p0, "setUsbConnectionType"

    return-object p0

    :pswitch_52
    const-string p0, "getLockScreenShortcut"

    return-object p0

    :pswitch_53
    const-string/jumbo p0, "setLockScreenShortcut"

    return-object p0

    :pswitch_54
    const-string/jumbo p0, "powerOff"

    return-object p0

    :pswitch_55
    const-string p0, "getMacAddress"

    return-object p0

    :pswitch_56
    const-string p0, "getAutoCallPickupState"

    return-object p0

    :pswitch_57
    const-string/jumbo p0, "setAutoCallPickupState"

    return-object p0

    :pswitch_58
    const-string p0, "getAutoCallNumberList"

    return-object p0

    :pswitch_59
    const-string p0, "getAutoCallNumberAnswerMode"

    return-object p0

    :pswitch_5a
    const-string p0, "getAutoCallNumberDelay"

    return-object p0

    :pswitch_5b
    const-string/jumbo p0, "removeAutoCallNumber"

    return-object p0

    :pswitch_5c
    const-string p0, "addAutoCallNumber"

    return-object p0

    :pswitch_5d
    const-string p0, "getWifiState"

    return-object p0

    :pswitch_5e
    const-string p0, "getWifiHotspotEnabledState"

    return-object p0

    :pswitch_5f
    const-string/jumbo p0, "setWifiHotspotEnabledState"

    return-object p0

    :pswitch_60
    const-string p0, "getVibrationIntensity"

    return-object p0

    :pswitch_61
    const-string/jumbo p0, "setVibrationIntensity"

    return-object p0

    :pswitch_62
    const-string p0, "getSystemSoundsEnabledState"

    return-object p0

    :pswitch_63
    const-string/jumbo p0, "setSystemSoundsEnabledState"

    return-object p0

    :pswitch_64
    const-string p0, "getQuickPanelItems"

    return-object p0

    :pswitch_65
    const-string/jumbo p0, "setQuickPanelItemsInternal"

    return-object p0

    :pswitch_66
    const-string/jumbo p0, "setQuickPanelItems"

    return-object p0

    :pswitch_67
    const-string p0, "getQuickPanelEditMode"

    return-object p0

    :pswitch_68
    const-string/jumbo p0, "setQuickPanelEditMode"

    return-object p0

    :pswitch_69
    const-string p0, "getQuickPanelButtons"

    return-object p0

    :pswitch_6a
    const-string/jumbo p0, "setQuickPanelButtons"

    return-object p0

    :pswitch_6b
    const-string p0, "getMobileNetworkType"

    return-object p0

    :pswitch_6c
    const-string/jumbo p0, "setMobileNetworkType"

    return-object p0

    :pswitch_6d
    const-string p0, "isSupportedForceAutoStartUpState"

    return-object p0

    :pswitch_6e
    const-string p0, "getForceAutoStartUpState"

    return-object p0

    :pswitch_6f
    const-string/jumbo p0, "setForceAutoStartUpState"

    return-object p0

    :pswitch_70
    const-string/jumbo p0, "setFlightModeState"

    return-object p0

    :pswitch_71
    const-string p0, "clearAnimation"

    return-object p0

    :pswitch_72
    const-string/jumbo p0, "setShuttingDownAnimation"

    return-object p0

    :pswitch_73
    const-string/jumbo p0, "setBootingAnimation"

    return-object p0

    :pswitch_74
    const-string p0, "getAccessibilitySettingsItems"

    return-object p0

    :pswitch_75
    const-string/jumbo p0, "setAccessibilitySettingsItems"

    return-object p0

    :pswitch_76
    const-string p0, "getWifiFrequencyBand"

    return-object p0

    :pswitch_77
    const-string/jumbo p0, "setWifiFrequencyBand"

    return-object p0

    :pswitch_78
    const-string p0, "getUsbNetStateInternal"

    return-object p0

    :pswitch_79
    const-string p0, "getUsbNetState"

    return-object p0

    :pswitch_7a
    const-string/jumbo p0, "setUsbNetState"

    return-object p0

    :pswitch_7b
    const-string p0, "getUsbNetAddress"

    return-object p0

    :pswitch_7c
    const-string/jumbo p0, "setUsbNetAddresses"

    return-object p0

    :pswitch_7d
    const-string p0, "getUsbMassStorageState"

    return-object p0

    :pswitch_7e
    const-string/jumbo p0, "setUsbMassStorageState"

    return-object p0

    :pswitch_7f
    const-string p0, "getUnlockSimPin"

    return-object p0

    :pswitch_80
    const-string/jumbo p0, "setUnlockSimPin"

    return-object p0

    :pswitch_81
    const-string p0, "getUnlockSimOnBootState"

    return-object p0

    :pswitch_82
    const-string/jumbo p0, "setUnlockSimOnBootState"

    return-object p0

    :pswitch_83
    const-string p0, "getStatusBarTextScrollWidth"

    return-object p0

    :pswitch_84
    const-string/jumbo p0, "setStatusBarTextScrollWidth"

    return-object p0

    :pswitch_85
    const-string p0, "getStatusBarNotificationsState"

    return-object p0

    :pswitch_86
    const-string/jumbo p0, "setStatusBarNotificationsState"

    return-object p0

    :pswitch_87
    const-string p0, "getStatusBarMode"

    return-object p0

    :pswitch_88
    const-string/jumbo p0, "setStatusBarMode"

    return-object p0

    :pswitch_89
    const-string p0, "getStatusBarIconsState"

    return-object p0

    :pswitch_8a
    const-string/jumbo p0, "setStatusBarIconsState"

    return-object p0

    :pswitch_8b
    const-string p0, "getStatusBarClockState"

    return-object p0

    :pswitch_8c
    const-string/jumbo p0, "setStatusBarClockState"

    return-object p0

    :pswitch_8d
    const-string p0, "getSettingsEnabledItems"

    return-object p0

    :pswitch_8e
    const-string/jumbo p0, "setSettingsEnabledItems"

    return-object p0

    :pswitch_8f
    const-string p0, "getPowerDialogCustomItemsState"

    return-object p0

    :pswitch_90
    const-string/jumbo p0, "setPowerDialogCustomItemsState"

    return-object p0

    :pswitch_91
    const-string p0, "getPowerDialogCustomItems"

    return-object p0

    :pswitch_92
    const-string/jumbo p0, "setPowerDialogCustomItems"

    return-object p0

    :pswitch_93
    const-string p0, "getLockScreenOverrideMode"

    return-object p0

    :pswitch_94
    const-string/jumbo p0, "setLockScreenOverrideMode"

    return-object p0

    :pswitch_95
    const-string p0, "getLcdBacklightState"

    return-object p0

    :pswitch_96
    const-string/jumbo p0, "setLcdBacklightState"

    return-object p0

    :pswitch_97
    const-string p0, "getKeyboardModeOverriden"

    return-object p0

    :pswitch_98
    const-string p0, "getKeyboardMode"

    return-object p0

    :pswitch_99
    const-string/jumbo p0, "setKeyboardMode"

    return-object p0

    :pswitch_9a
    const-string p0, "getDisplayMirroringState"

    return-object p0

    :pswitch_9b
    const-string/jumbo p0, "setDisplayMirroringState"

    return-object p0

    :pswitch_9c
    const-string p0, "getDeviceSpeakerEnabledState"

    return-object p0

    :pswitch_9d
    const-string/jumbo p0, "setDeviceSpeakerEnabledState"

    return-object p0

    :pswitch_9e
    const-string p0, "getChargerConnectionSoundEnabledState"

    return-object p0

    :pswitch_9f
    const-string/jumbo p0, "setChargerConnectionSoundEnabledState"

    return-object p0

    :pswitch_a0
    const-string/jumbo p0, "setBrowserHomepage"

    return-object p0

    :pswitch_a1
    const-string p0, "getAirGestureOptionState"

    return-object p0

    :pswitch_a2
    const-string/jumbo p0, "setAirGestureOptionState"

    return-object p0

    :pswitch_a3
    const-string p0, "getSerialNumber"

    return-object p0

    :pswitch_a4
    const-string p0, "getUltraPowerSavingPackages"

    return-object p0

    :pswitch_a5
    const-string/jumbo p0, "removePackagesFromUltraPowerSaving"

    return-object p0

    :pswitch_a6
    const-string p0, "addPackagesToUltraPowerSaving"

    return-object p0

    :pswitch_a7
    const-string p0, "getVolumePanelEnabledState"

    return-object p0

    :pswitch_a8
    const-string/jumbo p0, "setVolumePanelEnabledState"

    return-object p0

    :pswitch_a9
    const-string p0, "getVolumeKeyAppState"

    return-object p0

    :pswitch_aa
    const-string/jumbo p0, "setVolumeKeyAppState"

    return-object p0

    :pswitch_ab
    const-string p0, "getVolumeKeyAppsList"

    return-object p0

    :pswitch_ac
    const-string/jumbo p0, "setVolumeKeyAppsList"

    return-object p0

    :pswitch_ad
    const-string p0, "getVolumeControlStream"

    return-object p0

    :pswitch_ae
    const-string/jumbo p0, "setVolumeControlStream"

    return-object p0

    :pswitch_af
    const-string p0, "getVolumeButtonRotationState"

    return-object p0

    :pswitch_b0
    const-string/jumbo p0, "setVolumeButtonRotationState"

    return-object p0

    :pswitch_b1
    const-string p0, "getTorchOnVolumeButtonsState"

    return-object p0

    :pswitch_b2
    const-string/jumbo p0, "setTorchOnVolumeButtonsState"

    return-object p0

    :pswitch_b3
    const-string p0, "getToastShowPackageNameState"

    return-object p0

    :pswitch_b4
    const-string/jumbo p0, "setToastShowPackageNameState"

    return-object p0

    :pswitch_b5
    const-string p0, "getToastGravityEnabledState"

    return-object p0

    :pswitch_b6
    const-string/jumbo p0, "setToastGravityEnabledState"

    return-object p0

    :pswitch_b7
    const-string p0, "getToastGravityYOffset"

    return-object p0

    :pswitch_b8
    const-string p0, "getToastGravityXOffset"

    return-object p0

    :pswitch_b9
    const-string p0, "getToastGravity"

    return-object p0

    :pswitch_ba
    const-string/jumbo p0, "setToastGravity"

    return-object p0

    :pswitch_bb
    const-string p0, "getToastEnabledState"

    return-object p0

    :pswitch_bc
    const-string/jumbo p0, "setToastEnabledState"

    return-object p0

    :pswitch_bd
    const-string p0, "getStatusBarTextSize"

    return-object p0

    :pswitch_be
    const-string p0, "getStatusBarTextStyle"

    return-object p0

    :pswitch_bf
    const-string p0, "getStatusBarText"

    return-object p0

    :pswitch_c0
    const-string/jumbo p0, "setStatusBarText"

    return-object p0

    :pswitch_c1
    const-string p0, "getSensorDisabled"

    return-object p0

    :pswitch_c2
    const-string/jumbo p0, "setSensorDisabled"

    return-object p0

    :pswitch_c3
    const-string p0, "getScreenWakeupOnPowerState"

    return-object p0

    :pswitch_c4
    const-string/jumbo p0, "setScreenWakeupOnPowerState"

    return-object p0

    :pswitch_c5
    const-string p0, "getScreenOffOnStatusBarDoubleTapState"

    return-object p0

    :pswitch_c6
    const-string/jumbo p0, "setScreenOffOnStatusBarDoubleTapState"

    return-object p0

    :pswitch_c7
    const-string p0, "getScreenOffOnHomeLongPressState"

    return-object p0

    :pswitch_c8
    const-string/jumbo p0, "setScreenOffOnHomeLongPressState"

    return-object p0

    :pswitch_c9
    const-string p0, "getRecentLongPressMode"

    return-object p0

    :pswitch_ca
    const-string/jumbo p0, "setRecentLongPressMode"

    return-object p0

    :pswitch_cb
    const-string p0, "getRecentLongPressActivity"

    return-object p0

    :pswitch_cc
    const-string/jumbo p0, "setRecentLongPressActivity"

    return-object p0

    :pswitch_cd
    const-string p0, "getPowerSavingMode"

    return-object p0

    :pswitch_ce
    const-string/jumbo p0, "setPowerSavingMode"

    return-object p0

    :pswitch_cf
    const-string p0, "getPowerMenuLockedState"

    return-object p0

    :pswitch_d0
    const-string/jumbo p0, "setPowerMenuLockedState"

    return-object p0

    :pswitch_d1
    const-string p0, "getLTESettingState"

    return-object p0

    :pswitch_d2
    const-string/jumbo p0, "setLTESettingState"

    return-object p0

    :pswitch_d3
    const-string/jumbo p0, "setLockscreenWallpaper"

    return-object p0

    :pswitch_d4
    const-string p0, "getLockScreenHiddenItems"

    return-object p0

    :pswitch_d5
    const-string/jumbo p0, "setLockScreenHiddenItems"

    return-object p0

    :pswitch_d6
    const-string p0, "getInfraredState"

    return-object p0

    :pswitch_d7
    const-string/jumbo p0, "setInfraredState"

    return-object p0

    :pswitch_d8
    const-string p0, "getHardKeyIntentState"

    return-object p0

    :pswitch_d9
    const-string/jumbo p0, "setHardKeyIntentState"

    return-object p0

    :pswitch_da
    const-string p0, "getGearNotificationState"

    return-object p0

    :pswitch_db
    const-string/jumbo p0, "setGearNotificationState"

    return-object p0

    :pswitch_dc
    const-string p0, "getEthernetState"

    return-object p0

    :pswitch_dd
    const-string/jumbo p0, "setEthernetState"

    return-object p0

    :pswitch_de
    const-string p0, "getEthernetConfigurationType"

    return-object p0

    :pswitch_df
    const-string/jumbo p0, "setEthernetConfiguration"

    return-object p0

    :pswitch_e0
    const-string p0, "getChargingLEDState"

    return-object p0

    :pswitch_e1
    const-string/jumbo p0, "setChargingLEDState"

    return-object p0

    :pswitch_e2
    const-string p0, "getCallScreenDisabledItems"

    return-object p0

    :pswitch_e3
    const-string/jumbo p0, "setCallScreenDisabledItems"

    return-object p0

    :pswitch_e4
    const-string p0, "getBatteryLevelColourItem"

    return-object p0

    :pswitch_e5
    const-string/jumbo p0, "setBatteryLevelColourItem"

    return-object p0

    :pswitch_e6
    const-string p0, "getAppBlockDownloadState"

    return-object p0

    :pswitch_e7
    const-string/jumbo p0, "setAppBlockDownloadState"

    return-object p0

    :pswitch_e8
    const-string p0, "getAppBlockDownloadNamespaces"

    return-object p0

    :pswitch_e9
    const-string/jumbo p0, "setAppBlockDownloadNamespaces"

    return-object p0

    :pswitch_ea
    const-string p0, "getWifiConnectionMonitorState"

    return-object p0

    :pswitch_eb
    const-string/jumbo p0, "setWifiConnectionMonitorState"

    return-object p0

    :pswitch_ec
    const-string/jumbo p0, "setSystemSoundsSilent"

    return-object p0

    :pswitch_ed
    const-string/jumbo p0, "setStayAwakeState"

    return-object p0

    :pswitch_ee
    const-string p0, "getSettingsHiddenState"

    return-object p0

    :pswitch_ef
    const-string/jumbo p0, "setSettingsHiddenState"

    return-object p0

    :pswitch_f0
    const-string p0, "getMotionControlState"

    return-object p0

    :pswitch_f1
    const-string/jumbo p0, "setMotionControlState"

    return-object p0

    :pswitch_f2
    const-string/jumbo p0, "setMobileDataRoamingState"

    return-object p0

    :pswitch_f3
    const-string p0, "getHideNotificationMessages"

    return-object p0

    :pswitch_f4
    const-string/jumbo p0, "setHideNotificationMessages"

    return-object p0

    :pswitch_f5
    const-string p0, "getBackupRestoreState"

    return-object p0

    :pswitch_f6
    const-string/jumbo p0, "setBackupRestoreState"

    return-object p0

    :pswitch_f7
    const-string/jumbo p0, "setWifiStateEap"

    return-object p0

    :pswitch_f8
    const-string/jumbo p0, "setWifiState"

    return-object p0

    :pswitch_f9
    const-string p0, "getUserInactivityTimeout"

    return-object p0

    :pswitch_fa
    const-string/jumbo p0, "setUserInactivityTimeout"

    return-object p0

    :pswitch_fb
    const-string/jumbo p0, "setUsbDeviceDefaultPackage"

    return-object p0

    :pswitch_fc
    const-string/jumbo p0, "setSystemRingtone"

    return-object p0

    :pswitch_fd
    const-string/jumbo p0, "setSystemLocale"

    return-object p0

    :pswitch_fe
    const-string p0, "getScreenTimeout"

    return-object p0

    :pswitch_ff
    const-string/jumbo p0, "setScreenTimeout"

    return-object p0

    :pswitch_100
    const-string/jumbo p0, "setScreenPowerSavingState"

    return-object p0

    :pswitch_101
    const-string p0, "getProKioskUsbNetState"

    return-object p0

    :pswitch_102
    const-string/jumbo p0, "setProKioskUsbNetState"

    return-object p0

    :pswitch_103
    const-string p0, "getProKioskUsbNetAddress"

    return-object p0

    :pswitch_104
    const-string/jumbo p0, "setProKioskUsbNetAddresses"

    return-object p0

    :pswitch_105
    const-string p0, "getProKioskUsbMassStorageState"

    return-object p0

    :pswitch_106
    const-string/jumbo p0, "setProKioskUsbMassStorageState"

    return-object p0

    :pswitch_107
    const-string p0, "getProKioskString"

    return-object p0

    :pswitch_108
    const-string/jumbo p0, "setProKioskString"

    return-object p0

    :pswitch_109
    const-string p0, "getProKioskStatusBarMode"

    return-object p0

    :pswitch_10a
    const-string/jumbo p0, "setProKioskStatusBarMode"

    return-object p0

    :pswitch_10b
    const-string p0, "getProKioskStatusBarIconsState"

    return-object p0

    :pswitch_10c
    const-string/jumbo p0, "setProKioskStatusBarIconsState"

    return-object p0

    :pswitch_10d
    const-string p0, "getProKioskStatusBarClockState"

    return-object p0

    :pswitch_10e
    const-string/jumbo p0, "setProKioskStatusBarClockState"

    return-object p0

    :pswitch_10f
    const-string p0, "getProKioskState"

    return-object p0

    :pswitch_110
    const-string/jumbo p0, "setProKioskState"

    return-object p0

    :pswitch_111
    const-string p0, "getProKioskPowerDialogCustomItemsState"

    return-object p0

    :pswitch_112
    const-string/jumbo p0, "setProKioskPowerDialogCustomItemsState"

    return-object p0

    :pswitch_113
    const-string p0, "getProKioskPowerDialogCustomItems"

    return-object p0

    :pswitch_114
    const-string/jumbo p0, "setProKioskPowerDialogCustomItems"

    return-object p0

    :pswitch_115
    const-string p0, "getProKioskNotificationMessagesState"

    return-object p0

    :pswitch_116
    const-string/jumbo p0, "setProKioskNotificationMessagesState"

    return-object p0

    :pswitch_117
    const-string p0, "getPowerDialogOptionMode"

    return-object p0

    :pswitch_118
    const-string/jumbo p0, "setPowerDialogOptionMode"

    return-object p0

    :pswitch_119
    const-string p0, "getPowerDialogItems"

    return-object p0

    :pswitch_11a
    const-string/jumbo p0, "setPowerDialogItems"

    return-object p0

    :pswitch_11b
    const-string/jumbo p0, "setPassCode"

    return-object p0

    :pswitch_11c
    const-string/jumbo p0, "setMultiWindowState"

    return-object p0

    :pswitch_11d
    const-string/jumbo p0, "setMobileDataState"

    return-object p0

    :pswitch_11e
    const-string p0, "getInputMethodRestrictionState"

    return-object p0

    :pswitch_11f
    const-string/jumbo p0, "setInputMethodRestrictionState"

    return-object p0

    :pswitch_120
    const-string/jumbo p0, "setInputMethod"

    return-object p0

    :pswitch_121
    const-string p0, "getHomeActivity"

    return-object p0

    :pswitch_122
    const-string/jumbo p0, "setHomeActivity"

    return-object p0

    :pswitch_123
    const-string p0, "getExtendedCallInfoState"

    return-object p0

    :pswitch_124
    const-string/jumbo p0, "setExtendedCallInfoState"

    return-object p0

    :pswitch_125
    const-string p0, "getExitUI"

    return-object p0

    :pswitch_126
    const-string/jumbo p0, "setExitUI"

    return-object p0

    :pswitch_127
    const-string/jumbo p0, "setDeveloperOptionsHidden"

    return-object p0

    :pswitch_128
    const-string/jumbo p0, "setCpuPowerSavingState"

    return-object p0

    :pswitch_129
    const-string/jumbo p0, "setBluetoothState"

    return-object p0

    :pswitch_12a
    const-string p0, "getAutoRotationState"

    return-object p0

    :pswitch_12b
    const-string/jumbo p0, "setAutoRotationState"

    return-object p0

    :pswitch_12c
    const-string/jumbo p0, "setAudioVolume"

    return-object p0

    :pswitch_12d
    const-string/jumbo p0, "setAdbState"

    return-object p0

    :pswitch_12e
    const-string/jumbo p0, "removeLockScreen"

    return-object p0

    :pswitch_12f
    const-string p0, "dialEmergencyNumber"

    return-object p0

    :pswitch_130
    const-string p0, "checkEnterprisePermission"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_130
        :pswitch_12f
        :pswitch_12e
        :pswitch_12d
        :pswitch_12c
        :pswitch_12b
        :pswitch_12a
        :pswitch_129
        :pswitch_128
        :pswitch_127
        :pswitch_126
        :pswitch_125
        :pswitch_124
        :pswitch_123
        :pswitch_122
        :pswitch_121
        :pswitch_120
        :pswitch_11f
        :pswitch_11e
        :pswitch_11d
        :pswitch_11c
        :pswitch_11b
        :pswitch_11a
        :pswitch_119
        :pswitch_118
        :pswitch_117
        :pswitch_116
        :pswitch_115
        :pswitch_114
        :pswitch_113
        :pswitch_112
        :pswitch_111
        :pswitch_110
        :pswitch_10f
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 0

    const/16 p0, 0x130

    return p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.knox.custom.IKnoxCustomManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setKnoxPrivacyPolicyByUserSettings(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->isKnoxPrivacyPolicyAcceptedOrWithdrawnByUserSettings()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->isKnoxPrivacyPolicyAcceptedInitially()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$removeRoleHolder$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_4
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$addRoleHolder$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->migrateApplicationRestrictions()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setKeyedAppStatesReport$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_8
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$getApplicationRestrictionsInternal$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_9
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setApplicationRestrictionsInternal$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getTcpDump()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_c
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->stopTcpDump()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$startTcpDump$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_e
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getBsohUnbiased()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getBsoh()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAsoc(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_11
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAsoc()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_12
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->stayInDexForegroundMode(Landroid/content/ComponentName;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->stopProKioskMode(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$startProKioskMode$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->registerSystemUiCallback(Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_16
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLoadingLogoPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_17
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setShuttingDownAnimationSub(Landroid/os/ParcelFileDescriptor;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setBootingAnimationSub$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_19
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getForceSingleView()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setForceSingleView(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1b
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->startSmartView()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1c
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->clearForcedDisplaySizeDensity()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setForcedDisplaySizeDensity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_1e
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$getHardKeyIntentBroadcast$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_1f
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setHardKeyIntentBroadcastInternal$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_20
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setHardKeyIntentBroadcastExternal$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_21
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setHardKeyIntentBroadcast$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_22
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$getHardKeyBlockState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyReportState(II)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_24
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setHardKeyReportState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_25
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setWallpaper$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_26
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getShowIMEWithHardKeyboard()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setShowIMEWithHardKeyboard(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_28
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProtectBatteryState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProtectBatteryState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_2a
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexHDMIAutoEnterState()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexHDMIAutoEnterState(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_2c
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->isDexAutoOpenLastAppAllowed()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->allowDexAutoOpenLastApp(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_2e
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexHomeAlignment()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexHomeAlignment(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_30
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexScreenTimeout()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexScreenTimeout(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_32
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->clearDexLoadingLogo()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_33
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexLoadingLogo(Landroid/os/ParcelFileDescriptor;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_34
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexForegroundModePackageList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDexForegroundModePackageList(ILjava/util/List;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeDexURLShortcut(Ljava/lang/String;Landroid/content/ComponentName;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_37
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$addDexURLShortcutExtend$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_38
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$addDexURLShortcut$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_39
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeDexShortcut(Landroid/content/ComponentName;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_3a
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$addDexShortcut$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_3b
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHomeScreenMode()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHomeScreenMode(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_3d
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyIntentMode()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHardKeyIntentMode(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_3f
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getZeroPageState()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setZeroPageState(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getFavoriteApp(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_42
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getFavoriteAppsMaxCount()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeFavoriteApp(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setFavoriteApp(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_45
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppsButtonState()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAppsButtonState(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->deleteHomeScreenPage(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeWidget(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_49
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$addWidget$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeShortcut(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_4b
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$addShortcut$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBrightness(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_4d
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getForceAutoShutDownState()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setForceAutoShutDownState(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_4f
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionTypeInternal()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_50
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionType()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUsbConnectionType(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLockScreenShortcut(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setLockScreenShortcut(ILjava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_54
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->powerOff()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_55
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_56
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallPickupState()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAutoCallPickupState(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_58
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberAnswerMode(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberDelay(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeAutoCallNumber(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_5c
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$addAutoCallNumber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_5d
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_5e
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiHotspotEnabledState()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWifiHotspotEnabledState(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVibrationIntensity(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVibrationIntensity(II)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_62
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSystemSoundsEnabledState()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSystemSoundsEnabledState(II)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_64
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getQuickPanelItems()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_65
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setQuickPanelItemsInternal(Landroid/os/Bundle;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setQuickPanelItems(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_67
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getQuickPanelEditMode()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setQuickPanelEditMode(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_69
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getQuickPanelButtons()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setQuickPanelButtons(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_6b
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getMobileNetworkType()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setMobileNetworkType(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_6d
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->isSupportedForceAutoStartUpState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_6e
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getForceAutoStartUpState()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setForceAutoStartUpState(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setFlightModeState(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->clearAnimation(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_72
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p4, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setShuttingDownAnimation(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_73
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setBootingAnimation$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_74
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAccessibilitySettingsItems()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAccessibilitySettingsItems(II)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_76
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiFrequencyBand()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWifiFrequencyBand(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_78
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetStateInternal()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_79
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUsbNetState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUsbNetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_7d
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbMassStorageState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUsbMassStorageState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_7f
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUnlockSimPin()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUnlockSimPin(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_81
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUnlockSimOnBootState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUnlockSimOnBootState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_83
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextScrollWidth()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_84
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setStatusBarTextScrollWidth$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_85
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarNotificationsState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarNotificationsState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_87
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarMode()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarMode(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_89
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarIconsState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarIconsState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_8b
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarClockState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarClockState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_8d
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsEnabledItems()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSettingsEnabledItems(ZI)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_8f
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItemsState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerDialogCustomItemsState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_91
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_92
    sget-object p1, Lcom/samsung/android/knox/custom/PowerItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerDialogCustomItems(Ljava/util/List;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_93
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLockScreenOverrideMode()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setLockScreenOverrideMode(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_95
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLcdBacklightState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setLcdBacklightState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getKeyboardModeOverriden(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_98
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getKeyboardMode()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setKeyboardMode(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_9a
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDisplayMirroringState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDisplayMirroringState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_9c
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDeviceSpeakerEnabledState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDeviceSpeakerEnabledState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_9e
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getChargerConnectionSoundEnabledState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setChargerConnectionSoundEnabledState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBrowserHomepage(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAirGestureOptionState(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAirGestureOptionState(IZ)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_a3
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSerialNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a4
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUltraPowerSavingPackages()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removePackagesFromUltraPowerSaving(Ljava/util/List;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addPackagesToUltraPowerSaving(Ljava/util/List;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_a7
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumePanelEnabledState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVolumePanelEnabledState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_a9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVolumeKeyAppState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_ab
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppsList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVolumeKeyAppsList(Ljava/util/List;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_ad
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeControlStream()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVolumeControlStream(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_af
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeButtonRotationState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setVolumeButtonRotationState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_b1
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getTorchOnVolumeButtonsState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setTorchOnVolumeButtonsState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_b3
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastShowPackageNameState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setToastShowPackageNameState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_b5
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityEnabledState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setToastGravityEnabledState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_b7
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityYOffset()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_b8
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityXOffset()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_b9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravity()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_ba
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setToastGravity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_bb
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastEnabledState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setToastEnabledState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_bd
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextSize()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_be
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextStyle()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_bf
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c0
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setStatusBarText$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_c1
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSensorDisabled()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSensorDisabled(ZI)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_c3
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenWakeupOnPowerState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setScreenWakeupOnPowerState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_c5
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnStatusBarDoubleTapState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setScreenOffOnStatusBarDoubleTapState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_c7
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnHomeLongPressState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setScreenOffOnHomeLongPressState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_c9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getRecentLongPressMode()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setRecentLongPressMode(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_cb
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getRecentLongPressActivity()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setRecentLongPressActivity(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_cd
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerSavingMode()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerSavingMode(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_cf
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerMenuLockedState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerMenuLockedState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_d1
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLTESettingState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setLTESettingState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setLockscreenWallpaper(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_d4
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLockScreenHiddenItems()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setLockScreenHiddenItems(ZI)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_d6
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getInfraredState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setInfraredState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_d8
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyIntentState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHardKeyIntentState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_da
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getGearNotificationState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_db
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setGearNotificationState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_dc
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getEthernetState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setEthernetState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_de
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getEthernetConfigurationType()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_df
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setEthernetConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_e0
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getChargingLEDState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setChargingLEDState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_e2
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getCallScreenDisabledItems()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setCallScreenDisabledItems(ZI)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_e4
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_e5
    sget-object p1, Lcom/samsung/android/knox/custom/StatusbarIconItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/custom/StatusbarIconItem;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBatteryLevelColourItem(Lcom/samsung/android/knox/custom/StatusbarIconItem;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_e6
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAppBlockDownloadState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_e8
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadNamespaces()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_e9
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAppBlockDownloadNamespaces(Ljava/util/List;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_ea
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiConnectionMonitorState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWifiConnectionMonitorState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_ec
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSystemSoundsSilent()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStayAwakeState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_ee
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsHiddenState()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSettingsHiddenState(ZI)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getMotionControlState(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setMotionControlState(IZ)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setMobileDataRoamingState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_f3
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHideNotificationMessages()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHideNotificationMessages(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getBackupRestoreState(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBackupRestoreState(IZ)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_f7
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setWifiStateEap$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_f8
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setWifiState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_f9
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUserInactivityTimeout()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUserInactivityTimeout(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_fb
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->onTransact$setUsbDeviceDefaultPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p0

    return p0

    :pswitch_fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSystemRingtone(ILjava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setSystemLocale(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_fe
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenTimeout()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setScreenTimeout(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_100
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setScreenPowerSavingState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_101
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskUsbNetState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskUsbNetState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskUsbNetAddress(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskUsbNetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_105
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskUsbMassStorageState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_106
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskUsbMassStorageState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskString(ILjava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_109
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskStatusBarMode()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_10a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskStatusBarMode(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_10b
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskStatusBarIconsState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_10c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskStatusBarIconsState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_10d
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskStatusBarClockState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_10e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskStatusBarClockState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_10f
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_110
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskState(ZLjava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_111
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskPowerDialogCustomItemsState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_112
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskPowerDialogCustomItemsState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_113
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskPowerDialogCustomItems()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_114
    sget-object p1, Lcom/samsung/android/knox/custom/PowerItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskPowerDialogCustomItems(Ljava/util/List;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_115
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskNotificationMessagesState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_116
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskNotificationMessagesState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_117
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogOptionMode()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerDialogOptionMode(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_119
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogItems()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_11a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPowerDialogItems(I)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_11b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setPassCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_11c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setMultiWindowState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_11d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setMobileDataState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_11e
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getInputMethodRestrictionState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_11f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setInputMethodRestrictionState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setInputMethod(Ljava/lang/String;Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_121
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHomeActivity()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHomeActivity(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_123
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExtendedCallInfoState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_124
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setExtendedCallInfoState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExitUI(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setExitUI(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_127
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setDeveloperOptionsHidden()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_128
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setCpuPowerSavingState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_129
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBluetoothState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_12a
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoRotationState()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_12b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAutoRotationState(ZI)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_12c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAudioVolume(II)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_12d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setAdbState(Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_12e
    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeLockScreen()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_12f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->dialEmergencyNumber(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->checkEnterprisePermission(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_130
        :pswitch_12f
        :pswitch_12e
        :pswitch_12d
        :pswitch_12c
        :pswitch_12b
        :pswitch_12a
        :pswitch_129
        :pswitch_128
        :pswitch_127
        :pswitch_126
        :pswitch_125
        :pswitch_124
        :pswitch_123
        :pswitch_122
        :pswitch_121
        :pswitch_120
        :pswitch_11f
        :pswitch_11e
        :pswitch_11d
        :pswitch_11c
        :pswitch_11b
        :pswitch_11a
        :pswitch_119
        :pswitch_118
        :pswitch_117
        :pswitch_116
        :pswitch_115
        :pswitch_114
        :pswitch_113
        :pswitch_112
        :pswitch_111
        :pswitch_110
        :pswitch_10f
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onTransact$addAutoCallNumber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addAutoCallNumber(Ljava/lang/String;II)I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$addDexShortcut$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addDexShortcut(IILandroid/content/ComponentName;)I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$addDexURLShortcut$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addDexURLShortcut(IILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$addDexURLShortcutExtend$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/ComponentName;

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addDexURLShortcutExtend(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/ParcelFileDescriptor;)I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$addRoleHolder$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$addShortcut$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addShortcut(IIILjava/lang/String;)I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$addWidget$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->addWidget(IIIIILjava/lang/String;)I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$getApplicationRestrictionsInternal$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getApplicationRestrictionsInternal(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return p1
.end method

.method public final onTransact$getHardKeyBlockState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyBlockState(II)I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$getHardKeyIntentBroadcast$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyIntentBroadcast(II)I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$removeRoleHolder$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->removeRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$setApplicationRestrictionsInternal$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setApplicationRestrictionsInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return p1
.end method

.method public final onTransact$setBootingAnimation$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v1, v2, v0, v3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBootingAnimation(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;I)I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$setBootingAnimationSub$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setBootingAnimationSub(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$setEthernetConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setEthernetConfiguration(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$setForcedDisplaySizeDensity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setForcedDisplaySizeDensity(III)I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$setHardKeyIntentBroadcast$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHardKeyIntentBroadcast(ZILandroid/content/Intent;Ljava/lang/String;ZZ)I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$setHardKeyIntentBroadcastExternal$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHardKeyIntentBroadcastExternal(ZIILandroid/content/Intent;Ljava/lang/String;Z)I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$setHardKeyIntentBroadcastInternal$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHardKeyIntentBroadcastInternal(Ljava/lang/String;ZILandroid/content/Intent;Ljava/lang/String;ZZ)I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$setHardKeyReportState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setHardKeyReportState(IIII)I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$setKeyedAppStatesReport$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setKeyedAppStatesReport(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$setStatusBarText$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarText(Ljava/lang/String;II)I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$setStatusBarTextScrollWidth$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setStatusBarTextScrollWidth(Ljava/lang/String;III)I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$setToastGravity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setToastGravity(III)I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$setUsbDeviceDefaultPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/hardware/usb/UsbDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setUsbDeviceDefaultPackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$setWallpaper$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWallpaper(Landroid/os/Bundle;Landroid/graphics/Rect;ZI)I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$setWifiState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWifiState(ZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$setWifiStateEap$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setWifiStateEap(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$startProKioskMode$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->startProKioskMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTransact$startTcpDump$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->startTcpDump(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method
