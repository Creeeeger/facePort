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

.field static final blacklist PERMISSIONS_getAudioVolumeGroups:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getDeviceVolume:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getDeviceVolumeBehavior:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getVolumeGroupMaxVolumeIndex:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getVolumeGroupMinVolumeIndex:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getVolumeGroupVolumeIndex:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_setDeviceVolume:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_setDeviceVolumeBehavior:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_setVolumeGroupVolumeIndex:[Ljava/lang/String;

.field static final greylist-max-o TRANSACTION_abandonAudioFocus:I = 0x47

.field static final blacklist TRANSACTION_abandonAudioFocusForTest:I = 0xbe

.field static final blacklist TRANSACTION_addAssistantServicesUids:I = 0xf1

.field static final blacklist TRANSACTION_addLoudnessCodecInfo:I = 0x103

.field static final greylist-max-o TRANSACTION_addMixForPolicy:I = 0x76

.field static final blacklist TRANSACTION_addOnDevicesForAttributesChangedListener:I = 0x99

.field static final blacklist TRANSACTION_addPackage:I = 0x11c

.field static final blacklist TRANSACTION_addSpatializerCompatibleAudioDevice:I = 0xd9

.field static final greylist-max-o TRANSACTION_adjustStreamVolume:I = 0xa

.field static final blacklist TRANSACTION_adjustStreamVolumeForUid:I = 0xaa

.field static final blacklist TRANSACTION_adjustStreamVolumeWithAttribution:I = 0xb

.field static final greylist-max-o TRANSACTION_adjustSuggestedStreamVolume:I = 0xae

.field static final blacklist TRANSACTION_adjustSuggestedStreamVolumeForUid:I = 0xab

.field static final blacklist TRANSACTION_adjustVolume:I = 0xad

.field static final blacklist TRANSACTION_adjustVolumeGroupVolume:I = 0x1f

.field static final blacklist TRANSACTION_areNavigationRepeatSoundEffectsEnabled:I = 0xb6

.field static final blacklist TRANSACTION_canBeSpatialized:I = 0xd1

.field static final blacklist TRANSACTION_cancelMuteAwaitConnection:I = 0xea

.field static final blacklist TRANSACTION_clearFadeManagerConfigurationForFocusLoss:I = 0x107

.field static final blacklist TRANSACTION_clearPreferredDevicesForCapturePreset:I = 0xa6

.field static final blacklist TRANSACTION_clearPreferredMixerAttributes:I = 0xf9

.field static final greylist-max-o TRANSACTION_disableSafeMediaVolume:I = 0x5f

.field static final blacklist TRANSACTION_dismissVolumePanel:I = 0x12e

.field static final greylist-max-o TRANSACTION_dispatchFocusChange:I = 0x83

.field static final blacklist TRANSACTION_dispatchFocusChangeWithFade:I = 0x84

.field static final blacklist TRANSACTION_enterAudioFocusFreezeForTest:I = 0xc3

.field static final blacklist TRANSACTION_exitAudioFocusFreezeForTest:I = 0xc4

.field static final blacklist TRANSACTION_forceComputeCsdOnAllDevices:I = 0x66

.field static final greylist-max-o TRANSACTION_forceRemoteSubmixFullVolume:I = 0x12

.field static final blacklist TRANSACTION_forceUseFrameworkMel:I = 0x65

.field static final greylist-max-o TRANSACTION_forceVolumeControlStream:I = 0x4d

.field static final blacklist TRANSACTION_getA2dpDeviceVolume:I = 0x132

.field static final blacklist TRANSACTION_getActiveAssistantServiceUids:I = 0xf5

.field static final greylist-max-o TRANSACTION_getActivePlaybackConfigurations:I = 0x81

.field static final greylist-max-o TRANSACTION_getActiveRecordingConfigurations:I = 0x7e

.field static final blacklist TRANSACTION_getActualHeadTrackingMode:I = 0xde

.field static final blacklist TRANSACTION_getAdditionalOutputDeviceDelay:I = 0xbb

.field static final blacklist TRANSACTION_getAllowedCapturePolicy:I = 0x9c

.field static final blacklist TRANSACTION_getAppDevice:I = 0x110

.field static final blacklist TRANSACTION_getAppVolume:I = 0x112

.field static final blacklist TRANSACTION_getAssistantServicesUids:I = 0xf4

.field static final blacklist TRANSACTION_getAudioProductStrategies:I = 0x23

.field static final blacklist TRANSACTION_getAudioServiceConfig:I = 0x10b

.field static final blacklist TRANSACTION_getAudioVolumeGroups:I = 0x18

.field static final blacklist TRANSACTION_getAvailableCommunicationDeviceIds:I = 0xb1

.field static final blacklist TRANSACTION_getBluetoothAudioDeviceCategory:I = 0x6e

.field static final blacklist TRANSACTION_getBluetoothAudioDeviceCategory_legacy:I = 0x6c

.field static final blacklist TRANSACTION_getCommunicationDevice:I = 0xb3

.field static final blacklist TRANSACTION_getCsd:I = 0x63

.field static final greylist-max-o TRANSACTION_getCurrentAudioFocus:I = 0x49

.field static final blacklist TRANSACTION_getCurrentAudioFocusPackageName:I = 0x12f

.field static final blacklist TRANSACTION_getDefaultVolumeInfo:I = 0xe7

.field static final blacklist TRANSACTION_getDesiredHeadTrackingMode:I = 0xdc

.field static final blacklist TRANSACTION_getDeviceMaskForStream:I = 0xb0

.field static final blacklist TRANSACTION_getDeviceVolume:I = 0xf

.field static final blacklist TRANSACTION_getDeviceVolumeBehavior:I = 0xa3

.field static final blacklist TRANSACTION_getDevicesForAttributes:I = 0x97

.field static final blacklist TRANSACTION_getDevicesForAttributesUnprotected:I = 0x98

.field static final blacklist TRANSACTION_getEarProtectLimit:I = 0x13e

.field static final blacklist TRANSACTION_getEncodedSurroundMode:I = 0x3d

.field static final blacklist TRANSACTION_getExcludedRingtoneTitles:I = 0x139

.field static final blacklist TRANSACTION_getFadeManagerConfigurationForFocusLoss:I = 0x108

.field static final blacklist TRANSACTION_getFadeOutDurationOnFocusLossMillis:I = 0xbf

.field static final blacklist TRANSACTION_getFineVolume:I = 0x121

.field static final blacklist TRANSACTION_getFloatVolumeTable:I = 0x133

.field static final blacklist TRANSACTION_getFocusDuckedUidsForTest:I = 0xc0

.field static final blacklist TRANSACTION_getFocusFadeOutDurationForTest:I = 0xc1

.field static final greylist-max-o TRANSACTION_getFocusRampTimeMs:I = 0x82

.field static final blacklist TRANSACTION_getFocusStack:I = 0xef

.field static final blacklist TRANSACTION_getFocusUnmuteDelayAfterFadeOutForTest:I = 0xc2

.field static final blacklist TRANSACTION_getHalVersion:I = 0xf7

.field static final blacklist TRANSACTION_getIndependentStreamTypes:I = 0x51

.field static final greylist-max-o TRANSACTION_getLastAudibleStreamVolume:I = 0x20

.field static final blacklist TRANSACTION_getLastAudibleVolumeForVolumeGroup:I = 0x1d

.field static final blacklist TRANSACTION_getLoudnessParams:I = 0x105

.field static final blacklist TRANSACTION_getMaxAdditionalOutputDeviceDelay:I = 0xbc

.field static final blacklist TRANSACTION_getMediaVolumeSteps:I = 0x12b

.field static final blacklist TRANSACTION_getMicModeType:I = 0x13d

.field static final greylist-max-o TRANSACTION_getMode:I = 0x32

.field static final blacklist TRANSACTION_getModeInternal:I = 0x13b

.field static final blacklist TRANSACTION_getMuteInterval:I = 0x126

.field static final blacklist TRANSACTION_getMutingExpectedDevice:I = 0xeb

.field static final blacklist TRANSACTION_getNonDefaultDevicesForStrategy:I = 0x96

.field static final blacklist TRANSACTION_getOutputRs2UpperBound:I = 0x61

.field static final blacklist TRANSACTION_getPinAppInfo:I = 0x119

.field static final blacklist TRANSACTION_getPinDevice:I = 0x11a

.field static final blacklist TRANSACTION_getPreferredDevicesForCapturePreset:I = 0xa7

.field static final blacklist TRANSACTION_getPreferredDevicesForStrategy:I = 0x93

.field static final blacklist TRANSACTION_getPrevRingerMode:I = 0x128

.field static final blacklist TRANSACTION_getRadioOutputPath:I = 0x12d

.field static final blacklist TRANSACTION_getRegisteredPolicyMixes:I = 0x74

.field static final blacklist TRANSACTION_getRemainingMuteIntervalMs:I = 0x127

.field static final blacklist TRANSACTION_getReportedSurroundFormats:I = 0x39

.field static final greylist-max-o TRANSACTION_getRingerModeExternal:I = 0x2b

.field static final greylist-max-o TRANSACTION_getRingerModeInternal:I = 0x2c

.field static final greylist-max-o TRANSACTION_getRingtonePlayer:I = 0x4f

.field static final blacklist TRANSACTION_getSelectedAppList:I = 0x11b

.field static final blacklist TRANSACTION_getSpatializerCompatibleAudioDevices:I = 0xd8

.field static final blacklist TRANSACTION_getSpatializerImmersiveAudioLevel:I = 0xc7

.field static final blacklist TRANSACTION_getSpatializerOutput:I = 0xe3

.field static final blacklist TRANSACTION_getSpatializerParameter:I = 0xe2

.field static final greylist-max-o TRANSACTION_getStreamMaxVolume:I = 0x17

.field static final greylist-max-o TRANSACTION_getStreamMinVolume:I = 0x16

.field static final blacklist TRANSACTION_getStreamTypeAlias:I = 0x52

.field static final greylist-max-o TRANSACTION_getStreamVolume:I = 0x15

.field static final blacklist TRANSACTION_getStreamVolumeForDevice:I = 0x118

.field static final blacklist TRANSACTION_getSupportedHeadTrackingModes:I = 0xdd

.field static final blacklist TRANSACTION_getSupportedSystemUsages:I = 0x22

.field static final blacklist TRANSACTION_getSurroundFormats:I = 0x38

.field static final greylist-max-o TRANSACTION_getUiSoundsStreamType:I = 0x50

.field static final blacklist TRANSACTION_getUidForDevice:I = 0x10e

.field static final greylist-max-o TRANSACTION_getVibrateSetting:I = 0x2f

.field static final blacklist TRANSACTION_getVolumeController:I = 0x5a

.field static final blacklist TRANSACTION_getVolumeGroupMaxVolumeIndex:I = 0x1b

.field static final blacklist TRANSACTION_getVolumeGroupMinVolumeIndex:I = 0x1c

.field static final blacklist TRANSACTION_getVolumeGroupVolumeIndex:I = 0x1a

.field static final blacklist TRANSACTION_handleBluetoothActiveDeviceChanged:I = 0x86

.field static final blacklist TRANSACTION_handleVolumeKey:I = 0x10

.field static final blacklist TRANSACTION_hasHapticChannels:I = 0x8f

.field static final blacklist TRANSACTION_hasHeadTracker:I = 0xcb

.field static final blacklist TRANSACTION_hasRegisteredDynamicPolicy:I = 0x7b

.field static final blacklist TRANSACTION_isAlreadyInDB:I = 0x11e

.field static final blacklist TRANSACTION_isAppMute:I = 0x114

.field static final greylist-max-o TRANSACTION_isAudioServerRunning:I = 0x8a

.field static final greylist-max-o TRANSACTION_isBluetoothA2dpOn:I = 0x45

.field static final blacklist TRANSACTION_isBluetoothAudioDeviceCategoryFixed:I = 0x6f

.field static final greylist-max-o TRANSACTION_isBluetoothScoOn:I = 0x43

.field static final blacklist TRANSACTION_isBluetoothVariableLatencyEnabled:I = 0xfe

.field static final blacklist TRANSACTION_isCallScreeningModeSupported:I = 0x90

.field static final greylist-max-o TRANSACTION_isCameraSoundForced:I = 0x58

.field static final blacklist TRANSACTION_isCsdAsAFeatureAvailable:I = 0x68

.field static final blacklist TRANSACTION_isCsdAsAFeatureEnabled:I = 0x69

.field static final blacklist TRANSACTION_isCsdEnabled:I = 0x67

.field static final blacklist TRANSACTION_isForceSpeakerOn:I = 0x123

.field static final greylist-max-o TRANSACTION_isHdmiSystemAudioSupported:I = 0x71

.field static final blacklist TRANSACTION_isHeadTrackerAvailable:I = 0xce

.field static final blacklist TRANSACTION_isHeadTrackerEnabled:I = 0xcd

.field static final blacklist TRANSACTION_isHomeSoundEffectEnabled:I = 0xb8

.field static final blacklist TRANSACTION_isHotwordStreamSupported:I = 0x26

.field static final blacklist TRANSACTION_isInAllowedList:I = 0x11f

.field static final greylist-max-o TRANSACTION_isMasterMute:I = 0x13

.field static final blacklist TRANSACTION_isMicrophoneMuted:I = 0x24

.field static final blacklist TRANSACTION_isMultiSoundOn:I = 0x116

.field static final blacklist TRANSACTION_isMusicActive:I = 0xaf

.field static final blacklist TRANSACTION_isPstnCallAudioInterceptable:I = 0xe8

.field static final blacklist TRANSACTION_isSafeMediaVolumeStateActive:I = 0x138

.field static final blacklist TRANSACTION_isSpatializerAvailable:I = 0xc9

.field static final blacklist TRANSACTION_isSpatializerAvailableForDevice:I = 0xca

.field static final blacklist TRANSACTION_isSpatializerEnabled:I = 0xc8

.field static final greylist-max-o TRANSACTION_isSpeakerphoneOn:I = 0x3f

.field static final greylist-max-o TRANSACTION_isStreamAffectedByMute:I = 0x5d

.field static final greylist-max-o TRANSACTION_isStreamAffectedByRingerMode:I = 0x5c

.field static final blacklist TRANSACTION_isStreamMutableByUi:I = 0x5e

.field static final greylist-max-o TRANSACTION_isStreamMute:I = 0x11

.field static final blacklist TRANSACTION_isSurroundFormatEnabled:I = 0x3b

.field static final blacklist TRANSACTION_isUltrasoundSupported:I = 0x25

.field static final blacklist TRANSACTION_isUsingAudio:I = 0x130

.field static final greylist-max-o TRANSACTION_isValidRingerMode:I = 0x2d

.field static final blacklist TRANSACTION_isVolumeControlUsingVolumeGroups:I = 0x53

.field static final blacklist TRANSACTION_isVolumeFixed:I = 0xe6

.field static final blacklist TRANSACTION_isVolumeGroupMuted:I = 0x1e

.field static final greylist-max-o TRANSACTION_loadSoundEffects:I = 0x35

.field static final blacklist TRANSACTION_lowerVolumeToRs1:I = 0x60

.field static final blacklist TRANSACTION_muteAwaitConnection:I = 0xe9

.field static final blacklist TRANSACTION_notifySafetyVolumeDialogVisible:I = 0x13a

.field static final greylist-max-o TRANSACTION_notifyVolumeControllerVisible:I = 0x5b

.field static final greylist-max-o TRANSACTION_playSoundEffect:I = 0x33

.field static final greylist-max-o TRANSACTION_playSoundEffectVolume:I = 0x34

.field static final greylist-max-o TRANSACTION_playerAttributes:I = 0x2

.field static final greylist-max-o TRANSACTION_playerEvent:I = 0x3

.field static final greylist-max-o TRANSACTION_playerHasOpPlayAudio:I = 0x85

.field static final blacklist TRANSACTION_playerSessionId:I = 0x8

.field static final blacklist TRANSACTION_portEvent:I = 0x9

.field static final blacklist TRANSACTION_recenterHeadTracker:I = 0xe0

.field static final blacklist TRANSACTION_recordRingtoneChanger:I = 0x135

.field static final blacklist TRANSACTION_recorderEvent:I = 0x6

.field static final greylist-max-o TRANSACTION_registerAudioPolicy:I = 0x72

.field static final greylist-max-o TRANSACTION_registerAudioServerStateDispatcher:I = 0x88

.field static final blacklist TRANSACTION_registerCapturePresetDevicesRoleDispatcher:I = 0xa8

.field static final blacklist TRANSACTION_registerCommunicationDeviceDispatcher:I = 0xb4

.field static final blacklist TRANSACTION_registerDeviceVolumeBehaviorDispatcher:I = 0xee

.field static final blacklist TRANSACTION_registerDeviceVolumeDispatcherForAbsoluteVolume:I = 0xf6

.field static final blacklist TRANSACTION_registerHeadToSoundstagePoseCallback:I = 0xd6

.field static final blacklist TRANSACTION_registerLoudnessCodecUpdatesDispatcher:I = 0xff

.field static final blacklist TRANSACTION_registerModeDispatcher:I = 0xc5

.field static final blacklist TRANSACTION_registerMuteAwaitConnectionDispatcher:I = 0xec

.field static final greylist-max-o TRANSACTION_registerPlaybackCallback:I = 0x7f

.field static final blacklist TRANSACTION_registerPlaybackCallbackWithPackage:I = 0x136

.field static final blacklist TRANSACTION_registerPreferredMixerAttributesDispatcher:I = 0xfa

.field static final greylist-max-o TRANSACTION_registerRecordingCallback:I = 0x7c

.field static final blacklist TRANSACTION_registerSpatializerCallback:I = 0xd2

.field static final blacklist TRANSACTION_registerSpatializerHeadTrackerAvailableCallback:I = 0xcf

.field static final blacklist TRANSACTION_registerSpatializerHeadTrackingCallback:I = 0xd4

.field static final blacklist TRANSACTION_registerSpatializerOutputCallback:I = 0xe4

.field static final blacklist TRANSACTION_registerStrategyNonDefaultDevicesDispatcher:I = 0x9f

.field static final blacklist TRANSACTION_registerStrategyPreferredDevicesDispatcher:I = 0x9d

.field static final blacklist TRANSACTION_registerStreamAliasingDispatcher:I = 0x54

.field static final greylist-max-o TRANSACTION_releasePlayer:I = 0x4

.field static final blacklist TRANSACTION_releaseRecorder:I = 0x7

.field static final greylist-max-o TRANSACTION_reloadAudioSettings:I = 0x37

.field static final blacklist TRANSACTION_removeAssistantServicesUids:I = 0xf2

.field static final blacklist TRANSACTION_removeDeviceAsNonDefaultForStrategy:I = 0x95

.field static final blacklist TRANSACTION_removeLoudnessCodecInfo:I = 0x104

.field static final greylist-max-o TRANSACTION_removeMixForPolicy:I = 0x77

.field static final blacklist TRANSACTION_removeOnDevicesForAttributesChangedListener:I = 0x9a

.field static final blacklist TRANSACTION_removePackageForName:I = 0x11d

.field static final blacklist TRANSACTION_removePreferredDevicesForStrategy:I = 0x92

.field static final blacklist TRANSACTION_removeSpatializerCompatibleAudioDevice:I = 0xda

.field static final blacklist TRANSACTION_removeUidDeviceAffinity:I = 0x8c

.field static final blacklist TRANSACTION_removeUserIdDeviceAffinity:I = 0x8e

.field static final greylist-max-o TRANSACTION_requestAudioFocus:I = 0x46

.field static final blacklist TRANSACTION_requestAudioFocusForTest:I = 0xbd

.field static final blacklist TRANSACTION_secGetActiveStreamType:I = 0x10d

.field static final blacklist TRANSACTION_sendFocusLoss:I = 0xf0

.field static final blacklist TRANSACTION_setA2dpDeviceVolume:I = 0x131

.field static final blacklist TRANSACTION_setA2dpSuspended:I = 0x41

.field static final blacklist TRANSACTION_setActiveAssistantServiceUids:I = 0xf3

.field static final blacklist TRANSACTION_setAdditionalOutputDeviceDelay:I = 0xba

.field static final blacklist TRANSACTION_setAllowedCapturePolicy:I = 0x9b

.field static final blacklist TRANSACTION_setAppDevice:I = 0x10f

.field static final blacklist TRANSACTION_setAppMute:I = 0x113

.field static final blacklist TRANSACTION_setAppVolume:I = 0x111

.field static final blacklist TRANSACTION_setAudioServiceConfig:I = 0x10a

.field static final greylist-max-o TRANSACTION_setBluetoothA2dpOn:I = 0x44

.field static final blacklist TRANSACTION_setBluetoothAudioDeviceCategory:I = 0x6d

.field static final blacklist TRANSACTION_setBluetoothAudioDeviceCategory_legacy:I = 0x6b

.field static final greylist-max-o TRANSACTION_setBluetoothScoOn:I = 0x40

.field static final blacklist TRANSACTION_setBluetoothVariableLatencyEnabled:I = 0xfd

.field static final blacklist TRANSACTION_setBtOffloadEnable:I = 0x137

.field static final blacklist TRANSACTION_setCommunicationDevice:I = 0xb2

.field static final blacklist TRANSACTION_setCsd:I = 0x64

.field static final blacklist TRANSACTION_setCsdAsAFeatureEnabled:I = 0x6a

.field static final blacklist TRANSACTION_setDesiredHeadTrackingMode:I = 0xdb

.field static final blacklist TRANSACTION_setDeviceAsNonDefaultForStrategy:I = 0x94

.field static final blacklist TRANSACTION_setDeviceToForceByUser:I = 0x124

.field static final blacklist TRANSACTION_setDeviceVolume:I = 0xe

.field static final blacklist TRANSACTION_setDeviceVolumeBehavior:I = 0xa2

.field static final blacklist TRANSACTION_setEncodedSurroundMode:I = 0x3c

.field static final blacklist TRANSACTION_setFadeManagerConfigurationForFocusLoss:I = 0x106

.field static final blacklist TRANSACTION_setFineVolume:I = 0x120

.field static final greylist-max-o TRANSACTION_setFocusPropertiesForPolicy:I = 0x79

.field static final greylist-max-o TRANSACTION_setFocusRequestResultFromExtPolicy:I = 0x87

.field static final blacklist TRANSACTION_setForceSpeakerOn:I = 0x122

.field static final greylist-max-o TRANSACTION_setHdmiSystemAudioSupported:I = 0x70

.field static final blacklist TRANSACTION_setHeadTrackerEnabled:I = 0xcc

.field static final blacklist TRANSACTION_setHomeSoundEffectEnabled:I = 0xb9

.field static final blacklist TRANSACTION_setLeAudioSuspended:I = 0x42

.field static final greylist-max-o TRANSACTION_setMasterMute:I = 0x14

.field static final blacklist TRANSACTION_setMediaVolumeSteps:I = 0x12a

.field static final blacklist TRANSACTION_setMicInputControlMode:I = 0x13c

.field static final greylist-max-o TRANSACTION_setMicrophoneMute:I = 0x27

.field static final blacklist TRANSACTION_setMicrophoneMuteFromSwitch:I = 0x28

.field static final greylist-max-o TRANSACTION_setMode:I = 0x31

.field static final blacklist TRANSACTION_setMultiAudioFocusEnabled:I = 0xa4

.field static final blacklist TRANSACTION_setMultiSoundOn:I = 0x115

.field static final blacklist TRANSACTION_setMuteInterval:I = 0x125

.field static final blacklist TRANSACTION_setNavigationRepeatSoundEffectsEnabled:I = 0xb7

.field static final blacklist TRANSACTION_setNotifAliasRingForTest:I = 0x55

.field static final blacklist TRANSACTION_setOutputRs2UpperBound:I = 0x62

.field static final blacklist TRANSACTION_setPreferredDevicesForCapturePreset:I = 0xa5

.field static final blacklist TRANSACTION_setPreferredDevicesForStrategy:I = 0x91

.field static final blacklist TRANSACTION_setPreferredMixerAttributes:I = 0xf8

.field static final blacklist TRANSACTION_setRadioOutputPath:I = 0x12c

.field static final blacklist TRANSACTION_setRemoteMic:I = 0x134

.field static final greylist-max-o TRANSACTION_setRingerModeExternal:I = 0x29

.field static final greylist-max-o TRANSACTION_setRingerModeInternal:I = 0x2a

.field static final greylist-max-o TRANSACTION_setRingtonePlayer:I = 0x4e

.field static final blacklist TRANSACTION_setRttEnabled:I = 0xa1

.field static final blacklist TRANSACTION_setSoundSettingEventBroadcastIntent:I = 0x129

.field static final blacklist TRANSACTION_setSpatializerEnabled:I = 0xd0

.field static final blacklist TRANSACTION_setSpatializerGlobalTransform:I = 0xdf

.field static final blacklist TRANSACTION_setSpatializerParameter:I = 0xe1

.field static final greylist-max-o TRANSACTION_setSpeakerphoneOn:I = 0x3e

.field static final greylist-max-o TRANSACTION_setStreamVolume:I = 0xc

.field static final blacklist TRANSACTION_setStreamVolumeForDeviceWithAttribution:I = 0x117

.field static final blacklist TRANSACTION_setStreamVolumeForUid:I = 0xac

.field static final blacklist TRANSACTION_setStreamVolumeWithAttribution:I = 0xd

.field static final blacklist TRANSACTION_setSupportedSystemUsages:I = 0x21

.field static final blacklist TRANSACTION_setSurroundFormatEnabled:I = 0x3a

.field static final blacklist TRANSACTION_setTestDeviceConnectionState:I = 0xed

.field static final blacklist TRANSACTION_setUidDeviceAffinity:I = 0x8b

.field static final blacklist TRANSACTION_setUserIdDeviceAffinity:I = 0x8d

.field static final greylist-max-o TRANSACTION_setVibrateSetting:I = 0x2e

.field static final greylist-max-o TRANSACTION_setVolumeController:I = 0x59

.field static final blacklist TRANSACTION_setVolumeGroupVolumeIndex:I = 0x19

.field static final greylist-max-o TRANSACTION_setVolumePolicy:I = 0x7a

.field static final greylist-max-o TRANSACTION_setWiredDeviceConnectionState:I = 0x56

.field static final blacklist TRANSACTION_shouldNotificationSoundPlay:I = 0x109

.field static final blacklist TRANSACTION_shouldShowRingtoneVolume:I = 0x10c

.field static final greylist-max-o TRANSACTION_shouldVibrate:I = 0x30

.field static final greylist-max-o TRANSACTION_startBluetoothSco:I = 0x4a

.field static final greylist-max-o TRANSACTION_startBluetoothScoVirtualCall:I = 0x4b

.field static final blacklist TRANSACTION_startLoudnessCodecUpdates:I = 0x101

.field static final greylist-max-o TRANSACTION_startWatchingRoutes:I = 0x57

.field static final greylist-max-o TRANSACTION_stopBluetoothSco:I = 0x4c

.field static final blacklist TRANSACTION_stopLoudnessCodecUpdates:I = 0x102

.field static final blacklist TRANSACTION_supportsBluetoothVariableLatency:I = 0xfc

.field static final greylist-max-o TRANSACTION_trackPlayer:I = 0x1

.field static final blacklist TRANSACTION_trackRecorder:I = 0x5

.field static final greylist-max-o TRANSACTION_unloadSoundEffects:I = 0x36

.field static final greylist-max-o TRANSACTION_unregisterAudioFocusClient:I = 0x48

.field static final blacklist TRANSACTION_unregisterAudioPolicy:I = 0x75

.field static final greylist-max-o TRANSACTION_unregisterAudioPolicyAsync:I = 0x73

.field static final greylist-max-o TRANSACTION_unregisterAudioServerStateDispatcher:I = 0x89

.field static final blacklist TRANSACTION_unregisterCapturePresetDevicesRoleDispatcher:I = 0xa9

.field static final blacklist TRANSACTION_unregisterCommunicationDeviceDispatcher:I = 0xb5

.field static final blacklist TRANSACTION_unregisterHeadToSoundstagePoseCallback:I = 0xd7

.field static final blacklist TRANSACTION_unregisterLoudnessCodecUpdatesDispatcher:I = 0x100

.field static final blacklist TRANSACTION_unregisterModeDispatcher:I = 0xc6

.field static final greylist-max-o TRANSACTION_unregisterPlaybackCallback:I = 0x80

.field static final blacklist TRANSACTION_unregisterPreferredMixerAttributesDispatcher:I = 0xfb

.field static final greylist-max-o TRANSACTION_unregisterRecordingCallback:I = 0x7d

.field static final blacklist TRANSACTION_unregisterSpatializerCallback:I = 0xd3

.field static final blacklist TRANSACTION_unregisterSpatializerHeadTrackingCallback:I = 0xd5

.field static final blacklist TRANSACTION_unregisterSpatializerOutputCallback:I = 0xe5

.field static final blacklist TRANSACTION_unregisterStrategyNonDefaultDevicesDispatcher:I = 0xa0

.field static final blacklist TRANSACTION_unregisterStrategyPreferredDevicesDispatcher:I = 0x9e

.field static final blacklist TRANSACTION_updateMixingRulesForPolicy:I = 0x78


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const-string v0, "android.permission.MODIFY_AUDIO_ROUTING"

    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_setDeviceVolume:[Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_getDeviceVolume:[Ljava/lang/String;

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_getAudioVolumeGroups:[Ljava/lang/String;

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_setVolumeGroupVolumeIndex:[Ljava/lang/String;

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupVolumeIndex:[Ljava/lang/String;

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupMaxVolumeIndex:[Ljava/lang/String;

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupMinVolumeIndex:[Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_setDeviceVolumeBehavior:[Ljava/lang/String;

    const-string v2, "android.permission.QUERY_AUDIO_STATE"

    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/IAudioService$Stub;->PERMISSIONS_getDeviceVolumeBehavior:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    nop

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/IAudioService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.media.IAudioService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/media/IAudioService;

    return-object v1

    :cond_1
    new-instance v1, Landroid/media/IAudioService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "getEarProtectLimit"

    return-object v0

    :pswitch_1
    const-string v0, "getMicModeType"

    return-object v0

    :pswitch_2
    const-string v0, "setMicInputControlMode"

    return-object v0

    :pswitch_3
    const-string v0, "getModeInternal"

    return-object v0

    :pswitch_4
    const-string v0, "notifySafetyVolumeDialogVisible"

    return-object v0

    :pswitch_5
    const-string v0, "getExcludedRingtoneTitles"

    return-object v0

    :pswitch_6
    const-string v0, "isSafeMediaVolumeStateActive"

    return-object v0

    :pswitch_7
    const-string v0, "setBtOffloadEnable"

    return-object v0

    :pswitch_8
    const-string v0, "registerPlaybackCallbackWithPackage"

    return-object v0

    :pswitch_9
    const-string v0, "recordRingtoneChanger"

    return-object v0

    :pswitch_a
    const-string v0, "setRemoteMic"

    return-object v0

    :pswitch_b
    const-string v0, "getFloatVolumeTable"

    return-object v0

    :pswitch_c
    const-string v0, "getA2dpDeviceVolume"

    return-object v0

    :pswitch_d
    const-string v0, "setA2dpDeviceVolume"

    return-object v0

    :pswitch_e
    const-string v0, "isUsingAudio"

    return-object v0

    :pswitch_f
    const-string v0, "getCurrentAudioFocusPackageName"

    return-object v0

    :pswitch_10
    const-string v0, "dismissVolumePanel"

    return-object v0

    :pswitch_11
    const-string v0, "getRadioOutputPath"

    return-object v0

    :pswitch_12
    const-string v0, "setRadioOutputPath"

    return-object v0

    :pswitch_13
    const-string v0, "getMediaVolumeSteps"

    return-object v0

    :pswitch_14
    const-string v0, "setMediaVolumeSteps"

    return-object v0

    :pswitch_15
    const-string v0, "setSoundSettingEventBroadcastIntent"

    return-object v0

    :pswitch_16
    const-string v0, "getPrevRingerMode"

    return-object v0

    :pswitch_17
    const-string v0, "getRemainingMuteIntervalMs"

    return-object v0

    :pswitch_18
    const-string v0, "getMuteInterval"

    return-object v0

    :pswitch_19
    const-string v0, "setMuteInterval"

    return-object v0

    :pswitch_1a
    const-string v0, "setDeviceToForceByUser"

    return-object v0

    :pswitch_1b
    const-string v0, "isForceSpeakerOn"

    return-object v0

    :pswitch_1c
    const-string v0, "setForceSpeakerOn"

    return-object v0

    :pswitch_1d
    const-string v0, "getFineVolume"

    return-object v0

    :pswitch_1e
    const-string v0, "setFineVolume"

    return-object v0

    :pswitch_1f
    const-string v0, "isInAllowedList"

    return-object v0

    :pswitch_20
    const-string v0, "isAlreadyInDB"

    return-object v0

    :pswitch_21
    const-string v0, "removePackageForName"

    return-object v0

    :pswitch_22
    const-string v0, "addPackage"

    return-object v0

    :pswitch_23
    const-string v0, "getSelectedAppList"

    return-object v0

    :pswitch_24
    const-string v0, "getPinDevice"

    return-object v0

    :pswitch_25
    const-string v0, "getPinAppInfo"

    return-object v0

    :pswitch_26
    const-string v0, "getStreamVolumeForDevice"

    return-object v0

    :pswitch_27
    const-string v0, "setStreamVolumeForDeviceWithAttribution"

    return-object v0

    :pswitch_28
    const-string v0, "isMultiSoundOn"

    return-object v0

    :pswitch_29
    const-string v0, "setMultiSoundOn"

    return-object v0

    :pswitch_2a
    const-string v0, "isAppMute"

    return-object v0

    :pswitch_2b
    const-string v0, "setAppMute"

    return-object v0

    :pswitch_2c
    const-string v0, "getAppVolume"

    return-object v0

    :pswitch_2d
    const-string v0, "setAppVolume"

    return-object v0

    :pswitch_2e
    const-string v0, "getAppDevice"

    return-object v0

    :pswitch_2f
    const-string v0, "setAppDevice"

    return-object v0

    :pswitch_30
    const-string v0, "getUidForDevice"

    return-object v0

    :pswitch_31
    const-string v0, "secGetActiveStreamType"

    return-object v0

    :pswitch_32
    const-string v0, "shouldShowRingtoneVolume"

    return-object v0

    :pswitch_33
    const-string v0, "getAudioServiceConfig"

    return-object v0

    :pswitch_34
    const-string v0, "setAudioServiceConfig"

    return-object v0

    :pswitch_35
    const-string v0, "shouldNotificationSoundPlay"

    return-object v0

    :pswitch_36
    const-string v0, "getFadeManagerConfigurationForFocusLoss"

    return-object v0

    :pswitch_37
    const-string v0, "clearFadeManagerConfigurationForFocusLoss"

    return-object v0

    :pswitch_38
    const-string v0, "setFadeManagerConfigurationForFocusLoss"

    return-object v0

    :pswitch_39
    const-string v0, "getLoudnessParams"

    return-object v0

    :pswitch_3a
    const-string v0, "removeLoudnessCodecInfo"

    return-object v0

    :pswitch_3b
    const-string v0, "addLoudnessCodecInfo"

    return-object v0

    :pswitch_3c
    const-string v0, "stopLoudnessCodecUpdates"

    return-object v0

    :pswitch_3d
    const-string v0, "startLoudnessCodecUpdates"

    return-object v0

    :pswitch_3e
    const-string v0, "unregisterLoudnessCodecUpdatesDispatcher"

    return-object v0

    :pswitch_3f
    const-string v0, "registerLoudnessCodecUpdatesDispatcher"

    return-object v0

    :pswitch_40
    const-string v0, "isBluetoothVariableLatencyEnabled"

    return-object v0

    :pswitch_41
    const-string v0, "setBluetoothVariableLatencyEnabled"

    return-object v0

    :pswitch_42
    const-string v0, "supportsBluetoothVariableLatency"

    return-object v0

    :pswitch_43
    const-string v0, "unregisterPreferredMixerAttributesDispatcher"

    return-object v0

    :pswitch_44
    const-string v0, "registerPreferredMixerAttributesDispatcher"

    return-object v0

    :pswitch_45
    const-string v0, "clearPreferredMixerAttributes"

    return-object v0

    :pswitch_46
    const-string v0, "setPreferredMixerAttributes"

    return-object v0

    :pswitch_47
    const-string v0, "getHalVersion"

    return-object v0

    :pswitch_48
    const-string v0, "registerDeviceVolumeDispatcherForAbsoluteVolume"

    return-object v0

    :pswitch_49
    const-string v0, "getActiveAssistantServiceUids"

    return-object v0

    :pswitch_4a
    const-string v0, "getAssistantServicesUids"

    return-object v0

    :pswitch_4b
    const-string v0, "setActiveAssistantServiceUids"

    return-object v0

    :pswitch_4c
    const-string v0, "removeAssistantServicesUids"

    return-object v0

    :pswitch_4d
    const-string v0, "addAssistantServicesUids"

    return-object v0

    :pswitch_4e
    const-string v0, "sendFocusLoss"

    return-object v0

    :pswitch_4f
    const-string v0, "getFocusStack"

    return-object v0

    :pswitch_50
    const-string v0, "registerDeviceVolumeBehaviorDispatcher"

    return-object v0

    :pswitch_51
    const-string v0, "setTestDeviceConnectionState"

    return-object v0

    :pswitch_52
    const-string v0, "registerMuteAwaitConnectionDispatcher"

    return-object v0

    :pswitch_53
    const-string v0, "getMutingExpectedDevice"

    return-object v0

    :pswitch_54
    const-string v0, "cancelMuteAwaitConnection"

    return-object v0

    :pswitch_55
    const-string v0, "muteAwaitConnection"

    return-object v0

    :pswitch_56
    const-string v0, "isPstnCallAudioInterceptable"

    return-object v0

    :pswitch_57
    const-string v0, "getDefaultVolumeInfo"

    return-object v0

    :pswitch_58
    const-string v0, "isVolumeFixed"

    return-object v0

    :pswitch_59
    const-string v0, "unregisterSpatializerOutputCallback"

    return-object v0

    :pswitch_5a
    const-string v0, "registerSpatializerOutputCallback"

    return-object v0

    :pswitch_5b
    const-string v0, "getSpatializerOutput"

    return-object v0

    :pswitch_5c
    const-string v0, "getSpatializerParameter"

    return-object v0

    :pswitch_5d
    const-string v0, "setSpatializerParameter"

    return-object v0

    :pswitch_5e
    const-string v0, "recenterHeadTracker"

    return-object v0

    :pswitch_5f
    const-string v0, "setSpatializerGlobalTransform"

    return-object v0

    :pswitch_60
    const-string v0, "getActualHeadTrackingMode"

    return-object v0

    :pswitch_61
    const-string v0, "getSupportedHeadTrackingModes"

    return-object v0

    :pswitch_62
    const-string v0, "getDesiredHeadTrackingMode"

    return-object v0

    :pswitch_63
    const-string v0, "setDesiredHeadTrackingMode"

    return-object v0

    :pswitch_64
    const-string v0, "removeSpatializerCompatibleAudioDevice"

    return-object v0

    :pswitch_65
    const-string v0, "addSpatializerCompatibleAudioDevice"

    return-object v0

    :pswitch_66
    const-string v0, "getSpatializerCompatibleAudioDevices"

    return-object v0

    :pswitch_67
    const-string v0, "unregisterHeadToSoundstagePoseCallback"

    return-object v0

    :pswitch_68
    const-string v0, "registerHeadToSoundstagePoseCallback"

    return-object v0

    :pswitch_69
    const-string v0, "unregisterSpatializerHeadTrackingCallback"

    return-object v0

    :pswitch_6a
    const-string v0, "registerSpatializerHeadTrackingCallback"

    return-object v0

    :pswitch_6b
    const-string v0, "unregisterSpatializerCallback"

    return-object v0

    :pswitch_6c
    const-string v0, "registerSpatializerCallback"

    return-object v0

    :pswitch_6d
    const-string v0, "canBeSpatialized"

    return-object v0

    :pswitch_6e
    const-string v0, "setSpatializerEnabled"

    return-object v0

    :pswitch_6f
    const-string v0, "registerSpatializerHeadTrackerAvailableCallback"

    return-object v0

    :pswitch_70
    const-string v0, "isHeadTrackerAvailable"

    return-object v0

    :pswitch_71
    const-string v0, "isHeadTrackerEnabled"

    return-object v0

    :pswitch_72
    const-string v0, "setHeadTrackerEnabled"

    return-object v0

    :pswitch_73
    const-string v0, "hasHeadTracker"

    return-object v0

    :pswitch_74
    const-string v0, "isSpatializerAvailableForDevice"

    return-object v0

    :pswitch_75
    const-string v0, "isSpatializerAvailable"

    return-object v0

    :pswitch_76
    const-string v0, "isSpatializerEnabled"

    return-object v0

    :pswitch_77
    const-string v0, "getSpatializerImmersiveAudioLevel"

    return-object v0

    :pswitch_78
    const-string v0, "unregisterModeDispatcher"

    return-object v0

    :pswitch_79
    const-string v0, "registerModeDispatcher"

    return-object v0

    :pswitch_7a
    const-string v0, "exitAudioFocusFreezeForTest"

    return-object v0

    :pswitch_7b
    const-string v0, "enterAudioFocusFreezeForTest"

    return-object v0

    :pswitch_7c
    const-string v0, "getFocusUnmuteDelayAfterFadeOutForTest"

    return-object v0

    :pswitch_7d
    const-string v0, "getFocusFadeOutDurationForTest"

    return-object v0

    :pswitch_7e
    const-string v0, "getFocusDuckedUidsForTest"

    return-object v0

    :pswitch_7f
    const-string v0, "getFadeOutDurationOnFocusLossMillis"

    return-object v0

    :pswitch_80
    const-string v0, "abandonAudioFocusForTest"

    return-object v0

    :pswitch_81
    const-string v0, "requestAudioFocusForTest"

    return-object v0

    :pswitch_82
    const-string v0, "getMaxAdditionalOutputDeviceDelay"

    return-object v0

    :pswitch_83
    const-string v0, "getAdditionalOutputDeviceDelay"

    return-object v0

    :pswitch_84
    const-string v0, "setAdditionalOutputDeviceDelay"

    return-object v0

    :pswitch_85
    const-string v0, "setHomeSoundEffectEnabled"

    return-object v0

    :pswitch_86
    const-string v0, "isHomeSoundEffectEnabled"

    return-object v0

    :pswitch_87
    const-string v0, "setNavigationRepeatSoundEffectsEnabled"

    return-object v0

    :pswitch_88
    const-string v0, "areNavigationRepeatSoundEffectsEnabled"

    return-object v0

    :pswitch_89
    const-string v0, "unregisterCommunicationDeviceDispatcher"

    return-object v0

    :pswitch_8a
    const-string v0, "registerCommunicationDeviceDispatcher"

    return-object v0

    :pswitch_8b
    const-string v0, "getCommunicationDevice"

    return-object v0

    :pswitch_8c
    const-string v0, "setCommunicationDevice"

    return-object v0

    :pswitch_8d
    const-string v0, "getAvailableCommunicationDeviceIds"

    return-object v0

    :pswitch_8e
    const-string v0, "getDeviceMaskForStream"

    return-object v0

    :pswitch_8f
    const-string v0, "isMusicActive"

    return-object v0

    :pswitch_90
    const-string v0, "adjustSuggestedStreamVolume"

    return-object v0

    :pswitch_91
    const-string v0, "adjustVolume"

    return-object v0

    :pswitch_92
    const-string v0, "setStreamVolumeForUid"

    return-object v0

    :pswitch_93
    const-string v0, "adjustSuggestedStreamVolumeForUid"

    return-object v0

    :pswitch_94
    const-string v0, "adjustStreamVolumeForUid"

    return-object v0

    :pswitch_95
    const-string v0, "unregisterCapturePresetDevicesRoleDispatcher"

    return-object v0

    :pswitch_96
    const-string v0, "registerCapturePresetDevicesRoleDispatcher"

    return-object v0

    :pswitch_97
    const-string v0, "getPreferredDevicesForCapturePreset"

    return-object v0

    :pswitch_98
    const-string v0, "clearPreferredDevicesForCapturePreset"

    return-object v0

    :pswitch_99
    const-string v0, "setPreferredDevicesForCapturePreset"

    return-object v0

    :pswitch_9a
    const-string v0, "setMultiAudioFocusEnabled"

    return-object v0

    :pswitch_9b
    const-string v0, "getDeviceVolumeBehavior"

    return-object v0

    :pswitch_9c
    const-string v0, "setDeviceVolumeBehavior"

    return-object v0

    :pswitch_9d
    const-string v0, "setRttEnabled"

    return-object v0

    :pswitch_9e
    const-string v0, "unregisterStrategyNonDefaultDevicesDispatcher"

    return-object v0

    :pswitch_9f
    const-string v0, "registerStrategyNonDefaultDevicesDispatcher"

    return-object v0

    :pswitch_a0
    const-string v0, "unregisterStrategyPreferredDevicesDispatcher"

    return-object v0

    :pswitch_a1
    const-string v0, "registerStrategyPreferredDevicesDispatcher"

    return-object v0

    :pswitch_a2
    const-string v0, "getAllowedCapturePolicy"

    return-object v0

    :pswitch_a3
    const-string v0, "setAllowedCapturePolicy"

    return-object v0

    :pswitch_a4
    const-string v0, "removeOnDevicesForAttributesChangedListener"

    return-object v0

    :pswitch_a5
    const-string v0, "addOnDevicesForAttributesChangedListener"

    return-object v0

    :pswitch_a6
    const-string v0, "getDevicesForAttributesUnprotected"

    return-object v0

    :pswitch_a7
    const-string v0, "getDevicesForAttributes"

    return-object v0

    :pswitch_a8
    const-string v0, "getNonDefaultDevicesForStrategy"

    return-object v0

    :pswitch_a9
    const-string v0, "removeDeviceAsNonDefaultForStrategy"

    return-object v0

    :pswitch_aa
    const-string v0, "setDeviceAsNonDefaultForStrategy"

    return-object v0

    :pswitch_ab
    const-string v0, "getPreferredDevicesForStrategy"

    return-object v0

    :pswitch_ac
    const-string v0, "removePreferredDevicesForStrategy"

    return-object v0

    :pswitch_ad
    const-string v0, "setPreferredDevicesForStrategy"

    return-object v0

    :pswitch_ae
    const-string v0, "isCallScreeningModeSupported"

    return-object v0

    :pswitch_af
    const-string v0, "hasHapticChannels"

    return-object v0

    :pswitch_b0
    const-string v0, "removeUserIdDeviceAffinity"

    return-object v0

    :pswitch_b1
    const-string v0, "setUserIdDeviceAffinity"

    return-object v0

    :pswitch_b2
    const-string v0, "removeUidDeviceAffinity"

    return-object v0

    :pswitch_b3
    const-string v0, "setUidDeviceAffinity"

    return-object v0

    :pswitch_b4
    const-string v0, "isAudioServerRunning"

    return-object v0

    :pswitch_b5
    const-string v0, "unregisterAudioServerStateDispatcher"

    return-object v0

    :pswitch_b6
    const-string v0, "registerAudioServerStateDispatcher"

    return-object v0

    :pswitch_b7
    const-string v0, "setFocusRequestResultFromExtPolicy"

    return-object v0

    :pswitch_b8
    const-string v0, "handleBluetoothActiveDeviceChanged"

    return-object v0

    :pswitch_b9
    const-string v0, "playerHasOpPlayAudio"

    return-object v0

    :pswitch_ba
    const-string v0, "dispatchFocusChangeWithFade"

    return-object v0

    :pswitch_bb
    const-string v0, "dispatchFocusChange"

    return-object v0

    :pswitch_bc
    const-string v0, "getFocusRampTimeMs"

    return-object v0

    :pswitch_bd
    const-string v0, "getActivePlaybackConfigurations"

    return-object v0

    :pswitch_be
    const-string v0, "unregisterPlaybackCallback"

    return-object v0

    :pswitch_bf
    const-string v0, "registerPlaybackCallback"

    return-object v0

    :pswitch_c0
    const-string v0, "getActiveRecordingConfigurations"

    return-object v0

    :pswitch_c1
    const-string v0, "unregisterRecordingCallback"

    return-object v0

    :pswitch_c2
    const-string v0, "registerRecordingCallback"

    return-object v0

    :pswitch_c3
    const-string v0, "hasRegisteredDynamicPolicy"

    return-object v0

    :pswitch_c4
    const-string v0, "setVolumePolicy"

    return-object v0

    :pswitch_c5
    const-string v0, "setFocusPropertiesForPolicy"

    return-object v0

    :pswitch_c6
    const-string v0, "updateMixingRulesForPolicy"

    return-object v0

    :pswitch_c7
    const-string v0, "removeMixForPolicy"

    return-object v0

    :pswitch_c8
    const-string v0, "addMixForPolicy"

    return-object v0

    :pswitch_c9
    const-string v0, "unregisterAudioPolicy"

    return-object v0

    :pswitch_ca
    const-string v0, "getRegisteredPolicyMixes"

    return-object v0

    :pswitch_cb
    const-string v0, "unregisterAudioPolicyAsync"

    return-object v0

    :pswitch_cc
    const-string v0, "registerAudioPolicy"

    return-object v0

    :pswitch_cd
    const-string v0, "isHdmiSystemAudioSupported"

    return-object v0

    :pswitch_ce
    const-string v0, "setHdmiSystemAudioSupported"

    return-object v0

    :pswitch_cf
    const-string v0, "isBluetoothAudioDeviceCategoryFixed"

    return-object v0

    :pswitch_d0
    const-string v0, "getBluetoothAudioDeviceCategory"

    return-object v0

    :pswitch_d1
    const-string v0, "setBluetoothAudioDeviceCategory"

    return-object v0

    :pswitch_d2
    const-string v0, "getBluetoothAudioDeviceCategory_legacy"

    return-object v0

    :pswitch_d3
    const-string v0, "setBluetoothAudioDeviceCategory_legacy"

    return-object v0

    :pswitch_d4
    const-string v0, "setCsdAsAFeatureEnabled"

    return-object v0

    :pswitch_d5
    const-string v0, "isCsdAsAFeatureEnabled"

    return-object v0

    :pswitch_d6
    const-string v0, "isCsdAsAFeatureAvailable"

    return-object v0

    :pswitch_d7
    const-string v0, "isCsdEnabled"

    return-object v0

    :pswitch_d8
    const-string v0, "forceComputeCsdOnAllDevices"

    return-object v0

    :pswitch_d9
    const-string v0, "forceUseFrameworkMel"

    return-object v0

    :pswitch_da
    const-string v0, "setCsd"

    return-object v0

    :pswitch_db
    const-string v0, "getCsd"

    return-object v0

    :pswitch_dc
    const-string v0, "setOutputRs2UpperBound"

    return-object v0

    :pswitch_dd
    const-string v0, "getOutputRs2UpperBound"

    return-object v0

    :pswitch_de
    const-string v0, "lowerVolumeToRs1"

    return-object v0

    :pswitch_df
    const-string v0, "disableSafeMediaVolume"

    return-object v0

    :pswitch_e0
    const-string v0, "isStreamMutableByUi"

    return-object v0

    :pswitch_e1
    const-string v0, "isStreamAffectedByMute"

    return-object v0

    :pswitch_e2
    const-string v0, "isStreamAffectedByRingerMode"

    return-object v0

    :pswitch_e3
    const-string v0, "notifyVolumeControllerVisible"

    return-object v0

    :pswitch_e4
    const-string v0, "getVolumeController"

    return-object v0

    :pswitch_e5
    const-string v0, "setVolumeController"

    return-object v0

    :pswitch_e6
    const-string v0, "isCameraSoundForced"

    return-object v0

    :pswitch_e7
    const-string v0, "startWatchingRoutes"

    return-object v0

    :pswitch_e8
    const-string v0, "setWiredDeviceConnectionState"

    return-object v0

    :pswitch_e9
    const-string v0, "setNotifAliasRingForTest"

    return-object v0

    :pswitch_ea
    const-string v0, "registerStreamAliasingDispatcher"

    return-object v0

    :pswitch_eb
    const-string v0, "isVolumeControlUsingVolumeGroups"

    return-object v0

    :pswitch_ec
    const-string v0, "getStreamTypeAlias"

    return-object v0

    :pswitch_ed
    const-string v0, "getIndependentStreamTypes"

    return-object v0

    :pswitch_ee
    const-string v0, "getUiSoundsStreamType"

    return-object v0

    :pswitch_ef
    const-string v0, "getRingtonePlayer"

    return-object v0

    :pswitch_f0
    const-string v0, "setRingtonePlayer"

    return-object v0

    :pswitch_f1
    const-string v0, "forceVolumeControlStream"

    return-object v0

    :pswitch_f2
    const-string v0, "stopBluetoothSco"

    return-object v0

    :pswitch_f3
    const-string v0, "startBluetoothScoVirtualCall"

    return-object v0

    :pswitch_f4
    const-string v0, "startBluetoothSco"

    return-object v0

    :pswitch_f5
    const-string v0, "getCurrentAudioFocus"

    return-object v0

    :pswitch_f6
    const-string v0, "unregisterAudioFocusClient"

    return-object v0

    :pswitch_f7
    const-string v0, "abandonAudioFocus"

    return-object v0

    :pswitch_f8
    const-string v0, "requestAudioFocus"

    return-object v0

    :pswitch_f9
    const-string v0, "isBluetoothA2dpOn"

    return-object v0

    :pswitch_fa
    const-string v0, "setBluetoothA2dpOn"

    return-object v0

    :pswitch_fb
    const-string v0, "isBluetoothScoOn"

    return-object v0

    :pswitch_fc
    const-string v0, "setLeAudioSuspended"

    return-object v0

    :pswitch_fd
    const-string v0, "setA2dpSuspended"

    return-object v0

    :pswitch_fe
    const-string v0, "setBluetoothScoOn"

    return-object v0

    :pswitch_ff
    const-string v0, "isSpeakerphoneOn"

    return-object v0

    :pswitch_100
    const-string v0, "setSpeakerphoneOn"

    return-object v0

    :pswitch_101
    const-string v0, "getEncodedSurroundMode"

    return-object v0

    :pswitch_102
    const-string v0, "setEncodedSurroundMode"

    return-object v0

    :pswitch_103
    const-string v0, "isSurroundFormatEnabled"

    return-object v0

    :pswitch_104
    const-string v0, "setSurroundFormatEnabled"

    return-object v0

    :pswitch_105
    const-string v0, "getReportedSurroundFormats"

    return-object v0

    :pswitch_106
    const-string v0, "getSurroundFormats"

    return-object v0

    :pswitch_107
    const-string v0, "reloadAudioSettings"

    return-object v0

    :pswitch_108
    const-string v0, "unloadSoundEffects"

    return-object v0

    :pswitch_109
    const-string v0, "loadSoundEffects"

    return-object v0

    :pswitch_10a
    const-string v0, "playSoundEffectVolume"

    return-object v0

    :pswitch_10b
    const-string v0, "playSoundEffect"

    return-object v0

    :pswitch_10c
    const-string v0, "getMode"

    return-object v0

    :pswitch_10d
    const-string v0, "setMode"

    return-object v0

    :pswitch_10e
    const-string v0, "shouldVibrate"

    return-object v0

    :pswitch_10f
    const-string v0, "getVibrateSetting"

    return-object v0

    :pswitch_110
    const-string v0, "setVibrateSetting"

    return-object v0

    :pswitch_111
    const-string v0, "isValidRingerMode"

    return-object v0

    :pswitch_112
    const-string v0, "getRingerModeInternal"

    return-object v0

    :pswitch_113
    const-string v0, "getRingerModeExternal"

    return-object v0

    :pswitch_114
    const-string v0, "setRingerModeInternal"

    return-object v0

    :pswitch_115
    const-string v0, "setRingerModeExternal"

    return-object v0

    :pswitch_116
    const-string v0, "setMicrophoneMuteFromSwitch"

    return-object v0

    :pswitch_117
    const-string v0, "setMicrophoneMute"

    return-object v0

    :pswitch_118
    const-string v0, "isHotwordStreamSupported"

    return-object v0

    :pswitch_119
    const-string v0, "isUltrasoundSupported"

    return-object v0

    :pswitch_11a
    const-string v0, "isMicrophoneMuted"

    return-object v0

    :pswitch_11b
    const-string v0, "getAudioProductStrategies"

    return-object v0

    :pswitch_11c
    const-string v0, "getSupportedSystemUsages"

    return-object v0

    :pswitch_11d
    const-string v0, "setSupportedSystemUsages"

    return-object v0

    :pswitch_11e
    const-string v0, "getLastAudibleStreamVolume"

    return-object v0

    :pswitch_11f
    const-string v0, "adjustVolumeGroupVolume"

    return-object v0

    :pswitch_120
    const-string v0, "isVolumeGroupMuted"

    return-object v0

    :pswitch_121
    const-string v0, "getLastAudibleVolumeForVolumeGroup"

    return-object v0

    :pswitch_122
    const-string v0, "getVolumeGroupMinVolumeIndex"

    return-object v0

    :pswitch_123
    const-string v0, "getVolumeGroupMaxVolumeIndex"

    return-object v0

    :pswitch_124
    const-string v0, "getVolumeGroupVolumeIndex"

    return-object v0

    :pswitch_125
    const-string v0, "setVolumeGroupVolumeIndex"

    return-object v0

    :pswitch_126
    const-string v0, "getAudioVolumeGroups"

    return-object v0

    :pswitch_127
    const-string v0, "getStreamMaxVolume"

    return-object v0

    :pswitch_128
    const-string v0, "getStreamMinVolume"

    return-object v0

    :pswitch_129
    const-string v0, "getStreamVolume"

    return-object v0

    :pswitch_12a
    const-string v0, "setMasterMute"

    return-object v0

    :pswitch_12b
    const-string v0, "isMasterMute"

    return-object v0

    :pswitch_12c
    const-string v0, "forceRemoteSubmixFullVolume"

    return-object v0

    :pswitch_12d
    const-string v0, "isStreamMute"

    return-object v0

    :pswitch_12e
    const-string v0, "handleVolumeKey"

    return-object v0

    :pswitch_12f
    const-string v0, "getDeviceVolume"

    return-object v0

    :pswitch_130
    const-string v0, "setDeviceVolume"

    return-object v0

    :pswitch_131
    const-string v0, "setStreamVolumeWithAttribution"

    return-object v0

    :pswitch_132
    const-string v0, "setStreamVolume"

    return-object v0

    :pswitch_133
    const-string v0, "adjustStreamVolumeWithAttribution"

    return-object v0

    :pswitch_134
    const-string v0, "adjustStreamVolume"

    return-object v0

    :pswitch_135
    const-string v0, "portEvent"

    return-object v0

    :pswitch_136
    const-string v0, "playerSessionId"

    return-object v0

    :pswitch_137
    const-string v0, "releaseRecorder"

    return-object v0

    :pswitch_138
    const-string v0, "recorderEvent"

    return-object v0

    :pswitch_139
    const-string v0, "trackRecorder"

    return-object v0

    :pswitch_13a
    const-string v0, "releasePlayer"

    return-object v0

    :pswitch_13b
    const-string v0, "playerEvent"

    return-object v0

    :pswitch_13c
    const-string v0, "playerAttributes"

    return-object v0

    :pswitch_13d
    const-string v0, "trackPlayer"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13d
        :pswitch_13c
        :pswitch_13b
        :pswitch_13a
        :pswitch_139
        :pswitch_138
        :pswitch_137
        :pswitch_136
        :pswitch_135
        :pswitch_134
        :pswitch_133
        :pswitch_132
        :pswitch_131
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

.method private blacklist onTransact$abandonAudioFocus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$abandonAudioFocusForTest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->abandonAudioFocusForTest(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$addLoudnessCodecInfo$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    sget-object v2, Landroid/media/LoudnessCodecInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/LoudnessCodecInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IAudioService$Stub;->addLoudnessCodecInfo(IILandroid/media/LoudnessCodecInfo;)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$adjustStreamVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
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

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(IIILjava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$adjustStreamVolumeForUid$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v15, p1

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/UserHandle;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move-object v4, v12

    move v5, v13

    move v6, v14

    move-object/from16 v7, v16

    move/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->adjustStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$adjustStreamVolumeWithAttribution$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->adjustStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$adjustSuggestedStreamVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolume(III)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$adjustSuggestedStreamVolumeForUid$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v15, p1

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/UserHandle;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move-object v4, v12

    move v5, v13

    move v6, v14

    move-object/from16 v7, v16

    move/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$adjustVolumeGroupVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
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

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->adjustVolumeGroupVolume(IIILjava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$dispatchFocusChange$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFocusInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IAudioService$Stub;->dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$dispatchFocusChangeWithFade$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFocusInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v8

    sget-object v1, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v9

    sget-object v1, Landroid/media/FadeManagerConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/media/FadeManagerConfiguration;

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v1, p0

    move-object v2, v0

    move v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/media/IAudioService$Stub;->dispatchFocusChangeWithFade(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;Ljava/util/List;Landroid/media/FadeManagerConfiguration;)I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$getDeviceVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/VolumeInfo;

    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IAudioService$Stub;->getDeviceVolume(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;Ljava/lang/String;)Landroid/media/VolumeInfo;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return v4
.end method

.method private blacklist onTransact$handleBluetoothActiveDeviceChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    sget-object v2, Landroid/media/BluetoothProfileConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IAudioService$Stub;->handleBluetoothActiveDeviceChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$handleVolumeKey$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->handleVolumeKey(Landroid/view/KeyEvent;ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$muteAwaitConnection$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->muteAwaitConnection([ILandroid/media/AudioDeviceAttributes;J)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$portEvent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IAudioService$Stub;->portEvent(IILandroid/os/PersistableBundle;)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$registerAudioPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    sget-object v1, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v16

    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/content/AttributionSource;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v11

    move v5, v12

    move v6, v13

    move v7, v14

    move v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    invoke-virtual/range {v2 .. v10}, Landroid/media/IAudioService$Stub;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$registerDeviceVolumeDispatcherForAbsoluteVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioDeviceVolumeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioDeviceVolumeDispatcher;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/media/AudioDeviceAttributes;

    sget-object v1, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v1, p0

    move v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move v7, v14

    move v8, v15

    invoke-virtual/range {v1 .. v8}, Landroid/media/IAudioService$Stub;->registerDeviceVolumeDispatcherForAbsoluteVolume(ZLandroid/media/IAudioDeviceVolumeDispatcher;Ljava/lang/String;Landroid/media/AudioDeviceAttributes;Ljava/util/List;ZI)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    return v1
.end method

.method private blacklist onTransact$requestAudioFocus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v2, p0

    move-object v3, v0

    move v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v10, v19

    move-object/from16 v11, v20

    move/from16 v12, v21

    invoke-virtual/range {v2 .. v12}, Landroid/media/IAudioService$Stub;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$requestAudioFocusForTest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v2, p0

    move-object v3, v0

    move v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    invoke-virtual/range {v2 .. v11}, Landroid/media/IAudioService$Stub;->requestAudioFocusForTest(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setA2dpDeviceVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v1, p0

    move-object v2, v0

    move v3, v7

    move v4, v8

    move v5, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/media/IAudioService$Stub;->setA2dpDeviceVolume(Landroid/bluetooth/BluetoothDevice;IIILjava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    return v1
.end method

.method private blacklist onTransact$setAppDevice$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setAppDevice(IIZ)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setAppMute$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setAppMute(IZLjava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setAppVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setAppVolume(IILjava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setBluetoothAudioDeviceCategory_legacy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setBluetoothAudioDeviceCategory_legacy(Ljava/lang/String;ZI)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setDeviceToForceByUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setDeviceToForceByUser(ILjava/lang/String;Z)I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setDeviceVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/VolumeInfo;

    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setDeviceVolume(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setDeviceVolumeBehavior$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setFineVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setFineVolume(IIIILjava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setFocusRequestResultFromExtPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFocusInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setMasterMute$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v8

    move v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setMasterMute(ZILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setMicrophoneMute$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setMicrophoneMute(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setMode$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPreferredMixerAttributes$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Landroid/media/AudioMixerAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioMixerAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setPreferredMixerAttributes(Landroid/media/AudioAttributes;ILandroid/media/AudioMixerAttributes;)I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setStreamVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
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

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamVolume(IIILjava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setStreamVolumeForDeviceWithAttribution$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Landroid/media/IAudioService$Stub;->setStreamVolumeForDeviceWithAttribution(IIILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setStreamVolumeForUid$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v15, p1

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/UserHandle;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move-object v4, v12

    move v5, v13

    move v6, v14

    move-object/from16 v7, v16

    move/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->setStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setStreamVolumeWithAttribution$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setUidDeviceAffinity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setUserIdDeviceAffinity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setVolumeGroupVolumeIndex$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setVolumeGroupVolumeIndex(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setWiredDeviceConnectionState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$updateMixingRulesForPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/media/audiopolicy/AudioMix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audiopolicy/AudioMix;

    sget-object v1, Landroid/media/audiopolicy/AudioMixingRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IAudioService$Stub;->updateMixingRulesForPolicy([Landroid/media/audiopolicy/AudioMix;[Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method


# virtual methods
.method protected blacklist addAssistantServicesUids_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist addSpatializerCompatibleAudioDevice_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method protected blacklist clearFadeManagerConfigurationForFocusLoss_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist clearPreferredDevicesForCapturePreset_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist dispatchFocusChangeWithFade_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist enterAudioFocusFreezeForTest_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist exitAudioFocusFreezeForTest_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist forceComputeCsdOnAllDevices_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist forceUseFrameworkMel_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getActiveAssistantServiceUids_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getActualHeadTrackingMode_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getAssistantServicesUids_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getAudioProductStrategies_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getAudioVolumeGroups_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getAudioVolumeGroups:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getBluetoothAudioDeviceCategory_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getBluetoothAudioDeviceCategory_legacy_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getCsd_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getDesiredHeadTrackingMode_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getDeviceVolumeBehavior_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getDeviceVolumeBehavior:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getDeviceVolume_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getDeviceVolume:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getFadeManagerConfigurationForFocusLoss_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getFocusDuckedUidsForTest_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getFocusFadeOutDurationForTest_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getFocusStack_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getFocusUnmuteDelayAfterFadeOutForTest_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getIndependentStreamTypes_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getLastAudibleStreamVolume_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getLastAudibleVolumeForVolumeGroup_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x13d

    return v0
.end method

.method protected blacklist getMutingExpectedDevice_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getNonDefaultDevicesForStrategy_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getOutputRs2UpperBound_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getPreferredDevicesForCapturePreset_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getPreferredDevicesForStrategy_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getSpatializerCompatibleAudioDevices_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getSpatializerOutput_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getSpatializerParameter_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getStreamTypeAlias_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getSupportedHeadTrackingModes_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getSupportedSystemUsages_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/media/IAudioService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getVolumeGroupMaxVolumeIndex_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupMaxVolumeIndex:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getVolumeGroupMinVolumeIndex_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupMinVolumeIndex:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getVolumeGroupVolumeIndex_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupVolumeIndex:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist handleBluetoothActiveDeviceChanged_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH_STACK"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist hasHeadTracker_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist isBluetoothAudioDeviceCategoryFixed_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist isBluetoothVariableLatencyEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist isCsdAsAFeatureAvailable_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist isCsdAsAFeatureEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist isCsdEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist isHeadTrackerEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist isHotwordStreamSupported_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist isPstnCallAudioInterceptable_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CALL_AUDIO_INTERCEPTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist isSpatializerAvailableForDevice_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist isUltrasoundSupported_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_ULTRASOUND"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist isVolumeControlUsingVolumeGroups_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.media.IAudioService"

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

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getEarProtectLimit()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMicModeType()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setMicInputControlMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getModeInternal()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->notifySafetyVolumeDialogVisible(Landroid/media/IVolumeController;Z)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getExcludedRingtoneTitles(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isSafeMediaVolumeStateActive()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setBtOffloadEnable(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->registerPlaybackCallbackWithPackage(Landroid/media/IPlaybackConfigDispatcher;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->recordRingtoneChanger(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setRemoteMic(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getFloatVolumeTable()[F

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto/16 :goto_0

    :pswitch_c
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->getA2dpDeviceVolume(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_d
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$setA2dpDeviceVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->isUsingAudio(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->dismissVolumePanel()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRadioOutputPath()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setRadioOutputPath(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMediaVolumeSteps()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setMediaVolumeSteps([I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->setSoundSettingEventBroadcastIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getPrevRingerMode()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRemainingMuteIntervalMs()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMuteInterval()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->setMuteInterval(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1a
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$setDeviceToForceByUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_1b
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isForceSpeakerOn()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setForceSpeakerOn(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->getFineVolume(II)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1e
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$setFineVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->isInAllowedList(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->isAlreadyInDB(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->removePackageForName(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->addPackage(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_23
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getSelectedAppList()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_24
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getPinDevice()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->getStreamVolumeForDevice(II)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_27
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$setStreamVolumeForDeviceWithAttribution$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_28
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isMultiSoundOn()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->setMultiSoundOn(ZZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->isAppMute(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2b
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$setAppMute$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getAppVolume(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_2d
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$setAppVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getAppDevice(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_2f
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$setAppDevice$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getUidForDevice(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->secGetActiveStreamType(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_32
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->shouldShowRingtoneVolume()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setAudioServiceConfig(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_35
    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->shouldNotificationSoundPlay(Landroid/media/AudioAttributes;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_36
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getFadeManagerConfigurationForFocusLoss()Landroid/media/FadeManagerConfiguration;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_37
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->clearFadeManagerConfigurationForFocusLoss()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_38
    sget-object v2, Landroid/media/FadeManagerConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/FadeManagerConfiguration;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setFadeManagerConfigurationForFocusLoss(Landroid/media/FadeManagerConfiguration;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_39
    sget-object v2, Landroid/media/LoudnessCodecInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/LoudnessCodecInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getLoudnessParams(Landroid/media/LoudnessCodecInfo;)Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/media/LoudnessCodecInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/LoudnessCodecInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->removeLoudnessCodecInfo(ILandroid/media/LoudnessCodecInfo;)V

    goto/16 :goto_0

    :pswitch_3b
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$addLoudnessCodecInfo$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->stopLoudnessCodecUpdates(I)V

    goto/16 :goto_0

    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->startLoudnessCodecUpdates(I)V

    goto/16 :goto_0

    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ILoudnessCodecUpdatesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ILoudnessCodecUpdatesDispatcher;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->unregisterLoudnessCodecUpdatesDispatcher(Landroid/media/ILoudnessCodecUpdatesDispatcher;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ILoudnessCodecUpdatesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ILoudnessCodecUpdatesDispatcher;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->registerLoudnessCodecUpdatesDispatcher(Landroid/media/ILoudnessCodecUpdatesDispatcher;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_40
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isBluetoothVariableLatencyEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setBluetoothVariableLatencyEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_42
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->supportsBluetoothVariableLatency()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IPreferredMixerAttributesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPreferredMixerAttributesDispatcher;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->unregisterPreferredMixerAttributesDispatcher(Landroid/media/IPreferredMixerAttributesDispatcher;)V

    goto/16 :goto_0

    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IPreferredMixerAttributesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPreferredMixerAttributesDispatcher;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->registerPreferredMixerAttributesDispatcher(Landroid/media/IPreferredMixerAttributesDispatcher;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_45
    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->clearPreferredMixerAttributes(Landroid/media/AudioAttributes;I)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_46
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$setPreferredMixerAttributes$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_47
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getHalVersion()Landroid/media/AudioHalVersionInfo;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_48
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$registerDeviceVolumeDispatcherForAbsoluteVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_49
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getActiveAssistantServiceUids()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :pswitch_4a
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getAssistantServicesUids()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setActiveAssistantServiceUids([I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->removeAssistantServicesUids([I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->addAssistantServicesUids([I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4e
    sget-object v2, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioFocusInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->sendFocusLoss(Landroid/media/AudioFocusInfo;Landroid/media/audiopolicy/IAudioPolicyCallback;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_4f
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getFocusStack()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IDeviceVolumeBehaviorDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IDeviceVolumeBehaviorDispatcher;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->registerDeviceVolumeBehaviorDispatcher(ZLandroid/media/IDeviceVolumeBehaviorDispatcher;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_51
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->setTestDeviceConnectionState(Landroid/media/AudioDeviceAttributes;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IMuteAwaitConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMuteAwaitConnectionCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->registerMuteAwaitConnectionDispatcher(Landroid/media/IMuteAwaitConnectionCallback;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_53
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMutingExpectedDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_54
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->cancelMuteAwaitConnection(Landroid/media/AudioDeviceAttributes;)V

    goto/16 :goto_0

    :pswitch_55
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$muteAwaitConnection$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_56
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isPstnCallAudioInterceptable()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_57
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getDefaultVolumeInfo()Landroid/media/VolumeInfo;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_58
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isVolumeFixed()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ISpatializerOutputCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerOutputCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->unregisterSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ISpatializerOutputCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerOutputCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->registerSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5b
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getSpatializerOutput()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->getSpatializerParameter(I[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->setSpatializerParameter(I[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5e
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->recenterHeadTracker()V

    goto/16 :goto_0

    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setSpatializerGlobalTransform([F)V

    goto/16 :goto_0

    :pswitch_60
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getActualHeadTrackingMode()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_61
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getSupportedHeadTrackingModes()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :pswitch_62
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getDesiredHeadTrackingMode()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setDesiredHeadTrackingMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_64
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->removeSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_65
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->addSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_66
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getSpatializerCompatibleAudioDevices()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ISpatializerHeadToSoundStagePoseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadToSoundStagePoseCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->unregisterHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ISpatializerHeadToSoundStagePoseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadToSoundStagePoseCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->registerHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ISpatializerHeadTrackingModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackingModeCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->unregisterSpatializerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ISpatializerHeadTrackingModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackingModeCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->registerSpatializerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ISpatializerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->unregisterSpatializerCallback(Landroid/media/ISpatializerCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ISpatializerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->registerSpatializerCallback(Landroid/media/ISpatializerCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6d
    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    sget-object v3, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioFormat;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setSpatializerEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ISpatializerHeadTrackerAvailableCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackerAvailableCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->registerSpatializerHeadTrackerAvailableCallback(Landroid/media/ISpatializerHeadTrackerAvailableCallback;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_70
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isHeadTrackerAvailable()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_71
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->isHeadTrackerEnabled(Landroid/media/AudioDeviceAttributes;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    sget-object v3, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_73
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_74
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->isSpatializerAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_75
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isSpatializerAvailable()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_76
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isSpatializerEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_77
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getSpatializerImmersiveAudioLevel()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioModeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioModeDispatcher;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->unregisterModeDispatcher(Landroid/media/IAudioModeDispatcher;)V

    goto/16 :goto_0

    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioModeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioModeDispatcher;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->registerModeDispatcher(Landroid/media/IAudioModeDispatcher;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->exitAudioFocusFreezeForTest(Landroid/os/IBinder;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->enterAudioFocusFreezeForTest(Landroid/os/IBinder;[I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_7c
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getFocusUnmuteDelayAfterFadeOutForTest()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_7d
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getFocusFadeOutDurationForTest()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_7e
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getFocusDuckedUidsForTest()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_7f
    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J

    move-result-wide v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_80
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$abandonAudioFocusForTest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_81
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$requestAudioFocusForTest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_82
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getMaxAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J

    move-result-wide v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_83
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J

    move-result-wide v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_84
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/media/IAudioService$Stub;->setAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;J)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setHomeSoundEffectEnabled(Z)V

    goto/16 :goto_0

    :pswitch_86
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isHomeSoundEffectEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setNavigationRepeatSoundEffectsEnabled(Z)V

    goto/16 :goto_0

    :pswitch_88
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->areNavigationRepeatSoundEffectsEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ICommunicationDeviceDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICommunicationDeviceDispatcher;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->unregisterCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V

    goto/16 :goto_0

    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ICommunicationDeviceDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICommunicationDeviceDispatcher;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->registerCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_8b
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getCommunicationDevice()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->setCommunicationDevice(Landroid/os/IBinder;I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_8d
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getAvailableCommunicationDeviceIds()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getDeviceMaskForStream(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->isMusicActive(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_90
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$adjustSuggestedStreamVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->adjustVolume(II)V

    goto/16 :goto_0

    :pswitch_92
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$setStreamVolumeForUid$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_93
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$adjustSuggestedStreamVolumeForUid$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_94
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$adjustStreamVolumeForUid$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ICapturePresetDevicesRoleDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICapturePresetDevicesRoleDispatcher;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    goto/16 :goto_0

    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/ICapturePresetDevicesRoleDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICapturePresetDevicesRoleDispatcher;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getPreferredDevicesForCapturePreset(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->clearPreferredDevicesForCapturePreset(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->setPreferredDevicesForCapturePreset(ILjava/util/List;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setMultiAudioFocusEnabled(Z)V

    goto/16 :goto_0

    :pswitch_9b
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_9c
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$setDeviceVolumeBehavior$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setRttEnabled(Z)V

    goto/16 :goto_0

    :pswitch_9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IStrategyNonDefaultDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyNonDefaultDevicesDispatcher;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->unregisterStrategyNonDefaultDevicesDispatcher(Landroid/media/IStrategyNonDefaultDevicesDispatcher;)V

    goto/16 :goto_0

    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IStrategyNonDefaultDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyNonDefaultDevicesDispatcher;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->registerStrategyNonDefaultDevicesDispatcher(Landroid/media/IStrategyNonDefaultDevicesDispatcher;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IStrategyPreferredDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyPreferredDevicesDispatcher;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    goto/16 :goto_0

    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IStrategyPreferredDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyPreferredDevicesDispatcher;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_a2
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getAllowedCapturePolicy()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setAllowedCapturePolicy(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IDevicesForAttributesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IDevicesForAttributesCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->removeOnDevicesForAttributesChangedListener(Landroid/media/IDevicesForAttributesCallback;)V

    goto/16 :goto_0

    :pswitch_a5
    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IDevicesForAttributesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IDevicesForAttributesCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->addOnDevicesForAttributesChangedListener(Landroid/media/AudioAttributes;Landroid/media/IDevicesForAttributesCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_a6
    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getDevicesForAttributesUnprotected(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_a7
    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getNonDefaultDevicesForStrategy(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->removeDeviceAsNonDefaultForStrategy(ILandroid/media/AudioDeviceAttributes;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->setDeviceAsNonDefaultForStrategy(ILandroid/media/AudioDeviceAttributes;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getPreferredDevicesForStrategy(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->removePreferredDevicesForStrategy(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->setPreferredDevicesForStrategy(ILjava/util/List;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_ae
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isCallScreeningModeSupported()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_af
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->hasHapticChannels(Landroid/net/Uri;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->removeUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_b1
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$setUserIdDeviceAffinity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->removeUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_b3
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$setUidDeviceAffinity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_b4
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isAudioServerRunning()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioServerStateDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioServerStateDispatcher;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->unregisterAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V

    goto/16 :goto_0

    :pswitch_b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioServerStateDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioServerStateDispatcher;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->registerAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_b7
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$setFocusRequestResultFromExtPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_b8
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$handleBluetoothActiveDeviceChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->playerHasOpPlayAudio(IZ)V

    goto/16 :goto_0

    :pswitch_ba
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$dispatchFocusChangeWithFade$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_bb
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$dispatchFocusChange$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioAttributes;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_bd
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_be
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    goto/16 :goto_0

    :pswitch_bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c0
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    goto/16 :goto_0

    :pswitch_c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c3
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->hasRegisteredDynamicPolicy()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_c4
    sget-object v2, Landroid/media/VolumePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/VolumePolicy;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_c6
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$updateMixingRulesForPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_c7
    sget-object v2, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->removeMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_c8
    sget-object v2, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->addMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_ca
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRegisteredPolicyMixes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    goto/16 :goto_0

    :pswitch_cc
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$registerAudioPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_cd
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isHdmiSystemAudioSupported()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setHdmiSystemAudioSupported(Z)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->isBluetoothAudioDeviceCategoryFixed(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getBluetoothAudioDeviceCategory(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->setBluetoothAudioDeviceCategory(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->getBluetoothAudioDeviceCategory_legacy(Ljava/lang/String;Z)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_d3
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$setBluetoothAudioDeviceCategory_legacy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setCsdAsAFeatureEnabled(Z)V

    goto/16 :goto_0

    :pswitch_d5
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isCsdAsAFeatureEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_d6
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isCsdAsAFeatureAvailable()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_d7
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isCsdEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->forceComputeCsdOnAllDevices(Z)V

    goto/16 :goto_0

    :pswitch_d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->forceUseFrameworkMel(Z)V

    goto/16 :goto_0

    :pswitch_da
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setCsd(F)V

    goto/16 :goto_0

    :pswitch_db
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getCsd()F

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    :pswitch_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setOutputRs2UpperBound(F)V

    goto/16 :goto_0

    :pswitch_dd
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getOutputRs2UpperBound()F

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    :pswitch_de
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->lowerVolumeToRs1(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_df
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->disableSafeMediaVolume(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->isStreamMutableByUi(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->isStreamAffectedByMute(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->isStreamAffectedByRingerMode(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_e4
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getVolumeController()Landroid/media/IVolumeController;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setVolumeController(Landroid/media/IVolumeController;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_e6
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isCameraSoundForced()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioRoutesObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioRoutesObserver;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_e8
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$setWiredDeviceConnectionState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setNotifAliasRingForTest(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IStreamAliasingDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStreamAliasingDispatcher;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->registerStreamAliasingDispatcher(Landroid/media/IStreamAliasingDispatcher;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_eb
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isVolumeControlUsingVolumeGroups()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getStreamTypeAlias(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_ed
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getIndependentStreamTypes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_ee
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getUiSoundsStreamType()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_ef
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IRingtonePlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->forceVolumeControlStream(ILandroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->startBluetoothScoVirtualCall(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_f5
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getCurrentAudioFocus()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_f7
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$abandonAudioFocus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_f8
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$requestAudioFocus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_f9
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isBluetoothA2dpOn()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpOn(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_fb
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setLeAudioSuspended(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setA2dpSuspended(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_ff
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Landroid/os/IBinder;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getEncodedSurroundMode(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setEncodedSurroundMode(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->isSurroundFormatEnabled(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->setSurroundFormatEnabled(IZ)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_105
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getReportedSurroundFormats()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_106
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getSurroundFormats()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    :pswitch_107
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    goto/16 :goto_0

    :pswitch_108
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    goto/16 :goto_0

    :pswitch_109
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_10a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    goto/16 :goto_0

    :pswitch_10b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->playSoundEffect(II)V

    goto/16 :goto_0

    :pswitch_10c
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_10d
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$setMode$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_10e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_10f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->isValidRingerMode(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_112
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRingerModeInternal()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_113
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRingerModeExternal()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->setRingerModeInternal(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->setRingerModeExternal(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_116
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setMicrophoneMuteFromSwitch(Z)V

    goto/16 :goto_0

    :pswitch_117
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$setMicrophoneMute$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_118
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->isHotwordStreamSupported(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_119
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isUltrasoundSupported()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_11a
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isMicrophoneMuted()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_11b
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_11c
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getSupportedSystemUsages()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :pswitch_11d
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->setSupportedSystemUsages([I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_11e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getLastAudibleStreamVolume(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_11f
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$adjustVolumeGroupVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->isVolumeGroupMuted(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getLastAudibleVolumeForVolumeGroup(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getVolumeGroupMinVolumeIndex(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getVolumeGroupMaxVolumeIndex(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getVolumeGroupVolumeIndex(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_125
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$setVolumeGroupVolumeIndex$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_126
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getStreamMinVolume(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_12a
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$setMasterMute$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_12b
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isMasterMute()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_12c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_12d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->isStreamMute(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_12e
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$handleVolumeKey$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_12f
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$getDeviceVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_130
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$setDeviceVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_131
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$setStreamVolumeWithAttribution$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_132
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$setStreamVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_133
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$adjustStreamVolumeWithAttribution$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_134
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$adjustStreamVolume$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_135
    invoke-direct {p0, p2, p3}, Landroid/media/IAudioService$Stub;->onTransact$portEvent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->playerSessionId(II)V

    goto/16 :goto_0

    :pswitch_137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->releaseRecorder(I)V

    goto :goto_0

    :pswitch_138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->recorderEvent(II)V

    goto :goto_0

    :pswitch_139
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->trackRecorder(Landroid/os/IBinder;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_13a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->releasePlayer(I)V

    goto :goto_0

    :pswitch_13b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/media/IAudioService$Stub;->playerEvent(III)V

    goto :goto_0

    :pswitch_13c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioAttributes;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/media/IAudioService$Stub;->playerAttributes(ILandroid/media/AudioAttributes;)V

    goto :goto_0

    :pswitch_13d
    sget-object v2, Landroid/media/PlayerBase$PlayerIdCard;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlayerBase$PlayerIdCard;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/IAudioService$Stub;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13d
        :pswitch_13c
        :pswitch_13b
        :pswitch_13a
        :pswitch_139
        :pswitch_138
        :pswitch_137
        :pswitch_136
        :pswitch_135
        :pswitch_134
        :pswitch_133
        :pswitch_132
        :pswitch_131
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

.method protected blacklist recenterHeadTracker_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist registerHeadToSoundstagePoseCallback_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist registerMuteAwaitConnectionDispatcher_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist registerSpatializerHeadTrackingCallback_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist registerSpatializerOutputCallback_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist registerStreamAliasingDispatcher_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist removeAssistantServicesUids_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist removeDeviceAsNonDefaultForStrategy_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist removePreferredDevicesForStrategy_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist removeSpatializerCompatibleAudioDevice_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setA2dpSuspended_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH_STACK"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setActiveAssistantServiceUids_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setBluetoothAudioDeviceCategory_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setBluetoothAudioDeviceCategory_legacy_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setBluetoothVariableLatencyEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setCsdAsAFeatureEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setCsd_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setDesiredHeadTrackingMode_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setDeviceAsNonDefaultForStrategy_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setDeviceVolumeBehavior_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_setDeviceVolumeBehavior:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setDeviceVolume_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_setDeviceVolume:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setEncodedSurroundMode_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setFadeManagerConfigurationForFocusLoss_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setHeadTrackerEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setLeAudioSuspended_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH_STACK"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setMasterMute_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setMultiAudioFocusEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setNotifAliasRingForTest_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setOutputRs2UpperBound_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setPreferredDevicesForStrategy_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setRingtonePlayer_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REMOTE_AUDIO_PLAYBACK"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setSpatializerEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setSpatializerGlobalTransform_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setSpatializerParameter_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setSupportedSystemUsages_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setVolumeGroupVolumeIndex_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_setVolumeGroupVolumeIndex:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setWiredDeviceConnectionState_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist shouldNotificationSoundPlay_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist supportsBluetoothVariableLatency_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist unregisterHeadToSoundstagePoseCallback_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist unregisterSpatializerHeadTrackingCallback_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist unregisterSpatializerOutputCallback_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist updateMixingRulesForPolicy_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method
