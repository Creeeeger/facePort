.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-r DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final blacklist TRANSACTION_addUceRegistrationOverrideShell:I = 0x13d

.field static final blacklist TRANSACTION_bootstrapAuthenticationRequest:I = 0x122

.field static final greylist TRANSACTION_call:I = 0x2

.field static final greylist-max-o TRANSACTION_canChangeDtmfToneLength:I = 0x87

.field static final blacklist TRANSACTION_canConnectTo5GInDsdsMode:I = 0x11a

.field static final greylist-max-o TRANSACTION_carrierActionReportDefaultNetworkStatus:I = 0xaf

.field static final blacklist TRANSACTION_carrierActionResetAll:I = 0xb0

.field static final greylist-max-o TRANSACTION_carrierActionSetRadioEnabled:I = 0xae

.field static final blacklist TRANSACTION_changeIccLockPassword:I = 0x116

.field static final greylist-max-o TRANSACTION_checkCarrierPrivilegesForPackage:I = 0x76

.field static final greylist-max-o TRANSACTION_checkCarrierPrivilegesForPackageAnyPhone:I = 0x77

.field static final blacklist TRANSACTION_clearCarrierImsServiceOverride:I = 0x60

.field static final blacklist TRANSACTION_clearSignalStrengthUpdateRequest:I = 0x145

.field static final blacklist TRANSACTION_clearUceRegistrationOverrideShell:I = 0x13f

.field static final greylist-max-r TRANSACTION_dial:I = 0x1

.field static final greylist-max-o TRANSACTION_disableDataConnectivity:I = 0x1a

.field static final greylist-max-o TRANSACTION_disableIms:I = 0x59

.field static final greylist-max-o TRANSACTION_disableLocationUpdates:I = 0x18

.field static final greylist-max-o TRANSACTION_disableVisualVoicemailSmsFilter:I = 0x38

.field static final blacklist TRANSACTION_doesSwitchMultiSimConfigTriggerReboot:I = 0x102

.field static final greylist-max-o TRANSACTION_enableDataConnectivity:I = 0x19

.field static final greylist-max-o TRANSACTION_enableIms:I = 0x58

.field static final greylist-max-o TRANSACTION_enableLocationUpdates:I = 0x17

.field static final blacklist TRANSACTION_enableModemForSlot:I = 0xfe

.field static final greylist-max-o TRANSACTION_enableVideoCalling:I = 0x85

.field static final greylist-max-o TRANSACTION_enableVisualVoicemailSmsFilter:I = 0x37

.field static final blacklist TRANSACTION_enqueueSmsPickResult:I = 0x10d

.field static final greylist-max-o TRANSACTION_factoryReset:I = 0x99

.field static final greylist-max-o TRANSACTION_getActivePhoneType:I = 0x25

.field static final greylist-max-o TRANSACTION_getActivePhoneTypeForSlot:I = 0x26

.field static final greylist-max-o TRANSACTION_getActiveVisualVoicemailSmsFilterSettings:I = 0x3a

.field static final greylist-max-o TRANSACTION_getAidForAppType:I = 0xa3

.field static final greylist-max-o TRANSACTION_getAllCellInfo:I = 0x45

.field static final greylist-max-o TRANSACTION_getAllowedCarriers:I = 0xa8

.field static final blacklist TRANSACTION_getAllowedNetworkTypesBitmask:I = 0x56

.field static final blacklist TRANSACTION_getAllowedNetworkTypesForReason:I = 0x68

.field static final blacklist TRANSACTION_getBoundGbaService:I = 0x124

.field static final blacklist TRANSACTION_getBoundImsServicePackage:I = 0x61

.field static final blacklist TRANSACTION_getCallComposerStatus:I = 0x8

.field static final blacklist TRANSACTION_getCallForwarding:I = 0xb1

.field static final greylist-max-o TRANSACTION_getCallState:I = 0x1f

.field static final blacklist TRANSACTION_getCallStateForSubscription:I = 0x20

.field static final blacklist TRANSACTION_getCallWaitingStatus:I = 0xb3

.field static final blacklist TRANSACTION_getCapabilityFromEab:I = 0x13a

.field static final blacklist TRANSACTION_getCardIdForDefaultEuicc:I = 0xbc

.field static final blacklist TRANSACTION_getCarrierIdFromMccMnc:I = 0xad

.field static final greylist-max-o TRANSACTION_getCarrierIdListVersion:I = 0xc8

.field static final greylist-max-o TRANSACTION_getCarrierPackageNamesForIntentAndPhone:I = 0x78

.field static final greylist-max-o TRANSACTION_getCarrierPrivilegeStatus:I = 0x74

.field static final greylist-max-o TRANSACTION_getCarrierPrivilegeStatusForUid:I = 0x75

.field static final blacklist TRANSACTION_getCarrierServicePackageNameForLogicalSlot:I = 0x152

.field static final blacklist TRANSACTION_getCarrierSingleRegistrationEnabled:I = 0x134

.field static final greylist-max-o TRANSACTION_getCdmaEriIconIndex:I = 0x27

.field static final greylist-max-o TRANSACTION_getCdmaEriIconIndexForSubscriber:I = 0x28

.field static final greylist-max-o TRANSACTION_getCdmaEriIconMode:I = 0x29

.field static final greylist-max-o TRANSACTION_getCdmaEriIconModeForSubscriber:I = 0x2a

.field static final greylist-max-o TRANSACTION_getCdmaEriText:I = 0x2b

.field static final greylist-max-o TRANSACTION_getCdmaEriTextForSubscriber:I = 0x2c

.field static final greylist-max-o TRANSACTION_getCdmaMdn:I = 0x71

.field static final greylist-max-o TRANSACTION_getCdmaMin:I = 0x72

.field static final greylist-max-o TRANSACTION_getCdmaPrlVersion:I = 0xa5

.field static final blacklist TRANSACTION_getCdmaRoamingMode:I = 0xc3

.field static final blacklist TRANSACTION_getCdmaSubscriptionMode:I = 0xc5

.field static final greylist-max-o TRANSACTION_getCellLocation:I = 0x1c

.field static final greylist-max-o TRANSACTION_getCellNetworkScanResults:I = 0x64

.field static final blacklist TRANSACTION_getCertsFromCarrierPrivilegeAccessRules:I = 0xea

.field static final greylist-max-o TRANSACTION_getClientRequestStats:I = 0xb5

.field static final blacklist TRANSACTION_getContactFromEab:I = 0x139

.field static final blacklist TRANSACTION_getCurrentPackageName:I = 0x105

.field static final greylist-max-o TRANSACTION_getDataActivationState:I = 0x32

.field static final greylist-max-o TRANSACTION_getDataActivity:I = 0x21

.field static final blacklist TRANSACTION_getDataActivityForSubId:I = 0x22

.field static final greylist-max-o TRANSACTION_getDataEnabled:I = 0x6a

.field static final greylist-max-o TRANSACTION_getDataNetworkType:I = 0x3e

.field static final greylist-max-o TRANSACTION_getDataNetworkTypeForSubscriber:I = 0x3f

.field static final greylist-max-o TRANSACTION_getDataState:I = 0x23

.field static final blacklist TRANSACTION_getDataStateForSubId:I = 0x24

.field static final greylist TRANSACTION_getDeviceId:I = 0x90

.field static final blacklist TRANSACTION_getDeviceIdWithFeature:I = 0x91

.field static final blacklist TRANSACTION_getDeviceSingleRegistrationEnabled:I = 0x12f

.field static final greylist-max-o TRANSACTION_getDeviceSoftwareVersionForSlot:I = 0x96

.field static final blacklist TRANSACTION_getDeviceUceEnabled:I = 0x13b

.field static final greylist-max-o TRANSACTION_getEmergencyCallbackMode:I = 0xba

.field static final blacklist TRANSACTION_getEmergencyNumberDbVersion:I = 0xfa

.field static final blacklist TRANSACTION_getEmergencyNumberList:I = 0xe8

.field static final blacklist TRANSACTION_getEmergencyNumberListTestMode:I = 0xf9

.field static final blacklist TRANSACTION_getEquivalentHomePlmns:I = 0x11b

.field static final greylist-max-o TRANSACTION_getEsn:I = 0xa4

.field static final greylist-max-o TRANSACTION_getForbiddenPlmns:I = 0xb8

.field static final blacklist TRANSACTION_getGbaReleaseTime:I = 0x126

.field static final greylist-max-o TRANSACTION_getImeiForSlot:I = 0x92

.field static final greylist-max-o TRANSACTION_getImsConfig:I = 0x5e

.field static final blacklist TRANSACTION_getImsFeatureValidationOverride:I = 0x136

.field static final blacklist TRANSACTION_getImsMmTelFeatureState:I = 0x62

.field static final blacklist TRANSACTION_getImsMmTelRegistrationState:I = 0xd0

.field static final blacklist TRANSACTION_getImsMmTelRegistrationTransportType:I = 0xd1

.field static final blacklist TRANSACTION_getImsProvisioningInt:I = 0xf3

.field static final blacklist TRANSACTION_getImsProvisioningStatusForCapability:I = 0xf0

.field static final blacklist TRANSACTION_getImsProvisioningString:I = 0xf4

.field static final greylist-max-o TRANSACTION_getImsRegTechnologyForMmTel:I = 0x8f

.field static final greylist-max-o TRANSACTION_getImsRegistration:I = 0x5d

.field static final blacklist TRANSACTION_getLastKnownCellIdentity:I = 0x14b

.field static final blacklist TRANSACTION_getLastUcePidfXmlShell:I = 0x141

.field static final blacklist TRANSACTION_getLatestRcsContactUceCapabilityShell:I = 0x140

.field static final greylist-max-o TRANSACTION_getLine1AlphaTagForDisplay:I = 0x7b

.field static final greylist-max-o TRANSACTION_getLine1NumberForDisplay:I = 0x7a

.field static final greylist-max-o TRANSACTION_getLteOnCdmaMode:I = 0x43

.field static final greylist-max-o TRANSACTION_getLteOnCdmaModeForSubscriber:I = 0x44

.field static final blacklist TRANSACTION_getManualNetworkSelectionPlmn:I = 0x119

.field static final blacklist TRANSACTION_getManufacturerCodeForSlot:I = 0x95

.field static final greylist-max-o TRANSACTION_getMeidForSlot:I = 0x94

.field static final blacklist TRANSACTION_getMergedImsisFromGroup:I = 0x7d

.field static final greylist-max-o TRANSACTION_getMergedSubscriberIds:I = 0x7c

.field static final blacklist TRANSACTION_getMmsUAProfUrl:I = 0x10f

.field static final blacklist TRANSACTION_getMmsUserAgent:I = 0x10e

.field static final blacklist TRANSACTION_getMobileProvisioningUrl:I = 0x137

.field static final blacklist TRANSACTION_getModemService:I = 0x14e

.field static final greylist-max-o TRANSACTION_getNeighboringCellInfo:I = 0x1e

.field static final greylist-max-o TRANSACTION_getNetworkCountryIsoForPhone:I = 0x1d

.field static final blacklist TRANSACTION_getNetworkSelectionMode:I = 0xcb

.field static final greylist-max-o TRANSACTION_getNetworkTypeForSubscriber:I = 0x3d

.field static final blacklist TRANSACTION_getNumberOfModemsWithSimultaneousDataConnections:I = 0xca

.field static final greylist-max-o TRANSACTION_getPackagesWithCarrierPrivileges:I = 0xa1

.field static final blacklist TRANSACTION_getPackagesWithCarrierPrivilegesForAllPhones:I = 0xa2

.field static final blacklist TRANSACTION_getPhoneAccountHandleForSubscriptionId:I = 0x98

.field static final blacklist TRANSACTION_getPhoneCapability:I = 0x146

.field static final greylist-max-o TRANSACTION_getRadioAccessFamily:I = 0x83

.field static final blacklist TRANSACTION_getRadioHalVersion:I = 0x104

.field static final blacklist TRANSACTION_getRadioPowerState:I = 0xcd

.field static final blacklist TRANSACTION_getRcsProvisioningStatusForCapability:I = 0xf1

.field static final blacklist TRANSACTION_getRcsSingleRegistrationTestModeEnabled:I = 0x12d

.field static final greylist-max-o TRANSACTION_getServiceStateForSubscriber:I = 0x9c

.field static final greylist-max-o TRANSACTION_getSignalStrength:I = 0xbb

.field static final blacklist TRANSACTION_getSimLocaleForSubscriber:I = 0x9a

.field static final blacklist TRANSACTION_getSlicingConfig:I = 0x148

.field static final blacklist TRANSACTION_getSlotsMapping:I = 0x103

.field static final blacklist TRANSACTION_getSubIdForPhoneAccountHandle:I = 0x97

.field static final greylist-max-o TRANSACTION_getSubscriptionCarrierId:I = 0xa9

.field static final greylist-max-o TRANSACTION_getSubscriptionCarrierName:I = 0xaa

.field static final blacklist TRANSACTION_getSubscriptionSpecificCarrierId:I = 0xab

.field static final blacklist TRANSACTION_getSubscriptionSpecificCarrierName:I = 0xac

.field static final blacklist TRANSACTION_getSystemSelectionChannels:I = 0x10b

.field static final greylist-max-o TRANSACTION_getTelephonyHistograms:I = 0xa6

.field static final blacklist TRANSACTION_getTypeAllocationCodeForSlot:I = 0x93

.field static final blacklist TRANSACTION_getUiccCardsInfo:I = 0xbd

.field static final greylist-max-o TRANSACTION_getUiccSlotsInfo:I = 0xbe

.field static final greylist-max-o TRANSACTION_getVisualVoicemailPackageName:I = 0x36

.field static final greylist-max-o TRANSACTION_getVisualVoicemailSettings:I = 0x35

.field static final greylist-max-o TRANSACTION_getVisualVoicemailSmsFilterSettings:I = 0x39

.field static final blacklist TRANSACTION_getVoWiFiModeSetting:I = 0xe2

.field static final blacklist TRANSACTION_getVoWiFiRoamingModeSetting:I = 0xe4

.field static final greylist-max-o TRANSACTION_getVoiceActivationState:I = 0x31

.field static final greylist-max-o TRANSACTION_getVoiceMessageCountForSubscriber:I = 0x33

.field static final greylist-max-o TRANSACTION_getVoiceNetworkTypeForSubscriber:I = 0x40

.field static final greylist-max-o TRANSACTION_getVoicemailRingtoneUri:I = 0x9d

.field static final greylist-max-o TRANSACTION_handlePinMmi:I = 0xd

.field static final greylist-max-o TRANSACTION_handlePinMmiForSubscriber:I = 0xf

.field static final greylist-max-o TRANSACTION_handleUssdRequest:I = 0xe

.field static final greylist-max-o TRANSACTION_hasIccCard:I = 0x41

.field static final greylist-max-o TRANSACTION_hasIccCardUsingSlotIndex:I = 0x42

.field static final greylist-max-o TRANSACTION_iccCloseLogicalChannel:I = 0x4a

.field static final greylist-max-o TRANSACTION_iccExchangeSimIO:I = 0x4f

.field static final greylist-max-o TRANSACTION_iccOpenLogicalChannel:I = 0x49

.field static final greylist-max-o TRANSACTION_iccTransmitApduBasicChannel:I = 0x4e

.field static final blacklist TRANSACTION_iccTransmitApduBasicChannelByPort:I = 0x4d

.field static final greylist-max-o TRANSACTION_iccTransmitApduLogicalChannel:I = 0x4c

.field static final blacklist TRANSACTION_iccTransmitApduLogicalChannelByPort:I = 0x4b

.field static final greylist-max-o TRANSACTION_invokeOemRilRequestRaw:I = 0x80

.field static final blacklist TRANSACTION_isAdvancedCallingSettingEnabled:I = 0xd7

.field static final blacklist TRANSACTION_isApnMetered:I = 0x109

.field static final blacklist TRANSACTION_isApplicationOnUicc:I = 0x106

.field static final blacklist TRANSACTION_isAvailable:I = 0xd5

.field static final blacklist TRANSACTION_isCapable:I = 0xd4

.field static final greylist-max-o TRANSACTION_isConcurrentVoiceAndDataAllowed:I = 0x34

.field static final blacklist TRANSACTION_isCrossSimCallingEnabledByUser:I = 0xdd

.field static final greylist-max-o TRANSACTION_isDataConnectivityPossible:I = 0x1b

.field static final greylist-max-o TRANSACTION_isDataEnabled:I = 0x6c

.field static final blacklist TRANSACTION_isDataEnabledForApn:I = 0x108

.field static final blacklist TRANSACTION_isDataEnabledForReason:I = 0x6e

.field static final blacklist TRANSACTION_isDataRoamingEnabled:I = 0xc1

.field static final blacklist TRANSACTION_isEmergencyNumber:I = 0xe9

.field static final greylist-max-o TRANSACTION_isHearingAidCompatibilitySupported:I = 0x8b

.field static final blacklist TRANSACTION_isIccLockEnabled:I = 0x114

.field static final greylist-max-o TRANSACTION_isImsRegistered:I = 0x8c

.field static final blacklist TRANSACTION_isInEmergencySmsMode:I = 0xcc

.field static final blacklist TRANSACTION_isManualNetworkSelectionAllowed:I = 0x6f

.field static final blacklist TRANSACTION_isMmTelCapabilitySupported:I = 0xd6

.field static final blacklist TRANSACTION_isMobileDataPolicyEnabled:I = 0x111

.field static final blacklist TRANSACTION_isModemEnabledForSlot:I = 0x107

.field static final blacklist TRANSACTION_isMultiSimSupported:I = 0x100

.field static final blacklist TRANSACTION_isMvnoMatched:I = 0x10c

.field static final blacklist TRANSACTION_isNrDualConnectivityEnabled:I = 0x11f

.field static final blacklist TRANSACTION_isProvisioningRequiredForCapability:I = 0x14f

.field static final blacklist TRANSACTION_isRadioInterfaceCapabilitySupported:I = 0x120

.field static final greylist-max-o TRANSACTION_isRadioOn:I = 0x3

.field static final greylist-max-o TRANSACTION_isRadioOnForSubscriber:I = 0x5

.field static final blacklist TRANSACTION_isRadioOnForSubscriberWithFeature:I = 0x6

.field static final blacklist TRANSACTION_isRadioOnWithFeature:I = 0x4

.field static final blacklist TRANSACTION_isRcsProvisioningRequiredForCapability:I = 0x150

.field static final blacklist TRANSACTION_isRcsVolteSingleRegistrationCapable:I = 0x128

.field static final blacklist TRANSACTION_isRemovableEsimDefaultEuicc:I = 0x154

.field static final blacklist TRANSACTION_isRttSupported:I = 0x8a

.field static final blacklist TRANSACTION_isTetheringApnRequiredForSubscriber:I = 0x57

.field static final greylist-max-o TRANSACTION_isTtyModeSupported:I = 0x89

.field static final blacklist TRANSACTION_isTtyOverVolteEnabled:I = 0xe7

.field static final greylist-max-o TRANSACTION_isUserDataEnabled:I = 0x6b

.field static final blacklist TRANSACTION_isUsingNewDataStack:I = 0x14c

.field static final greylist-max-o TRANSACTION_isVideoCallingEnabled:I = 0x86

.field static final greylist-max-o TRANSACTION_isVideoTelephonyAvailable:I = 0x8e

.field static final blacklist TRANSACTION_isVoNrEnabled:I = 0x11d

.field static final blacklist TRANSACTION_isVoWiFiRoamingSettingEnabled:I = 0xdf

.field static final blacklist TRANSACTION_isVoWiFiSettingEnabled:I = 0xdb

.field static final greylist-max-o TRANSACTION_isVoicemailVibrationEnabled:I = 0x9f

.field static final blacklist TRANSACTION_isVtSettingEnabled:I = 0xd9

.field static final greylist-max-o TRANSACTION_isWifiCallingAvailable:I = 0x8d

.field static final greylist-max-o TRANSACTION_isWorldPhone:I = 0x88

.field static final greylist-max-o TRANSACTION_needMobileRadioShutdown:I = 0x81

.field static final greylist-max-o TRANSACTION_needsOtaServiceProvisioning:I = 0x2d

.field static final blacklist TRANSACTION_notifyOtaEmergencyNumberDbInstalled:I = 0xfb

.field static final blacklist TRANSACTION_notifyRcsAutoConfigurationReceived:I = 0x113

.field static final greylist-max-o TRANSACTION_nvReadItem:I = 0x51

.field static final greylist-max-o TRANSACTION_nvWriteCdmaPrl:I = 0x53

.field static final greylist-max-o TRANSACTION_nvWriteItem:I = 0x52

.field static final blacklist TRANSACTION_prepareForUnattendedReboot:I = 0x147

.field static final blacklist TRANSACTION_rebootModem:I = 0x55

.field static final greylist-max-o TRANSACTION_refreshUiccProfile:I = 0xc9

.field static final blacklist TRANSACTION_registerFeatureProvisioningChangedCallback:I = 0xed

.field static final blacklist TRANSACTION_registerImsProvisioningChangedCallback:I = 0xeb

.field static final blacklist TRANSACTION_registerImsRegistrationCallback:I = 0xce

.field static final blacklist TRANSACTION_registerImsStateCallback:I = 0x149

.field static final blacklist TRANSACTION_registerMmTelCapabilityCallback:I = 0xd2

.field static final blacklist TRANSACTION_registerMmTelFeatureCallback:I = 0x5b

.field static final blacklist TRANSACTION_registerRcsProvisioningCallback:I = 0x129

.field static final blacklist TRANSACTION_removeContactFromEab:I = 0x138

.field static final blacklist TRANSACTION_removeUceRegistrationOverrideShell:I = 0x13e

.field static final blacklist TRANSACTION_removeUceRequestDisallowedStatus:I = 0x142

.field static final blacklist TRANSACTION_requestCellInfoUpdate:I = 0x46

.field static final blacklist TRANSACTION_requestCellInfoUpdateWithWorkSource:I = 0x47

.field static final greylist-max-o TRANSACTION_requestModemActivityInfo:I = 0x9b

.field static final greylist-max-o TRANSACTION_requestNetworkScan:I = 0x65

.field static final blacklist TRANSACTION_requestNumberVerification:I = 0x73

.field static final blacklist TRANSACTION_requestUserActivityNotification:I = 0x117

.field static final blacklist TRANSACTION_resetIms:I = 0x5a

.field static final blacklist TRANSACTION_resetModemConfig:I = 0x54

.field static final blacklist TRANSACTION_resetOtaEmergencyNumberDbFilePath:I = 0xfd

.field static final blacklist TRANSACTION_sendDeviceToDeviceMessage:I = 0x131

.field static final greylist-max-o TRANSACTION_sendDialerSpecialCode:I = 0x3c

.field static final greylist-max-o TRANSACTION_sendEnvelopeWithStatus:I = 0x50

.field static final blacklist TRANSACTION_sendThermalMitigationRequest:I = 0x121

.field static final greylist-max-o TRANSACTION_sendVisualVoicemailSmsForSubscriber:I = 0x3b

.field static final blacklist TRANSACTION_setActiveDeviceToDeviceTransport:I = 0x132

.field static final blacklist TRANSACTION_setAdvancedCallingSettingEnabled:I = 0xd8

.field static final greylist-max-o TRANSACTION_setAllowedCarriers:I = 0xa7

.field static final blacklist TRANSACTION_setAllowedNetworkTypesForReason:I = 0x69

.field static final blacklist TRANSACTION_setBoundGbaServiceOverride:I = 0x123

.field static final blacklist TRANSACTION_setBoundImsServiceOverride:I = 0x5f

.field static final blacklist TRANSACTION_setCallComposerStatus:I = 0x7

.field static final blacklist TRANSACTION_setCallForwarding:I = 0xb2

.field static final blacklist TRANSACTION_setCallWaitingStatus:I = 0xb4

.field static final blacklist TRANSACTION_setCapabilitiesRequestTimeout:I = 0x143

.field static final blacklist TRANSACTION_setCarrierSingleRegistrationEnabledOverride:I = 0x130

.field static final greylist-max-o TRANSACTION_setCarrierTestOverride:I = 0xc7

.field static final blacklist TRANSACTION_setCdmaRoamingMode:I = 0xc4

.field static final blacklist TRANSACTION_setCdmaSubscriptionMode:I = 0xc6

.field static final greylist-max-o TRANSACTION_setCellInfoListRate:I = 0x48

.field static final blacklist TRANSACTION_setCepEnabled:I = 0x112

.field static final blacklist TRANSACTION_setCrossSimCallingEnabled:I = 0xde

.field static final greylist-max-o TRANSACTION_setDataActivationState:I = 0x30

.field static final blacklist TRANSACTION_setDataEnabledForReason:I = 0x6d

.field static final blacklist TRANSACTION_setDataRoamingEnabled:I = 0xc2

.field static final blacklist TRANSACTION_setDeviceSingleRegistrationEnabledOverride:I = 0x12e

.field static final blacklist TRANSACTION_setDeviceToDeviceForceEnabled:I = 0x133

.field static final blacklist TRANSACTION_setDeviceUceEnabled:I = 0x13c

.field static final blacklist TRANSACTION_setForbiddenPlmns:I = 0xb9

.field static final blacklist TRANSACTION_setGbaReleaseTimeOverride:I = 0x125

.field static final blacklist TRANSACTION_setIccLockEnabled:I = 0x115

.field static final blacklist TRANSACTION_setImsFeatureValidationOverride:I = 0x135

.field static final blacklist TRANSACTION_setImsProvisioningInt:I = 0xf5

.field static final blacklist TRANSACTION_setImsProvisioningStatusForCapability:I = 0xef

.field static final blacklist TRANSACTION_setImsProvisioningString:I = 0xf6

.field static final greylist-max-o TRANSACTION_setImsRegistrationState:I = 0x70

.field static final greylist-max-o TRANSACTION_setLine1NumberForDisplayForSubscriber:I = 0x79

.field static final blacklist TRANSACTION_setMobileDataPolicyEnabled:I = 0x110

.field static final blacklist TRANSACTION_setModemService:I = 0x14d

.field static final blacklist TRANSACTION_setMultiSimCarrierRestriction:I = 0xff

.field static final greylist-max-o TRANSACTION_setNetworkSelectionModeAutomatic:I = 0x63

.field static final greylist-max-o TRANSACTION_setNetworkSelectionModeManual:I = 0x67

.field static final blacklist TRANSACTION_setNrDualConnectivityState:I = 0x11e

.field static final greylist-max-o TRANSACTION_setOperatorBrandOverride:I = 0x7e

.field static final greylist-max-o TRANSACTION_setRadio:I = 0x12

.field static final greylist-max-o TRANSACTION_setRadioForSubscriber:I = 0x13

.field static final greylist-max-o TRANSACTION_setRadioPower:I = 0x14

.field static final blacklist TRANSACTION_setRcsClientConfiguration:I = 0x127

.field static final blacklist TRANSACTION_setRcsProvisioningStatusForCapability:I = 0xf2

.field static final blacklist TRANSACTION_setRcsSingleRegistrationTestModeEnabled:I = 0x12c

.field static final blacklist TRANSACTION_setRemovableEsimAsDefaultEuicc:I = 0x153

.field static final greylist-max-o TRANSACTION_setRoamingOverride:I = 0x7f

.field static final blacklist TRANSACTION_setRttCapabilitySetting:I = 0xe6

.field static final blacklist TRANSACTION_setSignalStrengthUpdateRequest:I = 0x144

.field static final greylist-max-o TRANSACTION_setSimPowerStateForSlot:I = 0xb6

.field static final blacklist TRANSACTION_setSimPowerStateForSlotWithCallback:I = 0xb7

.field static final blacklist TRANSACTION_setSimSlotMapping:I = 0xc0

.field static final blacklist TRANSACTION_setSystemSelectionChannels:I = 0x10a

.field static final blacklist TRANSACTION_setVoNrEnabled:I = 0x11c

.field static final blacklist TRANSACTION_setVoWiFiModeSetting:I = 0xe3

.field static final blacklist TRANSACTION_setVoWiFiNonPersistent:I = 0xe1

.field static final blacklist TRANSACTION_setVoWiFiRoamingModeSetting:I = 0xe5

.field static final blacklist TRANSACTION_setVoWiFiRoamingSettingEnabled:I = 0xe0

.field static final blacklist TRANSACTION_setVoWiFiSettingEnabled:I = 0xdc

.field static final greylist-max-o TRANSACTION_setVoiceActivationState:I = 0x2f

.field static final greylist-max-o TRANSACTION_setVoiceMailNumber:I = 0x2e

.field static final blacklist TRANSACTION_setVoiceServiceStateOverride:I = 0x151

.field static final greylist-max-o TRANSACTION_setVoicemailRingtoneUri:I = 0x9e

.field static final greylist-max-o TRANSACTION_setVoicemailVibrationEnabled:I = 0xa0

.field static final blacklist TRANSACTION_setVtSettingEnabled:I = 0xda

.field static final greylist-max-o TRANSACTION_shutdownMobileRadios:I = 0x82

.field static final blacklist TRANSACTION_startEmergencyCallbackMode:I = 0xf7

.field static final greylist-max-o TRANSACTION_stopNetworkScan:I = 0x66

.field static final greylist-max-o TRANSACTION_supplyPinForSubscriber:I = 0x9

.field static final greylist-max-o TRANSACTION_supplyPinReportResultForSubscriber:I = 0xb

.field static final greylist-max-o TRANSACTION_supplyPukForSubscriber:I = 0xa

.field static final greylist-max-o TRANSACTION_supplyPukReportResultForSubscriber:I = 0xc

.field static final blacklist TRANSACTION_switchMultiSimConfig:I = 0x101

.field static final greylist-max-o TRANSACTION_switchSlots:I = 0xbf

.field static final greylist-max-o TRANSACTION_toggleRadioOnOff:I = 0x10

.field static final greylist-max-o TRANSACTION_toggleRadioOnOffForSubscriber:I = 0x11

.field static final blacklist TRANSACTION_triggerRcsReconfiguration:I = 0x12b

.field static final blacklist TRANSACTION_unregisterFeatureProvisioningChangedCallback:I = 0xee

.field static final blacklist TRANSACTION_unregisterImsFeatureCallback:I = 0x5c

.field static final blacklist TRANSACTION_unregisterImsProvisioningChangedCallback:I = 0xec

.field static final blacklist TRANSACTION_unregisterImsRegistrationCallback:I = 0xcf

.field static final blacklist TRANSACTION_unregisterImsStateCallback:I = 0x14a

.field static final blacklist TRANSACTION_unregisterMmTelCapabilityCallback:I = 0xd3

.field static final blacklist TRANSACTION_unregisterRcsProvisioningCallback:I = 0x12a

.field static final blacklist TRANSACTION_updateEmergencyNumberListTestMode:I = 0xf8

.field static final blacklist TRANSACTION_updateOtaEmergencyNumberDbFilePath:I = 0xfc

.field static final greylist-max-o TRANSACTION_updateServiceLocation:I = 0x15

.field static final blacklist TRANSACTION_updateServiceLocationWithPackageName:I = 0x16

.field static final blacklist TRANSACTION_uploadCallComposerPicture:I = 0x84

.field static final blacklist TRANSACTION_userActivity:I = 0x118


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 2744
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2745
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 2746
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 2753
    if-nez p0, :cond_0

    .line 2754
    const/4 v0, 0x0

    return-object v0

    .line 2756
    :cond_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2757
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    .line 2758
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ITelephony;

    return-object v1

    .line 2760
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 2769
    packed-switch p0, :pswitch_data_0

    .line 4133
    const/4 v0, 0x0

    return-object v0

    .line 4129
    :pswitch_0
    const-string/jumbo v0, "isRemovableEsimDefaultEuicc"

    return-object v0

    .line 4125
    :pswitch_1
    const-string/jumbo v0, "setRemovableEsimAsDefaultEuicc"

    return-object v0

    .line 4121
    :pswitch_2
    const-string v0, "getCarrierServicePackageNameForLogicalSlot"

    return-object v0

    .line 4117
    :pswitch_3
    const-string/jumbo v0, "setVoiceServiceStateOverride"

    return-object v0

    .line 4113
    :pswitch_4
    const-string/jumbo v0, "isRcsProvisioningRequiredForCapability"

    return-object v0

    .line 4109
    :pswitch_5
    const-string/jumbo v0, "isProvisioningRequiredForCapability"

    return-object v0

    .line 4105
    :pswitch_6
    const-string/jumbo v0, "getModemService"

    return-object v0

    .line 4101
    :pswitch_7
    const-string/jumbo v0, "setModemService"

    return-object v0

    .line 4097
    :pswitch_8
    const-string/jumbo v0, "isUsingNewDataStack"

    return-object v0

    .line 4093
    :pswitch_9
    const-string/jumbo v0, "getLastKnownCellIdentity"

    return-object v0

    .line 4089
    :pswitch_a
    const-string/jumbo v0, "unregisterImsStateCallback"

    return-object v0

    .line 4085
    :pswitch_b
    const-string/jumbo v0, "registerImsStateCallback"

    return-object v0

    .line 4081
    :pswitch_c
    const-string/jumbo v0, "getSlicingConfig"

    return-object v0

    .line 4077
    :pswitch_d
    const-string/jumbo v0, "prepareForUnattendedReboot"

    return-object v0

    .line 4073
    :pswitch_e
    const-string/jumbo v0, "getPhoneCapability"

    return-object v0

    .line 4069
    :pswitch_f
    const-string v0, "clearSignalStrengthUpdateRequest"

    return-object v0

    .line 4065
    :pswitch_10
    const-string/jumbo v0, "setSignalStrengthUpdateRequest"

    return-object v0

    .line 4061
    :pswitch_11
    const-string/jumbo v0, "setCapabilitiesRequestTimeout"

    return-object v0

    .line 4057
    :pswitch_12
    const-string/jumbo v0, "removeUceRequestDisallowedStatus"

    return-object v0

    .line 4053
    :pswitch_13
    const-string/jumbo v0, "getLastUcePidfXmlShell"

    return-object v0

    .line 4049
    :pswitch_14
    const-string/jumbo v0, "getLatestRcsContactUceCapabilityShell"

    return-object v0

    .line 4045
    :pswitch_15
    const-string v0, "clearUceRegistrationOverrideShell"

    return-object v0

    .line 4041
    :pswitch_16
    const-string/jumbo v0, "removeUceRegistrationOverrideShell"

    return-object v0

    .line 4037
    :pswitch_17
    const-string v0, "addUceRegistrationOverrideShell"

    return-object v0

    .line 4033
    :pswitch_18
    const-string/jumbo v0, "setDeviceUceEnabled"

    return-object v0

    .line 4029
    :pswitch_19
    const-string v0, "getDeviceUceEnabled"

    return-object v0

    .line 4025
    :pswitch_1a
    const-string v0, "getCapabilityFromEab"

    return-object v0

    .line 4021
    :pswitch_1b
    const-string v0, "getContactFromEab"

    return-object v0

    .line 4017
    :pswitch_1c
    const-string/jumbo v0, "removeContactFromEab"

    return-object v0

    .line 4013
    :pswitch_1d
    const-string/jumbo v0, "getMobileProvisioningUrl"

    return-object v0

    .line 4009
    :pswitch_1e
    const-string/jumbo v0, "getImsFeatureValidationOverride"

    return-object v0

    .line 4005
    :pswitch_1f
    const-string/jumbo v0, "setImsFeatureValidationOverride"

    return-object v0

    .line 4001
    :pswitch_20
    const-string v0, "getCarrierSingleRegistrationEnabled"

    return-object v0

    .line 3997
    :pswitch_21
    const-string/jumbo v0, "setDeviceToDeviceForceEnabled"

    return-object v0

    .line 3993
    :pswitch_22
    const-string/jumbo v0, "setActiveDeviceToDeviceTransport"

    return-object v0

    .line 3989
    :pswitch_23
    const-string/jumbo v0, "sendDeviceToDeviceMessage"

    return-object v0

    .line 3985
    :pswitch_24
    const-string/jumbo v0, "setCarrierSingleRegistrationEnabledOverride"

    return-object v0

    .line 3981
    :pswitch_25
    const-string v0, "getDeviceSingleRegistrationEnabled"

    return-object v0

    .line 3977
    :pswitch_26
    const-string/jumbo v0, "setDeviceSingleRegistrationEnabledOverride"

    return-object v0

    .line 3973
    :pswitch_27
    const-string/jumbo v0, "getRcsSingleRegistrationTestModeEnabled"

    return-object v0

    .line 3969
    :pswitch_28
    const-string/jumbo v0, "setRcsSingleRegistrationTestModeEnabled"

    return-object v0

    .line 3965
    :pswitch_29
    const-string/jumbo v0, "triggerRcsReconfiguration"

    return-object v0

    .line 3961
    :pswitch_2a
    const-string/jumbo v0, "unregisterRcsProvisioningCallback"

    return-object v0

    .line 3957
    :pswitch_2b
    const-string/jumbo v0, "registerRcsProvisioningCallback"

    return-object v0

    .line 3953
    :pswitch_2c
    const-string/jumbo v0, "isRcsVolteSingleRegistrationCapable"

    return-object v0

    .line 3949
    :pswitch_2d
    const-string/jumbo v0, "setRcsClientConfiguration"

    return-object v0

    .line 3945
    :pswitch_2e
    const-string v0, "getGbaReleaseTime"

    return-object v0

    .line 3941
    :pswitch_2f
    const-string/jumbo v0, "setGbaReleaseTimeOverride"

    return-object v0

    .line 3937
    :pswitch_30
    const-string v0, "getBoundGbaService"

    return-object v0

    .line 3933
    :pswitch_31
    const-string/jumbo v0, "setBoundGbaServiceOverride"

    return-object v0

    .line 3929
    :pswitch_32
    const-string v0, "bootstrapAuthenticationRequest"

    return-object v0

    .line 3925
    :pswitch_33
    const-string/jumbo v0, "sendThermalMitigationRequest"

    return-object v0

    .line 3921
    :pswitch_34
    const-string/jumbo v0, "isRadioInterfaceCapabilitySupported"

    return-object v0

    .line 3917
    :pswitch_35
    const-string/jumbo v0, "isNrDualConnectivityEnabled"

    return-object v0

    .line 3913
    :pswitch_36
    const-string/jumbo v0, "setNrDualConnectivityState"

    return-object v0

    .line 3909
    :pswitch_37
    const-string/jumbo v0, "isVoNrEnabled"

    return-object v0

    .line 3905
    :pswitch_38
    const-string/jumbo v0, "setVoNrEnabled"

    return-object v0

    .line 3901
    :pswitch_39
    const-string v0, "getEquivalentHomePlmns"

    return-object v0

    .line 3897
    :pswitch_3a
    const-string v0, "canConnectTo5GInDsdsMode"

    return-object v0

    .line 3893
    :pswitch_3b
    const-string/jumbo v0, "getManualNetworkSelectionPlmn"

    return-object v0

    .line 3889
    :pswitch_3c
    const-string/jumbo v0, "userActivity"

    return-object v0

    .line 3885
    :pswitch_3d
    const-string/jumbo v0, "requestUserActivityNotification"

    return-object v0

    .line 3881
    :pswitch_3e
    const-string v0, "changeIccLockPassword"

    return-object v0

    .line 3877
    :pswitch_3f
    const-string/jumbo v0, "setIccLockEnabled"

    return-object v0

    .line 3873
    :pswitch_40
    const-string/jumbo v0, "isIccLockEnabled"

    return-object v0

    .line 3869
    :pswitch_41
    const-string/jumbo v0, "notifyRcsAutoConfigurationReceived"

    return-object v0

    .line 3865
    :pswitch_42
    const-string/jumbo v0, "setCepEnabled"

    return-object v0

    .line 3861
    :pswitch_43
    const-string/jumbo v0, "isMobileDataPolicyEnabled"

    return-object v0

    .line 3857
    :pswitch_44
    const-string/jumbo v0, "setMobileDataPolicyEnabled"

    return-object v0

    .line 3853
    :pswitch_45
    const-string/jumbo v0, "getMmsUAProfUrl"

    return-object v0

    .line 3849
    :pswitch_46
    const-string/jumbo v0, "getMmsUserAgent"

    return-object v0

    .line 3845
    :pswitch_47
    const-string v0, "enqueueSmsPickResult"

    return-object v0

    .line 3841
    :pswitch_48
    const-string/jumbo v0, "isMvnoMatched"

    return-object v0

    .line 3837
    :pswitch_49
    const-string/jumbo v0, "getSystemSelectionChannels"

    return-object v0

    .line 3833
    :pswitch_4a
    const-string/jumbo v0, "setSystemSelectionChannels"

    return-object v0

    .line 3829
    :pswitch_4b
    const-string/jumbo v0, "isApnMetered"

    return-object v0

    .line 3825
    :pswitch_4c
    const-string/jumbo v0, "isDataEnabledForApn"

    return-object v0

    .line 3821
    :pswitch_4d
    const-string/jumbo v0, "isModemEnabledForSlot"

    return-object v0

    .line 3817
    :pswitch_4e
    const-string/jumbo v0, "isApplicationOnUicc"

    return-object v0

    .line 3813
    :pswitch_4f
    const-string v0, "getCurrentPackageName"

    return-object v0

    .line 3809
    :pswitch_50
    const-string/jumbo v0, "getRadioHalVersion"

    return-object v0

    .line 3805
    :pswitch_51
    const-string/jumbo v0, "getSlotsMapping"

    return-object v0

    .line 3801
    :pswitch_52
    const-string v0, "doesSwitchMultiSimConfigTriggerReboot"

    return-object v0

    .line 3797
    :pswitch_53
    const-string/jumbo v0, "switchMultiSimConfig"

    return-object v0

    .line 3793
    :pswitch_54
    const-string/jumbo v0, "isMultiSimSupported"

    return-object v0

    .line 3789
    :pswitch_55
    const-string/jumbo v0, "setMultiSimCarrierRestriction"

    return-object v0

    .line 3785
    :pswitch_56
    const-string v0, "enableModemForSlot"

    return-object v0

    .line 3781
    :pswitch_57
    const-string/jumbo v0, "resetOtaEmergencyNumberDbFilePath"

    return-object v0

    .line 3777
    :pswitch_58
    const-string/jumbo v0, "updateOtaEmergencyNumberDbFilePath"

    return-object v0

    .line 3773
    :pswitch_59
    const-string/jumbo v0, "notifyOtaEmergencyNumberDbInstalled"

    return-object v0

    .line 3769
    :pswitch_5a
    const-string v0, "getEmergencyNumberDbVersion"

    return-object v0

    .line 3765
    :pswitch_5b
    const-string v0, "getEmergencyNumberListTestMode"

    return-object v0

    .line 3761
    :pswitch_5c
    const-string/jumbo v0, "updateEmergencyNumberListTestMode"

    return-object v0

    .line 3757
    :pswitch_5d
    const-string/jumbo v0, "startEmergencyCallbackMode"

    return-object v0

    .line 3753
    :pswitch_5e
    const-string/jumbo v0, "setImsProvisioningString"

    return-object v0

    .line 3749
    :pswitch_5f
    const-string/jumbo v0, "setImsProvisioningInt"

    return-object v0

    .line 3745
    :pswitch_60
    const-string/jumbo v0, "getImsProvisioningString"

    return-object v0

    .line 3741
    :pswitch_61
    const-string/jumbo v0, "getImsProvisioningInt"

    return-object v0

    .line 3737
    :pswitch_62
    const-string/jumbo v0, "setRcsProvisioningStatusForCapability"

    return-object v0

    .line 3733
    :pswitch_63
    const-string/jumbo v0, "getRcsProvisioningStatusForCapability"

    return-object v0

    .line 3729
    :pswitch_64
    const-string/jumbo v0, "getImsProvisioningStatusForCapability"

    return-object v0

    .line 3725
    :pswitch_65
    const-string/jumbo v0, "setImsProvisioningStatusForCapability"

    return-object v0

    .line 3721
    :pswitch_66
    const-string/jumbo v0, "unregisterFeatureProvisioningChangedCallback"

    return-object v0

    .line 3717
    :pswitch_67
    const-string/jumbo v0, "registerFeatureProvisioningChangedCallback"

    return-object v0

    .line 3713
    :pswitch_68
    const-string/jumbo v0, "unregisterImsProvisioningChangedCallback"

    return-object v0

    .line 3709
    :pswitch_69
    const-string/jumbo v0, "registerImsProvisioningChangedCallback"

    return-object v0

    .line 3705
    :pswitch_6a
    const-string v0, "getCertsFromCarrierPrivilegeAccessRules"

    return-object v0

    .line 3701
    :pswitch_6b
    const-string/jumbo v0, "isEmergencyNumber"

    return-object v0

    .line 3697
    :pswitch_6c
    const-string v0, "getEmergencyNumberList"

    return-object v0

    .line 3693
    :pswitch_6d
    const-string/jumbo v0, "isTtyOverVolteEnabled"

    return-object v0

    .line 3689
    :pswitch_6e
    const-string/jumbo v0, "setRttCapabilitySetting"

    return-object v0

    .line 3685
    :pswitch_6f
    const-string/jumbo v0, "setVoWiFiRoamingModeSetting"

    return-object v0

    .line 3681
    :pswitch_70
    const-string/jumbo v0, "getVoWiFiRoamingModeSetting"

    return-object v0

    .line 3677
    :pswitch_71
    const-string/jumbo v0, "setVoWiFiModeSetting"

    return-object v0

    .line 3673
    :pswitch_72
    const-string/jumbo v0, "getVoWiFiModeSetting"

    return-object v0

    .line 3669
    :pswitch_73
    const-string/jumbo v0, "setVoWiFiNonPersistent"

    return-object v0

    .line 3665
    :pswitch_74
    const-string/jumbo v0, "setVoWiFiRoamingSettingEnabled"

    return-object v0

    .line 3661
    :pswitch_75
    const-string/jumbo v0, "isVoWiFiRoamingSettingEnabled"

    return-object v0

    .line 3657
    :pswitch_76
    const-string/jumbo v0, "setCrossSimCallingEnabled"

    return-object v0

    .line 3653
    :pswitch_77
    const-string/jumbo v0, "isCrossSimCallingEnabledByUser"

    return-object v0

    .line 3649
    :pswitch_78
    const-string/jumbo v0, "setVoWiFiSettingEnabled"

    return-object v0

    .line 3645
    :pswitch_79
    const-string/jumbo v0, "isVoWiFiSettingEnabled"

    return-object v0

    .line 3641
    :pswitch_7a
    const-string/jumbo v0, "setVtSettingEnabled"

    return-object v0

    .line 3637
    :pswitch_7b
    const-string/jumbo v0, "isVtSettingEnabled"

    return-object v0

    .line 3633
    :pswitch_7c
    const-string/jumbo v0, "setAdvancedCallingSettingEnabled"

    return-object v0

    .line 3629
    :pswitch_7d
    const-string/jumbo v0, "isAdvancedCallingSettingEnabled"

    return-object v0

    .line 3625
    :pswitch_7e
    const-string/jumbo v0, "isMmTelCapabilitySupported"

    return-object v0

    .line 3621
    :pswitch_7f
    const-string/jumbo v0, "isAvailable"

    return-object v0

    .line 3617
    :pswitch_80
    const-string/jumbo v0, "isCapable"

    return-object v0

    .line 3613
    :pswitch_81
    const-string/jumbo v0, "unregisterMmTelCapabilityCallback"

    return-object v0

    .line 3609
    :pswitch_82
    const-string/jumbo v0, "registerMmTelCapabilityCallback"

    return-object v0

    .line 3605
    :pswitch_83
    const-string/jumbo v0, "getImsMmTelRegistrationTransportType"

    return-object v0

    .line 3601
    :pswitch_84
    const-string/jumbo v0, "getImsMmTelRegistrationState"

    return-object v0

    .line 3597
    :pswitch_85
    const-string/jumbo v0, "unregisterImsRegistrationCallback"

    return-object v0

    .line 3593
    :pswitch_86
    const-string/jumbo v0, "registerImsRegistrationCallback"

    return-object v0

    .line 3589
    :pswitch_87
    const-string/jumbo v0, "getRadioPowerState"

    return-object v0

    .line 3585
    :pswitch_88
    const-string/jumbo v0, "isInEmergencySmsMode"

    return-object v0

    .line 3581
    :pswitch_89
    const-string/jumbo v0, "getNetworkSelectionMode"

    return-object v0

    .line 3577
    :pswitch_8a
    const-string/jumbo v0, "getNumberOfModemsWithSimultaneousDataConnections"

    return-object v0

    .line 3573
    :pswitch_8b
    const-string/jumbo v0, "refreshUiccProfile"

    return-object v0

    .line 3569
    :pswitch_8c
    const-string v0, "getCarrierIdListVersion"

    return-object v0

    .line 3565
    :pswitch_8d
    const-string/jumbo v0, "setCarrierTestOverride"

    return-object v0

    .line 3561
    :pswitch_8e
    const-string/jumbo v0, "setCdmaSubscriptionMode"

    return-object v0

    .line 3557
    :pswitch_8f
    const-string v0, "getCdmaSubscriptionMode"

    return-object v0

    .line 3553
    :pswitch_90
    const-string/jumbo v0, "setCdmaRoamingMode"

    return-object v0

    .line 3549
    :pswitch_91
    const-string v0, "getCdmaRoamingMode"

    return-object v0

    .line 3545
    :pswitch_92
    const-string/jumbo v0, "setDataRoamingEnabled"

    return-object v0

    .line 3541
    :pswitch_93
    const-string/jumbo v0, "isDataRoamingEnabled"

    return-object v0

    .line 3537
    :pswitch_94
    const-string/jumbo v0, "setSimSlotMapping"

    return-object v0

    .line 3533
    :pswitch_95
    const-string/jumbo v0, "switchSlots"

    return-object v0

    .line 3529
    :pswitch_96
    const-string/jumbo v0, "getUiccSlotsInfo"

    return-object v0

    .line 3525
    :pswitch_97
    const-string/jumbo v0, "getUiccCardsInfo"

    return-object v0

    .line 3521
    :pswitch_98
    const-string v0, "getCardIdForDefaultEuicc"

    return-object v0

    .line 3517
    :pswitch_99
    const-string/jumbo v0, "getSignalStrength"

    return-object v0

    .line 3513
    :pswitch_9a
    const-string v0, "getEmergencyCallbackMode"

    return-object v0

    .line 3509
    :pswitch_9b
    const-string/jumbo v0, "setForbiddenPlmns"

    return-object v0

    .line 3505
    :pswitch_9c
    const-string v0, "getForbiddenPlmns"

    return-object v0

    .line 3501
    :pswitch_9d
    const-string/jumbo v0, "setSimPowerStateForSlotWithCallback"

    return-object v0

    .line 3497
    :pswitch_9e
    const-string/jumbo v0, "setSimPowerStateForSlot"

    return-object v0

    .line 3493
    :pswitch_9f
    const-string v0, "getClientRequestStats"

    return-object v0

    .line 3489
    :pswitch_a0
    const-string/jumbo v0, "setCallWaitingStatus"

    return-object v0

    .line 3485
    :pswitch_a1
    const-string v0, "getCallWaitingStatus"

    return-object v0

    .line 3481
    :pswitch_a2
    const-string/jumbo v0, "setCallForwarding"

    return-object v0

    .line 3477
    :pswitch_a3
    const-string v0, "getCallForwarding"

    return-object v0

    .line 3473
    :pswitch_a4
    const-string v0, "carrierActionResetAll"

    return-object v0

    .line 3469
    :pswitch_a5
    const-string v0, "carrierActionReportDefaultNetworkStatus"

    return-object v0

    .line 3465
    :pswitch_a6
    const-string v0, "carrierActionSetRadioEnabled"

    return-object v0

    .line 3461
    :pswitch_a7
    const-string v0, "getCarrierIdFromMccMnc"

    return-object v0

    .line 3457
    :pswitch_a8
    const-string/jumbo v0, "getSubscriptionSpecificCarrierName"

    return-object v0

    .line 3453
    :pswitch_a9
    const-string/jumbo v0, "getSubscriptionSpecificCarrierId"

    return-object v0

    .line 3449
    :pswitch_aa
    const-string/jumbo v0, "getSubscriptionCarrierName"

    return-object v0

    .line 3445
    :pswitch_ab
    const-string/jumbo v0, "getSubscriptionCarrierId"

    return-object v0

    .line 3441
    :pswitch_ac
    const-string v0, "getAllowedCarriers"

    return-object v0

    .line 3437
    :pswitch_ad
    const-string/jumbo v0, "setAllowedCarriers"

    return-object v0

    .line 3433
    :pswitch_ae
    const-string/jumbo v0, "getTelephonyHistograms"

    return-object v0

    .line 3429
    :pswitch_af
    const-string v0, "getCdmaPrlVersion"

    return-object v0

    .line 3425
    :pswitch_b0
    const-string v0, "getEsn"

    return-object v0

    .line 3421
    :pswitch_b1
    const-string v0, "getAidForAppType"

    return-object v0

    .line 3417
    :pswitch_b2
    const-string/jumbo v0, "getPackagesWithCarrierPrivilegesForAllPhones"

    return-object v0

    .line 3413
    :pswitch_b3
    const-string/jumbo v0, "getPackagesWithCarrierPrivileges"

    return-object v0

    .line 3409
    :pswitch_b4
    const-string/jumbo v0, "setVoicemailVibrationEnabled"

    return-object v0

    .line 3405
    :pswitch_b5
    const-string/jumbo v0, "isVoicemailVibrationEnabled"

    return-object v0

    .line 3401
    :pswitch_b6
    const-string/jumbo v0, "setVoicemailRingtoneUri"

    return-object v0

    .line 3397
    :pswitch_b7
    const-string/jumbo v0, "getVoicemailRingtoneUri"

    return-object v0

    .line 3393
    :pswitch_b8
    const-string/jumbo v0, "getServiceStateForSubscriber"

    return-object v0

    .line 3389
    :pswitch_b9
    const-string/jumbo v0, "requestModemActivityInfo"

    return-object v0

    .line 3385
    :pswitch_ba
    const-string/jumbo v0, "getSimLocaleForSubscriber"

    return-object v0

    .line 3381
    :pswitch_bb
    const-string v0, "factoryReset"

    return-object v0

    .line 3377
    :pswitch_bc
    const-string/jumbo v0, "getPhoneAccountHandleForSubscriptionId"

    return-object v0

    .line 3373
    :pswitch_bd
    const-string/jumbo v0, "getSubIdForPhoneAccountHandle"

    return-object v0

    .line 3369
    :pswitch_be
    const-string v0, "getDeviceSoftwareVersionForSlot"

    return-object v0

    .line 3365
    :pswitch_bf
    const-string/jumbo v0, "getManufacturerCodeForSlot"

    return-object v0

    .line 3361
    :pswitch_c0
    const-string/jumbo v0, "getMeidForSlot"

    return-object v0

    .line 3357
    :pswitch_c1
    const-string/jumbo v0, "getTypeAllocationCodeForSlot"

    return-object v0

    .line 3353
    :pswitch_c2
    const-string/jumbo v0, "getImeiForSlot"

    return-object v0

    .line 3349
    :pswitch_c3
    const-string v0, "getDeviceIdWithFeature"

    return-object v0

    .line 3345
    :pswitch_c4
    const-string v0, "getDeviceId"

    return-object v0

    .line 3341
    :pswitch_c5
    const-string/jumbo v0, "getImsRegTechnologyForMmTel"

    return-object v0

    .line 3337
    :pswitch_c6
    const-string/jumbo v0, "isVideoTelephonyAvailable"

    return-object v0

    .line 3333
    :pswitch_c7
    const-string/jumbo v0, "isWifiCallingAvailable"

    return-object v0

    .line 3329
    :pswitch_c8
    const-string/jumbo v0, "isImsRegistered"

    return-object v0

    .line 3325
    :pswitch_c9
    const-string/jumbo v0, "isHearingAidCompatibilitySupported"

    return-object v0

    .line 3321
    :pswitch_ca
    const-string/jumbo v0, "isRttSupported"

    return-object v0

    .line 3317
    :pswitch_cb
    const-string/jumbo v0, "isTtyModeSupported"

    return-object v0

    .line 3313
    :pswitch_cc
    const-string/jumbo v0, "isWorldPhone"

    return-object v0

    .line 3309
    :pswitch_cd
    const-string v0, "canChangeDtmfToneLength"

    return-object v0

    .line 3305
    :pswitch_ce
    const-string/jumbo v0, "isVideoCallingEnabled"

    return-object v0

    .line 3301
    :pswitch_cf
    const-string v0, "enableVideoCalling"

    return-object v0

    .line 3297
    :pswitch_d0
    const-string/jumbo v0, "uploadCallComposerPicture"

    return-object v0

    .line 3293
    :pswitch_d1
    const-string/jumbo v0, "getRadioAccessFamily"

    return-object v0

    .line 3289
    :pswitch_d2
    const-string/jumbo v0, "shutdownMobileRadios"

    return-object v0

    .line 3285
    :pswitch_d3
    const-string/jumbo v0, "needMobileRadioShutdown"

    return-object v0

    .line 3281
    :pswitch_d4
    const-string/jumbo v0, "invokeOemRilRequestRaw"

    return-object v0

    .line 3277
    :pswitch_d5
    const-string/jumbo v0, "setRoamingOverride"

    return-object v0

    .line 3273
    :pswitch_d6
    const-string/jumbo v0, "setOperatorBrandOverride"

    return-object v0

    .line 3269
    :pswitch_d7
    const-string/jumbo v0, "getMergedImsisFromGroup"

    return-object v0

    .line 3265
    :pswitch_d8
    const-string/jumbo v0, "getMergedSubscriberIds"

    return-object v0

    .line 3261
    :pswitch_d9
    const-string/jumbo v0, "getLine1AlphaTagForDisplay"

    return-object v0

    .line 3257
    :pswitch_da
    const-string/jumbo v0, "getLine1NumberForDisplay"

    return-object v0

    .line 3253
    :pswitch_db
    const-string/jumbo v0, "setLine1NumberForDisplayForSubscriber"

    return-object v0

    .line 3249
    :pswitch_dc
    const-string v0, "getCarrierPackageNamesForIntentAndPhone"

    return-object v0

    .line 3245
    :pswitch_dd
    const-string v0, "checkCarrierPrivilegesForPackageAnyPhone"

    return-object v0

    .line 3241
    :pswitch_de
    const-string v0, "checkCarrierPrivilegesForPackage"

    return-object v0

    .line 3237
    :pswitch_df
    const-string v0, "getCarrierPrivilegeStatusForUid"

    return-object v0

    .line 3233
    :pswitch_e0
    const-string v0, "getCarrierPrivilegeStatus"

    return-object v0

    .line 3229
    :pswitch_e1
    const-string/jumbo v0, "requestNumberVerification"

    return-object v0

    .line 3225
    :pswitch_e2
    const-string v0, "getCdmaMin"

    return-object v0

    .line 3221
    :pswitch_e3
    const-string v0, "getCdmaMdn"

    return-object v0

    .line 3217
    :pswitch_e4
    const-string/jumbo v0, "setImsRegistrationState"

    return-object v0

    .line 3213
    :pswitch_e5
    const-string/jumbo v0, "isManualNetworkSelectionAllowed"

    return-object v0

    .line 3209
    :pswitch_e6
    const-string/jumbo v0, "isDataEnabledForReason"

    return-object v0

    .line 3205
    :pswitch_e7
    const-string/jumbo v0, "setDataEnabledForReason"

    return-object v0

    .line 3201
    :pswitch_e8
    const-string/jumbo v0, "isDataEnabled"

    return-object v0

    .line 3197
    :pswitch_e9
    const-string/jumbo v0, "isUserDataEnabled"

    return-object v0

    .line 3193
    :pswitch_ea
    const-string v0, "getDataEnabled"

    return-object v0

    .line 3189
    :pswitch_eb
    const-string/jumbo v0, "setAllowedNetworkTypesForReason"

    return-object v0

    .line 3185
    :pswitch_ec
    const-string v0, "getAllowedNetworkTypesForReason"

    return-object v0

    .line 3181
    :pswitch_ed
    const-string/jumbo v0, "setNetworkSelectionModeManual"

    return-object v0

    .line 3177
    :pswitch_ee
    const-string/jumbo v0, "stopNetworkScan"

    return-object v0

    .line 3173
    :pswitch_ef
    const-string/jumbo v0, "requestNetworkScan"

    return-object v0

    .line 3169
    :pswitch_f0
    const-string v0, "getCellNetworkScanResults"

    return-object v0

    .line 3165
    :pswitch_f1
    const-string/jumbo v0, "setNetworkSelectionModeAutomatic"

    return-object v0

    .line 3161
    :pswitch_f2
    const-string/jumbo v0, "getImsMmTelFeatureState"

    return-object v0

    .line 3157
    :pswitch_f3
    const-string v0, "getBoundImsServicePackage"

    return-object v0

    .line 3153
    :pswitch_f4
    const-string v0, "clearCarrierImsServiceOverride"

    return-object v0

    .line 3149
    :pswitch_f5
    const-string/jumbo v0, "setBoundImsServiceOverride"

    return-object v0

    .line 3145
    :pswitch_f6
    const-string/jumbo v0, "getImsConfig"

    return-object v0

    .line 3141
    :pswitch_f7
    const-string/jumbo v0, "getImsRegistration"

    return-object v0

    .line 3137
    :pswitch_f8
    const-string/jumbo v0, "unregisterImsFeatureCallback"

    return-object v0

    .line 3133
    :pswitch_f9
    const-string/jumbo v0, "registerMmTelFeatureCallback"

    return-object v0

    .line 3129
    :pswitch_fa
    const-string/jumbo v0, "resetIms"

    return-object v0

    .line 3125
    :pswitch_fb
    const-string v0, "disableIms"

    return-object v0

    .line 3121
    :pswitch_fc
    const-string v0, "enableIms"

    return-object v0

    .line 3117
    :pswitch_fd
    const-string/jumbo v0, "isTetheringApnRequiredForSubscriber"

    return-object v0

    .line 3113
    :pswitch_fe
    const-string v0, "getAllowedNetworkTypesBitmask"

    return-object v0

    .line 3109
    :pswitch_ff
    const-string/jumbo v0, "rebootModem"

    return-object v0

    .line 3105
    :pswitch_100
    const-string/jumbo v0, "resetModemConfig"

    return-object v0

    .line 3101
    :pswitch_101
    const-string/jumbo v0, "nvWriteCdmaPrl"

    return-object v0

    .line 3097
    :pswitch_102
    const-string/jumbo v0, "nvWriteItem"

    return-object v0

    .line 3093
    :pswitch_103
    const-string/jumbo v0, "nvReadItem"

    return-object v0

    .line 3089
    :pswitch_104
    const-string/jumbo v0, "sendEnvelopeWithStatus"

    return-object v0

    .line 3085
    :pswitch_105
    const-string/jumbo v0, "iccExchangeSimIO"

    return-object v0

    .line 3081
    :pswitch_106
    const-string/jumbo v0, "iccTransmitApduBasicChannel"

    return-object v0

    .line 3077
    :pswitch_107
    const-string/jumbo v0, "iccTransmitApduBasicChannelByPort"

    return-object v0

    .line 3073
    :pswitch_108
    const-string/jumbo v0, "iccTransmitApduLogicalChannel"

    return-object v0

    .line 3069
    :pswitch_109
    const-string/jumbo v0, "iccTransmitApduLogicalChannelByPort"

    return-object v0

    .line 3065
    :pswitch_10a
    const-string/jumbo v0, "iccCloseLogicalChannel"

    return-object v0

    .line 3061
    :pswitch_10b
    const-string/jumbo v0, "iccOpenLogicalChannel"

    return-object v0

    .line 3057
    :pswitch_10c
    const-string/jumbo v0, "setCellInfoListRate"

    return-object v0

    .line 3053
    :pswitch_10d
    const-string/jumbo v0, "requestCellInfoUpdateWithWorkSource"

    return-object v0

    .line 3049
    :pswitch_10e
    const-string/jumbo v0, "requestCellInfoUpdate"

    return-object v0

    .line 3045
    :pswitch_10f
    const-string v0, "getAllCellInfo"

    return-object v0

    .line 3041
    :pswitch_110
    const-string/jumbo v0, "getLteOnCdmaModeForSubscriber"

    return-object v0

    .line 3037
    :pswitch_111
    const-string/jumbo v0, "getLteOnCdmaMode"

    return-object v0

    .line 3033
    :pswitch_112
    const-string/jumbo v0, "hasIccCardUsingSlotIndex"

    return-object v0

    .line 3029
    :pswitch_113
    const-string/jumbo v0, "hasIccCard"

    return-object v0

    .line 3025
    :pswitch_114
    const-string/jumbo v0, "getVoiceNetworkTypeForSubscriber"

    return-object v0

    .line 3021
    :pswitch_115
    const-string v0, "getDataNetworkTypeForSubscriber"

    return-object v0

    .line 3017
    :pswitch_116
    const-string v0, "getDataNetworkType"

    return-object v0

    .line 3013
    :pswitch_117
    const-string/jumbo v0, "getNetworkTypeForSubscriber"

    return-object v0

    .line 3009
    :pswitch_118
    const-string/jumbo v0, "sendDialerSpecialCode"

    return-object v0

    .line 3005
    :pswitch_119
    const-string/jumbo v0, "sendVisualVoicemailSmsForSubscriber"

    return-object v0

    .line 3001
    :pswitch_11a
    const-string v0, "getActiveVisualVoicemailSmsFilterSettings"

    return-object v0

    .line 2997
    :pswitch_11b
    const-string/jumbo v0, "getVisualVoicemailSmsFilterSettings"

    return-object v0

    .line 2993
    :pswitch_11c
    const-string v0, "disableVisualVoicemailSmsFilter"

    return-object v0

    .line 2989
    :pswitch_11d
    const-string v0, "enableVisualVoicemailSmsFilter"

    return-object v0

    .line 2985
    :pswitch_11e
    const-string/jumbo v0, "getVisualVoicemailPackageName"

    return-object v0

    .line 2981
    :pswitch_11f
    const-string/jumbo v0, "getVisualVoicemailSettings"

    return-object v0

    .line 2977
    :pswitch_120
    const-string/jumbo v0, "isConcurrentVoiceAndDataAllowed"

    return-object v0

    .line 2973
    :pswitch_121
    const-string/jumbo v0, "getVoiceMessageCountForSubscriber"

    return-object v0

    .line 2969
    :pswitch_122
    const-string v0, "getDataActivationState"

    return-object v0

    .line 2965
    :pswitch_123
    const-string/jumbo v0, "getVoiceActivationState"

    return-object v0

    .line 2961
    :pswitch_124
    const-string/jumbo v0, "setDataActivationState"

    return-object v0

    .line 2957
    :pswitch_125
    const-string/jumbo v0, "setVoiceActivationState"

    return-object v0

    .line 2953
    :pswitch_126
    const-string/jumbo v0, "setVoiceMailNumber"

    return-object v0

    .line 2949
    :pswitch_127
    const-string/jumbo v0, "needsOtaServiceProvisioning"

    return-object v0

    .line 2945
    :pswitch_128
    const-string v0, "getCdmaEriTextForSubscriber"

    return-object v0

    .line 2941
    :pswitch_129
    const-string v0, "getCdmaEriText"

    return-object v0

    .line 2937
    :pswitch_12a
    const-string v0, "getCdmaEriIconModeForSubscriber"

    return-object v0

    .line 2933
    :pswitch_12b
    const-string v0, "getCdmaEriIconMode"

    return-object v0

    .line 2929
    :pswitch_12c
    const-string v0, "getCdmaEriIconIndexForSubscriber"

    return-object v0

    .line 2925
    :pswitch_12d
    const-string v0, "getCdmaEriIconIndex"

    return-object v0

    .line 2921
    :pswitch_12e
    const-string v0, "getActivePhoneTypeForSlot"

    return-object v0

    .line 2917
    :pswitch_12f
    const-string v0, "getActivePhoneType"

    return-object v0

    .line 2913
    :pswitch_130
    const-string v0, "getDataStateForSubId"

    return-object v0

    .line 2909
    :pswitch_131
    const-string v0, "getDataState"

    return-object v0

    .line 2905
    :pswitch_132
    const-string v0, "getDataActivityForSubId"

    return-object v0

    .line 2901
    :pswitch_133
    const-string v0, "getDataActivity"

    return-object v0

    .line 2897
    :pswitch_134
    const-string v0, "getCallStateForSubscription"

    return-object v0

    .line 2893
    :pswitch_135
    const-string v0, "getCallState"

    return-object v0

    .line 2889
    :pswitch_136
    const-string/jumbo v0, "getNeighboringCellInfo"

    return-object v0

    .line 2885
    :pswitch_137
    const-string/jumbo v0, "getNetworkCountryIsoForPhone"

    return-object v0

    .line 2881
    :pswitch_138
    const-string v0, "getCellLocation"

    return-object v0

    .line 2877
    :pswitch_139
    const-string/jumbo v0, "isDataConnectivityPossible"

    return-object v0

    .line 2873
    :pswitch_13a
    const-string v0, "disableDataConnectivity"

    return-object v0

    .line 2869
    :pswitch_13b
    const-string v0, "enableDataConnectivity"

    return-object v0

    .line 2865
    :pswitch_13c
    const-string v0, "disableLocationUpdates"

    return-object v0

    .line 2861
    :pswitch_13d
    const-string v0, "enableLocationUpdates"

    return-object v0

    .line 2857
    :pswitch_13e
    const-string/jumbo v0, "updateServiceLocationWithPackageName"

    return-object v0

    .line 2853
    :pswitch_13f
    const-string/jumbo v0, "updateServiceLocation"

    return-object v0

    .line 2849
    :pswitch_140
    const-string/jumbo v0, "setRadioPower"

    return-object v0

    .line 2845
    :pswitch_141
    const-string/jumbo v0, "setRadioForSubscriber"

    return-object v0

    .line 2841
    :pswitch_142
    const-string/jumbo v0, "setRadio"

    return-object v0

    .line 2837
    :pswitch_143
    const-string/jumbo v0, "toggleRadioOnOffForSubscriber"

    return-object v0

    .line 2833
    :pswitch_144
    const-string/jumbo v0, "toggleRadioOnOff"

    return-object v0

    .line 2829
    :pswitch_145
    const-string/jumbo v0, "handlePinMmiForSubscriber"

    return-object v0

    .line 2825
    :pswitch_146
    const-string/jumbo v0, "handleUssdRequest"

    return-object v0

    .line 2821
    :pswitch_147
    const-string/jumbo v0, "handlePinMmi"

    return-object v0

    .line 2817
    :pswitch_148
    const-string/jumbo v0, "supplyPukReportResultForSubscriber"

    return-object v0

    .line 2813
    :pswitch_149
    const-string/jumbo v0, "supplyPinReportResultForSubscriber"

    return-object v0

    .line 2809
    :pswitch_14a
    const-string/jumbo v0, "supplyPukForSubscriber"

    return-object v0

    .line 2805
    :pswitch_14b
    const-string/jumbo v0, "supplyPinForSubscriber"

    return-object v0

    .line 2801
    :pswitch_14c
    const-string v0, "getCallComposerStatus"

    return-object v0

    .line 2797
    :pswitch_14d
    const-string/jumbo v0, "setCallComposerStatus"

    return-object v0

    .line 2793
    :pswitch_14e
    const-string/jumbo v0, "isRadioOnForSubscriberWithFeature"

    return-object v0

    .line 2789
    :pswitch_14f
    const-string/jumbo v0, "isRadioOnForSubscriber"

    return-object v0

    .line 2785
    :pswitch_150
    const-string/jumbo v0, "isRadioOnWithFeature"

    return-object v0

    .line 2781
    :pswitch_151
    const-string/jumbo v0, "isRadioOn"

    return-object v0

    .line 2777
    :pswitch_152
    const-string v0, "call"

    return-object v0

    .line 2773
    :pswitch_153
    const-string v0, "dial"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_153
        :pswitch_152
        :pswitch_151
        :pswitch_150
        :pswitch_14f
        :pswitch_14e
        :pswitch_14d
        :pswitch_14c
        :pswitch_14b
        :pswitch_14a
        :pswitch_149
        :pswitch_148
        :pswitch_147
        :pswitch_146
        :pswitch_145
        :pswitch_144
        :pswitch_143
        :pswitch_142
        :pswitch_141
        :pswitch_140
        :pswitch_13f
        :pswitch_13e
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

.method private blacklist onTransact$bootstrapAuthenticationRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 13
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16035
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 16037
    .local v7, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 16039
    .local v8, "_arg1":I
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/net/Uri;

    .line 16041
    .local v9, "_arg2":Landroid/net/Uri;
    sget-object v0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    .line 16043
    .local v10, "_arg3":Landroid/telephony/gba/UaSecurityProtocolIdentifier;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 16045
    .local v11, "_arg4":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/IBootstrapAuthenticationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IBootstrapAuthenticationCallback;

    move-result-object v12

    .line 16046
    .local v12, "_arg5":Landroid/telephony/IBootstrapAuthenticationCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16047
    move-object v0, p0

    move v1, v7

    move v2, v8

    move-object v3, v9

    move-object v4, v10

    move v5, v11

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony$Stub;->bootstrapAuthenticationRequest(IILandroid/net/Uri;Landroid/telephony/gba/UaSecurityProtocolIdentifier;ZLandroid/telephony/IBootstrapAuthenticationCallback;)V

    .line 16048
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16049
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$canChangeDtmfToneLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15281
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15283
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15284
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15285
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->canChangeDtmfToneLength(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 15286
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15287
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15288
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$changeIccLockPassword$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15981
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15983
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15985
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15986
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15987
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->changeIccLockPassword(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 15988
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15989
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 15990
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$clearSignalStrengthUpdateRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16104
    .local v0, "_arg0":I
    sget-object v1, Landroid/telephony/SignalStrengthUpdateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SignalStrengthUpdateRequest;

    .line 16106
    .local v1, "_arg1":Landroid/telephony/SignalStrengthUpdateRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16107
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16108
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->clearSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V

    .line 16109
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16110
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$doesSwitchMultiSimConfigTriggerReboot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15841
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15843
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15845
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15846
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15847
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->doesSwitchMultiSimConfigTriggerReboot(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 15848
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15849
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15850
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$enqueueSmsPickResult$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15920
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 15922
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15924
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 15925
    .local v2, "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15926
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enqueueSmsPickResult(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 15927
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$getCallForwarding$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15463
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15465
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15467
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ICallForwardingInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICallForwardingInfoCallback;

    move-result-object v2

    .line 15468
    .local v2, "_arg2":Lcom/android/internal/telephony/ICallForwardingInfoCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15469
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallForwarding(IILcom/android/internal/telephony/ICallForwardingInfoCallback;)V

    .line 15470
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15471
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$getCarrierIdFromMccMnc$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15445
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15447
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15449
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15450
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15451
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierIdFromMccMnc(ILjava/lang/String;Z)I

    move-result v3

    .line 15452
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15453
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 15454
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getClientRequestStats$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15506
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 15508
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15510
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15511
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15512
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getClientRequestStats(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 15513
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ClientRequestStats;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15514
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 15515
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getDeviceSoftwareVersionForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15352
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15354
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15355
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15356
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceSoftwareVersionForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15357
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15358
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15359
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getEquivalentHomePlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16000
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16002
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16004
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16005
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16006
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getEquivalentHomePlmns(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 16007
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16008
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 16009
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getForbiddenPlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15536
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15538
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15540
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15542
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 15543
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15544
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getForbiddenPlmns(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 15545
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15546
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 15547
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$getImeiForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15320
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15322
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15323
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15324
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getImeiForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15325
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15326
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15327
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getImsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15752
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15754
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15756
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15757
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15758
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsProvisioningStatusForCapability(III)Z

    move-result v3

    .line 15759
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15760
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15761
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getLastKnownCellIdentity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16138
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16140
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16141
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16142
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLastKnownCellIdentity(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v3

    .line 16143
    .local v3, "_result":Landroid/telephony/CellIdentity;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16144
    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16145
    return v4
.end method

.method private blacklist onTransact$getMeidForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15336
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15338
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15339
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15340
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getMeidForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15341
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15342
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15343
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getMergedSubscriberIds$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15221
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15223
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15224
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15225
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getMergedSubscriberIds(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 15226
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15227
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 15228
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getNumberOfModemsWithSimultaneousDataConnections$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15615
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15617
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15619
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15620
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15621
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getNumberOfModemsWithSimultaneousDataConnections(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 15622
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15623
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 15624
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getRadioPowerState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15632
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15634
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15636
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15637
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15638
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioPowerState(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 15639
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15640
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 15641
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getRcsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15767
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15769
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15771
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15772
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15773
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getRcsProvisioningStatusForCapability(III)Z

    move-result v3

    .line 15774
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15775
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15776
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getServiceStateForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 15386
    .local v6, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 15388
    .local v7, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 15390
    .local v8, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 15392
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 15393
    .local v10, "_arg4":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15394
    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceStateForSubscriber(IZZLjava/lang/String;Ljava/lang/String;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 15395
    .local v0, "_result":Landroid/telephony/ServiceState;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15396
    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 15397
    return v1
.end method

.method private blacklist onTransact$getSubIdForPhoneAccountHandle$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15365
    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 15367
    .local v0, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15369
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15370
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15371
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 15372
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15373
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 15374
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$iccExchangeSimIO$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 15
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15084
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 15086
    .local v8, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 15088
    .local v9, "_arg1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 15090
    .local v10, "_arg2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 15092
    .local v11, "_arg3":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 15094
    .local v12, "_arg4":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 15096
    .local v13, "_arg5":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 15097
    .local v14, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15098
    move-object v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    move-object v7, v14

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony$Stub;->iccExchangeSimIO(IIIIIILjava/lang/String;)[B

    move-result-object v0

    .line 15099
    .local v0, "_result":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15100
    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 15101
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$iccTransmitApduBasicChannel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 17
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15059
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 15061
    .local v9, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 15063
    .local v10, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 15065
    .local v11, "_arg2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 15067
    .local v12, "_arg3":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 15069
    .local v13, "_arg4":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 15071
    .local v14, "_arg5":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 15073
    .local v15, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 15074
    .local v16, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15075
    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v10

    move v3, v11

    move v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    move-object/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannel(ILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15076
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15077
    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15078
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$iccTransmitApduBasicChannelByPort$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 19
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15032
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 15034
    .local v10, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 15036
    .local v11, "_arg1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 15038
    .local v12, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 15040
    .local v13, "_arg3":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 15042
    .local v14, "_arg4":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 15044
    .local v15, "_arg5":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 15046
    .local v16, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 15048
    .local v17, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 15049
    .local v18, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15050
    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move-object v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move-object/from16 v9, v18

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannelByPort(IILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15051
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15052
    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15053
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$iccTransmitApduLogicalChannel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 17
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15007
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 15009
    .local v9, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 15011
    .local v10, "_arg1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 15013
    .local v11, "_arg2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 15015
    .local v12, "_arg3":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 15017
    .local v13, "_arg4":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 15019
    .local v14, "_arg5":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 15021
    .local v15, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 15022
    .local v16, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15023
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    move-object/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15024
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15025
    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15026
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$iccTransmitApduLogicalChannelByPort$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 19
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14980
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 14982
    .local v10, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 14984
    .local v11, "_arg1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 14986
    .local v12, "_arg2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 14988
    .local v13, "_arg3":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 14990
    .local v14, "_arg4":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 14992
    .local v15, "_arg5":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 14994
    .local v16, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 14996
    .local v17, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 14997
    .local v18, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14998
    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move-object/from16 v9, v18

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannelByPort(IIIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14999
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15000
    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15001
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$isAvailable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15668
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15670
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15672
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15673
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15674
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isAvailable(III)Z

    move-result v3

    .line 15675
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15676
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15677
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isCapable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15653
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15655
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15657
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15658
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15659
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isCapable(III)Z

    move-result v3

    .line 15660
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15661
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15662
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isDataEnabledForApn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15875
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15877
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15879
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15880
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15881
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataEnabledForApn(IILjava/lang/String;)Z

    move-result v3

    .line 15882
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15883
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15884
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isMmTelCapabilitySupported$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15683
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15685
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v1

    .line 15687
    .local v1, "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15689
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 15690
    .local v3, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15691
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isMmTelCapabilitySupported(ILcom/android/internal/telephony/IIntegerConsumer;II)V

    .line 15692
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15693
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isModemEnabledForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15860
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15862
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15864
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15865
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15866
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isModemEnabledForSlot(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 15867
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15868
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15869
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isMvnoMatched$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15905
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15907
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15909
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15910
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15911
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isMvnoMatched(IILjava/lang/String;)Z

    move-result v3

    .line 15912
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15913
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15914
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isProvisioningRequiredForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16156
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16158
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16159
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16160
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isProvisioningRequiredForCapability(III)Z

    move-result v3

    .line 16161
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16162
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16163
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isRcsProvisioningRequiredForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16171
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16173
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16174
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16175
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRcsProvisioningRequiredForCapability(III)Z

    move-result v3

    .line 16176
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16177
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16178
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isWorldPhone$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15296
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15298
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15299
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15300
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isWorldPhone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 15301
    .local v3, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15302
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15303
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$notifyRcsAutoConfigurationReceived$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15951
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15953
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 15955
    .local v1, "_arg1":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15956
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15957
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->notifyRcsAutoConfigurationReceived(I[BZ)V

    .line 15958
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15959
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$registerImsStateCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16121
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16123
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IImsStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IImsStateCallback;

    move-result-object v2

    .line 16125
    .local v2, "_arg2":Lcom/android/internal/telephony/IImsStateCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 16126
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16127
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerImsStateCallback(IILcom/android/internal/telephony/IImsStateCallback;Ljava/lang/String;)V

    .line 16128
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16129
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$requestCellInfoUpdate$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14943
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 14945
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ICellInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ICellInfoCallback;

    move-result-object v1

    .line 14947
    .local v1, "_arg1":Landroid/telephony/ICellInfoCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 14949
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 14950
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14951
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->requestCellInfoUpdate(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 14952
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14953
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$requestCellInfoUpdateWithWorkSource$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14959
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 14961
    .local v6, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ICellInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ICellInfoCallback;

    move-result-object v7

    .line 14963
    .local v7, "_arg1":Landroid/telephony/ICellInfoCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 14965
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 14967
    .local v9, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/WorkSource;

    .line 14968
    .local v10, "_arg4":Landroid/os/WorkSource;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14969
    move-object v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->requestCellInfoUpdateWithWorkSource(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 14970
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14971
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$requestNetworkScan$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 16
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15144
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 15146
    .local v9, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 15148
    .local v10, "_arg1":Z
    sget-object v1, Landroid/telephony/NetworkScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/telephony/NetworkScanRequest;

    .line 15150
    .local v11, "_arg2":Landroid/telephony/NetworkScanRequest;
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/os/Messenger;

    .line 15152
    .local v12, "_arg3":Landroid/os/Messenger;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 15154
    .local v13, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 15156
    .local v14, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 15157
    .local v15, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15158
    move-object/from16 v1, p0

    move v2, v9

    move v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/ITelephony$Stub;->requestNetworkScan(IZLandroid/telephony/NetworkScanRequest;Landroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 15159
    .local v1, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15160
    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15161
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$requestNumberVerification$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15195
    sget-object v0, Landroid/telephony/PhoneNumberRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneNumberRange;

    .line 15197
    .local v0, "_arg0":Landroid/telephony/PhoneNumberRange;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 15199
    .local v7, "_arg1":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/INumberVerificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/INumberVerificationCallback;

    move-result-object v9

    .line 15201
    .local v9, "_arg2":Lcom/android/internal/telephony/INumberVerificationCallback;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 15202
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15203
    move-object v1, p0

    move-object v2, v0

    move-wide v3, v7

    move-object v5, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/ITelephony$Stub;->requestNumberVerification(Landroid/telephony/PhoneNumberRange;JLcom/android/internal/telephony/INumberVerificationCallback;Ljava/lang/String;)V

    .line 15204
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15205
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist onTransact$sendThermalMitigationRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16020
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16022
    .local v0, "_arg0":I
    sget-object v1, Landroid/telephony/ThermalMitigationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ThermalMitigationRequest;

    .line 16024
    .local v1, "_arg1":Landroid/telephony/ThermalMitigationRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16025
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16026
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->sendThermalMitigationRequest(ILandroid/telephony/ThermalMitigationRequest;Ljava/lang/String;)I

    move-result v3

    .line 16027
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16028
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 16029
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$sendVisualVoicemailSmsForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 16
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14911
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 14913
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 14915
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 14917
    .local v10, "_arg2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 14919
    .local v11, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 14921
    .local v12, "_arg4":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 14923
    .local v13, "_arg5":Ljava/lang/String;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v14, p1

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/app/PendingIntent;

    .line 14924
    .local v15, "_arg6":Landroid/app/PendingIntent;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14925
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move v5, v12

    move-object v6, v13

    move-object v7, v15

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony$Stub;->sendVisualVoicemailSmsForSubscriber(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 14926
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14927
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setBoundImsServiceOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15124
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 15126
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 15128
    .local v2, "_arg2":[I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 15129
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15130
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setBoundImsServiceOverride(IZ[ILjava/lang/String;)Z

    move-result v4

    .line 15131
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15132
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15133
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setCallForwarding$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15477
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15479
    .local v0, "_arg0":I
    sget-object v1, Landroid/telephony/CallForwardingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CallForwardingInfo;

    .line 15481
    .local v1, "_arg1":Landroid/telephony/CallForwardingInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 15482
    .local v2, "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15483
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCallForwarding(ILandroid/telephony/CallForwardingInfo;Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 15484
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15485
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setCallWaitingStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15492
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15494
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 15496
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 15497
    .local v2, "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15498
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCallWaitingStatus(IZLcom/android/internal/telephony/IIntegerConsumer;)V

    .line 15499
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15500
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setCarrierTestOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 21
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15585
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 15587
    .local v11, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 15589
    .local v12, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 15591
    .local v13, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 15593
    .local v14, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 15595
    .local v15, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 15597
    .local v16, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 15599
    .local v17, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 15601
    .local v18, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 15603
    .local v19, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 15604
    .local v20, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15605
    move-object/from16 v0, p0

    move v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/ITelephony$Stub;->setCarrierTestOverride(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15607
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setDataEnabledForReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15176
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15178
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15180
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 15181
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15182
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataEnabledForReason(IIZLjava/lang/String;)V

    .line 15183
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15184
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setForbiddenPlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15553
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 15555
    .local v6, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 15557
    .local v7, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 15559
    .local v8, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 15561
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 15562
    .local v10, "_arg4":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15563
    move-object v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setForbiddenPlmns(IILjava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 15564
    .local v0, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15565
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 15566
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist onTransact$setIccLockEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15966
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15968
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 15970
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15971
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15972
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setIccLockEnabled(IZLjava/lang/String;)I

    move-result v3

    .line 15973
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15974
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 15975
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setImsProvisioningInt$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15800
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15802
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15804
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15805
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15806
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsProvisioningInt(III)I

    move-result v3

    .line 15807
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15808
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 15809
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setImsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15736
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15738
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15740
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15742
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15743
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15744
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsProvisioningStatusForCapability(IIIZ)V

    .line 15745
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15746
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setImsProvisioningString$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15815
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15817
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15819
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15820
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15821
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsProvisioningString(IILjava/lang/String;)I

    move-result v3

    .line 15822
    .local v3, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15823
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 15824
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setMobileDataPolicyEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15935
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15937
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15939
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15940
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15941
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setMobileDataPolicyEnabled(IIZ)V

    .line 15942
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15943
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setRcsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15782
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15784
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15786
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15788
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15789
    .local v3, "_arg3":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15790
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setRcsProvisioningStatusForCapability(IIIZ)V

    .line 15791
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15792
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setRoamingOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 15238
    .local v6, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 15240
    .local v7, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 15242
    .local v8, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 15244
    .local v9, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 15245
    .local v10, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15246
    move-object v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    .line 15247
    .local v0, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15248
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15249
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist onTransact$setSignalStrengthUpdateRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16088
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16090
    .local v0, "_arg0":I
    sget-object v1, Landroid/telephony/SignalStrengthUpdateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SignalStrengthUpdateRequest;

    .line 16092
    .local v1, "_arg1":Landroid/telephony/SignalStrengthUpdateRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16093
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16094
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V

    .line 16095
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16096
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setSimPowerStateForSlotWithCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15522
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15524
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15526
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 15527
    .local v2, "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15528
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSimPowerStateForSlotWithCallback(IILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 15529
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15530
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setSystemSelectionChannels$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15891
    sget-object v0, Landroid/telephony/RadioAccessSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 15893
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/RadioAccessSpecifier;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15895
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IBooleanConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IBooleanConsumer;

    move-result-object v2

    .line 15896
    .local v2, "_arg2":Lcom/android/internal/telephony/IBooleanConsumer;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15897
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSystemSelectionChannels(Ljava/util/List;ILcom/android/internal/telephony/IBooleanConsumer;)V

    .line 15898
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setVoWiFiNonPersistent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15709
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15711
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 15713
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15714
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15715
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoWiFiNonPersistent(IZI)V

    .line 15716
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15717
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setVoiceServiceStateOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16186
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16188
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16189
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16190
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoiceServiceStateOverride(IZLjava/lang/String;)V

    .line 16191
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16192
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setVoicemailRingtoneUri$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15404
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 15406
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 15408
    .local v1, "_arg1":Landroid/telecom/PhoneAccountHandle;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 15409
    .local v2, "_arg2":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15410
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoicemailRingtoneUri(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;)V

    .line 15411
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15412
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setVoicemailVibrationEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15419
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 15421
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 15423
    .local v1, "_arg1":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15424
    .local v2, "_arg2":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15425
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoicemailVibrationEnabled(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 15426
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15427
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$uploadCallComposerPicture$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 15261
    .local v6, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 15263
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 15265
    .local v8, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/ParcelFileDescriptor;

    .line 15267
    .local v9, "_arg3":Landroid/os/ParcelFileDescriptor;
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/ResultReceiver;

    .line 15268
    .local v10, "_arg4":Landroid/os/ResultReceiver;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15269
    move-object v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->uploadCallComposerPicture(ILjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ResultReceiver;)V

    .line 15270
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15271
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 2764
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 16200
    const/16 v0, 0x153

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 4140
    invoke-static {p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4144
    const-string v0, "com.android.internal.telephony.ITelephony"

    .line 4145
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 4146
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4148
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 4156
    packed-switch p1, :pswitch_data_1

    .line 7271
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 4152
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4153
    return v1

    .line 7262
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7263
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7264
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRemovableEsimDefaultEuicc(Ljava/lang/String;)Z

    move-result v3

    .line 7265
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7266
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7267
    goto/16 :goto_1

    .line 7251
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 7253
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7254
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7255
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setRemovableEsimAsDefaultEuicc(ZLjava/lang/String;)V

    .line 7256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7257
    goto/16 :goto_1

    .line 7241
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7242
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7243
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;

    move-result-object v3

    .line 7244
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7245
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7246
    goto/16 :goto_1

    .line 7236
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoiceServiceStateOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7232
    :pswitch_5
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isRcsProvisioningRequiredForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7228
    :pswitch_6
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isProvisioningRequiredForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7221
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getModemService()Ljava/lang/String;

    move-result-object v2

    .line 7222
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7223
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7224
    goto/16 :goto_1

    .line 7212
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7213
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7214
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setModemService(Ljava/lang/String;)Z

    move-result v3

    .line 7215
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7216
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7217
    goto/16 :goto_1

    .line 7204
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isUsingNewDataStack()Z

    move-result v2

    .line 7205
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7206
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7207
    goto/16 :goto_1

    .line 7200
    .end local v2    # "_result":Z
    :pswitch_a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getLastKnownCellIdentity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7192
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IImsStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IImsStateCallback;

    move-result-object v2

    .line 7193
    .local v2, "_arg0":Lcom/android/internal/telephony/IImsStateCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7194
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterImsStateCallback(Lcom/android/internal/telephony/IImsStateCallback;)V

    .line 7195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7196
    goto/16 :goto_1

    .line 7187
    .end local v2    # "_arg0":Lcom/android/internal/telephony/IImsStateCallback;
    :pswitch_c
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$registerImsStateCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7179
    :pswitch_d
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 7180
    .local v2, "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7181
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSlicingConfig(Landroid/os/ResultReceiver;)V

    .line 7182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7183
    goto/16 :goto_1

    .line 7171
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->prepareForUnattendedReboot()I

    move-result v2

    .line 7172
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7173
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7174
    goto/16 :goto_1

    .line 7164
    .end local v2    # "_result":I
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPhoneCapability()Landroid/telephony/PhoneCapability;

    move-result-object v2

    .line 7165
    .local v2, "_result":Landroid/telephony/PhoneCapability;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7166
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7167
    goto/16 :goto_1

    .line 7160
    .end local v2    # "_result":Landroid/telephony/PhoneCapability;
    :pswitch_10
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$clearSignalStrengthUpdateRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7156
    :pswitch_11
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSignalStrengthUpdateRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 7145
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7147
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 7148
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7149
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setCapabilitiesRequestTimeout(IJ)Z

    move-result v5

    .line 7150
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7151
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7152
    goto/16 :goto_1

    .line 7135
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    .end local v5    # "_result":Z
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7136
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7137
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->removeUceRequestDisallowedStatus(I)Z

    move-result v3

    .line 7138
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7139
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7140
    goto/16 :goto_1

    .line 7125
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7126
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7127
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLastUcePidfXmlShell(I)Ljava/lang/String;

    move-result-object v3

    .line 7128
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7129
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7130
    goto/16 :goto_1

    .line 7115
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7116
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7117
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLatestRcsContactUceCapabilityShell(I)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v3

    .line 7118
    .local v3, "_result":Landroid/telephony/ims/RcsContactUceCapability;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7119
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7120
    goto/16 :goto_1

    .line 7105
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telephony/ims/RcsContactUceCapability;
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7106
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7107
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->clearUceRegistrationOverrideShell(I)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v3

    .line 7108
    .restart local v3    # "_result":Landroid/telephony/ims/RcsContactUceCapability;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7109
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7110
    goto/16 :goto_1

    .line 7093
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telephony/ims/RcsContactUceCapability;
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7095
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 7096
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7097
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->removeUceRegistrationOverrideShell(ILjava/util/List;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v4

    .line 7098
    .local v4, "_result":Landroid/telephony/ims/RcsContactUceCapability;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7099
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7100
    goto/16 :goto_1

    .line 7081
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":Landroid/telephony/ims/RcsContactUceCapability;
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7083
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 7084
    .restart local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7085
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->addUceRegistrationOverrideShell(ILjava/util/List;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v4

    .line 7086
    .restart local v4    # "_result":Landroid/telephony/ims/RcsContactUceCapability;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7087
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7088
    goto/16 :goto_1

    .line 7072
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":Landroid/telephony/ims/RcsContactUceCapability;
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 7073
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7074
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setDeviceUceEnabled(Z)V

    .line 7075
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7076
    goto/16 :goto_1

    .line 7064
    .end local v2    # "_arg0":Z
    :pswitch_1a
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceUceEnabled()Z

    move-result v2

    .line 7065
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7066
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7067
    goto/16 :goto_1

    .line 7055
    .end local v2    # "_result":Z
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7056
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7057
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCapabilityFromEab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7058
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7059
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7060
    goto/16 :goto_1

    .line 7045
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7046
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7047
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getContactFromEab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7048
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7049
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7050
    goto/16 :goto_1

    .line 7033
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7035
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7036
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7037
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->removeContactFromEab(ILjava/lang/String;)I

    move-result v4

    .line 7038
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7039
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 7040
    goto/16 :goto_1

    .line 7025
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_1e
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v2

    .line 7026
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7027
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7028
    goto/16 :goto_1

    .line 7016
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7017
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7018
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsFeatureValidationOverride(I)Z

    move-result v3

    .line 7019
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7020
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7021
    goto/16 :goto_1

    .line 7004
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7006
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 7007
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 7008
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsFeatureValidationOverride(ILjava/lang/String;)Z

    move-result v4

    .line 7009
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7010
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7011
    goto/16 :goto_1

    .line 6994
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6995
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6996
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierSingleRegistrationEnabled(I)Z

    move-result v3

    .line 6997
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6998
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6999
    goto/16 :goto_1

    .line 6985
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 6986
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6987
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setDeviceToDeviceForceEnabled(Z)V

    .line 6988
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6989
    goto/16 :goto_1

    .line 6976
    .end local v2    # "_arg0":Z
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6977
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6978
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setActiveDeviceToDeviceTransport(Ljava/lang/String;)V

    .line 6979
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6980
    goto/16 :goto_1

    .line 6965
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6967
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6968
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6969
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->sendDeviceToDeviceMessage(II)V

    .line 6970
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6971
    goto/16 :goto_1

    .line 6953
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6955
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6956
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6957
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setCarrierSingleRegistrationEnabledOverride(ILjava/lang/String;)Z

    move-result v4

    .line 6958
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6959
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6960
    goto/16 :goto_1

    .line 6945
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_26
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceSingleRegistrationEnabled()Z

    move-result v2

    .line 6946
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6947
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6948
    goto/16 :goto_1

    .line 6937
    .end local v2    # "_result":Z
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6938
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6939
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setDeviceSingleRegistrationEnabledOverride(Ljava/lang/String;)V

    .line 6940
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6941
    goto/16 :goto_1

    .line 6929
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_28
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getRcsSingleRegistrationTestModeEnabled()Z

    move-result v2

    .line 6930
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6931
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6932
    goto/16 :goto_1

    .line 6921
    .end local v2    # "_result":Z
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 6922
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6923
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setRcsSingleRegistrationTestModeEnabled(Z)V

    .line 6924
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6925
    goto/16 :goto_1

    .line 6912
    .end local v2    # "_arg0":Z
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6913
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6914
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->triggerRcsReconfiguration(I)V

    .line 6915
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6916
    goto/16 :goto_1

    .line 6901
    .end local v2    # "_arg0":I
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6903
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsConfigCallback;

    move-result-object v3

    .line 6904
    .local v3, "_arg1":Landroid/telephony/ims/aidl/IRcsConfigCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6905
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterRcsProvisioningCallback(ILandroid/telephony/ims/aidl/IRcsConfigCallback;)V

    .line 6906
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6907
    goto/16 :goto_1

    .line 6890
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IRcsConfigCallback;
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6892
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsConfigCallback;

    move-result-object v3

    .line 6893
    .restart local v3    # "_arg1":Landroid/telephony/ims/aidl/IRcsConfigCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6894
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerRcsProvisioningCallback(ILandroid/telephony/ims/aidl/IRcsConfigCallback;)V

    .line 6895
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6896
    goto/16 :goto_1

    .line 6880
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IRcsConfigCallback;
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6881
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6882
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRcsVolteSingleRegistrationCapable(I)Z

    move-result v3

    .line 6883
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6884
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6885
    goto/16 :goto_1

    .line 6869
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6871
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/telephony/ims/RcsClientConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/RcsClientConfiguration;

    .line 6872
    .local v3, "_arg1":Landroid/telephony/ims/RcsClientConfiguration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6873
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setRcsClientConfiguration(ILandroid/telephony/ims/RcsClientConfiguration;)V

    .line 6874
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6875
    goto/16 :goto_1

    .line 6859
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/RcsClientConfiguration;
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6860
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6861
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getGbaReleaseTime(I)I

    move-result v3

    .line 6862
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6863
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6864
    goto/16 :goto_1

    .line 6847
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6849
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6850
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6851
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setGbaReleaseTimeOverride(II)Z

    move-result v4

    .line 6852
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6853
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6854
    goto/16 :goto_1

    .line 6837
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6838
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6839
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getBoundGbaService(I)Ljava/lang/String;

    move-result-object v3

    .line 6840
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6841
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6842
    goto/16 :goto_1

    .line 6825
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6827
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6828
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6829
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setBoundGbaServiceOverride(ILjava/lang/String;)Z

    move-result v4

    .line 6830
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6831
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6832
    goto/16 :goto_1

    .line 6820
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_33
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$bootstrapAuthenticationRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6816
    :pswitch_34
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$sendThermalMitigationRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6807
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6808
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6809
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z

    move-result v3

    .line 6810
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6811
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6812
    goto/16 :goto_1

    .line 6797
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6798
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6799
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isNrDualConnectivityEnabled(I)Z

    move-result v3

    .line 6800
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6801
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6802
    goto/16 :goto_1

    .line 6785
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6787
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6788
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6789
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setNrDualConnectivityState(II)I

    move-result v4

    .line 6790
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6791
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6792
    goto/16 :goto_1

    .line 6775
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6776
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6777
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoNrEnabled(I)Z

    move-result v3

    .line 6778
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6779
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6780
    goto/16 :goto_1

    .line 6763
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6765
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6766
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6767
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoNrEnabled(IZ)I

    move-result v4

    .line 6768
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6769
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6770
    goto/16 :goto_1

    .line 6758
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_3a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getEquivalentHomePlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6751
    :pswitch_3b
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->canConnectTo5GInDsdsMode()Z

    move-result v2

    .line 6752
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6753
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6754
    goto/16 :goto_1

    .line 6742
    .end local v2    # "_result":Z
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6743
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6744
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getManualNetworkSelectionPlmn(I)Ljava/lang/String;

    move-result-object v3

    .line 6745
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6746
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6747
    goto/16 :goto_1

    .line 6736
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_3d
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->userActivity()V

    .line 6737
    goto/16 :goto_1

    .line 6731
    :pswitch_3e
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->requestUserActivityNotification()V

    .line 6732
    goto/16 :goto_1

    .line 6727
    :pswitch_3f
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$changeIccLockPassword$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6723
    :pswitch_40
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setIccLockEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6714
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6715
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6716
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isIccLockEnabled(I)Z

    move-result v3

    .line 6717
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6718
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6719
    goto/16 :goto_1

    .line 6709
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_42
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$notifyRcsAutoConfigurationReceived$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6702
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 6703
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6704
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCepEnabled(Z)V

    .line 6705
    goto/16 :goto_1

    .line 6690
    .end local v2    # "_arg0":Z
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6692
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6693
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6694
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isMobileDataPolicyEnabled(II)Z

    move-result v4

    .line 6695
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6696
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6697
    goto/16 :goto_1

    .line 6685
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_45
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setMobileDataPolicyEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6676
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6677
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6678
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getMmsUAProfUrl(I)Ljava/lang/String;

    move-result-object v3

    .line 6679
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6680
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6681
    goto/16 :goto_1

    .line 6666
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6667
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6668
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getMmsUserAgent(I)Ljava/lang/String;

    move-result-object v3

    .line 6669
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6670
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6671
    goto/16 :goto_1

    .line 6661
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_48
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$enqueueSmsPickResult$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6657
    :pswitch_49
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isMvnoMatched$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6648
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6649
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6650
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSystemSelectionChannels(I)Ljava/util/List;

    move-result-object v3

    .line 6651
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/RadioAccessSpecifier;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6652
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 6653
    goto/16 :goto_1

    .line 6643
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/RadioAccessSpecifier;>;"
    :pswitch_4b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSystemSelectionChannels$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6632
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6634
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6635
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6636
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isApnMetered(II)Z

    move-result v4

    .line 6637
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6638
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6639
    goto/16 :goto_1

    .line 6627
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_4d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isDataEnabledForApn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6623
    :pswitch_4e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isModemEnabledForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6612
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6614
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6615
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6616
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isApplicationOnUicc(II)Z

    move-result v4

    .line 6617
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6618
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6619
    goto/16 :goto_1

    .line 6604
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_50
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 6605
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6606
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6607
    goto/16 :goto_1

    .line 6597
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_51
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioHalVersion()I

    move-result v2

    .line 6598
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6599
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6600
    goto/16 :goto_1

    .line 6588
    .end local v2    # "_result":I
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6589
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6590
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSlotsMapping(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 6591
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6592
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 6593
    goto/16 :goto_1

    .line 6583
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    :pswitch_53
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$doesSwitchMultiSimConfigTriggerReboot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6575
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6576
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6577
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->switchMultiSimConfig(I)V

    .line 6578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6579
    goto/16 :goto_1

    .line 6563
    .end local v2    # "_arg0":I
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6565
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6566
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6567
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isMultiSimSupported(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 6568
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6569
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6570
    goto/16 :goto_1

    .line 6554
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 6555
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6556
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setMultiSimCarrierRestriction(Z)V

    .line 6557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6558
    goto/16 :goto_1

    .line 6542
    .end local v2    # "_arg0":Z
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6544
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6545
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6546
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->enableModemForSlot(IZ)Z

    move-result v4

    .line 6547
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6548
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6549
    goto/16 :goto_1

    .line 6535
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_58
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->resetOtaEmergencyNumberDbFilePath()V

    .line 6536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6537
    goto/16 :goto_1

    .line 6527
    :pswitch_59
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 6528
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6529
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->updateOtaEmergencyNumberDbFilePath(Landroid/os/ParcelFileDescriptor;)V

    .line 6530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6531
    goto/16 :goto_1

    .line 6520
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :pswitch_5a
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->notifyOtaEmergencyNumberDbInstalled()V

    .line 6521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6522
    goto/16 :goto_1

    .line 6511
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6512
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6513
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getEmergencyNumberDbVersion(I)I

    move-result v3

    .line 6514
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6515
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6516
    goto/16 :goto_1

    .line 6503
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_5c
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getEmergencyNumberListTestMode()Ljava/util/List;

    move-result-object v2

    .line 6504
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6505
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6506
    goto/16 :goto_1

    .line 6493
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6495
    .local v2, "_arg0":I
    sget-object v3, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/emergency/EmergencyNumber;

    .line 6496
    .local v3, "_arg1":Landroid/telephony/emergency/EmergencyNumber;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6497
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->updateEmergencyNumberListTestMode(ILandroid/telephony/emergency/EmergencyNumber;)V

    .line 6498
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6499
    goto/16 :goto_1

    .line 6486
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/emergency/EmergencyNumber;
    :pswitch_5e
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->startEmergencyCallbackMode()V

    .line 6487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6488
    goto/16 :goto_1

    .line 6482
    :pswitch_5f
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setImsProvisioningString$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6478
    :pswitch_60
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setImsProvisioningInt$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6467
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6469
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6470
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6471
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsProvisioningString(II)Ljava/lang/String;

    move-result-object v4

    .line 6472
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6473
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6474
    goto/16 :goto_1

    .line 6455
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6457
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6458
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6459
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsProvisioningInt(II)I

    move-result v4

    .line 6460
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6461
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6462
    goto/16 :goto_1

    .line 6450
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_63
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setRcsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6446
    :pswitch_64
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getRcsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6442
    :pswitch_65
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getImsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6438
    :pswitch_66
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setImsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6428
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6430
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IFeatureProvisioningCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;

    move-result-object v3

    .line 6431
    .local v3, "_arg1":Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6432
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterFeatureProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IFeatureProvisioningCallback;)V

    .line 6433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6434
    goto/16 :goto_1

    .line 6417
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6419
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IFeatureProvisioningCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;

    move-result-object v3

    .line 6420
    .restart local v3    # "_arg1":Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6421
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerFeatureProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IFeatureProvisioningCallback;)V

    .line 6422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6423
    goto/16 :goto_1

    .line 6406
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6408
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object v3

    .line 6409
    .local v3, "_arg1":Landroid/telephony/ims/aidl/IImsConfigCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6410
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterImsProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IImsConfigCallback;)V

    .line 6411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6412
    goto/16 :goto_1

    .line 6395
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsConfigCallback;
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6397
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object v3

    .line 6398
    .restart local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsConfigCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6399
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerImsProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IImsConfigCallback;)V

    .line 6400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6401
    goto/16 :goto_1

    .line 6385
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsConfigCallback;
    :pswitch_6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6386
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6387
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCertsFromCarrierPrivilegeAccessRules(I)Ljava/util/List;

    move-result-object v3

    .line 6388
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6389
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6390
    goto/16 :goto_1

    .line 6373
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6375
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6376
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6377
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isEmergencyNumber(Ljava/lang/String;Z)Z

    move-result v4

    .line 6378
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6379
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6380
    goto/16 :goto_1

    .line 6361
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 6363
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 6364
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6365
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getEmergencyNumberList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 6366
    .local v4, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6367
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 6368
    goto/16 :goto_1

    .line 6351
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/Map;
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6352
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6353
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isTtyOverVolteEnabled(I)Z

    move-result v3

    .line 6354
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6355
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6356
    goto/16 :goto_1

    .line 6340
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6342
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6343
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6344
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setRttCapabilitySetting(IZ)V

    .line 6345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6346
    goto/16 :goto_1

    .line 6329
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6331
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6332
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6333
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoWiFiRoamingModeSetting(II)V

    .line 6334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6335
    goto/16 :goto_1

    .line 6319
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6320
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6321
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoWiFiRoamingModeSetting(I)I

    move-result v3

    .line 6322
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6323
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6324
    goto/16 :goto_1

    .line 6308
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6310
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6311
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6312
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoWiFiModeSetting(II)V

    .line 6313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6314
    goto/16 :goto_1

    .line 6298
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6299
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6300
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoWiFiModeSetting(I)I

    move-result v3

    .line 6301
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6302
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6303
    goto/16 :goto_1

    .line 6293
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_74
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoWiFiNonPersistent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6283
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6285
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6286
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6287
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoWiFiRoamingSettingEnabled(IZ)V

    .line 6288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6289
    goto/16 :goto_1

    .line 6273
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6274
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6275
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoWiFiRoamingSettingEnabled(I)Z

    move-result v3

    .line 6276
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6277
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6278
    goto/16 :goto_1

    .line 6262
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6264
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6265
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6266
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setCrossSimCallingEnabled(IZ)V

    .line 6267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6268
    goto/16 :goto_1

    .line 6252
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6253
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6254
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isCrossSimCallingEnabledByUser(I)Z

    move-result v3

    .line 6255
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6256
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6257
    goto/16 :goto_1

    .line 6241
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6243
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6244
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6245
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoWiFiSettingEnabled(IZ)V

    .line 6246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6247
    goto/16 :goto_1

    .line 6231
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6232
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6233
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoWiFiSettingEnabled(I)Z

    move-result v3

    .line 6234
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6235
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6236
    goto/16 :goto_1

    .line 6220
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6222
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6223
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6224
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setVtSettingEnabled(IZ)V

    .line 6225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6226
    goto/16 :goto_1

    .line 6210
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6211
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6212
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVtSettingEnabled(I)Z

    move-result v3

    .line 6213
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6214
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6215
    goto/16 :goto_1

    .line 6199
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6201
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6202
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6203
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setAdvancedCallingSettingEnabled(IZ)V

    .line 6204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6205
    goto/16 :goto_1

    .line 6189
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6190
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6191
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isAdvancedCallingSettingEnabled(I)Z

    move-result v3

    .line 6192
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6193
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6194
    goto/16 :goto_1

    .line 6184
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_7f
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isMmTelCapabilitySupported$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6180
    :pswitch_80
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isAvailable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6176
    :pswitch_81
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isCapable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6166
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6168
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v3

    .line 6169
    .local v3, "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6170
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterMmTelCapabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 6171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6172
    goto/16 :goto_1

    .line 6155
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6157
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v3

    .line 6158
    .restart local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6159
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerMmTelCapabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 6160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6161
    goto/16 :goto_1

    .line 6144
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6146
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    .line 6147
    .local v3, "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6148
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsMmTelRegistrationTransportType(ILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 6149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6150
    goto/16 :goto_1

    .line 6133
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6135
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    .line 6136
    .restart local v3    # "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6137
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsMmTelRegistrationState(ILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 6138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6139
    goto/16 :goto_1

    .line 6122
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6124
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v3

    .line 6125
    .local v3, "_arg1":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6126
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 6127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6128
    goto/16 :goto_1

    .line 6111
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6113
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v3

    .line 6114
    .restart local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6115
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 6116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6117
    goto/16 :goto_1

    .line 6106
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    :pswitch_88
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getRadioPowerState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6099
    :pswitch_89
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isInEmergencySmsMode()Z

    move-result v2

    .line 6100
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6101
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6102
    goto/16 :goto_1

    .line 6090
    .end local v2    # "_result":Z
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6091
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6092
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkSelectionMode(I)I

    move-result v3

    .line 6093
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6094
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6095
    goto/16 :goto_1

    .line 6085
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_8b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getNumberOfModemsWithSimultaneousDataConnections$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6077
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6078
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6079
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->refreshUiccProfile(I)V

    .line 6080
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6081
    goto/16 :goto_1

    .line 6067
    .end local v2    # "_arg0":I
    :pswitch_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6068
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6069
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierIdListVersion(I)I

    move-result v3

    .line 6070
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6071
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6072
    goto/16 :goto_1

    .line 6062
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_8e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCarrierTestOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 6051
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6053
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6054
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6055
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setCdmaSubscriptionMode(II)Z

    move-result v4

    .line 6056
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6057
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6058
    goto/16 :goto_1

    .line 6041
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6042
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6043
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaSubscriptionMode(I)I

    move-result v3

    .line 6044
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6045
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6046
    goto/16 :goto_1

    .line 6029
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6031
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 6032
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6033
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setCdmaRoamingMode(II)Z

    move-result v4

    .line 6034
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6035
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6036
    goto/16 :goto_1

    .line 6019
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6020
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6021
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaRoamingMode(I)I

    move-result v3

    .line 6022
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6023
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6024
    goto/16 :goto_1

    .line 6008
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 6010
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 6011
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6012
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataRoamingEnabled(IZ)V

    .line 6013
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6014
    goto/16 :goto_1

    .line 5998
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5999
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6000
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataRoamingEnabled(I)Z

    move-result v3

    .line 6001
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6002
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6003
    goto/16 :goto_1

    .line 5988
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_95
    sget-object v2, Landroid/telephony/UiccSlotMapping;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5989
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5990
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSimSlotMapping(Ljava/util/List;)Z

    move-result v3

    .line 5991
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5992
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5993
    goto/16 :goto_1

    .line 5978
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    .end local v3    # "_result":Z
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 5979
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5980
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->switchSlots([I)Z

    move-result v3

    .line 5981
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5982
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5983
    goto/16 :goto_1

    .line 5968
    .end local v2    # "_arg0":[I
    .end local v3    # "_result":Z
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5969
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5970
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getUiccSlotsInfo(Ljava/lang/String;)[Landroid/telephony/UiccSlotInfo;

    move-result-object v3

    .line 5971
    .local v3, "_result":[Landroid/telephony/UiccSlotInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5972
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 5973
    goto/16 :goto_1

    .line 5958
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[Landroid/telephony/UiccSlotInfo;
    :pswitch_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5959
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5960
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getUiccCardsInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 5961
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccCardInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5962
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 5963
    goto/16 :goto_1

    .line 5946
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccCardInfo;>;"
    :pswitch_99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5948
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5949
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5950
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCardIdForDefaultEuicc(ILjava/lang/String;)I

    move-result v4

    .line 5951
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5952
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5953
    goto/16 :goto_1

    .line 5936
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5937
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5938
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSignalStrength(I)Landroid/telephony/SignalStrength;

    move-result-object v3

    .line 5939
    .local v3, "_result":Landroid/telephony/SignalStrength;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5940
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5941
    goto/16 :goto_1

    .line 5926
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telephony/SignalStrength;
    :pswitch_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5927
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5928
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getEmergencyCallbackMode(I)Z

    move-result v3

    .line 5929
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5930
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5931
    goto/16 :goto_1

    .line 5921
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_9c
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setForbiddenPlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5917
    :pswitch_9d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getForbiddenPlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5913
    :pswitch_9e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSimPowerStateForSlotWithCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5903
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5905
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5906
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5907
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setSimPowerStateForSlot(II)V

    .line 5908
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5909
    goto/16 :goto_1

    .line 5898
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_a0
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getClientRequestStats$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5894
    :pswitch_a1
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCallWaitingStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5884
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5886
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    .line 5887
    .local v3, "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5888
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallWaitingStatus(ILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 5889
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5890
    goto/16 :goto_1

    .line 5879
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_a3
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCallForwarding$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5875
    :pswitch_a4
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCallForwarding$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5867
    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5868
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5869
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->carrierActionResetAll(I)V

    .line 5870
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5871
    goto/16 :goto_1

    .line 5856
    .end local v2    # "_arg0":I
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5858
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5859
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5860
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->carrierActionReportDefaultNetworkStatus(IZ)V

    .line 5861
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5862
    goto/16 :goto_1

    .line 5845
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5847
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5848
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5849
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->carrierActionSetRadioEnabled(IZ)V

    .line 5850
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5851
    goto/16 :goto_1

    .line 5840
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_a8
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCarrierIdFromMccMnc$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5831
    :pswitch_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5832
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5833
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriptionSpecificCarrierName(I)Ljava/lang/String;

    move-result-object v3

    .line 5834
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5835
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5836
    goto/16 :goto_1

    .line 5821
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5822
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5823
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriptionSpecificCarrierId(I)I

    move-result v3

    .line 5824
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5825
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5826
    goto/16 :goto_1

    .line 5811
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5812
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5813
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriptionCarrierName(I)Ljava/lang/String;

    move-result-object v3

    .line 5814
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5815
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5816
    goto/16 :goto_1

    .line 5801
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5802
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5803
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriptionCarrierId(I)I

    move-result v3

    .line 5804
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5805
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5806
    goto/16 :goto_1

    .line 5793
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_ad
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllowedCarriers()Landroid/telephony/CarrierRestrictionRules;

    move-result-object v2

    .line 5794
    .local v2, "_result":Landroid/telephony/CarrierRestrictionRules;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5795
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5796
    goto/16 :goto_1

    .line 5784
    .end local v2    # "_result":Landroid/telephony/CarrierRestrictionRules;
    :pswitch_ae
    sget-object v2, Landroid/telephony/CarrierRestrictionRules;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierRestrictionRules;

    .line 5785
    .local v2, "_arg0":Landroid/telephony/CarrierRestrictionRules;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5786
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;)I

    move-result v3

    .line 5787
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5788
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5789
    goto/16 :goto_1

    .line 5776
    .end local v2    # "_arg0":Landroid/telephony/CarrierRestrictionRules;
    .end local v3    # "_result":I
    :pswitch_af
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getTelephonyHistograms()Ljava/util/List;

    move-result-object v2

    .line 5777
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5778
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 5779
    goto/16 :goto_1

    .line 5767
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5768
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5769
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaPrlVersion(I)Ljava/lang/String;

    move-result-object v3

    .line 5770
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5771
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5772
    goto/16 :goto_1

    .line 5757
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5758
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5759
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getEsn(I)Ljava/lang/String;

    move-result-object v3

    .line 5760
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5761
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5762
    goto/16 :goto_1

    .line 5745
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5747
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5748
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5749
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getAidForAppType(II)Ljava/lang/String;

    move-result-object v4

    .line 5750
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5751
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5752
    goto/16 :goto_1

    .line 5737
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_b3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPackagesWithCarrierPrivilegesForAllPhones()Ljava/util/List;

    move-result-object v2

    .line 5738
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5739
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5740
    goto/16 :goto_1

    .line 5728
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5729
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5730
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getPackagesWithCarrierPrivileges(I)Ljava/util/List;

    move-result-object v3

    .line 5731
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5732
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5733
    goto/16 :goto_1

    .line 5723
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_b5
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoicemailVibrationEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5714
    :pswitch_b6
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 5715
    .local v2, "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5716
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v3

    .line 5717
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5718
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5719
    goto/16 :goto_1

    .line 5709
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_result":Z
    :pswitch_b7
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoicemailRingtoneUri$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5700
    :pswitch_b8
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 5701
    .restart local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5702
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object v3

    .line 5703
    .local v3, "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5704
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5705
    goto/16 :goto_1

    .line 5695
    .end local v2    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .end local v3    # "_result":Landroid/net/Uri;
    :pswitch_b9
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getServiceStateForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5688
    :pswitch_ba
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 5689
    .local v2, "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5690
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V

    .line 5691
    goto/16 :goto_1

    .line 5678
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5679
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5680
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimLocaleForSubscriber(I)Ljava/lang/String;

    move-result-object v3

    .line 5681
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5682
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5683
    goto/16 :goto_1

    .line 5667
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5669
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5670
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5671
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->factoryReset(ILjava/lang/String;)V

    .line 5672
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5673
    goto/16 :goto_1

    .line 5657
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5658
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5659
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 5660
    .local v3, "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5661
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5662
    goto/16 :goto_1

    .line 5652
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telecom/PhoneAccountHandle;
    :pswitch_be
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getSubIdForPhoneAccountHandle$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5648
    :pswitch_bf
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getDeviceSoftwareVersionForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5639
    :pswitch_c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5640
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5641
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getManufacturerCodeForSlot(I)Ljava/lang/String;

    move-result-object v3

    .line 5642
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5643
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5644
    goto/16 :goto_1

    .line 5634
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_c1
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getMeidForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5625
    :pswitch_c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5626
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5627
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getTypeAllocationCodeForSlot(I)Ljava/lang/String;

    move-result-object v3

    .line 5628
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5629
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5630
    goto/16 :goto_1

    .line 5620
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_c3
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getImeiForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5609
    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5611
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5612
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5613
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceIdWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5614
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5615
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5616
    goto/16 :goto_1

    .line 5599
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5600
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5601
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5602
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5603
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5604
    goto/16 :goto_1

    .line 5589
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5590
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5591
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsRegTechnologyForMmTel(I)I

    move-result v3

    .line 5592
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5593
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5594
    goto/16 :goto_1

    .line 5579
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5580
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5581
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoTelephonyAvailable(I)Z

    move-result v3

    .line 5582
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5583
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5584
    goto/16 :goto_1

    .line 5569
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5570
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5571
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isWifiCallingAvailable(I)Z

    move-result v3

    .line 5572
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5573
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5574
    goto/16 :goto_1

    .line 5559
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5560
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5561
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isImsRegistered(I)Z

    move-result v3

    .line 5562
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5563
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5564
    goto/16 :goto_1

    .line 5551
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_ca
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isHearingAidCompatibilitySupported()Z

    move-result v2

    .line 5552
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5553
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5554
    goto/16 :goto_1

    .line 5542
    .end local v2    # "_result":Z
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5543
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5544
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRttSupported(I)Z

    move-result v3

    .line 5545
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5546
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5547
    goto/16 :goto_1

    .line 5534
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_cc
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isTtyModeSupported()Z

    move-result v2

    .line 5535
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5536
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5537
    goto/16 :goto_1

    .line 5530
    .end local v2    # "_result":Z
    :pswitch_cd
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isWorldPhone$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5526
    :pswitch_ce
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$canChangeDtmfToneLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5515
    :pswitch_cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5517
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5518
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5519
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoCallingEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 5520
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5521
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5522
    goto/16 :goto_1

    .line 5506
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 5507
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5508
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableVideoCalling(Z)V

    .line 5509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5510
    goto/16 :goto_1

    .line 5501
    .end local v2    # "_arg0":Z
    :pswitch_d1
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$uploadCallComposerPicture$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5490
    :pswitch_d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5492
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5493
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5494
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioAccessFamily(ILjava/lang/String;)I

    move-result v4

    .line 5495
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5496
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5497
    goto/16 :goto_1

    .line 5483
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_d3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->shutdownMobileRadios()V

    .line 5484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5485
    goto/16 :goto_1

    .line 5476
    :pswitch_d4
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needMobileRadioShutdown()Z

    move-result v2

    .line 5477
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5478
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5479
    goto/16 :goto_1

    .line 5459
    .end local v2    # "_result":Z
    :pswitch_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 5461
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5462
    .local v3, "_arg1_length":I
    if-gez v3, :cond_1

    .line 5463
    const/4 v4, 0x0

    .local v4, "_arg1":[B
    goto :goto_0

    .line 5465
    .end local v4    # "_arg1":[B
    :cond_1
    new-array v4, v3, [B

    .line 5467
    .restart local v4    # "_arg1":[B
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5468
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->invokeOemRilRequestRaw([B[B)I

    move-result v5

    .line 5469
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5470
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5471
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 5472
    goto/16 :goto_1

    .line 5454
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1_length":I
    .end local v4    # "_arg1":[B
    .end local v5    # "_result":I
    :pswitch_d6
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setRoamingOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5443
    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5445
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5446
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5447
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setOperatorBrandOverride(ILjava/lang/String;)Z

    move-result v4

    .line 5448
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5449
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5450
    goto/16 :goto_1

    .line 5431
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5433
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5434
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5435
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getMergedImsisFromGroup(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 5436
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5437
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 5438
    goto/16 :goto_1

    .line 5426
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":[Ljava/lang/String;
    :pswitch_d9
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getMergedSubscriberIds$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5413
    :pswitch_da
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5415
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5417
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5418
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5419
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1AlphaTagForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5420
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5421
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5422
    goto/16 :goto_1

    .line 5399
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_db
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5401
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5403
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5404
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5405
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5406
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5407
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5408
    goto/16 :goto_1

    .line 5385
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5387
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5389
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5390
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5391
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 5392
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5393
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5394
    goto/16 :goto_1

    .line 5373
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_dd
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 5375
    .local v2, "_arg0":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5376
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5377
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 5378
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5379
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5380
    goto/16 :goto_1

    .line 5363
    .end local v2    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_de
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5364
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5365
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v3

    .line 5366
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5367
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5368
    goto/16 :goto_1

    .line 5351
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_df
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5353
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5354
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5355
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackage(ILjava/lang/String;)I

    move-result v4

    .line 5356
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5357
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5358
    goto/16 :goto_1

    .line 5339
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5341
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5342
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5343
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPrivilegeStatusForUid(II)I

    move-result v4

    .line 5344
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5345
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5346
    goto/16 :goto_1

    .line 5329
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5330
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5331
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPrivilegeStatus(I)I

    move-result v3

    .line 5332
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5333
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5334
    goto/16 :goto_1

    .line 5324
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_e2
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestNumberVerification$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5315
    :pswitch_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5316
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5317
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v3

    .line 5318
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5319
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5320
    goto/16 :goto_1

    .line 5305
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5306
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5307
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMdn(I)Ljava/lang/String;

    move-result-object v3

    .line 5308
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5309
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5310
    goto/16 :goto_1

    .line 5296
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 5297
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5298
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsRegistrationState(Z)V

    .line 5299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5300
    goto/16 :goto_1

    .line 5286
    .end local v2    # "_arg0":Z
    :pswitch_e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5287
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5288
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isManualNetworkSelectionAllowed(I)Z

    move-result v3

    .line 5289
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5290
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5291
    goto/16 :goto_1

    .line 5274
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5276
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5277
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5278
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataEnabledForReason(II)Z

    move-result v4

    .line 5279
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5280
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5281
    goto/16 :goto_1

    .line 5269
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_e8
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setDataEnabledForReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5260
    :pswitch_e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5261
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5262
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataEnabled(I)Z

    move-result v3

    .line 5263
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5264
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5265
    goto/16 :goto_1

    .line 5250
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5251
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5252
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isUserDataEnabled(I)Z

    move-result v3

    .line 5253
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5254
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5255
    goto/16 :goto_1

    .line 5240
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5241
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5242
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataEnabled(I)Z

    move-result v3

    .line 5243
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5244
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5245
    goto/16 :goto_1

    .line 5226
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5228
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5230
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 5231
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5232
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setAllowedNetworkTypesForReason(IIJ)Z

    move-result v6

    .line 5233
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5234
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5235
    goto/16 :goto_1

    .line 5214
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":J
    .end local v6    # "_result":Z
    :pswitch_ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5216
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5217
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5218
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllowedNetworkTypesForReason(II)J

    move-result-wide v4

    .line 5219
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5220
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 5221
    goto/16 :goto_1

    .line 5200
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":J
    :pswitch_ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5202
    .restart local v2    # "_arg0":I
    sget-object v3, Lcom/android/internal/telephony/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/OperatorInfo;

    .line 5204
    .local v3, "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 5205
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5206
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result v5

    .line 5207
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5208
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5209
    goto/16 :goto_1

    .line 5189
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":Z
    :pswitch_ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5191
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5192
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5193
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->stopNetworkScan(II)V

    .line 5194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5195
    goto/16 :goto_1

    .line 5184
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_f0
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestNetworkScan$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5171
    :pswitch_f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5173
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5175
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5176
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5177
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellNetworkScanResults(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/CellNetworkScanResult;

    move-result-object v5

    .line 5178
    .local v5, "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5179
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5180
    goto/16 :goto_1

    .line 5162
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    :pswitch_f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5163
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5164
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 5165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5166
    goto/16 :goto_1

    .line 5151
    .end local v2    # "_arg0":I
    :pswitch_f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5153
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    .line 5154
    .local v3, "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5155
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsMmTelFeatureState(ILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 5156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5157
    goto/16 :goto_1

    .line 5137
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5139
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5141
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5142
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5143
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getBoundImsServicePackage(IZI)Ljava/lang/String;

    move-result-object v5

    .line 5144
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5145
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5146
    goto/16 :goto_1

    .line 5127
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5128
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5129
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->clearCarrierImsServiceOverride(I)Z

    move-result v3

    .line 5130
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5131
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5132
    goto/16 :goto_1

    .line 5122
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_f6
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setBoundImsServiceOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5111
    :pswitch_f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5113
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5114
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5115
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsConfig(II)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v4

    .line 5116
    .local v4, "_result":Landroid/telephony/ims/aidl/IImsConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5117
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5118
    goto/16 :goto_1

    .line 5099
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/telephony/ims/aidl/IImsConfig;
    :pswitch_f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5101
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5102
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5103
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v4

    .line 5104
    .local v4, "_result":Landroid/telephony/ims/aidl/IImsRegistration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5105
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5106
    goto/16 :goto_1

    .line 5090
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/telephony/ims/aidl/IImsRegistration;
    :pswitch_f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceFeatureCallback;

    move-result-object v2

    .line 5091
    .local v2, "_arg0":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5092
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterImsFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V

    .line 5093
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5094
    goto/16 :goto_1

    .line 5079
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    :pswitch_fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5081
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceFeatureCallback;

    move-result-object v3

    .line 5082
    .local v3, "_arg1":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5083
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerMmTelFeatureCallback(ILcom/android/ims/internal/IImsServiceFeatureCallback;)V

    .line 5084
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5085
    goto/16 :goto_1

    .line 5070
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    :pswitch_fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5071
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5072
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->resetIms(I)V

    .line 5073
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5074
    goto/16 :goto_1

    .line 5061
    .end local v2    # "_arg0":I
    :pswitch_fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5062
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5063
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->disableIms(I)V

    .line 5064
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5065
    goto/16 :goto_1

    .line 5052
    .end local v2    # "_arg0":I
    :pswitch_fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5053
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5054
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableIms(I)V

    .line 5055
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5056
    goto/16 :goto_1

    .line 5042
    .end local v2    # "_arg0":I
    :pswitch_fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5043
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5044
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isTetheringApnRequiredForSubscriber(I)Z

    move-result v3

    .line 5045
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5046
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5047
    goto/16 :goto_1

    .line 5032
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5033
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5034
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllowedNetworkTypesBitmask(I)I

    move-result v3

    .line 5035
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5036
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5037
    goto/16 :goto_1

    .line 5022
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5023
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5024
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->rebootModem(I)Z

    move-result v3

    .line 5025
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5026
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5027
    goto/16 :goto_1

    .line 5012
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5013
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5014
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->resetModemConfig(I)Z

    move-result v3

    .line 5015
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5016
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5017
    goto/16 :goto_1

    .line 5002
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_102
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 5003
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5004
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteCdmaPrl([B)Z

    move-result v3

    .line 5005
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5006
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5007
    goto/16 :goto_1

    .line 4990
    .end local v2    # "_arg0":[B
    .end local v3    # "_result":Z
    :pswitch_103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4992
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4993
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4994
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteItem(ILjava/lang/String;)Z

    move-result v4

    .line 4995
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4996
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4997
    goto/16 :goto_1

    .line 4980
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4981
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4982
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->nvReadItem(I)Ljava/lang/String;

    move-result-object v3

    .line 4983
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4984
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4985
    goto/16 :goto_1

    .line 4968
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4970
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4971
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4972
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4973
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4974
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4975
    goto/16 :goto_1

    .line 4963
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_106
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$iccExchangeSimIO$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4959
    :pswitch_107
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$iccTransmitApduBasicChannel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4955
    :pswitch_108
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$iccTransmitApduBasicChannelByPort$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4951
    :pswitch_109
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$iccTransmitApduLogicalChannel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4947
    :pswitch_10a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$iccTransmitApduLogicalChannelByPort$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4938
    :pswitch_10b
    sget-object v2, Lcom/android/internal/telephony/IccLogicalChannelRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    .line 4939
    .local v2, "_arg0":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4940
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->iccCloseLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Z

    move-result v3

    .line 4941
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4942
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4943
    goto/16 :goto_1

    .line 4928
    .end local v2    # "_arg0":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    .end local v3    # "_result":Z
    :pswitch_10c
    sget-object v2, Lcom/android/internal/telephony/IccLogicalChannelRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    .line 4929
    .restart local v2    # "_arg0":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4930
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v3

    .line 4931
    .local v3, "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4932
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4933
    goto/16 :goto_1

    .line 4919
    .end local v2    # "_arg0":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    .end local v3    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :pswitch_10d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4920
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4921
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellInfoListRate(I)V

    .line 4922
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4923
    goto/16 :goto_1

    .line 4914
    .end local v2    # "_arg0":I
    :pswitch_10e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestCellInfoUpdateWithWorkSource$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4910
    :pswitch_10f
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestCellInfoUpdate$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4899
    :pswitch_110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4901
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4902
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4903
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 4904
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4905
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4906
    goto/16 :goto_1

    .line 4885
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :pswitch_111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4887
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4889
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4890
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4891
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaModeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 4892
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4893
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4894
    goto/16 :goto_1

    .line 4873
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4875
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4876
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4877
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 4878
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4879
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4880
    goto/16 :goto_1

    .line 4863
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4864
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4865
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCardUsingSlotIndex(I)Z

    move-result v3

    .line 4866
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4867
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4868
    goto/16 :goto_1

    .line 4855
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_114
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v2

    .line 4856
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4857
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4858
    goto/16 :goto_1

    .line 4842
    .end local v2    # "_result":Z
    :pswitch_115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4844
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4846
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4847
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4848
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 4849
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4850
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4851
    goto/16 :goto_1

    .line 4828
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4830
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4832
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4833
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4834
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 4835
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4836
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4837
    goto/16 :goto_1

    .line 4816
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4818
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4819
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4820
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 4821
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4822
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4823
    goto/16 :goto_1

    .line 4802
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4804
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4806
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4807
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4808
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 4809
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4810
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4811
    goto/16 :goto_1

    .line 4791
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4793
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4794
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4795
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->sendDialerSpecialCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 4796
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4797
    goto/16 :goto_1

    .line 4786
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_11a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$sendVisualVoicemailSmsForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4777
    :pswitch_11b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4778
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4779
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getActiveVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object v3

    .line 4780
    .local v3, "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4781
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4782
    goto/16 :goto_1

    .line 4765
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    :pswitch_11c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4767
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4768
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4769
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object v4

    .line 4770
    .local v4, "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4771
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4772
    goto/16 :goto_1

    .line 4755
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    :pswitch_11d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4757
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4758
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4759
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->disableVisualVoicemailSmsFilter(Ljava/lang/String;I)V

    .line 4760
    goto/16 :goto_1

    .line 4742
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_11e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4744
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4746
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/telephony/VisualVoicemailSmsFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/VisualVoicemailSmsFilterSettings;

    .line 4747
    .local v4, "_arg2":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4748
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->enableVisualVoicemailSmsFilter(Ljava/lang/String;ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V

    .line 4749
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4750
    goto/16 :goto_1

    .line 4728
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    :pswitch_11f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4730
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4732
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4733
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4734
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getVisualVoicemailPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 4735
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4736
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4737
    goto/16 :goto_1

    .line 4716
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4718
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4719
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4720
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getVisualVoicemailSettings(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v4

    .line 4721
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4722
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4723
    goto/16 :goto_1

    .line 4706
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/os/Bundle;
    :pswitch_121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4707
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4708
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isConcurrentVoiceAndDataAllowed(I)Z

    move-result v3

    .line 4709
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4710
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4711
    goto/16 :goto_1

    .line 4692
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4694
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4696
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4697
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4698
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCountForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 4699
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4700
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4701
    goto/16 :goto_1

    .line 4680
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4682
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4683
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4684
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivationState(ILjava/lang/String;)I

    move-result v4

    .line 4685
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4686
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4687
    goto/16 :goto_1

    .line 4668
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4670
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4671
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4672
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceActivationState(ILjava/lang/String;)I

    move-result v4

    .line 4673
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4674
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4675
    goto/16 :goto_1

    .line 4657
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4659
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4660
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4661
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataActivationState(II)V

    .line 4662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4663
    goto/16 :goto_1

    .line 4646
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4648
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4649
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4650
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoiceActivationState(II)V

    .line 4651
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4652
    goto/16 :goto_1

    .line 4632
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4634
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4636
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4637
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4638
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 4639
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4640
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4641
    goto/16 :goto_1

    .line 4624
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_128
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v2

    .line 4625
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4626
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4627
    goto/16 :goto_1

    .line 4611
    .end local v2    # "_result":Z
    :pswitch_129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4613
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4615
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4616
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4617
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriTextForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4618
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4619
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4620
    goto/16 :goto_1

    .line 4599
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_12a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4601
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4602
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4603
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4604
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4605
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4606
    goto/16 :goto_1

    .line 4585
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_12b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4587
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4589
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4590
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4591
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconModeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 4592
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4593
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4594
    goto/16 :goto_1

    .line 4573
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_12c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4575
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4576
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4577
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 4578
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4579
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4580
    goto/16 :goto_1

    .line 4559
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_12d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4561
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4563
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4564
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4565
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndexForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 4566
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4567
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4568
    goto/16 :goto_1

    .line 4547
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_12e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4549
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4550
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4551
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 4552
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4553
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4554
    goto/16 :goto_1

    .line 4537
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_12f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4538
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4539
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneTypeForSlot(I)I

    move-result v3

    .line 4540
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4541
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4542
    goto/16 :goto_1

    .line 4529
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_130
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v2

    .line 4530
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4531
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4532
    goto/16 :goto_1

    .line 4520
    .end local v2    # "_result":I
    :pswitch_131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4521
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4522
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataStateForSubId(I)I

    move-result v3

    .line 4523
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4524
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4525
    goto/16 :goto_1

    .line 4512
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_132
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v2

    .line 4513
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4514
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4515
    goto/16 :goto_1

    .line 4503
    .end local v2    # "_result":I
    :pswitch_133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4504
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4505
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivityForSubId(I)I

    move-result v3

    .line 4506
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4507
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4508
    goto/16 :goto_1

    .line 4495
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_134
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v2

    .line 4496
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4497
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4498
    goto/16 :goto_1

    .line 4482
    .end local v2    # "_result":I
    :pswitch_135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4484
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4486
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4487
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4488
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallStateForSubscription(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 4489
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4490
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4491
    goto/16 :goto_1

    .line 4474
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_136
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v2

    .line 4475
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4476
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4477
    goto/16 :goto_1

    .line 4463
    .end local v2    # "_result":I
    :pswitch_137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4465
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4466
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4467
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 4468
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4469
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4470
    goto/16 :goto_1

    .line 4453
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :pswitch_138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4454
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4455
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v3

    .line 4456
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4457
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4458
    goto/16 :goto_1

    .line 4441
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4443
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4444
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4445
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v4

    .line 4446
    .local v4, "_result":Landroid/telephony/CellIdentity;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4447
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4448
    goto/16 :goto_1

    .line 4431
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/telephony/CellIdentity;
    :pswitch_13a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4432
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4433
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible(I)Z

    move-result v3

    .line 4434
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4435
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4436
    goto/16 :goto_1

    .line 4421
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_13b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4422
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4423
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity(Ljava/lang/String;)Z

    move-result v3

    .line 4424
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4425
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4426
    goto/16 :goto_1

    .line 4411
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_13c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4412
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4413
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity(Ljava/lang/String;)Z

    move-result v3

    .line 4414
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4415
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4416
    goto/16 :goto_1

    .line 4404
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_13d
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 4405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4406
    goto/16 :goto_1

    .line 4398
    :pswitch_13e
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 4399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4400
    goto/16 :goto_1

    .line 4390
    :pswitch_13f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4391
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4392
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocationWithPackageName(Ljava/lang/String;)V

    .line 4393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4394
    goto/16 :goto_1

    .line 4383
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_140
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 4384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4385
    goto/16 :goto_1

    .line 4374
    :pswitch_141
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4375
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4376
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioPower(Z)Z

    move-result v3

    .line 4377
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4378
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4379
    goto/16 :goto_1

    .line 4362
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4364
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4365
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4366
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioForSubscriber(IZ)Z

    move-result v4

    .line 4367
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4368
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4369
    goto/16 :goto_1

    .line 4352
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_143
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4353
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4354
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v3

    .line 4355
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4356
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4357
    goto/16 :goto_1

    .line 4343
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4344
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4345
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOffForSubscriber(I)V

    .line 4346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4347
    goto/16 :goto_1

    .line 4336
    .end local v2    # "_arg0":I
    :pswitch_145
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 4337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4338
    goto/16 :goto_1

    .line 4325
    :pswitch_146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4327
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4328
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4329
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmiForSubscriber(ILjava/lang/String;)Z

    move-result v4

    .line 4330
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4331
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4332
    goto/16 :goto_1

    .line 4312
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4314
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4316
    .restart local v3    # "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    .line 4317
    .local v4, "_arg2":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4318
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->handleUssdRequest(ILjava/lang/String;Landroid/os/ResultReceiver;)V

    .line 4319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4320
    goto/16 :goto_1

    .line 4302
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/ResultReceiver;
    :pswitch_148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4303
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4304
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v3

    .line 4305
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4306
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4307
    goto/16 :goto_1

    .line 4288
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4290
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4292
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4293
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4294
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v5

    .line 4295
    .local v5, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4296
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4297
    goto/16 :goto_1

    .line 4276
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":[I
    :pswitch_14a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4278
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4279
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4280
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v4

    .line 4281
    .local v4, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4282
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4283
    goto/16 :goto_1

    .line 4262
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":[I
    :pswitch_14b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4264
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4266
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4267
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4268
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 4269
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4270
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4271
    goto/16 :goto_1

    .line 4250
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_14c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4252
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4253
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4254
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinForSubscriber(ILjava/lang/String;)Z

    move-result v4

    .line 4255
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4256
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4257
    goto/16 :goto_1

    .line 4240
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_14d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4241
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4242
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallComposerStatus(I)I

    move-result v3

    .line 4243
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4244
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4245
    goto/16 :goto_1

    .line 4229
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_14e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4231
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4232
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4233
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setCallComposerStatus(II)V

    .line 4234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4235
    goto/16 :goto_1

    .line 4215
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_14f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4217
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4219
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4220
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4221
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnForSubscriberWithFeature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 4222
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4223
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4224
    goto :goto_1

    .line 4203
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4205
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4206
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4207
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnForSubscriber(ILjava/lang/String;)Z

    move-result v4

    .line 4208
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4209
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4210
    goto :goto_1

    .line 4191
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4193
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4194
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4195
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnWithFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 4196
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4197
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4198
    goto :goto_1

    .line 4181
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4182
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4183
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn(Ljava/lang/String;)Z

    move-result v3

    .line 4184
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4185
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4186
    goto :goto_1

    .line 4170
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4172
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4173
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4174
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;Ljava/lang/String;)V

    .line 4175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4176
    goto :goto_1

    .line 4161
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4162
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4163
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 4164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4165
    nop

    .line 7274
    .end local v2    # "_arg0":Ljava/lang/String;
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_154
        :pswitch_153
        :pswitch_152
        :pswitch_151
        :pswitch_150
        :pswitch_14f
        :pswitch_14e
        :pswitch_14d
        :pswitch_14c
        :pswitch_14b
        :pswitch_14a
        :pswitch_149
        :pswitch_148
        :pswitch_147
        :pswitch_146
        :pswitch_145
        :pswitch_144
        :pswitch_143
        :pswitch_142
        :pswitch_141
        :pswitch_140
        :pswitch_13f
        :pswitch_13e
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
    .end packed-switch
.end method
