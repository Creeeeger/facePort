.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final greylist-max-o TRANSACTION_abandonAudioFocus:I = 0x3e

.field static final blacklist TRANSACTION_abandonAudioFocusForTest:I = 0x92

.field static final blacklist TRANSACTION_addAssistantServicesUids:I = 0xc0

.field static final greylist-max-o TRANSACTION_addMixForPolicy:I = 0x55

.field static final blacklist TRANSACTION_addPackage:I = 0xd9

.field static final blacklist TRANSACTION_addSpatializerCompatibleAudioDevice:I = 0xa8

.field static final greylist-max-o TRANSACTION_adjustStreamVolume:I = 0x9

.field static final blacklist TRANSACTION_adjustStreamVolumeForUid:I = 0x80

.field static final blacklist TRANSACTION_adjustStreamVolumeWithAttribution:I = 0xa

.field static final blacklist TRANSACTION_adjustSuggestedStreamVolumeForUid:I = 0x81

.field static final blacklist TRANSACTION_areNavigationRepeatSoundEffectsEnabled:I = 0x8a

.field static final blacklist TRANSACTION_canBeSpatialized:I = 0xa0

.field static final blacklist TRANSACTION_cancelMuteAwaitConnection:I = 0xb9

.field static final blacklist TRANSACTION_clearPreferredDevicesForCapturePreset:I = 0x7c

.field static final greylist-max-o TRANSACTION_disableSafeMediaVolume:I = 0x4f

.field static final blacklist TRANSACTION_dismissVolumePanel:I = 0xeb

.field static final greylist-max-o TRANSACTION_dispatchFocusChange:I = 0x61

.field static final greylist-max-o TRANSACTION_forceRemoteSubmixFullVolume:I = 0xf

.field static final greylist-max-o TRANSACTION_forceVolumeControlStream:I = 0x44

.field static final blacklist TRANSACTION_getA2dpDeviceVolume:I = 0xef

.field static final blacklist TRANSACTION_getActiveAssistantServiceUids:I = 0xc4

.field static final greylist-max-o TRANSACTION_getActivePlaybackConfigurations:I = 0x5f

.field static final greylist-max-o TRANSACTION_getActiveRecordingConfigurations:I = 0x5c

.field static final blacklist TRANSACTION_getActualHeadTrackingMode:I = 0xad

.field static final blacklist TRANSACTION_getAdditionalOutputDeviceDelay:I = 0x8f

.field static final blacklist TRANSACTION_getAllowedCapturePolicy:I = 0x74

.field static final blacklist TRANSACTION_getAppDevice:I = 0xcd

.field static final blacklist TRANSACTION_getAppVolume:I = 0xcf

.field static final blacklist TRANSACTION_getAssistantServicesUids:I = 0xc3

.field static final blacklist TRANSACTION_getAudioProductStrategies:I = 0x1d

.field static final blacklist TRANSACTION_getAudioServiceConfig:I = 0xc8

.field static final blacklist TRANSACTION_getAudioVolumeGroups:I = 0x15

.field static final blacklist TRANSACTION_getAvailableCommunicationDeviceIds:I = 0x85

.field static final blacklist TRANSACTION_getCommunicationDevice:I = 0x87

.field static final greylist-max-o TRANSACTION_getCurrentAudioFocus:I = 0x40

.field static final blacklist TRANSACTION_getCurrentAudioFocusPackageName:I = 0xec

.field static final blacklist TRANSACTION_getDefaultVolumeInfo:I = 0xb6

.field static final blacklist TRANSACTION_getDesiredHeadTrackingMode:I = 0xab

.field static final blacklist TRANSACTION_getDeviceMaskForStream:I = 0x84

.field static final blacklist TRANSACTION_getDeviceVolumeBehavior:I = 0x79

.field static final blacklist TRANSACTION_getDevicesForAttributes:I = 0x71

.field static final blacklist TRANSACTION_getDevicesForAttributesUnprotected:I = 0x72

.field static final blacklist TRANSACTION_getEncodedSurroundMode:I = 0x36

.field static final blacklist TRANSACTION_getExcludedRingtoneTitles:I = 0xf6

.field static final blacklist TRANSACTION_getFadeOutDurationOnFocusLossMillis:I = 0x93

.field static final blacklist TRANSACTION_getFineVolume:I = 0xde

.field static final blacklist TRANSACTION_getFloatVolumeTable:I = 0xf0

.field static final greylist-max-o TRANSACTION_getFocusRampTimeMs:I = 0x60

.field static final blacklist TRANSACTION_getFocusStack:I = 0xbe

.field static final blacklist TRANSACTION_getHalVersion:I = 0xc6

.field static final greylist-max-o TRANSACTION_getLastAudibleStreamVolume:I = 0x1a

.field static final blacklist TRANSACTION_getMaxAdditionalOutputDeviceDelay:I = 0x90

.field static final blacklist TRANSACTION_getMaxVolumeIndexForAttributes:I = 0x18

.field static final blacklist TRANSACTION_getMediaVolumeSteps:I = 0xe8

.field static final blacklist TRANSACTION_getMinVolumeIndexForAttributes:I = 0x19

.field static final greylist-max-o TRANSACTION_getMode:I = 0x2b

.field static final blacklist TRANSACTION_getModeInternal:I = 0xf9

.field static final blacklist TRANSACTION_getMuteInterval:I = 0xe3

.field static final blacklist TRANSACTION_getMutingExpectedDevice:I = 0xba

.field static final blacklist TRANSACTION_getPinAppInfo:I = 0xd6

.field static final blacklist TRANSACTION_getPinDevice:I = 0xd7

.field static final blacklist TRANSACTION_getPreferredDevicesForCapturePreset:I = 0x7d

.field static final blacklist TRANSACTION_getPreferredDevicesForStrategy:I = 0x70

.field static final blacklist TRANSACTION_getPrevRingerMode:I = 0xe5

.field static final blacklist TRANSACTION_getRadioOutputPath:I = 0xea

.field static final blacklist TRANSACTION_getRemainingMuteIntervalMs:I = 0xe4

.field static final blacklist TRANSACTION_getReportedSurroundFormats:I = 0x32

.field static final greylist-max-o TRANSACTION_getRingerModeExternal:I = 0x24

.field static final greylist-max-o TRANSACTION_getRingerModeInternal:I = 0x25

.field static final greylist-max-o TRANSACTION_getRingtonePlayer:I = 0x46

.field static final blacklist TRANSACTION_getSelectedAppList:I = 0xd8

.field static final blacklist TRANSACTION_getSpatializerCompatibleAudioDevices:I = 0xa7

.field static final blacklist TRANSACTION_getSpatializerImmersiveAudioLevel:I = 0x96

.field static final blacklist TRANSACTION_getSpatializerOutput:I = 0xb2

.field static final blacklist TRANSACTION_getSpatializerParameter:I = 0xb1

.field static final greylist-max-o TRANSACTION_getStreamMaxVolume:I = 0x14

.field static final greylist-max-o TRANSACTION_getStreamMinVolume:I = 0x13

.field static final greylist-max-o TRANSACTION_getStreamVolume:I = 0x12

.field static final blacklist TRANSACTION_getStreamVolumeForDevice:I = 0xd5

.field static final blacklist TRANSACTION_getSupportedHeadTrackingModes:I = 0xac

.field static final blacklist TRANSACTION_getSupportedSystemUsages:I = 0x1c

.field static final blacklist TRANSACTION_getSurroundFormats:I = 0x31

.field static final greylist-max-o TRANSACTION_getUiSoundsStreamType:I = 0x47

.field static final blacklist TRANSACTION_getUidForDevice:I = 0xcb

.field static final greylist-max-o TRANSACTION_getVibrateSetting:I = 0x28

.field static final blacklist TRANSACTION_getVolumeIndexForAttributes:I = 0x17

.field static final blacklist TRANSACTION_handleBluetoothActiveDeviceChanged:I = 0x63

.field static final blacklist TRANSACTION_handleVolumeKey:I = 0xd

.field static final blacklist TRANSACTION_hasHapticChannels:I = 0x6c

.field static final blacklist TRANSACTION_hasHeadTracker:I = 0x9a

.field static final blacklist TRANSACTION_hasRegisteredDynamicPolicy:I = 0x59

.field static final blacklist TRANSACTION_isAlreadyInDB:I = 0xdb

.field static final blacklist TRANSACTION_isAppMute:I = 0xd1

.field static final greylist-max-o TRANSACTION_isAudioServerRunning:I = 0x67

.field static final greylist-max-o TRANSACTION_isBluetoothA2dpOn:I = 0x3c

.field static final greylist-max-o TRANSACTION_isBluetoothScoOn:I = 0x3a

.field static final blacklist TRANSACTION_isCallScreeningModeSupported:I = 0x6d

.field static final greylist-max-o TRANSACTION_isCameraSoundForced:I = 0x4a

.field static final blacklist TRANSACTION_isForceSpeakerOn:I = 0xe0

.field static final greylist-max-o TRANSACTION_isHdmiSystemAudioSupported:I = 0x51

.field static final blacklist TRANSACTION_isHeadTrackerAvailable:I = 0x9d

.field static final blacklist TRANSACTION_isHeadTrackerEnabled:I = 0x9c

.field static final blacklist TRANSACTION_isHomeSoundEffectEnabled:I = 0x8c

.field static final blacklist TRANSACTION_isInAllowedList:I = 0xdc

.field static final greylist-max-o TRANSACTION_isMasterMute:I = 0x10

.field static final blacklist TRANSACTION_isMicrophoneMuted:I = 0x1e

.field static final blacklist TRANSACTION_isMultiSoundOn:I = 0xd3

.field static final blacklist TRANSACTION_isMusicActive:I = 0x83

.field static final blacklist TRANSACTION_isPstnCallAudioInterceptable:I = 0xb7

.field static final blacklist TRANSACTION_isSafeMediaVolumeStateActive:I = 0xf5

.field static final blacklist TRANSACTION_isSpatializerAvailable:I = 0x98

.field static final blacklist TRANSACTION_isSpatializerAvailableForDevice:I = 0x99

.field static final blacklist TRANSACTION_isSpatializerEnabled:I = 0x97

.field static final greylist-max-o TRANSACTION_isSpeakerphoneOn:I = 0x38

.field static final greylist-max-o TRANSACTION_isStreamAffectedByMute:I = 0x4e

.field static final greylist-max-o TRANSACTION_isStreamAffectedByRingerMode:I = 0x4d

.field static final greylist-max-o TRANSACTION_isStreamMute:I = 0xe

.field static final blacklist TRANSACTION_isSurroundFormatEnabled:I = 0x34

.field static final blacklist TRANSACTION_isUltrasoundSupported:I = 0x1f

.field static final blacklist TRANSACTION_isUsingAudio:I = 0xed

.field static final greylist-max-o TRANSACTION_isValidRingerMode:I = 0x26

.field static final blacklist TRANSACTION_isVolumeFixed:I = 0xb5

.field static final greylist-max-o TRANSACTION_loadSoundEffects:I = 0x2e

.field static final blacklist TRANSACTION_muteAwaitConnection:I = 0xb8

.field static final blacklist TRANSACTION_nativeEvent:I = 0xf8

.field static final blacklist TRANSACTION_notifySafetyVolumeDialogVisible:I = 0xf7

.field static final greylist-max-o TRANSACTION_notifyVolumeControllerVisible:I = 0x4c

.field static final greylist-max-o TRANSACTION_playSoundEffect:I = 0x2c

.field static final greylist-max-o TRANSACTION_playSoundEffectVolume:I = 0x2d

.field static final greylist-max-o TRANSACTION_playerAttributes:I = 0x2

.field static final greylist-max-o TRANSACTION_playerEvent:I = 0x3

.field static final greylist-max-o TRANSACTION_playerHasOpPlayAudio:I = 0x62

.field static final blacklist TRANSACTION_playerSessionId:I = 0x8

.field static final blacklist TRANSACTION_recenterHeadTracker:I = 0xaf

.field static final blacklist TRANSACTION_recordRingtoneChanger:I = 0xf2

.field static final blacklist TRANSACTION_recorderEvent:I = 0x6

.field static final greylist-max-o TRANSACTION_registerAudioPolicy:I = 0x52

.field static final greylist-max-o TRANSACTION_registerAudioServerStateDispatcher:I = 0x65

.field static final blacklist TRANSACTION_registerCapturePresetDevicesRoleDispatcher:I = 0x7e

.field static final blacklist TRANSACTION_registerCommunicationDeviceDispatcher:I = 0x88

.field static final blacklist TRANSACTION_registerDeviceVolumeBehaviorDispatcher:I = 0xbd

.field static final blacklist TRANSACTION_registerDeviceVolumeDispatcherForAbsoluteVolume:I = 0xc5

.field static final blacklist TRANSACTION_registerHeadToSoundstagePoseCallback:I = 0xa5

.field static final blacklist TRANSACTION_registerModeDispatcher:I = 0x94

.field static final blacklist TRANSACTION_registerMuteAwaitConnectionDispatcher:I = 0xbb

.field static final greylist-max-o TRANSACTION_registerPlaybackCallback:I = 0x5d

.field static final blacklist TRANSACTION_registerPlaybackCallbackWithPackage:I = 0xf3

.field static final greylist-max-o TRANSACTION_registerRecordingCallback:I = 0x5a

.field static final blacklist TRANSACTION_registerSpatializerCallback:I = 0xa1

.field static final blacklist TRANSACTION_registerSpatializerHeadTrackerAvailableCallback:I = 0x9e

.field static final blacklist TRANSACTION_registerSpatializerHeadTrackingCallback:I = 0xa3

.field static final blacklist TRANSACTION_registerSpatializerOutputCallback:I = 0xb3

.field static final blacklist TRANSACTION_registerStrategyPreferredDevicesDispatcher:I = 0x75

.field static final greylist-max-o TRANSACTION_releasePlayer:I = 0x4

.field static final blacklist TRANSACTION_releaseRecorder:I = 0x7

.field static final greylist-max-o TRANSACTION_reloadAudioSettings:I = 0x30

.field static final blacklist TRANSACTION_removeAssistantServicesUids:I = 0xc1

.field static final greylist-max-o TRANSACTION_removeMixForPolicy:I = 0x56

.field static final blacklist TRANSACTION_removePackageForName:I = 0xda

.field static final blacklist TRANSACTION_removePreferredDevicesForStrategy:I = 0x6f

.field static final blacklist TRANSACTION_removeSpatializerCompatibleAudioDevice:I = 0xa9

.field static final blacklist TRANSACTION_removeUidDeviceAffinity:I = 0x69

.field static final blacklist TRANSACTION_removeUserIdDeviceAffinity:I = 0x6b

.field static final greylist-max-o TRANSACTION_requestAudioFocus:I = 0x3d

.field static final blacklist TRANSACTION_requestAudioFocusForTest:I = 0x91

.field static final blacklist TRANSACTION_secGetActiveStreamType:I = 0xca

.field static final blacklist TRANSACTION_sendFocusLoss:I = 0xbf

.field static final blacklist TRANSACTION_setA2dpDeviceVolume:I = 0xee

.field static final blacklist TRANSACTION_setActiveAssistantServiceUids:I = 0xc2

.field static final blacklist TRANSACTION_setAdditionalOutputDeviceDelay:I = 0x8e

.field static final blacklist TRANSACTION_setAllowedCapturePolicy:I = 0x73

.field static final blacklist TRANSACTION_setAppDevice:I = 0xcc

.field static final blacklist TRANSACTION_setAppMute:I = 0xd0

.field static final blacklist TRANSACTION_setAppVolume:I = 0xce

.field static final blacklist TRANSACTION_setAudioServiceConfig:I = 0xc7

.field static final greylist-max-o TRANSACTION_setBluetoothA2dpOn:I = 0x3b

.field static final greylist-max-o TRANSACTION_setBluetoothScoOn:I = 0x39

.field static final blacklist TRANSACTION_setBtOffloadEnable:I = 0xf4

.field static final blacklist TRANSACTION_setCommunicationDevice:I = 0x86

.field static final blacklist TRANSACTION_setDesiredHeadTrackingMode:I = 0xaa

.field static final blacklist TRANSACTION_setDeviceToForceByUser:I = 0xe1

.field static final blacklist TRANSACTION_setDeviceVolumeBehavior:I = 0x78

.field static final blacklist TRANSACTION_setEncodedSurroundMode:I = 0x35

.field static final blacklist TRANSACTION_setFineVolume:I = 0xdd

.field static final greylist-max-o TRANSACTION_setFocusPropertiesForPolicy:I = 0x57

.field static final greylist-max-o TRANSACTION_setFocusRequestResultFromExtPolicy:I = 0x64

.field static final blacklist TRANSACTION_setForceSpeakerOn:I = 0xdf

.field static final greylist-max-o TRANSACTION_setHdmiSystemAudioSupported:I = 0x50

.field static final blacklist TRANSACTION_setHeadTrackerEnabled:I = 0x9b

.field static final blacklist TRANSACTION_setHomeSoundEffectEnabled:I = 0x8d

.field static final greylist-max-o TRANSACTION_setMasterMute:I = 0x11

.field static final blacklist TRANSACTION_setMediaVolumeSteps:I = 0xe7

.field static final greylist-max-o TRANSACTION_setMicrophoneMute:I = 0x20

.field static final blacklist TRANSACTION_setMicrophoneMuteFromSwitch:I = 0x21

.field static final greylist-max-o TRANSACTION_setMode:I = 0x2a

.field static final blacklist TRANSACTION_setMultiAudioFocusEnabled:I = 0x7a

.field static final blacklist TRANSACTION_setMultiSoundOn:I = 0xd2

.field static final blacklist TRANSACTION_setMuteInterval:I = 0xe2

.field static final blacklist TRANSACTION_setNavigationRepeatSoundEffectsEnabled:I = 0x8b

.field static final blacklist TRANSACTION_setPreferredDevicesForCapturePreset:I = 0x7b

.field static final blacklist TRANSACTION_setPreferredDevicesForStrategy:I = 0x6e

.field static final blacklist TRANSACTION_setRadioOutputPath:I = 0xe9

.field static final blacklist TRANSACTION_setRemoteMic:I = 0xf1

.field static final greylist-max-o TRANSACTION_setRingerModeExternal:I = 0x22

.field static final greylist-max-o TRANSACTION_setRingerModeInternal:I = 0x23

.field static final greylist-max-o TRANSACTION_setRingtonePlayer:I = 0x45

.field static final blacklist TRANSACTION_setRttEnabled:I = 0x77

.field static final blacklist TRANSACTION_setSoundSettingEventBroadcastIntent:I = 0xe6

.field static final blacklist TRANSACTION_setSpatializerEnabled:I = 0x9f

.field static final blacklist TRANSACTION_setSpatializerGlobalTransform:I = 0xae

.field static final blacklist TRANSACTION_setSpatializerParameter:I = 0xb0

.field static final greylist-max-o TRANSACTION_setSpeakerphoneOn:I = 0x37

.field static final greylist-max-o TRANSACTION_setStreamVolume:I = 0xb

.field static final blacklist TRANSACTION_setStreamVolumeForDeviceWithAttribution:I = 0xd4

.field static final blacklist TRANSACTION_setStreamVolumeForUid:I = 0x82

.field static final blacklist TRANSACTION_setStreamVolumeWithAttribution:I = 0xc

.field static final blacklist TRANSACTION_setSupportedSystemUsages:I = 0x1b

.field static final blacklist TRANSACTION_setSurroundFormatEnabled:I = 0x33

.field static final blacklist TRANSACTION_setTestDeviceConnectionState:I = 0xbc

.field static final blacklist TRANSACTION_setUidDeviceAffinity:I = 0x68

.field static final blacklist TRANSACTION_setUserIdDeviceAffinity:I = 0x6a

.field static final greylist-max-o TRANSACTION_setVibrateSetting:I = 0x27

.field static final greylist-max-o TRANSACTION_setVolumeController:I = 0x4b

.field static final blacklist TRANSACTION_setVolumeIndexForAttributes:I = 0x16

.field static final greylist-max-o TRANSACTION_setVolumePolicy:I = 0x58

.field static final greylist-max-o TRANSACTION_setWiredDeviceConnectionState:I = 0x48

.field static final blacklist TRANSACTION_shouldShowRingtoneVolume:I = 0xc9

.field static final greylist-max-o TRANSACTION_shouldVibrate:I = 0x29

.field static final greylist-max-o TRANSACTION_startBluetoothSco:I = 0x41

.field static final greylist-max-o TRANSACTION_startBluetoothScoVirtualCall:I = 0x42

.field static final greylist-max-o TRANSACTION_startWatchingRoutes:I = 0x49

.field static final greylist-max-o TRANSACTION_stopBluetoothSco:I = 0x43

.field static final greylist-max-o TRANSACTION_trackPlayer:I = 0x1

.field static final blacklist TRANSACTION_trackRecorder:I = 0x5

.field static final greylist-max-o TRANSACTION_unloadSoundEffects:I = 0x2f

.field static final greylist-max-o TRANSACTION_unregisterAudioFocusClient:I = 0x3f

.field static final blacklist TRANSACTION_unregisterAudioPolicy:I = 0x54

.field static final greylist-max-o TRANSACTION_unregisterAudioPolicyAsync:I = 0x53

.field static final greylist-max-o TRANSACTION_unregisterAudioServerStateDispatcher:I = 0x66

.field static final blacklist TRANSACTION_unregisterCapturePresetDevicesRoleDispatcher:I = 0x7f

.field static final blacklist TRANSACTION_unregisterCommunicationDeviceDispatcher:I = 0x89

.field static final blacklist TRANSACTION_unregisterHeadToSoundstagePoseCallback:I = 0xa6

.field static final blacklist TRANSACTION_unregisterModeDispatcher:I = 0x95

.field static final greylist-max-o TRANSACTION_unregisterPlaybackCallback:I = 0x5e

.field static final greylist-max-o TRANSACTION_unregisterRecordingCallback:I = 0x5b

.field static final blacklist TRANSACTION_unregisterSpatializerCallback:I = 0xa2

.field static final blacklist TRANSACTION_unregisterSpatializerHeadTrackingCallback:I = 0xa4

.field static final blacklist TRANSACTION_unregisterSpatializerOutputCallback:I = 0xb4

.field static final blacklist TRANSACTION_unregisterStrategyPreferredDevicesDispatcher:I = 0x76


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 955
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 956
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 957
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 964
    if-nez p0, :cond_0

    .line 965
    const/4 v0, 0x0

    return-object v0

    .line 967
    :cond_0
    const-string v0, "android.media.IAudioService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 968
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_1

    .line 969
    move-object v1, v0

    check-cast v1, Landroid/media/IAudioService;

    return-object v1

    .line 971
    :cond_1
    new-instance v1, Landroid/media/IAudioService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 980
    packed-switch p0, :pswitch_data_0

    .line 1980
    const/4 v0, 0x0

    return-object v0

    .line 1976
    :pswitch_0
    const-string v0, "getModeInternal"

    return-object v0

    .line 1972
    :pswitch_1
    const-string v0, "nativeEvent"

    return-object v0

    .line 1968
    :pswitch_2
    const-string v0, "notifySafetyVolumeDialogVisible"

    return-object v0

    .line 1964
    :pswitch_3
    const-string v0, "getExcludedRingtoneTitles"

    return-object v0

    .line 1960
    :pswitch_4
    const-string v0, "isSafeMediaVolumeStateActive"

    return-object v0

    .line 1956
    :pswitch_5
    const-string v0, "setBtOffloadEnable"

    return-object v0

    .line 1952
    :pswitch_6
    const-string v0, "registerPlaybackCallbackWithPackage"

    return-object v0

    .line 1948
    :pswitch_7
    const-string v0, "recordRingtoneChanger"

    return-object v0

    .line 1944
    :pswitch_8
    const-string/jumbo v0, "setRemoteMic"

    return-object v0

    .line 1940
    :pswitch_9
    const-string v0, "getFloatVolumeTable"

    return-object v0

    .line 1936
    :pswitch_a
    const-string v0, "getA2dpDeviceVolume"

    return-object v0

    .line 1932
    :pswitch_b
    const-string v0, "setA2dpDeviceVolume"

    return-object v0

    .line 1928
    :pswitch_c
    const-string v0, "isUsingAudio"

    return-object v0

    .line 1924
    :pswitch_d
    const-string v0, "getCurrentAudioFocusPackageName"

    return-object v0

    .line 1920
    :pswitch_e
    const-string v0, "dismissVolumePanel"

    return-object v0

    .line 1916
    :pswitch_f
    const-string v0, "getRadioOutputPath"

    return-object v0

    .line 1912
    :pswitch_10
    const-string/jumbo v0, "setRadioOutputPath"

    return-object v0

    .line 1908
    :pswitch_11
    const-string v0, "getMediaVolumeSteps"

    return-object v0

    .line 1904
    :pswitch_12
    const-string/jumbo v0, "setMediaVolumeSteps"

    return-object v0

    .line 1900
    :pswitch_13
    const-string/jumbo v0, "setSoundSettingEventBroadcastIntent"

    return-object v0

    .line 1896
    :pswitch_14
    const-string v0, "getPrevRingerMode"

    return-object v0

    .line 1892
    :pswitch_15
    const-string v0, "getRemainingMuteIntervalMs"

    return-object v0

    .line 1888
    :pswitch_16
    const-string v0, "getMuteInterval"

    return-object v0

    .line 1884
    :pswitch_17
    const-string/jumbo v0, "setMuteInterval"

    return-object v0

    .line 1880
    :pswitch_18
    const-string v0, "setDeviceToForceByUser"

    return-object v0

    .line 1876
    :pswitch_19
    const-string v0, "isForceSpeakerOn"

    return-object v0

    .line 1872
    :pswitch_1a
    const-string v0, "setForceSpeakerOn"

    return-object v0

    .line 1868
    :pswitch_1b
    const-string v0, "getFineVolume"

    return-object v0

    .line 1864
    :pswitch_1c
    const-string v0, "setFineVolume"

    return-object v0

    .line 1860
    :pswitch_1d
    const-string v0, "isInAllowedList"

    return-object v0

    .line 1856
    :pswitch_1e
    const-string v0, "isAlreadyInDB"

    return-object v0

    .line 1852
    :pswitch_1f
    const-string v0, "removePackageForName"

    return-object v0

    .line 1848
    :pswitch_20
    const-string v0, "addPackage"

    return-object v0

    .line 1844
    :pswitch_21
    const-string v0, "getSelectedAppList"

    return-object v0

    .line 1840
    :pswitch_22
    const-string v0, "getPinDevice"

    return-object v0

    .line 1836
    :pswitch_23
    const-string v0, "getPinAppInfo"

    return-object v0

    .line 1832
    :pswitch_24
    const-string v0, "getStreamVolumeForDevice"

    return-object v0

    .line 1828
    :pswitch_25
    const-string/jumbo v0, "setStreamVolumeForDeviceWithAttribution"

    return-object v0

    .line 1824
    :pswitch_26
    const-string v0, "isMultiSoundOn"

    return-object v0

    .line 1820
    :pswitch_27
    const-string/jumbo v0, "setMultiSoundOn"

    return-object v0

    .line 1816
    :pswitch_28
    const-string v0, "isAppMute"

    return-object v0

    .line 1812
    :pswitch_29
    const-string v0, "setAppMute"

    return-object v0

    .line 1808
    :pswitch_2a
    const-string v0, "getAppVolume"

    return-object v0

    .line 1804
    :pswitch_2b
    const-string v0, "setAppVolume"

    return-object v0

    .line 1800
    :pswitch_2c
    const-string v0, "getAppDevice"

    return-object v0

    .line 1796
    :pswitch_2d
    const-string v0, "setAppDevice"

    return-object v0

    .line 1792
    :pswitch_2e
    const-string v0, "getUidForDevice"

    return-object v0

    .line 1788
    :pswitch_2f
    const-string v0, "secGetActiveStreamType"

    return-object v0

    .line 1784
    :pswitch_30
    const-string/jumbo v0, "shouldShowRingtoneVolume"

    return-object v0

    .line 1780
    :pswitch_31
    const-string v0, "getAudioServiceConfig"

    return-object v0

    .line 1776
    :pswitch_32
    const-string v0, "setAudioServiceConfig"

    return-object v0

    .line 1772
    :pswitch_33
    const-string v0, "getHalVersion"

    return-object v0

    .line 1768
    :pswitch_34
    const-string v0, "registerDeviceVolumeDispatcherForAbsoluteVolume"

    return-object v0

    .line 1764
    :pswitch_35
    const-string v0, "getActiveAssistantServiceUids"

    return-object v0

    .line 1760
    :pswitch_36
    const-string v0, "getAssistantServicesUids"

    return-object v0

    .line 1756
    :pswitch_37
    const-string v0, "setActiveAssistantServiceUids"

    return-object v0

    .line 1752
    :pswitch_38
    const-string v0, "removeAssistantServicesUids"

    return-object v0

    .line 1748
    :pswitch_39
    const-string v0, "addAssistantServicesUids"

    return-object v0

    .line 1744
    :pswitch_3a
    const-string v0, "sendFocusLoss"

    return-object v0

    .line 1740
    :pswitch_3b
    const-string v0, "getFocusStack"

    return-object v0

    .line 1736
    :pswitch_3c
    const-string v0, "registerDeviceVolumeBehaviorDispatcher"

    return-object v0

    .line 1732
    :pswitch_3d
    const-string/jumbo v0, "setTestDeviceConnectionState"

    return-object v0

    .line 1728
    :pswitch_3e
    const-string v0, "registerMuteAwaitConnectionDispatcher"

    return-object v0

    .line 1724
    :pswitch_3f
    const-string v0, "getMutingExpectedDevice"

    return-object v0

    .line 1720
    :pswitch_40
    const-string v0, "cancelMuteAwaitConnection"

    return-object v0

    .line 1716
    :pswitch_41
    const-string v0, "muteAwaitConnection"

    return-object v0

    .line 1712
    :pswitch_42
    const-string v0, "isPstnCallAudioInterceptable"

    return-object v0

    .line 1708
    :pswitch_43
    const-string v0, "getDefaultVolumeInfo"

    return-object v0

    .line 1704
    :pswitch_44
    const-string v0, "isVolumeFixed"

    return-object v0

    .line 1700
    :pswitch_45
    const-string/jumbo v0, "unregisterSpatializerOutputCallback"

    return-object v0

    .line 1696
    :pswitch_46
    const-string v0, "registerSpatializerOutputCallback"

    return-object v0

    .line 1692
    :pswitch_47
    const-string v0, "getSpatializerOutput"

    return-object v0

    .line 1688
    :pswitch_48
    const-string v0, "getSpatializerParameter"

    return-object v0

    .line 1684
    :pswitch_49
    const-string/jumbo v0, "setSpatializerParameter"

    return-object v0

    .line 1680
    :pswitch_4a
    const-string v0, "recenterHeadTracker"

    return-object v0

    .line 1676
    :pswitch_4b
    const-string/jumbo v0, "setSpatializerGlobalTransform"

    return-object v0

    .line 1672
    :pswitch_4c
    const-string v0, "getActualHeadTrackingMode"

    return-object v0

    .line 1668
    :pswitch_4d
    const-string v0, "getSupportedHeadTrackingModes"

    return-object v0

    .line 1664
    :pswitch_4e
    const-string v0, "getDesiredHeadTrackingMode"

    return-object v0

    .line 1660
    :pswitch_4f
    const-string v0, "setDesiredHeadTrackingMode"

    return-object v0

    .line 1656
    :pswitch_50
    const-string v0, "removeSpatializerCompatibleAudioDevice"

    return-object v0

    .line 1652
    :pswitch_51
    const-string v0, "addSpatializerCompatibleAudioDevice"

    return-object v0

    .line 1648
    :pswitch_52
    const-string v0, "getSpatializerCompatibleAudioDevices"

    return-object v0

    .line 1644
    :pswitch_53
    const-string/jumbo v0, "unregisterHeadToSoundstagePoseCallback"

    return-object v0

    .line 1640
    :pswitch_54
    const-string v0, "registerHeadToSoundstagePoseCallback"

    return-object v0

    .line 1636
    :pswitch_55
    const-string/jumbo v0, "unregisterSpatializerHeadTrackingCallback"

    return-object v0

    .line 1632
    :pswitch_56
    const-string v0, "registerSpatializerHeadTrackingCallback"

    return-object v0

    .line 1628
    :pswitch_57
    const-string/jumbo v0, "unregisterSpatializerCallback"

    return-object v0

    .line 1624
    :pswitch_58
    const-string v0, "registerSpatializerCallback"

    return-object v0

    .line 1620
    :pswitch_59
    const-string v0, "canBeSpatialized"

    return-object v0

    .line 1616
    :pswitch_5a
    const-string/jumbo v0, "setSpatializerEnabled"

    return-object v0

    .line 1612
    :pswitch_5b
    const-string v0, "registerSpatializerHeadTrackerAvailableCallback"

    return-object v0

    .line 1608
    :pswitch_5c
    const-string v0, "isHeadTrackerAvailable"

    return-object v0

    .line 1604
    :pswitch_5d
    const-string v0, "isHeadTrackerEnabled"

    return-object v0

    .line 1600
    :pswitch_5e
    const-string/jumbo v0, "setHeadTrackerEnabled"

    return-object v0

    .line 1596
    :pswitch_5f
    const-string v0, "hasHeadTracker"

    return-object v0

    .line 1592
    :pswitch_60
    const-string v0, "isSpatializerAvailableForDevice"

    return-object v0

    .line 1588
    :pswitch_61
    const-string v0, "isSpatializerAvailable"

    return-object v0

    .line 1584
    :pswitch_62
    const-string v0, "isSpatializerEnabled"

    return-object v0

    .line 1580
    :pswitch_63
    const-string v0, "getSpatializerImmersiveAudioLevel"

    return-object v0

    .line 1576
    :pswitch_64
    const-string/jumbo v0, "unregisterModeDispatcher"

    return-object v0

    .line 1572
    :pswitch_65
    const-string v0, "registerModeDispatcher"

    return-object v0

    .line 1568
    :pswitch_66
    const-string v0, "getFadeOutDurationOnFocusLossMillis"

    return-object v0

    .line 1564
    :pswitch_67
    const-string v0, "abandonAudioFocusForTest"

    return-object v0

    .line 1560
    :pswitch_68
    const-string v0, "requestAudioFocusForTest"

    return-object v0

    .line 1556
    :pswitch_69
    const-string v0, "getMaxAdditionalOutputDeviceDelay"

    return-object v0

    .line 1552
    :pswitch_6a
    const-string v0, "getAdditionalOutputDeviceDelay"

    return-object v0

    .line 1548
    :pswitch_6b
    const-string v0, "setAdditionalOutputDeviceDelay"

    return-object v0

    .line 1544
    :pswitch_6c
    const-string/jumbo v0, "setHomeSoundEffectEnabled"

    return-object v0

    .line 1540
    :pswitch_6d
    const-string v0, "isHomeSoundEffectEnabled"

    return-object v0

    .line 1536
    :pswitch_6e
    const-string/jumbo v0, "setNavigationRepeatSoundEffectsEnabled"

    return-object v0

    .line 1532
    :pswitch_6f
    const-string v0, "areNavigationRepeatSoundEffectsEnabled"

    return-object v0

    .line 1528
    :pswitch_70
    const-string/jumbo v0, "unregisterCommunicationDeviceDispatcher"

    return-object v0

    .line 1524
    :pswitch_71
    const-string v0, "registerCommunicationDeviceDispatcher"

    return-object v0

    .line 1520
    :pswitch_72
    const-string v0, "getCommunicationDevice"

    return-object v0

    .line 1516
    :pswitch_73
    const-string v0, "setCommunicationDevice"

    return-object v0

    .line 1512
    :pswitch_74
    const-string v0, "getAvailableCommunicationDeviceIds"

    return-object v0

    .line 1508
    :pswitch_75
    const-string v0, "getDeviceMaskForStream"

    return-object v0

    .line 1504
    :pswitch_76
    const-string v0, "isMusicActive"

    return-object v0

    .line 1500
    :pswitch_77
    const-string/jumbo v0, "setStreamVolumeForUid"

    return-object v0

    .line 1496
    :pswitch_78
    const-string v0, "adjustSuggestedStreamVolumeForUid"

    return-object v0

    .line 1492
    :pswitch_79
    const-string v0, "adjustStreamVolumeForUid"

    return-object v0

    .line 1488
    :pswitch_7a
    const-string/jumbo v0, "unregisterCapturePresetDevicesRoleDispatcher"

    return-object v0

    .line 1484
    :pswitch_7b
    const-string v0, "registerCapturePresetDevicesRoleDispatcher"

    return-object v0

    .line 1480
    :pswitch_7c
    const-string v0, "getPreferredDevicesForCapturePreset"

    return-object v0

    .line 1476
    :pswitch_7d
    const-string v0, "clearPreferredDevicesForCapturePreset"

    return-object v0

    .line 1472
    :pswitch_7e
    const-string/jumbo v0, "setPreferredDevicesForCapturePreset"

    return-object v0

    .line 1468
    :pswitch_7f
    const-string/jumbo v0, "setMultiAudioFocusEnabled"

    return-object v0

    .line 1464
    :pswitch_80
    const-string v0, "getDeviceVolumeBehavior"

    return-object v0

    .line 1460
    :pswitch_81
    const-string v0, "setDeviceVolumeBehavior"

    return-object v0

    .line 1456
    :pswitch_82
    const-string/jumbo v0, "setRttEnabled"

    return-object v0

    .line 1452
    :pswitch_83
    const-string/jumbo v0, "unregisterStrategyPreferredDevicesDispatcher"

    return-object v0

    .line 1448
    :pswitch_84
    const-string v0, "registerStrategyPreferredDevicesDispatcher"

    return-object v0

    .line 1444
    :pswitch_85
    const-string v0, "getAllowedCapturePolicy"

    return-object v0

    .line 1440
    :pswitch_86
    const-string v0, "setAllowedCapturePolicy"

    return-object v0

    .line 1436
    :pswitch_87
    const-string v0, "getDevicesForAttributesUnprotected"

    return-object v0

    .line 1432
    :pswitch_88
    const-string v0, "getDevicesForAttributes"

    return-object v0

    .line 1428
    :pswitch_89
    const-string v0, "getPreferredDevicesForStrategy"

    return-object v0

    .line 1424
    :pswitch_8a
    const-string v0, "removePreferredDevicesForStrategy"

    return-object v0

    .line 1420
    :pswitch_8b
    const-string/jumbo v0, "setPreferredDevicesForStrategy"

    return-object v0

    .line 1416
    :pswitch_8c
    const-string v0, "isCallScreeningModeSupported"

    return-object v0

    .line 1412
    :pswitch_8d
    const-string v0, "hasHapticChannels"

    return-object v0

    .line 1408
    :pswitch_8e
    const-string v0, "removeUserIdDeviceAffinity"

    return-object v0

    .line 1404
    :pswitch_8f
    const-string/jumbo v0, "setUserIdDeviceAffinity"

    return-object v0

    .line 1400
    :pswitch_90
    const-string v0, "removeUidDeviceAffinity"

    return-object v0

    .line 1396
    :pswitch_91
    const-string/jumbo v0, "setUidDeviceAffinity"

    return-object v0

    .line 1392
    :pswitch_92
    const-string v0, "isAudioServerRunning"

    return-object v0

    .line 1388
    :pswitch_93
    const-string/jumbo v0, "unregisterAudioServerStateDispatcher"

    return-object v0

    .line 1384
    :pswitch_94
    const-string v0, "registerAudioServerStateDispatcher"

    return-object v0

    .line 1380
    :pswitch_95
    const-string v0, "setFocusRequestResultFromExtPolicy"

    return-object v0

    .line 1376
    :pswitch_96
    const-string v0, "handleBluetoothActiveDeviceChanged"

    return-object v0

    .line 1372
    :pswitch_97
    const-string v0, "playerHasOpPlayAudio"

    return-object v0

    .line 1368
    :pswitch_98
    const-string v0, "dispatchFocusChange"

    return-object v0

    .line 1364
    :pswitch_99
    const-string v0, "getFocusRampTimeMs"

    return-object v0

    .line 1360
    :pswitch_9a
    const-string v0, "getActivePlaybackConfigurations"

    return-object v0

    .line 1356
    :pswitch_9b
    const-string/jumbo v0, "unregisterPlaybackCallback"

    return-object v0

    .line 1352
    :pswitch_9c
    const-string v0, "registerPlaybackCallback"

    return-object v0

    .line 1348
    :pswitch_9d
    const-string v0, "getActiveRecordingConfigurations"

    return-object v0

    .line 1344
    :pswitch_9e
    const-string/jumbo v0, "unregisterRecordingCallback"

    return-object v0

    .line 1340
    :pswitch_9f
    const-string v0, "registerRecordingCallback"

    return-object v0

    .line 1336
    :pswitch_a0
    const-string v0, "hasRegisteredDynamicPolicy"

    return-object v0

    .line 1332
    :pswitch_a1
    const-string/jumbo v0, "setVolumePolicy"

    return-object v0

    .line 1328
    :pswitch_a2
    const-string v0, "setFocusPropertiesForPolicy"

    return-object v0

    .line 1324
    :pswitch_a3
    const-string v0, "removeMixForPolicy"

    return-object v0

    .line 1320
    :pswitch_a4
    const-string v0, "addMixForPolicy"

    return-object v0

    .line 1316
    :pswitch_a5
    const-string/jumbo v0, "unregisterAudioPolicy"

    return-object v0

    .line 1312
    :pswitch_a6
    const-string/jumbo v0, "unregisterAudioPolicyAsync"

    return-object v0

    .line 1308
    :pswitch_a7
    const-string v0, "registerAudioPolicy"

    return-object v0

    .line 1304
    :pswitch_a8
    const-string v0, "isHdmiSystemAudioSupported"

    return-object v0

    .line 1300
    :pswitch_a9
    const-string/jumbo v0, "setHdmiSystemAudioSupported"

    return-object v0

    .line 1296
    :pswitch_aa
    const-string v0, "disableSafeMediaVolume"

    return-object v0

    .line 1292
    :pswitch_ab
    const-string v0, "isStreamAffectedByMute"

    return-object v0

    .line 1288
    :pswitch_ac
    const-string v0, "isStreamAffectedByRingerMode"

    return-object v0

    .line 1284
    :pswitch_ad
    const-string v0, "notifyVolumeControllerVisible"

    return-object v0

    .line 1280
    :pswitch_ae
    const-string/jumbo v0, "setVolumeController"

    return-object v0

    .line 1276
    :pswitch_af
    const-string v0, "isCameraSoundForced"

    return-object v0

    .line 1272
    :pswitch_b0
    const-string/jumbo v0, "startWatchingRoutes"

    return-object v0

    .line 1268
    :pswitch_b1
    const-string/jumbo v0, "setWiredDeviceConnectionState"

    return-object v0

    .line 1264
    :pswitch_b2
    const-string v0, "getUiSoundsStreamType"

    return-object v0

    .line 1260
    :pswitch_b3
    const-string v0, "getRingtonePlayer"

    return-object v0

    .line 1256
    :pswitch_b4
    const-string/jumbo v0, "setRingtonePlayer"

    return-object v0

    .line 1252
    :pswitch_b5
    const-string v0, "forceVolumeControlStream"

    return-object v0

    .line 1248
    :pswitch_b6
    const-string/jumbo v0, "stopBluetoothSco"

    return-object v0

    .line 1244
    :pswitch_b7
    const-string/jumbo v0, "startBluetoothScoVirtualCall"

    return-object v0

    .line 1240
    :pswitch_b8
    const-string/jumbo v0, "startBluetoothSco"

    return-object v0

    .line 1236
    :pswitch_b9
    const-string v0, "getCurrentAudioFocus"

    return-object v0

    .line 1232
    :pswitch_ba
    const-string/jumbo v0, "unregisterAudioFocusClient"

    return-object v0

    .line 1228
    :pswitch_bb
    const-string v0, "abandonAudioFocus"

    return-object v0

    .line 1224
    :pswitch_bc
    const-string v0, "requestAudioFocus"

    return-object v0

    .line 1220
    :pswitch_bd
    const-string v0, "isBluetoothA2dpOn"

    return-object v0

    .line 1216
    :pswitch_be
    const-string v0, "setBluetoothA2dpOn"

    return-object v0

    .line 1212
    :pswitch_bf
    const-string v0, "isBluetoothScoOn"

    return-object v0

    .line 1208
    :pswitch_c0
    const-string v0, "setBluetoothScoOn"

    return-object v0

    .line 1204
    :pswitch_c1
    const-string v0, "isSpeakerphoneOn"

    return-object v0

    .line 1200
    :pswitch_c2
    const-string/jumbo v0, "setSpeakerphoneOn"

    return-object v0

    .line 1196
    :pswitch_c3
    const-string v0, "getEncodedSurroundMode"

    return-object v0

    .line 1192
    :pswitch_c4
    const-string v0, "setEncodedSurroundMode"

    return-object v0

    .line 1188
    :pswitch_c5
    const-string v0, "isSurroundFormatEnabled"

    return-object v0

    .line 1184
    :pswitch_c6
    const-string/jumbo v0, "setSurroundFormatEnabled"

    return-object v0

    .line 1180
    :pswitch_c7
    const-string v0, "getReportedSurroundFormats"

    return-object v0

    .line 1176
    :pswitch_c8
    const-string v0, "getSurroundFormats"

    return-object v0

    .line 1172
    :pswitch_c9
    const-string v0, "reloadAudioSettings"

    return-object v0

    .line 1168
    :pswitch_ca
    const-string/jumbo v0, "unloadSoundEffects"

    return-object v0

    .line 1164
    :pswitch_cb
    const-string v0, "loadSoundEffects"

    return-object v0

    .line 1160
    :pswitch_cc
    const-string v0, "playSoundEffectVolume"

    return-object v0

    .line 1156
    :pswitch_cd
    const-string v0, "playSoundEffect"

    return-object v0

    .line 1152
    :pswitch_ce
    const-string v0, "getMode"

    return-object v0

    .line 1148
    :pswitch_cf
    const-string/jumbo v0, "setMode"

    return-object v0

    .line 1144
    :pswitch_d0
    const-string/jumbo v0, "shouldVibrate"

    return-object v0

    .line 1140
    :pswitch_d1
    const-string v0, "getVibrateSetting"

    return-object v0

    .line 1136
    :pswitch_d2
    const-string/jumbo v0, "setVibrateSetting"

    return-object v0

    .line 1132
    :pswitch_d3
    const-string v0, "isValidRingerMode"

    return-object v0

    .line 1128
    :pswitch_d4
    const-string v0, "getRingerModeInternal"

    return-object v0

    .line 1124
    :pswitch_d5
    const-string v0, "getRingerModeExternal"

    return-object v0

    .line 1120
    :pswitch_d6
    const-string/jumbo v0, "setRingerModeInternal"

    return-object v0

    .line 1116
    :pswitch_d7
    const-string/jumbo v0, "setRingerModeExternal"

    return-object v0

    .line 1112
    :pswitch_d8
    const-string/jumbo v0, "setMicrophoneMuteFromSwitch"

    return-object v0

    .line 1108
    :pswitch_d9
    const-string/jumbo v0, "setMicrophoneMute"

    return-object v0

    .line 1104
    :pswitch_da
    const-string v0, "isUltrasoundSupported"

    return-object v0

    .line 1100
    :pswitch_db
    const-string v0, "isMicrophoneMuted"

    return-object v0

    .line 1096
    :pswitch_dc
    const-string v0, "getAudioProductStrategies"

    return-object v0

    .line 1092
    :pswitch_dd
    const-string v0, "getSupportedSystemUsages"

    return-object v0

    .line 1088
    :pswitch_de
    const-string/jumbo v0, "setSupportedSystemUsages"

    return-object v0

    .line 1084
    :pswitch_df
    const-string v0, "getLastAudibleStreamVolume"

    return-object v0

    .line 1080
    :pswitch_e0
    const-string v0, "getMinVolumeIndexForAttributes"

    return-object v0

    .line 1076
    :pswitch_e1
    const-string v0, "getMaxVolumeIndexForAttributes"

    return-object v0

    .line 1072
    :pswitch_e2
    const-string v0, "getVolumeIndexForAttributes"

    return-object v0

    .line 1068
    :pswitch_e3
    const-string/jumbo v0, "setVolumeIndexForAttributes"

    return-object v0

    .line 1064
    :pswitch_e4
    const-string v0, "getAudioVolumeGroups"

    return-object v0

    .line 1060
    :pswitch_e5
    const-string v0, "getStreamMaxVolume"

    return-object v0

    .line 1056
    :pswitch_e6
    const-string v0, "getStreamMinVolume"

    return-object v0

    .line 1052
    :pswitch_e7
    const-string v0, "getStreamVolume"

    return-object v0

    .line 1048
    :pswitch_e8
    const-string/jumbo v0, "setMasterMute"

    return-object v0

    .line 1044
    :pswitch_e9
    const-string v0, "isMasterMute"

    return-object v0

    .line 1040
    :pswitch_ea
    const-string v0, "forceRemoteSubmixFullVolume"

    return-object v0

    .line 1036
    :pswitch_eb
    const-string v0, "isStreamMute"

    return-object v0

    .line 1032
    :pswitch_ec
    const-string v0, "handleVolumeKey"

    return-object v0

    .line 1028
    :pswitch_ed
    const-string/jumbo v0, "setStreamVolumeWithAttribution"

    return-object v0

    .line 1024
    :pswitch_ee
    const-string/jumbo v0, "setStreamVolume"

    return-object v0

    .line 1020
    :pswitch_ef
    const-string v0, "adjustStreamVolumeWithAttribution"

    return-object v0

    .line 1016
    :pswitch_f0
    const-string v0, "adjustStreamVolume"

    return-object v0

    .line 1012
    :pswitch_f1
    const-string v0, "playerSessionId"

    return-object v0

    .line 1008
    :pswitch_f2
    const-string v0, "releaseRecorder"

    return-object v0

    .line 1004
    :pswitch_f3
    const-string v0, "recorderEvent"

    return-object v0

    .line 1000
    :pswitch_f4
    const-string/jumbo v0, "trackRecorder"

    return-object v0

    .line 996
    :pswitch_f5
    const-string v0, "releasePlayer"

    return-object v0

    .line 992
    :pswitch_f6
    const-string v0, "playerEvent"

    return-object v0

    .line 988
    :pswitch_f7
    const-string v0, "playerAttributes"

    return-object v0

    .line 984
    :pswitch_f8
    const-string/jumbo v0, "trackPlayer"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 975
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 8962
    const/16 v0, 0xf8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 1987
    invoke-static {p1}, Landroid/media/IAudioService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 27
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1991
    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    const-string v15, "android.media.IAudioService"

    .line 1992
    .local v15, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v12, v10, :cond_0

    const v0, 0xffffff

    if-gt v12, v0, :cond_0

    .line 1993
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1995
    :cond_0
    packed-switch v12, :pswitch_data_0

    .line 2003
    packed-switch v12, :pswitch_data_1

    .line 4495
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1999
    :pswitch_0
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2000
    return v10

    .line 4488
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getModeInternal()I

    move-result v0

    .line 4489
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4490
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4491
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4476
    .end local v0    # "_result":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4478
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4480
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4481
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4482
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->nativeEvent(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4483
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4484
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4466
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v0

    .line 4468
    .local v0, "_arg0":Landroid/media/IVolumeController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4469
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4470
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->notifySafetyVolumeDialogVisible(Landroid/media/IVolumeController;Z)V

    .line 4471
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4456
    .end local v0    # "_arg0":Landroid/media/IVolumeController;
    .end local v1    # "_arg1":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4457
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4458
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getExcludedRingtoneTitles(I)Ljava/util/List;

    move-result-object v1

    .line 4459
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4460
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4461
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4448
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSafeMediaVolumeStateActive()Z

    move-result v0

    .line 4449
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4450
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4451
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4440
    .end local v0    # "_result":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4441
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4442
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setBtOffloadEnable(I)V

    .line 4443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4444
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4429
    .end local v0    # "_arg0":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v0

    .line 4431
    .local v0, "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4432
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4433
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->registerPlaybackCallbackWithPackage(Landroid/media/IPlaybackConfigDispatcher;Ljava/lang/String;)V

    .line 4434
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4435
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4421
    .end local v0    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4422
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4423
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->recordRingtoneChanger(Ljava/lang/String;)V

    .line 4424
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4412
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 4413
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4414
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setRemoteMic(Z)V

    .line 4415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4416
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4404
    .end local v0    # "_arg0":Z
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getFloatVolumeTable()[F

    move-result-object v0

    .line 4405
    .local v0, "_result":[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4406
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 4407
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4393
    .end local v0    # "_result":[F
    :pswitch_b
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 4395
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4396
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4397
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->getA2dpDeviceVolume(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v2

    .line 4398
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4399
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4400
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4376
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_c
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 4378
    .local v6, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4380
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 4382
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 4384
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 4385
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4386
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setA2dpDeviceVolume(Landroid/bluetooth/BluetoothDevice;IIILjava/lang/String;)V

    .line 4387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4388
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4366
    .end local v6    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4367
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4368
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isUsingAudio(I)Z

    move-result v1

    .line 4369
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4370
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4371
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4358
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4359
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4360
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4361
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4352
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->dismissVolumePanel()V

    .line 4353
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4354
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4345
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRadioOutputPath()I

    move-result v0

    .line 4346
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4347
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4348
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4337
    .end local v0    # "_result":I
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4338
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4339
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setRadioOutputPath(I)V

    .line 4340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4341
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4329
    .end local v0    # "_arg0":I
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMediaVolumeSteps()[I

    move-result-object v0

    .line 4330
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4331
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4332
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4320
    .end local v0    # "_result":[I
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 4321
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4322
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setMediaVolumeSteps([I)Z

    move-result v1

    .line 4323
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4324
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4325
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4310
    .end local v0    # "_arg0":[I
    .end local v1    # "_result":Z
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4312
    .local v0, "_arg0":I
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 4313
    .local v1, "_arg1":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4314
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setSoundSettingEventBroadcastIntent(ILandroid/app/PendingIntent;)V

    .line 4315
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4302
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getPrevRingerMode()I

    move-result v0

    .line 4303
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4304
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4305
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4295
    .end local v0    # "_result":I
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRemainingMuteIntervalMs()I

    move-result v0

    .line 4296
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4297
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4298
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4288
    .end local v0    # "_result":I
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMuteInterval()I

    move-result v0

    .line 4289
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4290
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4291
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4278
    .end local v0    # "_result":I
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4280
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4281
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4282
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setMuteInterval(ILjava/lang/String;)V

    .line 4283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4284
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4264
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4266
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4268
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4269
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4270
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setDeviceToForceByUser(ILjava/lang/String;Z)I

    move-result v3

    .line 4271
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4272
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4273
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4256
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":I
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isForceSpeakerOn()Z

    move-result v0

    .line 4257
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4258
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4259
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4248
    .end local v0    # "_result":Z
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 4249
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4250
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setForceSpeakerOn(Z)V

    .line 4251
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4252
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4236
    .end local v0    # "_arg0":Z
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4238
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4239
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4240
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->getFineVolume(II)I

    move-result v2

    .line 4241
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4242
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4243
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4219
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4221
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4223
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 4225
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 4227
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 4228
    .restart local v16    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4229
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setFineVolume(IIIILjava/lang/String;)V

    .line 4230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4231
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4209
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4210
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4211
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isInAllowedList(Ljava/lang/String;)Z

    move-result v1

    .line 4212
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4213
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4214
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4199
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4200
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4201
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isAlreadyInDB(Ljava/lang/String;)Z

    move-result v1

    .line 4202
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4203
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4204
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4190
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4191
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4192
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->removePackageForName(Ljava/lang/String;)V

    .line 4193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4194
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4179
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4181
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4182
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4183
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->addPackage(ILjava/lang/String;)V

    .line 4184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4185
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4171
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSelectedAppList()[Ljava/lang/String;

    move-result-object v0

    .line 4172
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4173
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4174
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4164
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_23
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getPinDevice()I

    move-result v0

    .line 4165
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4166
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4167
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4155
    .end local v0    # "_result":I
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4156
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4157
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v1

    .line 4158
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4159
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4160
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4143
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4145
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4146
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4147
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->getStreamVolumeForDevice(II)I

    move-result v2

    .line 4148
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4149
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4150
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4124
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4126
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 4128
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 4130
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 4132
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 4134
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 4135
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4136
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/media/IAudioService$Stub;->setStreamVolumeForDeviceWithAttribution(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 4137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4138
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4116
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":I
    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isMultiSoundOn()Z

    move-result v0

    .line 4117
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4118
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4119
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4106
    .end local v0    # "_result":Z
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 4108
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4109
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4110
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setMultiSoundOn(ZZ)V

    .line 4111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4112
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4096
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4097
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4098
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isAppMute(I)Z

    move-result v1

    .line 4099
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4100
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4101
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4083
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4085
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4087
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4088
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4089
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setAppMute(IZLjava/lang/String;)V

    .line 4090
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4091
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4073
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4074
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4075
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getAppVolume(I)I

    move-result v1

    .line 4076
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4077
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4078
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4060
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4062
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4064
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4065
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4066
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setAppVolume(IILjava/lang/String;)V

    .line 4067
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4068
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4050
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4051
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4052
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getAppDevice(I)I

    move-result v1

    .line 4053
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4054
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4055
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4037
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4039
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4041
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4042
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4043
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setAppDevice(IIZ)V

    .line 4044
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4045
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4027
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4028
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4029
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getUidForDevice(I)I

    move-result v1

    .line 4030
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4031
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4032
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4017
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4018
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4019
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->secGetActiveStreamType(I)I

    move-result v1

    .line 4020
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4021
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4022
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4009
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_31
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->shouldShowRingtoneVolume()Z

    move-result v0

    .line 4010
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4011
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4012
    move/from16 v26, v10

    goto/16 :goto_0

    .line 4000
    .end local v0    # "_result":Z
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4001
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4002
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4003
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4004
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4005
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3991
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3992
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3993
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 3994
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3995
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3983
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_34
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getHalVersion()Ljava/lang/String;

    move-result-object v0

    .line 3984
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3985
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3986
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3965
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 3967
    .local v7, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioDeviceVolumeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioDeviceVolumeDispatcher;

    move-result-object v8

    .line 3969
    .local v8, "_arg1":Landroid/media/IAudioDeviceVolumeDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 3971
    .local v9, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/media/AudioDeviceAttributes;

    .line 3973
    .local v16, "_arg3":Landroid/media/AudioDeviceAttributes;
    sget-object v0, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .line 3975
    .local v17, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 3976
    .local v18, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3977
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/media/IAudioService$Stub;->registerDeviceVolumeDispatcherForAbsoluteVolume(ZLandroid/media/IAudioDeviceVolumeDispatcher;Ljava/lang/String;Landroid/media/AudioDeviceAttributes;Ljava/util/List;Z)V

    .line 3978
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3979
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3957
    .end local v7    # "_arg0":Z
    .end local v8    # "_arg1":Landroid/media/IAudioDeviceVolumeDispatcher;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Landroid/media/AudioDeviceAttributes;
    .end local v17    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    .end local v18    # "_arg5":Z
    :pswitch_36
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActiveAssistantServiceUids()[I

    move-result-object v0

    .line 3958
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3959
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3960
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3950
    .end local v0    # "_result":[I
    :pswitch_37
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAssistantServicesUids()[I

    move-result-object v0

    .line 3951
    .restart local v0    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3952
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3953
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3942
    .end local v0    # "_result":[I
    :pswitch_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 3943
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3944
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setActiveAssistantServiceUids([I)V

    .line 3945
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3946
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3933
    .end local v0    # "_arg0":[I
    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 3934
    .restart local v0    # "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3935
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->removeAssistantServicesUids([I)V

    .line 3936
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3937
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3924
    .end local v0    # "_arg0":[I
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 3925
    .restart local v0    # "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3926
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->addAssistantServicesUids([I)V

    .line 3927
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3928
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3912
    .end local v0    # "_arg0":[I
    :pswitch_3b
    sget-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFocusInfo;

    .line 3914
    .local v0, "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 3915
    .local v1, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3916
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->sendFocusLoss(Landroid/media/AudioFocusInfo;Landroid/media/audiopolicy/IAudioPolicyCallback;)Z

    move-result v2

    .line 3917
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3918
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3919
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3904
    .end local v0    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_result":Z
    :pswitch_3c
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getFocusStack()Ljava/util/List;

    move-result-object v0

    .line 3905
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3906
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3907
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3894
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3896
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IDeviceVolumeBehaviorDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IDeviceVolumeBehaviorDispatcher;

    move-result-object v1

    .line 3897
    .local v1, "_arg1":Landroid/media/IDeviceVolumeBehaviorDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3898
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->registerDeviceVolumeBehaviorDispatcher(ZLandroid/media/IDeviceVolumeBehaviorDispatcher;)V

    .line 3899
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3900
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3883
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/media/IDeviceVolumeBehaviorDispatcher;
    :pswitch_3e
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3885
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3886
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3887
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setTestDeviceConnectionState(Landroid/media/AudioDeviceAttributes;Z)V

    .line 3888
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3889
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3872
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_arg1":Z
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IMuteAwaitConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMuteAwaitConnectionCallback;

    move-result-object v0

    .line 3874
    .local v0, "_arg0":Landroid/media/IMuteAwaitConnectionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3875
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3876
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->registerMuteAwaitConnectionDispatcher(Landroid/media/IMuteAwaitConnectionCallback;Z)V

    .line 3877
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3878
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3864
    .end local v0    # "_arg0":Landroid/media/IMuteAwaitConnectionCallback;
    .end local v1    # "_arg1":Z
    :pswitch_40
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMutingExpectedDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    .line 3865
    .local v0, "_result":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3866
    invoke-virtual {v14, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3867
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3857
    .end local v0    # "_result":Landroid/media/AudioDeviceAttributes;
    :pswitch_41
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3858
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3859
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->cancelMuteAwaitConnection(Landroid/media/AudioDeviceAttributes;)V

    .line 3860
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3845
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    :pswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 3847
    .local v0, "_arg0":[I
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 3849
    .local v1, "_arg1":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 3850
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3851
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->muteAwaitConnection([ILandroid/media/AudioDeviceAttributes;J)V

    .line 3852
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3837
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_arg2":J
    :pswitch_43
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isPstnCallAudioInterceptable()Z

    move-result v0

    .line 3838
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3839
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3840
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3830
    .end local v0    # "_result":Z
    :pswitch_44
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getDefaultVolumeInfo()Landroid/media/VolumeInfo;

    move-result-object v0

    .line 3831
    .local v0, "_result":Landroid/media/VolumeInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3832
    invoke-virtual {v14, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3833
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3823
    .end local v0    # "_result":Landroid/media/VolumeInfo;
    :pswitch_45
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isVolumeFixed()Z

    move-result v0

    .line 3824
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3825
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3826
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3815
    .end local v0    # "_result":Z
    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerOutputCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerOutputCallback;

    move-result-object v0

    .line 3816
    .local v0, "_arg0":Landroid/media/ISpatializerOutputCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3817
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V

    .line 3818
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3819
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3806
    .end local v0    # "_arg0":Landroid/media/ISpatializerOutputCallback;
    :pswitch_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerOutputCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerOutputCallback;

    move-result-object v0

    .line 3807
    .restart local v0    # "_arg0":Landroid/media/ISpatializerOutputCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3808
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V

    .line 3809
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3810
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3798
    .end local v0    # "_arg0":Landroid/media/ISpatializerOutputCallback;
    :pswitch_48
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSpatializerOutput()I

    move-result v0

    .line 3799
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3800
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3801
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3787
    .end local v0    # "_result":I
    :pswitch_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3789
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 3790
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3791
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->getSpatializerParameter(I[B)V

    .line 3792
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3793
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3794
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3776
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3778
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 3779
    .restart local v1    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3780
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setSpatializerParameter(I[B)V

    .line 3781
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3782
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3770
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    :pswitch_4b
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->recenterHeadTracker()V

    .line 3771
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3763
    :pswitch_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    .line 3764
    .local v0, "_arg0":[F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3765
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setSpatializerGlobalTransform([F)V

    .line 3766
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3755
    .end local v0    # "_arg0":[F
    :pswitch_4d
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActualHeadTrackingMode()I

    move-result v0

    .line 3756
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3757
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3758
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3748
    .end local v0    # "_result":I
    :pswitch_4e
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSupportedHeadTrackingModes()[I

    move-result-object v0

    .line 3749
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3750
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3751
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3741
    .end local v0    # "_result":[I
    :pswitch_4f
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getDesiredHeadTrackingMode()I

    move-result v0

    .line 3742
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3743
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3744
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3733
    .end local v0    # "_result":I
    :pswitch_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3734
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3735
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setDesiredHeadTrackingMode(I)V

    .line 3736
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3737
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3724
    .end local v0    # "_arg0":I
    :pswitch_51
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3725
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3726
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->removeSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V

    .line 3727
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3728
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3715
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    :pswitch_52
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3716
    .restart local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3717
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->addSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V

    .line 3718
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3719
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3707
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    :pswitch_53
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSpatializerCompatibleAudioDevices()Ljava/util/List;

    move-result-object v0

    .line 3708
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3709
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3710
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3699
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerHeadToSoundStagePoseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadToSoundStagePoseCallback;

    move-result-object v0

    .line 3700
    .local v0, "_arg0":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3701
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V

    .line 3702
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3703
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3690
    .end local v0    # "_arg0":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    :pswitch_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerHeadToSoundStagePoseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadToSoundStagePoseCallback;

    move-result-object v0

    .line 3691
    .restart local v0    # "_arg0":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3692
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V

    .line 3693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3694
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3681
    .end local v0    # "_arg0":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    :pswitch_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerHeadTrackingModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackingModeCallback;

    move-result-object v0

    .line 3682
    .local v0, "_arg0":Landroid/media/ISpatializerHeadTrackingModeCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3683
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterSpatializerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V

    .line 3684
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3685
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3672
    .end local v0    # "_arg0":Landroid/media/ISpatializerHeadTrackingModeCallback;
    :pswitch_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerHeadTrackingModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackingModeCallback;

    move-result-object v0

    .line 3673
    .restart local v0    # "_arg0":Landroid/media/ISpatializerHeadTrackingModeCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3674
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerSpatializerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V

    .line 3675
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3676
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3663
    .end local v0    # "_arg0":Landroid/media/ISpatializerHeadTrackingModeCallback;
    :pswitch_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerCallback;

    move-result-object v0

    .line 3664
    .local v0, "_arg0":Landroid/media/ISpatializerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3665
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterSpatializerCallback(Landroid/media/ISpatializerCallback;)V

    .line 3666
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3667
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3654
    .end local v0    # "_arg0":Landroid/media/ISpatializerCallback;
    :pswitch_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerCallback;

    move-result-object v0

    .line 3655
    .restart local v0    # "_arg0":Landroid/media/ISpatializerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3656
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerSpatializerCallback(Landroid/media/ISpatializerCallback;)V

    .line 3657
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3658
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3642
    .end local v0    # "_arg0":Landroid/media/ISpatializerCallback;
    :pswitch_5a
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 3644
    .local v0, "_arg0":Landroid/media/AudioAttributes;
    sget-object v1, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFormat;

    .line 3645
    .local v1, "_arg1":Landroid/media/AudioFormat;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3646
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result v2

    .line 3647
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3648
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3649
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3633
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_arg1":Landroid/media/AudioFormat;
    .end local v2    # "_result":Z
    :pswitch_5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3634
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3635
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setSpatializerEnabled(Z)V

    .line 3636
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3637
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3622
    .end local v0    # "_arg0":Z
    :pswitch_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializerHeadTrackerAvailableCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackerAvailableCallback;

    move-result-object v0

    .line 3624
    .local v0, "_arg0":Landroid/media/ISpatializerHeadTrackerAvailableCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3625
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3626
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->registerSpatializerHeadTrackerAvailableCallback(Landroid/media/ISpatializerHeadTrackerAvailableCallback;Z)V

    .line 3627
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3628
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3614
    .end local v0    # "_arg0":Landroid/media/ISpatializerHeadTrackerAvailableCallback;
    .end local v1    # "_arg1":Z
    :pswitch_5d
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isHeadTrackerAvailable()Z

    move-result v0

    .line 3615
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3616
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3617
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3605
    .end local v0    # "_result":Z
    :pswitch_5e
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3606
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3607
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isHeadTrackerEnabled(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    .line 3608
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3609
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3610
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3594
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_result":Z
    :pswitch_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3596
    .local v0, "_arg0":Z
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 3597
    .local v1, "_arg1":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3598
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V

    .line 3599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3600
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3584
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/media/AudioDeviceAttributes;
    :pswitch_60
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3585
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3586
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    .line 3587
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3588
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3589
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3574
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_result":Z
    :pswitch_61
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3575
    .restart local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3576
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isSpatializerAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z

    move-result v1

    .line 3577
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3578
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3579
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3566
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_result":Z
    :pswitch_62
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpatializerAvailable()Z

    move-result v0

    .line 3567
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3568
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3569
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3559
    .end local v0    # "_result":Z
    :pswitch_63
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpatializerEnabled()Z

    move-result v0

    .line 3560
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3561
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3562
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3552
    .end local v0    # "_result":Z
    :pswitch_64
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSpatializerImmersiveAudioLevel()I

    move-result v0

    .line 3553
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3554
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3555
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3545
    .end local v0    # "_result":I
    :pswitch_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioModeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioModeDispatcher;

    move-result-object v0

    .line 3546
    .local v0, "_arg0":Landroid/media/IAudioModeDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3547
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterModeDispatcher(Landroid/media/IAudioModeDispatcher;)V

    .line 3548
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3536
    .end local v0    # "_arg0":Landroid/media/IAudioModeDispatcher;
    :pswitch_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioModeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioModeDispatcher;

    move-result-object v0

    .line 3537
    .restart local v0    # "_arg0":Landroid/media/IAudioModeDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3538
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerModeDispatcher(Landroid/media/IAudioModeDispatcher;)V

    .line 3539
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3540
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3526
    .end local v0    # "_arg0":Landroid/media/IAudioModeDispatcher;
    :pswitch_67
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 3527
    .local v0, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3528
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J

    move-result-wide v1

    .line 3529
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3530
    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3531
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3510
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_result":J
    :pswitch_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v0

    .line 3512
    .local v0, "_arg0":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3514
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    .line 3516
    .local v2, "_arg2":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3517
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3518
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->abandonAudioFocusForTest(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v4

    .line 3519
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3520
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3521
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3484
    .end local v0    # "_arg0":Landroid/media/IAudioFocusDispatcher;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/media/AudioAttributes;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_69
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/media/AudioAttributes;

    .line 3486
    .local v16, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 3488
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 3490
    .local v18, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v19

    .line 3492
    .local v19, "_arg3":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 3494
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 3496
    .local v21, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 3498
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 3500
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 3501
    .local v24, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3502
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/media/IAudioService$Stub;->requestAudioFocusForTest(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    .line 3503
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3504
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3505
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3474
    .end local v0    # "_result":I
    .end local v16    # "_arg0":Landroid/media/AudioAttributes;
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":Landroid/os/IBinder;
    .end local v19    # "_arg3":Landroid/media/IAudioFocusDispatcher;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Ljava/lang/String;
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":I
    :pswitch_6a
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3475
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3476
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getMaxAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J

    move-result-wide v1

    .line 3477
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3478
    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3479
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3464
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_result":J
    :pswitch_6b
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3465
    .restart local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3466
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J

    move-result-wide v1

    .line 3467
    .restart local v1    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3468
    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3469
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3452
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_result":J
    :pswitch_6c
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3454
    .restart local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 3455
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3456
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;J)Z

    move-result v3

    .line 3457
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3458
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3459
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3444
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_arg1":J
    .end local v3    # "_result":Z
    :pswitch_6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3445
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3446
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setHomeSoundEffectEnabled(Z)V

    .line 3447
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3436
    .end local v0    # "_arg0":Z
    :pswitch_6e
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isHomeSoundEffectEnabled()Z

    move-result v0

    .line 3437
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3438
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3439
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3429
    .end local v0    # "_result":Z
    :pswitch_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3430
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3431
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setNavigationRepeatSoundEffectsEnabled(Z)V

    .line 3432
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3421
    .end local v0    # "_arg0":Z
    :pswitch_70
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->areNavigationRepeatSoundEffectsEnabled()Z

    move-result v0

    .line 3422
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3423
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3424
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3414
    .end local v0    # "_result":Z
    :pswitch_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ICommunicationDeviceDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICommunicationDeviceDispatcher;

    move-result-object v0

    .line 3415
    .local v0, "_arg0":Landroid/media/ICommunicationDeviceDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3416
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V

    .line 3417
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3405
    .end local v0    # "_arg0":Landroid/media/ICommunicationDeviceDispatcher;
    :pswitch_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ICommunicationDeviceDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICommunicationDeviceDispatcher;

    move-result-object v0

    .line 3406
    .restart local v0    # "_arg0":Landroid/media/ICommunicationDeviceDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3407
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V

    .line 3408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3409
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3397
    .end local v0    # "_arg0":Landroid/media/ICommunicationDeviceDispatcher;
    :pswitch_73
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getCommunicationDevice()I

    move-result v0

    .line 3398
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3399
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3400
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3386
    .end local v0    # "_result":I
    :pswitch_74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3388
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3389
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3390
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setCommunicationDevice(Landroid/os/IBinder;I)Z

    move-result v2

    .line 3391
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3392
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3393
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3378
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_75
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAvailableCommunicationDeviceIds()[I

    move-result-object v0

    .line 3379
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3380
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3381
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3369
    .end local v0    # "_result":[I
    :pswitch_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3370
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3371
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getDeviceMaskForStream(I)I

    move-result v1

    .line 3372
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3373
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3374
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3359
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3360
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3361
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isMusicActive(Z)Z

    move-result v1

    .line 3362
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3363
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3364
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3337
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3339
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 3341
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 3343
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 3345
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 3347
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 3349
    .local v20, "_arg5":I
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/UserHandle;

    .line 3351
    .local v21, "_arg6":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 3352
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3353
    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->setStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    .line 3354
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3315
    .end local v9    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Landroid/os/UserHandle;
    .end local v22    # "_arg7":I
    :pswitch_79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3317
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 3319
    .restart local v16    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 3321
    .restart local v17    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 3323
    .restart local v18    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 3325
    .restart local v19    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 3327
    .restart local v20    # "_arg5":I
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/UserHandle;

    .line 3329
    .restart local v21    # "_arg6":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 3330
    .restart local v22    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3331
    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    .line 3332
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3293
    .end local v9    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Landroid/os/UserHandle;
    .end local v22    # "_arg7":I
    :pswitch_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3295
    .restart local v9    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 3297
    .restart local v16    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 3299
    .restart local v17    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 3301
    .restart local v18    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 3303
    .restart local v19    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 3305
    .restart local v20    # "_arg5":I
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/UserHandle;

    .line 3307
    .restart local v21    # "_arg6":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 3308
    .restart local v22    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3309
    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->adjustStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    .line 3310
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3285
    .end local v9    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":Landroid/os/UserHandle;
    .end local v22    # "_arg7":I
    :pswitch_7b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ICapturePresetDevicesRoleDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICapturePresetDevicesRoleDispatcher;

    move-result-object v0

    .line 3286
    .local v0, "_arg0":Landroid/media/ICapturePresetDevicesRoleDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3287
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    .line 3288
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3276
    .end local v0    # "_arg0":Landroid/media/ICapturePresetDevicesRoleDispatcher;
    :pswitch_7c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ICapturePresetDevicesRoleDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICapturePresetDevicesRoleDispatcher;

    move-result-object v0

    .line 3277
    .restart local v0    # "_arg0":Landroid/media/ICapturePresetDevicesRoleDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3278
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    .line 3279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3280
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3266
    .end local v0    # "_arg0":Landroid/media/ICapturePresetDevicesRoleDispatcher;
    :pswitch_7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3267
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3268
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getPreferredDevicesForCapturePreset(I)Ljava/util/List;

    move-result-object v1

    .line 3269
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3270
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3271
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3256
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3257
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3258
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->clearPreferredDevicesForCapturePreset(I)I

    move-result v1

    .line 3259
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3260
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3261
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3244
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_7f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3246
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3247
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3248
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setPreferredDevicesForCapturePreset(ILjava/util/List;)I

    move-result v2

    .line 3249
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3250
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3251
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3236
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    .end local v2    # "_result":I
    :pswitch_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3237
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3238
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setMultiAudioFocusEnabled(Z)V

    .line 3239
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3226
    .end local v0    # "_arg0":Z
    :pswitch_81
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3227
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3228
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result v1

    .line 3229
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3230
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3231
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3213
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_result":I
    :pswitch_82
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 3215
    .restart local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3217
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3218
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3219
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 3220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3221
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3205
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3206
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3207
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setRttEnabled(Z)V

    .line 3208
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3197
    .end local v0    # "_arg0":Z
    :pswitch_84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IStrategyPreferredDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyPreferredDevicesDispatcher;

    move-result-object v0

    .line 3198
    .local v0, "_arg0":Landroid/media/IStrategyPreferredDevicesDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3199
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    .line 3200
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3188
    .end local v0    # "_arg0":Landroid/media/IStrategyPreferredDevicesDispatcher;
    :pswitch_85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IStrategyPreferredDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyPreferredDevicesDispatcher;

    move-result-object v0

    .line 3189
    .restart local v0    # "_arg0":Landroid/media/IStrategyPreferredDevicesDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3190
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    .line 3191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3192
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3180
    .end local v0    # "_arg0":Landroid/media/IStrategyPreferredDevicesDispatcher;
    :pswitch_86
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAllowedCapturePolicy()I

    move-result v0

    .line 3181
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3182
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3183
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3171
    .end local v0    # "_result":I
    :pswitch_87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3172
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3173
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setAllowedCapturePolicy(I)I

    move-result v1

    .line 3174
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3175
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3176
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3161
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_88
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 3162
    .local v0, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3163
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getDevicesForAttributesUnprotected(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v1

    .line 3164
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3165
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3166
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3151
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_89
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 3152
    .restart local v0    # "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3153
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v1

    .line 3154
    .restart local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3155
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3156
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3141
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3142
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3143
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getPreferredDevicesForStrategy(I)Ljava/util/List;

    move-result-object v1

    .line 3144
    .restart local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3145
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3146
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3131
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_8b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3132
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3133
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->removePreferredDevicesForStrategy(I)I

    move-result v1

    .line 3134
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3135
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3136
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3119
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_8c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3121
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3122
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3123
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setPreferredDevicesForStrategy(ILjava/util/List;)I

    move-result v2

    .line 3124
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3125
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3126
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3111
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    .end local v2    # "_result":I
    :pswitch_8d
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isCallScreeningModeSupported()Z

    move-result v0

    .line 3112
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3113
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3114
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3102
    .end local v0    # "_result":Z
    :pswitch_8e
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 3103
    .local v0, "_arg0":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3104
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->hasHapticChannels(Landroid/net/Uri;)Z

    move-result v1

    .line 3105
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3106
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3107
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3090
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_result":Z
    :pswitch_8f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    .line 3092
    .local v0, "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3093
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3094
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->removeUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v2

    .line 3095
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3096
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3097
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3074
    .end local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    .line 3076
    .restart local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3078
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 3080
    .local v2, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 3081
    .local v3, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3082
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I

    move-result v4

    .line 3083
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3084
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3085
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3062
    .end local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[I
    .end local v3    # "_arg3":[Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    .line 3064
    .restart local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3065
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3066
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->removeUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v2

    .line 3067
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3068
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3069
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3046
    .end local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    .line 3048
    .restart local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3050
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 3052
    .local v2, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 3053
    .restart local v3    # "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3054
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I

    move-result v4

    .line 3055
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3056
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3057
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3038
    .end local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[I
    .end local v3    # "_arg3":[Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_93
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isAudioServerRunning()Z

    move-result v0

    .line 3039
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3040
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3041
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3031
    .end local v0    # "_result":Z
    :pswitch_94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioServerStateDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioServerStateDispatcher;

    move-result-object v0

    .line 3032
    .local v0, "_arg0":Landroid/media/IAudioServerStateDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3033
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V

    .line 3034
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3022
    .end local v0    # "_arg0":Landroid/media/IAudioServerStateDispatcher;
    :pswitch_95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioServerStateDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioServerStateDispatcher;

    move-result-object v0

    .line 3023
    .restart local v0    # "_arg0":Landroid/media/IAudioServerStateDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3024
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V

    .line 3025
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3026
    move/from16 v26, v10

    goto/16 :goto_0

    .line 3010
    .end local v0    # "_arg0":Landroid/media/IAudioServerStateDispatcher;
    :pswitch_96
    sget-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFocusInfo;

    .line 3012
    .local v0, "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3014
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 3015
    .local v2, "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3016
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 3017
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2997
    .end local v0    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :pswitch_97
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2999
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 3001
    .local v1, "_arg1":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/media/BluetoothProfileConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/BluetoothProfileConnectionInfo;

    .line 3002
    .local v2, "_arg2":Landroid/media/BluetoothProfileConnectionInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3003
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->handleBluetoothActiveDeviceChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V

    .line 3004
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3005
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2987
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg2":Landroid/media/BluetoothProfileConnectionInfo;
    :pswitch_98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2989
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2990
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2991
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->playerHasOpPlayAudio(IZ)V

    .line 2992
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2973
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_99
    sget-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFocusInfo;

    .line 2975
    .local v0, "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2977
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 2978
    .local v2, "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2979
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v3

    .line 2980
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2981
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2982
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2961
    .end local v0    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v3    # "_result":I
    :pswitch_9a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2963
    .local v0, "_arg0":I
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 2964
    .local v1, "_arg1":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2965
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v2

    .line 2966
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2967
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2968
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2953
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/AudioAttributes;
    .end local v2    # "_result":I
    :pswitch_9b
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v0

    .line 2954
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2955
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2956
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2946
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    :pswitch_9c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v0

    .line 2947
    .local v0, "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2948
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 2949
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2937
    .end local v0    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    :pswitch_9d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v0

    .line 2938
    .restart local v0    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2939
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 2940
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2941
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2929
    .end local v0    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    :pswitch_9e
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object v0

    .line 2930
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2931
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2932
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2922
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    :pswitch_9f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v0

    .line 2923
    .local v0, "_arg0":Landroid/media/IRecordingConfigDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2924
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 2925
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2913
    .end local v0    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    :pswitch_a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v0

    .line 2914
    .restart local v0    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2915
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 2916
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2917
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2905
    .end local v0    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    :pswitch_a1
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->hasRegisteredDynamicPolicy()Z

    move-result v0

    .line 2906
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2907
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2908
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2897
    .end local v0    # "_result":Z
    :pswitch_a2
    sget-object v0, Landroid/media/VolumePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/VolumePolicy;

    .line 2898
    .local v0, "_arg0":Landroid/media/VolumePolicy;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2899
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 2900
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2901
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2885
    .end local v0    # "_arg0":Landroid/media/VolumePolicy;
    :pswitch_a3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2887
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 2888
    .local v1, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2889
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v2

    .line 2890
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2891
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2892
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2873
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_result":I
    :pswitch_a4
    sget-object v0, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 2875
    .local v0, "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 2876
    .restart local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2877
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->removeMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v2

    .line 2878
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2879
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2880
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2861
    .end local v0    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_result":I
    :pswitch_a5
    sget-object v0, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 2863
    .restart local v0    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 2864
    .restart local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2865
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->addMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v2

    .line 2866
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2867
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2868
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2852
    .end local v0    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v1    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_result":I
    :pswitch_a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    .line 2853
    .local v0, "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2854
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 2855
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2856
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2844
    .end local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :pswitch_a7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    .line 2845
    .restart local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2846
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 2847
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2822
    .end local v0    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :pswitch_a8
    sget-object v0, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 2824
    .local v8, "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v9

    .line 2826
    .local v9, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 2828
    .local v16, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 2830
    .local v17, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 2832
    .local v18, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 2834
    .local v19, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v20

    .line 2835
    .local v20, "_arg6":Landroid/media/projection/IMediaProjection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2836
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/media/IAudioService$Stub;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;)Ljava/lang/String;

    move-result-object v0

    .line 2837
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2838
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2839
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2814
    .end local v0    # "_result":Ljava/lang/String;
    .end local v8    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v9    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v16    # "_arg2":Z
    .end local v17    # "_arg3":Z
    .end local v18    # "_arg4":Z
    .end local v19    # "_arg5":Z
    .end local v20    # "_arg6":Landroid/media/projection/IMediaProjection;
    :pswitch_a9
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isHdmiSystemAudioSupported()Z

    move-result v0

    .line 2815
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2816
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2817
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2805
    .end local v0    # "_result":Z
    :pswitch_aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2806
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2807
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setHdmiSystemAudioSupported(Z)I

    move-result v1

    .line 2808
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2809
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2810
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2796
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :pswitch_ab
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2797
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2798
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->disableSafeMediaVolume(Ljava/lang/String;)V

    .line 2799
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2800
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2786
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2787
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2788
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isStreamAffectedByMute(I)Z

    move-result v1

    .line 2789
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2790
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2791
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2776
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_ad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2777
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2778
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isStreamAffectedByRingerMode(I)Z

    move-result v1

    .line 2779
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2780
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2781
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2765
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v0

    .line 2767
    .local v0, "_arg0":Landroid/media/IVolumeController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2768
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2769
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    .line 2770
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2771
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2756
    .end local v0    # "_arg0":Landroid/media/IVolumeController;
    .end local v1    # "_arg1":Z
    :pswitch_af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v0

    .line 2757
    .restart local v0    # "_arg0":Landroid/media/IVolumeController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2758
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setVolumeController(Landroid/media/IVolumeController;)V

    .line 2759
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2760
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2748
    .end local v0    # "_arg0":Landroid/media/IVolumeController;
    :pswitch_b0
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isCameraSoundForced()Z

    move-result v0

    .line 2749
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2750
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2751
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2739
    .end local v0    # "_result":Z
    :pswitch_b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioRoutesObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioRoutesObserver;

    move-result-object v0

    .line 2740
    .local v0, "_arg0":Landroid/media/IAudioRoutesObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2741
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v1

    .line 2742
    .local v1, "_result":Landroid/media/AudioRoutesInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2743
    invoke-virtual {v14, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2744
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2726
    .end local v0    # "_arg0":Landroid/media/IAudioRoutesObserver;
    .end local v1    # "_result":Landroid/media/AudioRoutesInfo;
    :pswitch_b2
    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 2728
    .local v0, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2730
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2731
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2732
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 2733
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2734
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2718
    .end local v0    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_b3
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getUiSoundsStreamType()I

    move-result v0

    .line 2719
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2720
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2721
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2711
    .end local v0    # "_result":I
    :pswitch_b4
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    .line 2712
    .local v0, "_result":Landroid/media/IRingtonePlayer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2713
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2714
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2703
    .end local v0    # "_result":Landroid/media/IRingtonePlayer;
    :pswitch_b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRingtonePlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;

    move-result-object v0

    .line 2704
    .local v0, "_arg0":Landroid/media/IRingtonePlayer;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2705
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V

    .line 2706
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2707
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2692
    .end local v0    # "_arg0":Landroid/media/IRingtonePlayer;
    :pswitch_b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2694
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2695
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2696
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->forceVolumeControlStream(ILandroid/os/IBinder;)V

    .line 2697
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2698
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2683
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_b7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2684
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2685
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;)V

    .line 2686
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2687
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2674
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2675
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2676
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->startBluetoothScoVirtualCall(Landroid/os/IBinder;)V

    .line 2677
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2678
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2663
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_b9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2665
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2666
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2667
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;I)V

    .line 2668
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2669
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2655
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_ba
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getCurrentAudioFocus()I

    move-result v0

    .line 2656
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2657
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2658
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2647
    .end local v0    # "_result":I
    :pswitch_bb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2648
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2649
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 2650
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2651
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2631
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v0

    .line 2633
    .local v0, "_arg0":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2635
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    .line 2637
    .local v2, "_arg2":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2638
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2639
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v4

    .line 2640
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2641
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2642
    move/from16 v26, v10

    goto/16 :goto_0

    .line 2603
    .end local v0    # "_arg0":Landroid/media/IAudioFocusDispatcher;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/media/AudioAttributes;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_bd
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/media/AudioAttributes;

    .line 2605
    .local v16, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2607
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 2609
    .local v18, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v19

    .line 2611
    .local v19, "_arg3":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 2613
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 2615
    .local v21, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 2617
    .local v22, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 2619
    .restart local v23    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v24

    .line 2621
    .local v24, "_arg8":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 2622
    .local v25, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2623
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move/from16 v26, v10

    move/from16 v10, v25

    invoke-virtual/range {v0 .. v10}, Landroid/media/IAudioService$Stub;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v0

    .line 2624
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2625
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2626
    goto/16 :goto_0

    .line 2595
    .end local v0    # "_result":I
    .end local v16    # "_arg0":Landroid/media/AudioAttributes;
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":Landroid/os/IBinder;
    .end local v19    # "_arg3":Landroid/media/IAudioFocusDispatcher;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Ljava/lang/String;
    .end local v22    # "_arg6":Ljava/lang/String;
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v25    # "_arg9":I
    :pswitch_be
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothA2dpOn()Z

    move-result v0

    .line 2596
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2597
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2598
    goto/16 :goto_0

    .line 2587
    .end local v0    # "_result":Z
    :pswitch_bf
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2588
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2589
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpOn(Z)V

    .line 2590
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2591
    goto/16 :goto_0

    .line 2579
    .end local v0    # "_arg0":Z
    :pswitch_c0
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    move-result v0

    .line 2580
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2581
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2582
    goto/16 :goto_0

    .line 2571
    .end local v0    # "_result":Z
    :pswitch_c1
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2572
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2573
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    .line 2574
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2575
    goto/16 :goto_0

    .line 2563
    .end local v0    # "_arg0":Z
    :pswitch_c2
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    move-result v0

    .line 2564
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2565
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2566
    goto/16 :goto_0

    .line 2553
    .end local v0    # "_result":Z
    :pswitch_c3
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2555
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2556
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2557
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Landroid/os/IBinder;Z)V

    .line 2558
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2559
    goto/16 :goto_0

    .line 2543
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_c4
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2544
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2545
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getEncodedSurroundMode(I)I

    move-result v1

    .line 2546
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2547
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2548
    goto/16 :goto_0

    .line 2533
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_c5
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2534
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2535
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setEncodedSurroundMode(I)Z

    move-result v1

    .line 2536
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2537
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2538
    goto/16 :goto_0

    .line 2523
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_c6
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2524
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2525
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isSurroundFormatEnabled(I)Z

    move-result v1

    .line 2526
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2527
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2528
    goto/16 :goto_0

    .line 2511
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_c7
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2513
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2514
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2515
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setSurroundFormatEnabled(IZ)Z

    move-result v2

    .line 2516
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2517
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2518
    goto/16 :goto_0

    .line 2503
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_c8
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getReportedSurroundFormats()Ljava/util/List;

    move-result-object v0

    .line 2504
    .local v0, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2505
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2506
    goto/16 :goto_0

    .line 2496
    .end local v0    # "_result":Ljava/util/List;
    :pswitch_c9
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSurroundFormats()Ljava/util/Map;

    move-result-object v0

    .line 2497
    .local v0, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2498
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 2499
    goto/16 :goto_0

    .line 2491
    .end local v0    # "_result":Ljava/util/Map;
    :pswitch_ca
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    .line 2492
    goto/16 :goto_0

    .line 2486
    :pswitch_cb
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    .line 2487
    goto/16 :goto_0

    .line 2479
    :pswitch_cc
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v0

    .line 2480
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2481
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2482
    goto/16 :goto_0

    .line 2470
    .end local v0    # "_result":Z
    :pswitch_cd
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2472
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 2473
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2474
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    .line 2475
    goto/16 :goto_0

    .line 2460
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":F
    :pswitch_ce
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2462
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2463
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2464
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->playSoundEffect(II)V

    .line 2465
    goto/16 :goto_0

    .line 2452
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_cf
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v0

    .line 2453
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2454
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2455
    goto/16 :goto_0

    .line 2440
    .end local v0    # "_result":I
    :pswitch_d0
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2442
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2444
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2445
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2446
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 2447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2448
    goto/16 :goto_0

    .line 2430
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_d1
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2431
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2432
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v1

    .line 2433
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2434
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2435
    goto/16 :goto_0

    .line 2420
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_d2
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2421
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2422
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v1

    .line 2423
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2424
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2425
    goto/16 :goto_0

    .line 2409
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_d3
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2411
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2412
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2413
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    .line 2414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2415
    goto/16 :goto_0

    .line 2399
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_d4
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2400
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2401
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isValidRingerMode(I)Z

    move-result v1

    .line 2402
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2403
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2404
    goto/16 :goto_0

    .line 2391
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_d5
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerModeInternal()I

    move-result v0

    .line 2392
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2393
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2394
    goto/16 :goto_0

    .line 2384
    .end local v0    # "_result":I
    :pswitch_d6
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerModeExternal()I

    move-result v0

    .line 2385
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2386
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2387
    goto/16 :goto_0

    .line 2374
    .end local v0    # "_result":I
    :pswitch_d7
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2376
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2377
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2378
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setRingerModeInternal(ILjava/lang/String;)V

    .line 2379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2380
    goto/16 :goto_0

    .line 2363
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_d8
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2365
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2366
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2367
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->setRingerModeExternal(ILjava/lang/String;)V

    .line 2368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2369
    goto/16 :goto_0

    .line 2355
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_d9
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2356
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2357
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setMicrophoneMuteFromSwitch(Z)V

    .line 2358
    goto/16 :goto_0

    .line 2340
    .end local v0    # "_arg0":Z
    :pswitch_da
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2342
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2344
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2346
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2347
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2348
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setMicrophoneMute(ZLjava/lang/String;ILjava/lang/String;)V

    .line 2349
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2350
    goto/16 :goto_0

    .line 2332
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_db
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isUltrasoundSupported()Z

    move-result v0

    .line 2333
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2334
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2335
    goto/16 :goto_0

    .line 2325
    .end local v0    # "_result":Z
    :pswitch_dc
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isMicrophoneMuted()Z

    move-result v0

    .line 2326
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2327
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2328
    goto/16 :goto_0

    .line 2318
    .end local v0    # "_result":Z
    :pswitch_dd
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    .line 2319
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioProductStrategy;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2320
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2321
    goto/16 :goto_0

    .line 2311
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioProductStrategy;>;"
    :pswitch_de
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getSupportedSystemUsages()[I

    move-result-object v0

    .line 2312
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2313
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2314
    goto/16 :goto_0

    .line 2303
    .end local v0    # "_result":[I
    :pswitch_df
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 2304
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2305
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->setSupportedSystemUsages([I)V

    .line 2306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2307
    goto/16 :goto_0

    .line 2293
    .end local v0    # "_arg0":[I
    :pswitch_e0
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2294
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2295
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getLastAudibleStreamVolume(I)I

    move-result v1

    .line 2296
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2297
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2298
    goto/16 :goto_0

    .line 2283
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_e1
    move/from16 v26, v10

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 2284
    .local v0, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2285
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v1

    .line 2286
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2287
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2288
    goto/16 :goto_0

    .line 2273
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_result":I
    :pswitch_e2
    move/from16 v26, v10

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 2274
    .restart local v0    # "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2275
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v1

    .line 2276
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2277
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2278
    goto/16 :goto_0

    .line 2263
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_result":I
    :pswitch_e3
    move/from16 v26, v10

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 2264
    .restart local v0    # "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2265
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v1

    .line 2266
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2267
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2268
    goto/16 :goto_0

    .line 2246
    .end local v0    # "_arg0":Landroid/media/AudioAttributes;
    .end local v1    # "_result":I
    :pswitch_e4
    move/from16 v26, v10

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/media/AudioAttributes;

    .line 2248
    .local v6, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2250
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2252
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 2254
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 2255
    .local v10, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2256
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setVolumeIndexForAttributes(Landroid/media/AudioAttributes;IILjava/lang/String;Ljava/lang/String;)V

    .line 2257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2258
    goto/16 :goto_0

    .line 2238
    .end local v6    # "_arg0":Landroid/media/AudioAttributes;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg4":Ljava/lang/String;
    :pswitch_e5
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object v0

    .line 2239
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioVolumeGroup;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2240
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2241
    goto/16 :goto_0

    .line 2229
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioVolumeGroup;>;"
    :pswitch_e6
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2230
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2231
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v1

    .line 2232
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2233
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2234
    goto/16 :goto_0

    .line 2219
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_e7
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2220
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2221
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getStreamMinVolume(I)I

    move-result v1

    .line 2222
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2223
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2224
    goto/16 :goto_0

    .line 2209
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_e8
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2210
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2211
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v1

    .line 2212
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2213
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2214
    goto/16 :goto_0

    .line 2192
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_e9
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 2194
    .local v6, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2196
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2198
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2200
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 2201
    .restart local v10    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2202
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v8

    move v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setMasterMute(ZILjava/lang/String;ILjava/lang/String;)V

    .line 2203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2204
    goto/16 :goto_0

    .line 2184
    .end local v6    # "_arg0":Z
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":Ljava/lang/String;
    :pswitch_ea
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isMasterMute()Z

    move-result v0

    .line 2185
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2186
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2187
    goto/16 :goto_0

    .line 2174
    .end local v0    # "_result":Z
    :pswitch_eb
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2176
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2177
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2178
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V

    .line 2179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2180
    goto/16 :goto_0

    .line 2164
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_ec
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2165
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2166
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->isStreamMute(I)Z

    move-result v1

    .line 2167
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2168
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2169
    goto/16 :goto_0

    .line 2150
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_ed
    move/from16 v26, v10

    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 2152
    .local v0, "_arg0":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2154
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2156
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2157
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2158
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->handleVolumeKey(Landroid/view/KeyEvent;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2159
    goto/16 :goto_0

    .line 2133
    .end local v0    # "_arg0":Landroid/view/KeyEvent;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_ee
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2135
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2137
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2139
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 2141
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 2142
    .restart local v10    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2143
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V

    .line 2144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2145
    goto/16 :goto_0

    .line 2118
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg4":Ljava/lang/String;
    :pswitch_ef
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2120
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2122
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2124
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2125
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2126
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamVolume(IIILjava/lang/String;)V

    .line 2127
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2128
    goto/16 :goto_0

    .line 2101
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_f0
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2103
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2105
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2107
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 2109
    .restart local v9    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 2110
    .restart local v10    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2111
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->adjustStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V

    .line 2112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2113
    goto/16 :goto_0

    .line 2086
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg4":Ljava/lang/String;
    :pswitch_f1
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2088
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2090
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2092
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2093
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2094
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(IIILjava/lang/String;)V

    .line 2095
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2096
    goto/16 :goto_0

    .line 2076
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_f2
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2078
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2079
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2080
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->playerSessionId(II)V

    .line 2081
    goto/16 :goto_0

    .line 2068
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_f3
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2069
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2070
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->releaseRecorder(I)V

    .line 2071
    goto/16 :goto_0

    .line 2058
    .end local v0    # "_arg0":I
    :pswitch_f4
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2060
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2061
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2062
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->recorderEvent(II)V

    .line 2063
    goto :goto_0

    .line 2048
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_f5
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2049
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2050
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->trackRecorder(Landroid/os/IBinder;)I

    move-result v1

    .line 2051
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2052
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2053
    goto :goto_0

    .line 2040
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :pswitch_f6
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2041
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2042
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->releasePlayer(I)V

    .line 2043
    goto :goto_0

    .line 2028
    .end local v0    # "_arg0":I
    :pswitch_f7
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2030
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2032
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2033
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2034
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/IAudioService$Stub;->playerEvent(III)V

    .line 2035
    goto :goto_0

    .line 2018
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_f8
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2020
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 2021
    .local v1, "_arg1":Landroid/media/AudioAttributes;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2022
    invoke-virtual {v11, v0, v1}, Landroid/media/IAudioService$Stub;->playerAttributes(ILandroid/media/AudioAttributes;)V

    .line 2023
    goto :goto_0

    .line 2008
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/media/AudioAttributes;
    :pswitch_f9
    move/from16 v26, v10

    sget-object v0, Landroid/media/PlayerBase$PlayerIdCard;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase$PlayerIdCard;

    .line 2009
    .local v0, "_arg0":Landroid/media/PlayerBase$PlayerIdCard;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2010
    invoke-virtual {v11, v0}, Landroid/media/IAudioService$Stub;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    move-result v1

    .line 2011
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2012
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2013
    nop

    .line 4498
    .end local v0    # "_arg0":Landroid/media/PlayerBase$PlayerIdCard;
    .end local v1    # "_result":I
    :goto_0
    return v26

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
    .end packed-switch
.end method
