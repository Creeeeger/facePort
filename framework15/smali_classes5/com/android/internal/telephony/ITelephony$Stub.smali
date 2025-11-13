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

.field static final blacklist TRANSACTION_addAttachRestrictionForCarrier:I = 0x18d

.field static final blacklist TRANSACTION_addUceRegistrationOverrideShell:I = 0x145

.field static final blacklist TRANSACTION_bootstrapAuthenticationRequest:I = 0x12a

.field static final greylist TRANSACTION_call:I = 0x2

.field static final greylist-max-o TRANSACTION_canChangeDtmfToneLength:I = 0x89

.field static final blacklist TRANSACTION_canConnectTo5GInDsdsMode:I = 0x122

.field static final greylist-max-o TRANSACTION_carrierActionReportDefaultNetworkStatus:I = 0xb2

.field static final blacklist TRANSACTION_carrierActionResetAll:I = 0xb3

.field static final greylist-max-o TRANSACTION_carrierActionSetRadioEnabled:I = 0xb1

.field static final blacklist TRANSACTION_changeIccLockPassword:I = 0x11e

.field static final greylist-max-o TRANSACTION_checkCarrierPrivilegesForPackage:I = 0x79

.field static final greylist-max-o TRANSACTION_checkCarrierPrivilegesForPackageAnyPhone:I = 0x7a

.field static final blacklist TRANSACTION_clearCarrierImsServiceOverride:I = 0x63

.field static final blacklist TRANSACTION_clearDomainSelectionServiceOverride:I = 0x197

.field static final blacklist TRANSACTION_clearRadioPowerOffForReason:I = 0x16

.field static final blacklist TRANSACTION_clearSignalStrengthUpdateRequest:I = 0x14d

.field static final blacklist TRANSACTION_clearUceRegistrationOverrideShell:I = 0x147

.field static final blacklist TRANSACTION_deprovisionSatellite:I = 0x1a9

.field static final blacklist TRANSACTION_deprovisionSatelliteService:I = 0x170

.field static final greylist-max-r TRANSACTION_dial:I = 0x1

.field static final greylist-max-o TRANSACTION_disableDataConnectivity:I = 0x1d

.field static final greylist-max-o TRANSACTION_disableIms:I = 0x5c

.field static final greylist-max-o TRANSACTION_disableLocationUpdates:I = 0x1b

.field static final greylist-max-o TRANSACTION_disableVisualVoicemailSmsFilter:I = 0x3b

.field static final blacklist TRANSACTION_doesSwitchMultiSimConfigTriggerReboot:I = 0x108

.field static final greylist-max-o TRANSACTION_enableDataConnectivity:I = 0x1c

.field static final greylist-max-o TRANSACTION_enableIms:I = 0x5b

.field static final greylist-max-o TRANSACTION_enableLocationUpdates:I = 0x1a

.field static final blacklist TRANSACTION_enableModemForSlot:I = 0x104

.field static final greylist-max-o TRANSACTION_enableVideoCalling:I = 0x87

.field static final greylist-max-o TRANSACTION_enableVisualVoicemailSmsFilter:I = 0x3a

.field static final blacklist TRANSACTION_enqueueSmsPickResult:I = 0x114

.field static final greylist-max-o TRANSACTION_factoryReset:I = 0x9c

.field static final greylist-max-o TRANSACTION_getActivePhoneType:I = 0x28

.field static final greylist-max-o TRANSACTION_getActivePhoneTypeForSlot:I = 0x29

.field static final greylist-max-o TRANSACTION_getActiveVisualVoicemailSmsFilterSettings:I = 0x3d

.field static final greylist-max-o TRANSACTION_getAidForAppType:I = 0xa6

.field static final greylist-max-o TRANSACTION_getAllCellInfo:I = 0x48

.field static final greylist-max-o TRANSACTION_getAllowedCarriers:I = 0xab

.field static final blacklist TRANSACTION_getAllowedNetworkTypesBitmask:I = 0x59

.field static final blacklist TRANSACTION_getAllowedNetworkTypesForReason:I = 0x6b

.field static final blacklist TRANSACTION_getAttachRestrictionReasonsForCarrier:I = 0x18f

.field static final blacklist TRANSACTION_getBoundGbaService:I = 0x12c

.field static final blacklist TRANSACTION_getBoundImsServicePackage:I = 0x64

.field static final blacklist TRANSACTION_getCallComposerStatus:I = 0x8

.field static final blacklist TRANSACTION_getCallForwarding:I = 0xb4

.field static final greylist-max-o TRANSACTION_getCallState:I = 0x22

.field static final blacklist TRANSACTION_getCallStateForSubscription:I = 0x23

.field static final blacklist TRANSACTION_getCallWaitingStatus:I = 0xb6

.field static final blacklist TRANSACTION_getCapabilityFromEab:I = 0x142

.field static final blacklist TRANSACTION_getCardIdForDefaultEuicc:I = 0xbf

.field static final blacklist TRANSACTION_getCarrierIdFromMccMnc:I = 0xb0

.field static final greylist-max-o TRANSACTION_getCarrierIdListVersion:I = 0xcc

.field static final greylist-max-o TRANSACTION_getCarrierPackageNamesForIntentAndPhone:I = 0x7b

.field static final greylist-max-o TRANSACTION_getCarrierPrivilegeStatus:I = 0x77

.field static final greylist-max-o TRANSACTION_getCarrierPrivilegeStatusForUid:I = 0x78

.field static final blacklist TRANSACTION_getCarrierRestrictionStatus:I = 0x166

.field static final blacklist TRANSACTION_getCarrierServicePackageNameForLogicalSlot:I = 0x15b

.field static final blacklist TRANSACTION_getCarrierSingleRegistrationEnabled:I = 0x13c

.field static final greylist-max-o TRANSACTION_getCdmaEriIconIndex:I = 0x2a

.field static final greylist-max-o TRANSACTION_getCdmaEriIconIndexForSubscriber:I = 0x2b

.field static final greylist-max-o TRANSACTION_getCdmaEriIconMode:I = 0x2c

.field static final greylist-max-o TRANSACTION_getCdmaEriIconModeForSubscriber:I = 0x2d

.field static final greylist-max-o TRANSACTION_getCdmaEriText:I = 0x2e

.field static final greylist-max-o TRANSACTION_getCdmaEriTextForSubscriber:I = 0x2f

.field static final greylist-max-o TRANSACTION_getCdmaMdn:I = 0x74

.field static final greylist-max-o TRANSACTION_getCdmaMin:I = 0x75

.field static final greylist-max-o TRANSACTION_getCdmaPrlVersion:I = 0xa8

.field static final blacklist TRANSACTION_getCdmaRoamingMode:I = 0xc6

.field static final blacklist TRANSACTION_getCdmaSubscriptionMode:I = 0xc8

.field static final blacklist TRANSACTION_getCellBroadcastIdRanges:I = 0x163

.field static final greylist-max-o TRANSACTION_getCellLocation:I = 0x1f

.field static final greylist-max-o TRANSACTION_getCellNetworkScanResults:I = 0x67

.field static final blacklist TRANSACTION_getCertsFromCarrierPrivilegeAccessRules:I = 0xf0

.field static final greylist-max-o TRANSACTION_getClientRequestStats:I = 0xb8

.field static final blacklist TRANSACTION_getContactFromEab:I = 0x141

.field static final blacklist TRANSACTION_getCurrentPackageName:I = 0x10c

.field static final greylist-max-o TRANSACTION_getDataActivationState:I = 0x35

.field static final greylist-max-o TRANSACTION_getDataActivity:I = 0x24

.field static final blacklist TRANSACTION_getDataActivityForSubId:I = 0x25

.field static final greylist-max-o TRANSACTION_getDataEnabled:I = 0x6d

.field static final greylist-max-o TRANSACTION_getDataNetworkType:I = 0x41

.field static final greylist-max-o TRANSACTION_getDataNetworkTypeForSubscriber:I = 0x42

.field static final greylist-max-o TRANSACTION_getDataState:I = 0x26

.field static final blacklist TRANSACTION_getDataStateForSubId:I = 0x27

.field static final blacklist TRANSACTION_getDefaultRespondViaMessageApplication:I = 0x15e

.field static final greylist TRANSACTION_getDeviceId:I = 0x92

.field static final blacklist TRANSACTION_getDeviceIdWithFeature:I = 0x93

.field static final blacklist TRANSACTION_getDeviceSingleRegistrationEnabled:I = 0x137

.field static final greylist-max-o TRANSACTION_getDeviceSoftwareVersionForSlot:I = 0x99

.field static final blacklist TRANSACTION_getDeviceUceEnabled:I = 0x143

.field static final greylist-max-o TRANSACTION_getEmergencyCallbackMode:I = 0xbd

.field static final blacklist TRANSACTION_getEmergencyNumberDbVersion:I = 0x100

.field static final blacklist TRANSACTION_getEmergencyNumberList:I = 0xee

.field static final blacklist TRANSACTION_getEmergencyNumberListTestMode:I = 0xff

.field static final blacklist TRANSACTION_getEquivalentHomePlmns:I = 0x123

.field static final greylist-max-o TRANSACTION_getEsn:I = 0xa7

.field static final greylist-max-o TRANSACTION_getForbiddenPlmns:I = 0xbb

.field static final blacklist TRANSACTION_getGbaReleaseTime:I = 0x12e

.field static final blacklist TRANSACTION_getHalVersion:I = 0x10b

.field static final greylist-max-o TRANSACTION_getImeiForSlot:I = 0x94

.field static final greylist-max-o TRANSACTION_getImsConfig:I = 0x61

.field static final blacklist TRANSACTION_getImsFeatureValidationOverride:I = 0x13e

.field static final blacklist TRANSACTION_getImsMmTelFeatureState:I = 0x65

.field static final blacklist TRANSACTION_getImsMmTelRegistrationState:I = 0xd6

.field static final blacklist TRANSACTION_getImsMmTelRegistrationTransportType:I = 0xd7

.field static final blacklist TRANSACTION_getImsProvisioningInt:I = 0xf9

.field static final blacklist TRANSACTION_getImsProvisioningStatusForCapability:I = 0xf6

.field static final blacklist TRANSACTION_getImsProvisioningString:I = 0xfa

.field static final greylist-max-o TRANSACTION_getImsRegTechnologyForMmTel:I = 0x91

.field static final greylist-max-o TRANSACTION_getImsRegistration:I = 0x60

.field static final blacklist TRANSACTION_getLastKnownCellIdentity:I = 0x155

.field static final blacklist TRANSACTION_getLastUcePidfXmlShell:I = 0x149

.field static final blacklist TRANSACTION_getLatestRcsContactUceCapabilityShell:I = 0x148

.field static final greylist-max-o TRANSACTION_getLine1AlphaTagForDisplay:I = 0x7e

.field static final greylist-max-o TRANSACTION_getLine1NumberForDisplay:I = 0x7d

.field static final greylist-max-o TRANSACTION_getLteOnCdmaMode:I = 0x46

.field static final greylist-max-o TRANSACTION_getLteOnCdmaModeForSubscriber:I = 0x47

.field static final blacklist TRANSACTION_getManualNetworkSelectionPlmn:I = 0x121

.field static final blacklist TRANSACTION_getManufacturerCodeForSlot:I = 0x98

.field static final greylist-max-o TRANSACTION_getMeidForSlot:I = 0x97

.field static final blacklist TRANSACTION_getMergedImsisFromGroup:I = 0x80

.field static final greylist-max-o TRANSACTION_getMergedSubscriberIds:I = 0x7f

.field static final blacklist TRANSACTION_getMmsUAProfUrl:I = 0x117

.field static final blacklist TRANSACTION_getMmsUserAgent:I = 0x116

.field static final blacklist TRANSACTION_getMobileProvisioningUrl:I = 0x13f

.field static final blacklist TRANSACTION_getModemService:I = 0x157

.field static final greylist-max-o TRANSACTION_getNeighboringCellInfo:I = 0x21

.field static final greylist-max-o TRANSACTION_getNetworkCountryIsoForPhone:I = 0x20

.field static final blacklist TRANSACTION_getNetworkSelectionMode:I = 0xcf

.field static final greylist-max-o TRANSACTION_getNetworkTypeForSubscriber:I = 0x40

.field static final blacklist TRANSACTION_getNumberOfModemsWithSimultaneousDataConnections:I = 0xce

.field static final greylist-max-o TRANSACTION_getPackagesWithCarrierPrivileges:I = 0xa4

.field static final blacklist TRANSACTION_getPackagesWithCarrierPrivilegesForAllPhones:I = 0xa5

.field static final blacklist TRANSACTION_getPhoneAccountHandleForSubscriptionId:I = 0x9b

.field static final blacklist TRANSACTION_getPhoneCapability:I = 0x14e

.field static final blacklist TRANSACTION_getPrimaryImei:I = 0x95

.field static final greylist-max-o TRANSACTION_getRadioAccessFamily:I = 0x85

.field static final blacklist TRANSACTION_getRadioHalVersion:I = 0x10a

.field static final blacklist TRANSACTION_getRadioPowerOffReasons:I = 0x17

.field static final blacklist TRANSACTION_getRadioPowerState:I = 0xd1

.field static final blacklist TRANSACTION_getRcsProvisioningStatusForCapability:I = 0xf7

.field static final blacklist TRANSACTION_getRcsSingleRegistrationTestModeEnabled:I = 0x135

.field static final blacklist TRANSACTION_getSatelliteDisallowedReasons:I = 0x17a

.field static final blacklist TRANSACTION_getSatellitePlmnsForCarrier:I = 0x19d

.field static final blacklist TRANSACTION_getServiceStateForSlot:I = 0x9f

.field static final blacklist TRANSACTION_getShaIdFromAllowList:I = 0x18c

.field static final greylist-max-o TRANSACTION_getSignalStrength:I = 0xbe

.field static final blacklist TRANSACTION_getSimLocaleForSubscriber:I = 0x9d

.field static final blacklist TRANSACTION_getSimStateForSlotIndex:I = 0x15f

.field static final blacklist TRANSACTION_getSlicingConfig:I = 0x150

.field static final blacklist TRANSACTION_getSlotsMapping:I = 0x109

.field static final blacklist TRANSACTION_getSubIdForPhoneAccountHandle:I = 0x9a

.field static final greylist-max-o TRANSACTION_getSubscriptionCarrierId:I = 0xac

.field static final greylist-max-o TRANSACTION_getSubscriptionCarrierName:I = 0xad

.field static final blacklist TRANSACTION_getSubscriptionSpecificCarrierId:I = 0xae

.field static final blacklist TRANSACTION_getSubscriptionSpecificCarrierName:I = 0xaf

.field static final blacklist TRANSACTION_getSystemSelectionChannels:I = 0x112

.field static final greylist-max-o TRANSACTION_getTelephonyHistograms:I = 0xa9

.field static final blacklist TRANSACTION_getTypeAllocationCodeForSlot:I = 0x96

.field static final blacklist TRANSACTION_getUiccCardsInfo:I = 0xc0

.field static final greylist-max-o TRANSACTION_getUiccSlotsInfo:I = 0xc1

.field static final greylist-max-o TRANSACTION_getVisualVoicemailPackageName:I = 0x39

.field static final greylist-max-o TRANSACTION_getVisualVoicemailSettings:I = 0x38

.field static final greylist-max-o TRANSACTION_getVisualVoicemailSmsFilterSettings:I = 0x3c

.field static final blacklist TRANSACTION_getVoWiFiModeSetting:I = 0xe8

.field static final blacklist TRANSACTION_getVoWiFiRoamingModeSetting:I = 0xea

.field static final greylist-max-o TRANSACTION_getVoiceActivationState:I = 0x34

.field static final greylist-max-o TRANSACTION_getVoiceMessageCountForSubscriber:I = 0x36

.field static final greylist-max-o TRANSACTION_getVoiceNetworkTypeForSubscriber:I = 0x43

.field static final greylist-max-o TRANSACTION_getVoicemailRingtoneUri:I = 0xa0

.field static final greylist-max-o TRANSACTION_handlePinMmi:I = 0xd

.field static final greylist-max-o TRANSACTION_handlePinMmiForSubscriber:I = 0xf

.field static final greylist-max-o TRANSACTION_handleUssdRequest:I = 0xe

.field static final greylist-max-o TRANSACTION_hasIccCard:I = 0x44

.field static final greylist-max-o TRANSACTION_hasIccCardUsingSlotIndex:I = 0x45

.field static final greylist-max-o TRANSACTION_iccCloseLogicalChannel:I = 0x4d

.field static final greylist-max-o TRANSACTION_iccExchangeSimIO:I = 0x52

.field static final greylist-max-o TRANSACTION_iccOpenLogicalChannel:I = 0x4c

.field static final greylist-max-o TRANSACTION_iccTransmitApduBasicChannel:I = 0x51

.field static final blacklist TRANSACTION_iccTransmitApduBasicChannelByPort:I = 0x50

.field static final greylist-max-o TRANSACTION_iccTransmitApduLogicalChannel:I = 0x4f

.field static final blacklist TRANSACTION_iccTransmitApduLogicalChannelByPort:I = 0x4e

.field static final blacklist TRANSACTION_isAdvancedCallingSettingEnabled:I = 0xdd

.field static final blacklist TRANSACTION_isAospDomainSelectionService:I = 0x198

.field static final blacklist TRANSACTION_isApnMetered:I = 0x110

.field static final blacklist TRANSACTION_isApplicationOnUicc:I = 0x10d

.field static final blacklist TRANSACTION_isAvailable:I = 0xdb

.field static final blacklist TRANSACTION_isCapable:I = 0xda

.field static final blacklist TRANSACTION_isCellularIdentifierDisclosureNotificationsEnabled:I = 0x19a

.field static final greylist-max-o TRANSACTION_isConcurrentVoiceAndDataAllowed:I = 0x37

.field static final blacklist TRANSACTION_isCrossSimCallingEnabledByUser:I = 0xe3

.field static final greylist-max-o TRANSACTION_isDataConnectivityPossible:I = 0x1e

.field static final greylist-max-o TRANSACTION_isDataEnabled:I = 0x6f

.field static final blacklist TRANSACTION_isDataEnabledForApn:I = 0x10f

.field static final blacklist TRANSACTION_isDataEnabledForReason:I = 0x71

.field static final blacklist TRANSACTION_isDataRoamingEnabled:I = 0xc4

.field static final blacklist TRANSACTION_isDomainSelectionSupported:I = 0x165

.field static final blacklist TRANSACTION_isEmergencyNumber:I = 0xef

.field static final greylist-max-o TRANSACTION_isHearingAidCompatibilitySupported:I = 0x8d

.field static final blacklist TRANSACTION_isIccLockEnabled:I = 0x11c

.field static final greylist-max-o TRANSACTION_isImsRegistered:I = 0x8e

.field static final blacklist TRANSACTION_isInEmergencySmsMode:I = 0xd0

.field static final blacklist TRANSACTION_isManualNetworkSelectionAllowed:I = 0x72

.field static final blacklist TRANSACTION_isMmTelCapabilitySupported:I = 0xdc

.field static final blacklist TRANSACTION_isMobileDataPolicyEnabled:I = 0x119

.field static final blacklist TRANSACTION_isModemEnabledForSlot:I = 0x10e

.field static final blacklist TRANSACTION_isMultiSimSupported:I = 0x106

.field static final blacklist TRANSACTION_isMvnoMatched:I = 0x113

.field static final blacklist TRANSACTION_isNrDualConnectivityEnabled:I = 0x127

.field static final blacklist TRANSACTION_isNullCipherAndIntegrityPreferenceEnabled:I = 0x162

.field static final blacklist TRANSACTION_isNullCipherNotificationsEnabled:I = 0x19c

.field static final blacklist TRANSACTION_isPremiumCapabilityAvailableForPurchase:I = 0x151

.field static final blacklist TRANSACTION_isProvisioningRequiredForCapability:I = 0x158

.field static final blacklist TRANSACTION_isRadioInterfaceCapabilitySupported:I = 0x128

.field static final greylist-max-o TRANSACTION_isRadioOn:I = 0x3

.field static final greylist-max-o TRANSACTION_isRadioOnForSubscriber:I = 0x5

.field static final blacklist TRANSACTION_isRadioOnForSubscriberWithFeature:I = 0x6

.field static final blacklist TRANSACTION_isRadioOnWithFeature:I = 0x4

.field static final blacklist TRANSACTION_isRcsProvisioningRequiredForCapability:I = 0x159

.field static final blacklist TRANSACTION_isRcsVolteSingleRegistrationCapable:I = 0x130

.field static final blacklist TRANSACTION_isRemovableEsimDefaultEuicc:I = 0x15d

.field static final blacklist TRANSACTION_isRttSupported:I = 0x8c

.field static final blacklist TRANSACTION_isTetheringApnRequiredForSubscriber:I = 0x5a

.field static final greylist-max-o TRANSACTION_isTtyModeSupported:I = 0x8b

.field static final blacklist TRANSACTION_isTtyOverVolteEnabled:I = 0xed

.field static final greylist-max-o TRANSACTION_isUserDataEnabled:I = 0x6e

.field static final greylist-max-o TRANSACTION_isVideoCallingEnabled:I = 0x88

.field static final greylist-max-o TRANSACTION_isVideoTelephonyAvailable:I = 0x90

.field static final blacklist TRANSACTION_isVoNrEnabled:I = 0x125

.field static final blacklist TRANSACTION_isVoWiFiRoamingSettingEnabled:I = 0xe5

.field static final blacklist TRANSACTION_isVoWiFiSettingEnabled:I = 0xe1

.field static final greylist-max-o TRANSACTION_isVoicemailVibrationEnabled:I = 0xa2

.field static final blacklist TRANSACTION_isVtSettingEnabled:I = 0xdf

.field static final greylist-max-o TRANSACTION_isWifiCallingAvailable:I = 0x8f

.field static final greylist-max-o TRANSACTION_isWorldPhone:I = 0x8a

.field static final greylist-max-o TRANSACTION_needMobileRadioShutdown:I = 0x83

.field static final greylist-max-o TRANSACTION_needsOtaServiceProvisioning:I = 0x30

.field static final blacklist TRANSACTION_notifyOtaEmergencyNumberDbInstalled:I = 0x101

.field static final blacklist TRANSACTION_notifyRcsAutoConfigurationReceived:I = 0x11b

.field static final greylist-max-o TRANSACTION_nvReadItem:I = 0x54

.field static final greylist-max-o TRANSACTION_nvWriteCdmaPrl:I = 0x56

.field static final greylist-max-o TRANSACTION_nvWriteItem:I = 0x55

.field static final blacklist TRANSACTION_overrideCarrierRoamingNtnEligibilityChanged:I = 0x1a8

.field static final blacklist TRANSACTION_persistEmergencyCallDiagnosticData:I = 0x160

.field static final blacklist TRANSACTION_pollPendingDatagrams:I = 0x178

.field static final blacklist TRANSACTION_prepareForUnattendedReboot:I = 0x14f

.field static final blacklist TRANSACTION_provisionSatellite:I = 0x1a6

.field static final blacklist TRANSACTION_provisionSatelliteService:I = 0x16f

.field static final blacklist TRANSACTION_purchasePremiumCapability:I = 0x152

.field static final blacklist TRANSACTION_rebootModem:I = 0x58

.field static final greylist-max-o TRANSACTION_refreshUiccProfile:I = 0xcd

.field static final blacklist TRANSACTION_registerFeatureProvisioningChangedCallback:I = 0xf3

.field static final blacklist TRANSACTION_registerForCapabilitiesChanged:I = 0x193

.field static final blacklist TRANSACTION_registerForCommunicationAllowedStateChanged:I = 0x1a0

.field static final blacklist TRANSACTION_registerForIncomingDatagram:I = 0x176

.field static final blacklist TRANSACTION_registerForNtnSignalStrengthChanged:I = 0x191

.field static final blacklist TRANSACTION_registerForSatelliteDisallowedReasonsChanged:I = 0x17b

.field static final blacklist TRANSACTION_registerForSatelliteModemStateChanged:I = 0x174

.field static final blacklist TRANSACTION_registerForSatelliteProvisionStateChanged:I = 0x171

.field static final blacklist TRANSACTION_registerForSatelliteSupportedStateChanged:I = 0x19e

.field static final blacklist TRANSACTION_registerImsEmergencyRegistrationCallback:I = 0xd4

.field static final blacklist TRANSACTION_registerImsProvisioningChangedCallback:I = 0xf1

.field static final blacklist TRANSACTION_registerImsRegistrationCallback:I = 0xd2

.field static final blacklist TRANSACTION_registerImsStateCallback:I = 0x153

.field static final blacklist TRANSACTION_registerMmTelCapabilityCallback:I = 0xd8

.field static final blacklist TRANSACTION_registerMmTelFeatureCallback:I = 0x5e

.field static final blacklist TRANSACTION_registerRcsProvisioningCallback:I = 0x131

.field static final blacklist TRANSACTION_removeAttachRestrictionForCarrier:I = 0x18e

.field static final blacklist TRANSACTION_removeContactFromEab:I = 0x140

.field static final blacklist TRANSACTION_removeUceRegistrationOverrideShell:I = 0x146

.field static final blacklist TRANSACTION_removeUceRequestDisallowedStatus:I = 0x14a

.field static final blacklist TRANSACTION_requestCellInfoUpdate:I = 0x49

.field static final blacklist TRANSACTION_requestCellInfoUpdateWithWorkSource:I = 0x4a

.field static final blacklist TRANSACTION_requestIsCommunicationAllowedForCurrentLocation:I = 0x17d

.field static final blacklist TRANSACTION_requestIsDemoModeEnabled:I = 0x169

.field static final blacklist TRANSACTION_requestIsEmergencyModeEnabled:I = 0x16a

.field static final blacklist TRANSACTION_requestIsSatelliteEnabled:I = 0x168

.field static final blacklist TRANSACTION_requestIsSatelliteProvisioned:I = 0x173

.field static final blacklist TRANSACTION_requestIsSatelliteSupported:I = 0x16b

.field static final greylist-max-o TRANSACTION_requestModemActivityInfo:I = 0x9e

.field static final greylist-max-o TRANSACTION_requestNetworkScan:I = 0x68

.field static final blacklist TRANSACTION_requestNtnSignalStrength:I = 0x190

.field static final blacklist TRANSACTION_requestNumberVerification:I = 0x76

.field static final blacklist TRANSACTION_requestRadioPowerOffForReason:I = 0x15

.field static final blacklist TRANSACTION_requestSatelliteCapabilities:I = 0x16c

.field static final blacklist TRANSACTION_requestSatelliteEnabled:I = 0x167

.field static final blacklist TRANSACTION_requestSatelliteSessionStats:I = 0x1a4

.field static final blacklist TRANSACTION_requestSatelliteSubscriberProvisionStatus:I = 0x1a5

.field static final blacklist TRANSACTION_requestSelectedNbIotSatelliteSubscriptionId:I = 0x17f

.field static final blacklist TRANSACTION_requestTimeForNextSatelliteVisibility:I = 0x17e

.field static final blacklist TRANSACTION_requestUserActivityNotification:I = 0x11f

.field static final blacklist TRANSACTION_resetIms:I = 0x5d

.field static final blacklist TRANSACTION_resetModemConfig:I = 0x57

.field static final blacklist TRANSACTION_resetOtaEmergencyNumberDbFilePath:I = 0x103

.field static final blacklist TRANSACTION_sendDatagram:I = 0x179

.field static final blacklist TRANSACTION_sendDeviceToDeviceMessage:I = 0x139

.field static final greylist-max-o TRANSACTION_sendDialerSpecialCode:I = 0x3f

.field static final greylist-max-o TRANSACTION_sendEnvelopeWithStatus:I = 0x53

.field static final blacklist TRANSACTION_sendThermalMitigationRequest:I = 0x129

.field static final greylist-max-o TRANSACTION_sendVisualVoicemailSmsForSubscriber:I = 0x3e

.field static final blacklist TRANSACTION_setActiveDeviceToDeviceTransport:I = 0x13a

.field static final blacklist TRANSACTION_setAdvancedCallingSettingEnabled:I = 0xde

.field static final greylist-max-o TRANSACTION_setAllowedCarriers:I = 0xaa

.field static final blacklist TRANSACTION_setAllowedNetworkTypesForReason:I = 0x6c

.field static final blacklist TRANSACTION_setBoundGbaServiceOverride:I = 0x12b

.field static final blacklist TRANSACTION_setBoundImsServiceOverride:I = 0x62

.field static final blacklist TRANSACTION_setCallComposerStatus:I = 0x7

.field static final blacklist TRANSACTION_setCallForwarding:I = 0xb5

.field static final blacklist TRANSACTION_setCallWaitingStatus:I = 0xb7

.field static final blacklist TRANSACTION_setCapabilitiesRequestTimeout:I = 0x14b

.field static final blacklist TRANSACTION_setCarrierServicePackageOverride:I = 0xcb

.field static final blacklist TRANSACTION_setCarrierSingleRegistrationEnabledOverride:I = 0x138

.field static final greylist-max-o TRANSACTION_setCarrierTestOverride:I = 0xca

.field static final blacklist TRANSACTION_setCdmaRoamingMode:I = 0xc7

.field static final blacklist TRANSACTION_setCdmaSubscriptionMode:I = 0xc9

.field static final blacklist TRANSACTION_setCellBroadcastIdRanges:I = 0x164

.field static final greylist-max-o TRANSACTION_setCellInfoListRate:I = 0x4b

.field static final blacklist TRANSACTION_setCepEnabled:I = 0x11a

.field static final blacklist TRANSACTION_setCountryCodes:I = 0x189

.field static final blacklist TRANSACTION_setCrossSimCallingEnabled:I = 0xe4

.field static final greylist-max-o TRANSACTION_setDataActivationState:I = 0x33

.field static final blacklist TRANSACTION_setDataEnabledForReason:I = 0x70

.field static final blacklist TRANSACTION_setDataRoamingEnabled:I = 0xc5

.field static final blacklist TRANSACTION_setDatagramControllerBooleanConfig:I = 0x1a2

.field static final blacklist TRANSACTION_setDatagramControllerTimeoutDuration:I = 0x186

.field static final blacklist TRANSACTION_setDeviceAlignedWithSatellite:I = 0x180

.field static final blacklist TRANSACTION_setDeviceSingleRegistrationEnabledOverride:I = 0x136

.field static final blacklist TRANSACTION_setDeviceToDeviceForceEnabled:I = 0x13b

.field static final blacklist TRANSACTION_setDeviceUceEnabled:I = 0x144

.field static final blacklist TRANSACTION_setDomainSelectionServiceOverride:I = 0x196

.field static final blacklist TRANSACTION_setEmergencyCallToSatelliteHandoverType:I = 0x188

.field static final blacklist TRANSACTION_setEnableCellularIdentifierDisclosureNotifications:I = 0x199

.field static final blacklist TRANSACTION_setForbiddenPlmns:I = 0xbc

.field static final blacklist TRANSACTION_setGbaReleaseTimeOverride:I = 0x12d

.field static final blacklist TRANSACTION_setIccLockEnabled:I = 0x11d

.field static final blacklist TRANSACTION_setImsFeatureValidationOverride:I = 0x13d

.field static final blacklist TRANSACTION_setImsProvisioningInt:I = 0xfb

.field static final blacklist TRANSACTION_setImsProvisioningStatusForCapability:I = 0xf5

.field static final blacklist TRANSACTION_setImsProvisioningString:I = 0xfc

.field static final greylist-max-o TRANSACTION_setImsRegistrationState:I = 0x73

.field static final blacklist TRANSACTION_setIsSatelliteCommunicationAllowedForCurrentLocationCache:I = 0x1a3

.field static final greylist-max-o TRANSACTION_setLine1NumberForDisplayForSubscriber:I = 0x7c

.field static final blacklist TRANSACTION_setMobileDataPolicyEnabled:I = 0x118

.field static final blacklist TRANSACTION_setModemService:I = 0x156

.field static final blacklist TRANSACTION_setMultiSimCarrierRestriction:I = 0x105

.field static final greylist-max-o TRANSACTION_setNetworkSelectionModeAutomatic:I = 0x66

.field static final greylist-max-o TRANSACTION_setNetworkSelectionModeManual:I = 0x6a

.field static final blacklist TRANSACTION_setNrDualConnectivityState:I = 0x126

.field static final blacklist TRANSACTION_setNtnSmsSupported:I = 0x1aa

.field static final blacklist TRANSACTION_setNullCipherAndIntegrityEnabled:I = 0x161

.field static final blacklist TRANSACTION_setNullCipherNotificationsEnabled:I = 0x19b

.field static final blacklist TRANSACTION_setOemEnabledSatelliteProvisionStatus:I = 0x18b

.field static final greylist-max-o TRANSACTION_setOperatorBrandOverride:I = 0x81

.field static final greylist-max-o TRANSACTION_setRadio:I = 0x12

.field static final greylist-max-o TRANSACTION_setRadioForSubscriber:I = 0x13

.field static final greylist-max-o TRANSACTION_setRadioPower:I = 0x14

.field static final blacklist TRANSACTION_setRcsClientConfiguration:I = 0x12f

.field static final blacklist TRANSACTION_setRcsProvisioningStatusForCapability:I = 0xf8

.field static final blacklist TRANSACTION_setRcsSingleRegistrationTestModeEnabled:I = 0x134

.field static final blacklist TRANSACTION_setRemovableEsimAsDefaultEuicc:I = 0x15c

.field static final greylist-max-o TRANSACTION_setRoamingOverride:I = 0x82

.field static final blacklist TRANSACTION_setRttCapabilitySetting:I = 0xec

.field static final blacklist TRANSACTION_setSatelliteAccessControlOverlayConfigs:I = 0x18a

.field static final blacklist TRANSACTION_setSatelliteControllerTimeoutDuration:I = 0x187

.field static final blacklist TRANSACTION_setSatelliteGatewayServicePackageName:I = 0x182

.field static final blacklist TRANSACTION_setSatelliteIgnoreCellularServiceState:I = 0x184

.field static final blacklist TRANSACTION_setSatelliteListeningTimeoutDuration:I = 0x183

.field static final blacklist TRANSACTION_setSatellitePointingUiClassName:I = 0x185

.field static final blacklist TRANSACTION_setSatelliteServicePackageName:I = 0x181

.field static final blacklist TRANSACTION_setSatelliteSubscriberIdListChangedIntentComponent:I = 0x1a7

.field static final blacklist TRANSACTION_setShouldSendDatagramToModemInDemoMode:I = 0x195

.field static final blacklist TRANSACTION_setSignalStrengthUpdateRequest:I = 0x14c

.field static final greylist-max-o TRANSACTION_setSimPowerStateForSlot:I = 0xb9

.field static final blacklist TRANSACTION_setSimPowerStateForSlotWithCallback:I = 0xba

.field static final blacklist TRANSACTION_setSimSlotMapping:I = 0xc3

.field static final blacklist TRANSACTION_setSystemSelectionChannels:I = 0x111

.field static final blacklist TRANSACTION_setVoNrEnabled:I = 0x124

.field static final blacklist TRANSACTION_setVoWiFiModeSetting:I = 0xe9

.field static final blacklist TRANSACTION_setVoWiFiNonPersistent:I = 0xe7

.field static final blacklist TRANSACTION_setVoWiFiRoamingModeSetting:I = 0xeb

.field static final blacklist TRANSACTION_setVoWiFiRoamingSettingEnabled:I = 0xe6

.field static final blacklist TRANSACTION_setVoWiFiSettingEnabled:I = 0xe2

.field static final greylist-max-o TRANSACTION_setVoiceActivationState:I = 0x32

.field static final greylist-max-o TRANSACTION_setVoiceMailNumber:I = 0x31

.field static final blacklist TRANSACTION_setVoiceServiceStateOverride:I = 0x15a

.field static final greylist-max-o TRANSACTION_setVoicemailRingtoneUri:I = 0xa1

.field static final greylist-max-o TRANSACTION_setVoicemailVibrationEnabled:I = 0xa3

.field static final blacklist TRANSACTION_setVtSettingEnabled:I = 0xe0

.field static final blacklist TRANSACTION_showSwitchToManagedProfileDialog:I = 0x115

.field static final greylist-max-o TRANSACTION_shutdownMobileRadios:I = 0x84

.field static final blacklist TRANSACTION_startEmergencyCallbackMode:I = 0xfd

.field static final blacklist TRANSACTION_startSatelliteTransmissionUpdates:I = 0x16d

.field static final greylist-max-o TRANSACTION_stopNetworkScan:I = 0x69

.field static final blacklist TRANSACTION_stopSatelliteTransmissionUpdates:I = 0x16e

.field static final greylist-max-o TRANSACTION_supplyPinForSubscriber:I = 0x9

.field static final greylist-max-o TRANSACTION_supplyPinReportResultForSubscriber:I = 0xb

.field static final greylist-max-o TRANSACTION_supplyPukForSubscriber:I = 0xa

.field static final greylist-max-o TRANSACTION_supplyPukReportResultForSubscriber:I = 0xc

.field static final blacklist TRANSACTION_switchMultiSimConfig:I = 0x107

.field static final greylist-max-o TRANSACTION_switchSlots:I = 0xc2

.field static final greylist-max-o TRANSACTION_toggleRadioOnOff:I = 0x10

.field static final greylist-max-o TRANSACTION_toggleRadioOnOffForSubscriber:I = 0x11

.field static final blacklist TRANSACTION_triggerRcsReconfiguration:I = 0x133

.field static final blacklist TRANSACTION_unregisterFeatureProvisioningChangedCallback:I = 0xf4

.field static final blacklist TRANSACTION_unregisterForCapabilitiesChanged:I = 0x194

.field static final blacklist TRANSACTION_unregisterForCommunicationAllowedStateChanged:I = 0x1a1

.field static final blacklist TRANSACTION_unregisterForIncomingDatagram:I = 0x177

.field static final blacklist TRANSACTION_unregisterForModemStateChanged:I = 0x175

.field static final blacklist TRANSACTION_unregisterForNtnSignalStrengthChanged:I = 0x192

.field static final blacklist TRANSACTION_unregisterForSatelliteDisallowedReasonsChanged:I = 0x17c

.field static final blacklist TRANSACTION_unregisterForSatelliteProvisionStateChanged:I = 0x172

.field static final blacklist TRANSACTION_unregisterForSatelliteSupportedStateChanged:I = 0x19f

.field static final blacklist TRANSACTION_unregisterImsEmergencyRegistrationCallback:I = 0xd5

.field static final blacklist TRANSACTION_unregisterImsFeatureCallback:I = 0x5f

.field static final blacklist TRANSACTION_unregisterImsProvisioningChangedCallback:I = 0xf2

.field static final blacklist TRANSACTION_unregisterImsRegistrationCallback:I = 0xd3

.field static final blacklist TRANSACTION_unregisterImsStateCallback:I = 0x154

.field static final blacklist TRANSACTION_unregisterMmTelCapabilityCallback:I = 0xd9

.field static final blacklist TRANSACTION_unregisterRcsProvisioningCallback:I = 0x132

.field static final blacklist TRANSACTION_updateEmergencyNumberListTestMode:I = 0xfe

.field static final blacklist TRANSACTION_updateOtaEmergencyNumberDbFilePath:I = 0x102

.field static final greylist-max-o TRANSACTION_updateServiceLocation:I = 0x18

.field static final blacklist TRANSACTION_updateServiceLocationWithPackageName:I = 0x19

.field static final blacklist TRANSACTION_uploadCallComposerPicture:I = 0x86

.field static final blacklist TRANSACTION_userActivity:I = 0x120


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ITelephony;

    return-object v1

    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "setNtnSmsSupported"

    return-object v0

    :pswitch_1
    const-string v0, "deprovisionSatellite"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "overrideCarrierRoamingNtnEligibilityChanged"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "setSatelliteSubscriberIdListChangedIntentComponent"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "provisionSatellite"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "requestSatelliteSubscriberProvisionStatus"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "requestSatelliteSessionStats"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "setIsSatelliteCommunicationAllowedForCurrentLocationCache"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "setDatagramControllerBooleanConfig"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "unregisterForCommunicationAllowedStateChanged"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "registerForCommunicationAllowedStateChanged"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "unregisterForSatelliteSupportedStateChanged"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "registerForSatelliteSupportedStateChanged"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "getSatellitePlmnsForCarrier"

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "isNullCipherNotificationsEnabled"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "setNullCipherNotificationsEnabled"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "isCellularIdentifierDisclosureNotificationsEnabled"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "setEnableCellularIdentifierDisclosureNotifications"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "isAospDomainSelectionService"

    return-object v0

    :pswitch_13
    const-string v0, "clearDomainSelectionServiceOverride"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "setDomainSelectionServiceOverride"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "setShouldSendDatagramToModemInDemoMode"

    return-object v0

    :pswitch_16
    const-string/jumbo v0, "unregisterForCapabilitiesChanged"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "registerForCapabilitiesChanged"

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "unregisterForNtnSignalStrengthChanged"

    return-object v0

    :pswitch_19
    const-string/jumbo v0, "registerForNtnSignalStrengthChanged"

    return-object v0

    :pswitch_1a
    const-string/jumbo v0, "requestNtnSignalStrength"

    return-object v0

    :pswitch_1b
    const-string/jumbo v0, "getAttachRestrictionReasonsForCarrier"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "removeAttachRestrictionForCarrier"

    return-object v0

    :pswitch_1d
    const-string v0, "addAttachRestrictionForCarrier"

    return-object v0

    :pswitch_1e
    const-string/jumbo v0, "getShaIdFromAllowList"

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "setOemEnabledSatelliteProvisionStatus"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "setSatelliteAccessControlOverlayConfigs"

    return-object v0

    :pswitch_21
    const-string/jumbo v0, "setCountryCodes"

    return-object v0

    :pswitch_22
    const-string/jumbo v0, "setEmergencyCallToSatelliteHandoverType"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "setSatelliteControllerTimeoutDuration"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "setDatagramControllerTimeoutDuration"

    return-object v0

    :pswitch_25
    const-string/jumbo v0, "setSatellitePointingUiClassName"

    return-object v0

    :pswitch_26
    const-string/jumbo v0, "setSatelliteIgnoreCellularServiceState"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "setSatelliteListeningTimeoutDuration"

    return-object v0

    :pswitch_28
    const-string/jumbo v0, "setSatelliteGatewayServicePackageName"

    return-object v0

    :pswitch_29
    const-string/jumbo v0, "setSatelliteServicePackageName"

    return-object v0

    :pswitch_2a
    const-string/jumbo v0, "setDeviceAlignedWithSatellite"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "requestSelectedNbIotSatelliteSubscriptionId"

    return-object v0

    :pswitch_2c
    const-string/jumbo v0, "requestTimeForNextSatelliteVisibility"

    return-object v0

    :pswitch_2d
    const-string/jumbo v0, "requestIsCommunicationAllowedForCurrentLocation"

    return-object v0

    :pswitch_2e
    const-string/jumbo v0, "unregisterForSatelliteDisallowedReasonsChanged"

    return-object v0

    :pswitch_2f
    const-string/jumbo v0, "registerForSatelliteDisallowedReasonsChanged"

    return-object v0

    :pswitch_30
    const-string/jumbo v0, "getSatelliteDisallowedReasons"

    return-object v0

    :pswitch_31
    const-string/jumbo v0, "sendDatagram"

    return-object v0

    :pswitch_32
    const-string/jumbo v0, "pollPendingDatagrams"

    return-object v0

    :pswitch_33
    const-string/jumbo v0, "unregisterForIncomingDatagram"

    return-object v0

    :pswitch_34
    const-string/jumbo v0, "registerForIncomingDatagram"

    return-object v0

    :pswitch_35
    const-string/jumbo v0, "unregisterForModemStateChanged"

    return-object v0

    :pswitch_36
    const-string/jumbo v0, "registerForSatelliteModemStateChanged"

    return-object v0

    :pswitch_37
    const-string/jumbo v0, "requestIsSatelliteProvisioned"

    return-object v0

    :pswitch_38
    const-string/jumbo v0, "unregisterForSatelliteProvisionStateChanged"

    return-object v0

    :pswitch_39
    const-string/jumbo v0, "registerForSatelliteProvisionStateChanged"

    return-object v0

    :pswitch_3a
    const-string v0, "deprovisionSatelliteService"

    return-object v0

    :pswitch_3b
    const-string/jumbo v0, "provisionSatelliteService"

    return-object v0

    :pswitch_3c
    const-string/jumbo v0, "stopSatelliteTransmissionUpdates"

    return-object v0

    :pswitch_3d
    const-string/jumbo v0, "startSatelliteTransmissionUpdates"

    return-object v0

    :pswitch_3e
    const-string/jumbo v0, "requestSatelliteCapabilities"

    return-object v0

    :pswitch_3f
    const-string/jumbo v0, "requestIsSatelliteSupported"

    return-object v0

    :pswitch_40
    const-string/jumbo v0, "requestIsEmergencyModeEnabled"

    return-object v0

    :pswitch_41
    const-string/jumbo v0, "requestIsDemoModeEnabled"

    return-object v0

    :pswitch_42
    const-string/jumbo v0, "requestIsSatelliteEnabled"

    return-object v0

    :pswitch_43
    const-string/jumbo v0, "requestSatelliteEnabled"

    return-object v0

    :pswitch_44
    const-string/jumbo v0, "getCarrierRestrictionStatus"

    return-object v0

    :pswitch_45
    const-string/jumbo v0, "isDomainSelectionSupported"

    return-object v0

    :pswitch_46
    const-string/jumbo v0, "setCellBroadcastIdRanges"

    return-object v0

    :pswitch_47
    const-string/jumbo v0, "getCellBroadcastIdRanges"

    return-object v0

    :pswitch_48
    const-string/jumbo v0, "isNullCipherAndIntegrityPreferenceEnabled"

    return-object v0

    :pswitch_49
    const-string/jumbo v0, "setNullCipherAndIntegrityEnabled"

    return-object v0

    :pswitch_4a
    const-string/jumbo v0, "persistEmergencyCallDiagnosticData"

    return-object v0

    :pswitch_4b
    const-string/jumbo v0, "getSimStateForSlotIndex"

    return-object v0

    :pswitch_4c
    const-string/jumbo v0, "getDefaultRespondViaMessageApplication"

    return-object v0

    :pswitch_4d
    const-string/jumbo v0, "isRemovableEsimDefaultEuicc"

    return-object v0

    :pswitch_4e
    const-string/jumbo v0, "setRemovableEsimAsDefaultEuicc"

    return-object v0

    :pswitch_4f
    const-string/jumbo v0, "getCarrierServicePackageNameForLogicalSlot"

    return-object v0

    :pswitch_50
    const-string/jumbo v0, "setVoiceServiceStateOverride"

    return-object v0

    :pswitch_51
    const-string/jumbo v0, "isRcsProvisioningRequiredForCapability"

    return-object v0

    :pswitch_52
    const-string/jumbo v0, "isProvisioningRequiredForCapability"

    return-object v0

    :pswitch_53
    const-string/jumbo v0, "getModemService"

    return-object v0

    :pswitch_54
    const-string/jumbo v0, "setModemService"

    return-object v0

    :pswitch_55
    const-string/jumbo v0, "getLastKnownCellIdentity"

    return-object v0

    :pswitch_56
    const-string/jumbo v0, "unregisterImsStateCallback"

    return-object v0

    :pswitch_57
    const-string/jumbo v0, "registerImsStateCallback"

    return-object v0

    :pswitch_58
    const-string/jumbo v0, "purchasePremiumCapability"

    return-object v0

    :pswitch_59
    const-string/jumbo v0, "isPremiumCapabilityAvailableForPurchase"

    return-object v0

    :pswitch_5a
    const-string/jumbo v0, "getSlicingConfig"

    return-object v0

    :pswitch_5b
    const-string/jumbo v0, "prepareForUnattendedReboot"

    return-object v0

    :pswitch_5c
    const-string/jumbo v0, "getPhoneCapability"

    return-object v0

    :pswitch_5d
    const-string v0, "clearSignalStrengthUpdateRequest"

    return-object v0

    :pswitch_5e
    const-string/jumbo v0, "setSignalStrengthUpdateRequest"

    return-object v0

    :pswitch_5f
    const-string/jumbo v0, "setCapabilitiesRequestTimeout"

    return-object v0

    :pswitch_60
    const-string/jumbo v0, "removeUceRequestDisallowedStatus"

    return-object v0

    :pswitch_61
    const-string/jumbo v0, "getLastUcePidfXmlShell"

    return-object v0

    :pswitch_62
    const-string/jumbo v0, "getLatestRcsContactUceCapabilityShell"

    return-object v0

    :pswitch_63
    const-string v0, "clearUceRegistrationOverrideShell"

    return-object v0

    :pswitch_64
    const-string/jumbo v0, "removeUceRegistrationOverrideShell"

    return-object v0

    :pswitch_65
    const-string v0, "addUceRegistrationOverrideShell"

    return-object v0

    :pswitch_66
    const-string/jumbo v0, "setDeviceUceEnabled"

    return-object v0

    :pswitch_67
    const-string/jumbo v0, "getDeviceUceEnabled"

    return-object v0

    :pswitch_68
    const-string/jumbo v0, "getCapabilityFromEab"

    return-object v0

    :pswitch_69
    const-string/jumbo v0, "getContactFromEab"

    return-object v0

    :pswitch_6a
    const-string/jumbo v0, "removeContactFromEab"

    return-object v0

    :pswitch_6b
    const-string/jumbo v0, "getMobileProvisioningUrl"

    return-object v0

    :pswitch_6c
    const-string/jumbo v0, "getImsFeatureValidationOverride"

    return-object v0

    :pswitch_6d
    const-string/jumbo v0, "setImsFeatureValidationOverride"

    return-object v0

    :pswitch_6e
    const-string/jumbo v0, "getCarrierSingleRegistrationEnabled"

    return-object v0

    :pswitch_6f
    const-string/jumbo v0, "setDeviceToDeviceForceEnabled"

    return-object v0

    :pswitch_70
    const-string/jumbo v0, "setActiveDeviceToDeviceTransport"

    return-object v0

    :pswitch_71
    const-string/jumbo v0, "sendDeviceToDeviceMessage"

    return-object v0

    :pswitch_72
    const-string/jumbo v0, "setCarrierSingleRegistrationEnabledOverride"

    return-object v0

    :pswitch_73
    const-string/jumbo v0, "getDeviceSingleRegistrationEnabled"

    return-object v0

    :pswitch_74
    const-string/jumbo v0, "setDeviceSingleRegistrationEnabledOverride"

    return-object v0

    :pswitch_75
    const-string/jumbo v0, "getRcsSingleRegistrationTestModeEnabled"

    return-object v0

    :pswitch_76
    const-string/jumbo v0, "setRcsSingleRegistrationTestModeEnabled"

    return-object v0

    :pswitch_77
    const-string/jumbo v0, "triggerRcsReconfiguration"

    return-object v0

    :pswitch_78
    const-string/jumbo v0, "unregisterRcsProvisioningCallback"

    return-object v0

    :pswitch_79
    const-string/jumbo v0, "registerRcsProvisioningCallback"

    return-object v0

    :pswitch_7a
    const-string/jumbo v0, "isRcsVolteSingleRegistrationCapable"

    return-object v0

    :pswitch_7b
    const-string/jumbo v0, "setRcsClientConfiguration"

    return-object v0

    :pswitch_7c
    const-string/jumbo v0, "getGbaReleaseTime"

    return-object v0

    :pswitch_7d
    const-string/jumbo v0, "setGbaReleaseTimeOverride"

    return-object v0

    :pswitch_7e
    const-string/jumbo v0, "getBoundGbaService"

    return-object v0

    :pswitch_7f
    const-string/jumbo v0, "setBoundGbaServiceOverride"

    return-object v0

    :pswitch_80
    const-string v0, "bootstrapAuthenticationRequest"

    return-object v0

    :pswitch_81
    const-string/jumbo v0, "sendThermalMitigationRequest"

    return-object v0

    :pswitch_82
    const-string/jumbo v0, "isRadioInterfaceCapabilitySupported"

    return-object v0

    :pswitch_83
    const-string/jumbo v0, "isNrDualConnectivityEnabled"

    return-object v0

    :pswitch_84
    const-string/jumbo v0, "setNrDualConnectivityState"

    return-object v0

    :pswitch_85
    const-string/jumbo v0, "isVoNrEnabled"

    return-object v0

    :pswitch_86
    const-string/jumbo v0, "setVoNrEnabled"

    return-object v0

    :pswitch_87
    const-string/jumbo v0, "getEquivalentHomePlmns"

    return-object v0

    :pswitch_88
    const-string v0, "canConnectTo5GInDsdsMode"

    return-object v0

    :pswitch_89
    const-string/jumbo v0, "getManualNetworkSelectionPlmn"

    return-object v0

    :pswitch_8a
    const-string/jumbo v0, "userActivity"

    return-object v0

    :pswitch_8b
    const-string/jumbo v0, "requestUserActivityNotification"

    return-object v0

    :pswitch_8c
    const-string v0, "changeIccLockPassword"

    return-object v0

    :pswitch_8d
    const-string/jumbo v0, "setIccLockEnabled"

    return-object v0

    :pswitch_8e
    const-string/jumbo v0, "isIccLockEnabled"

    return-object v0

    :pswitch_8f
    const-string/jumbo v0, "notifyRcsAutoConfigurationReceived"

    return-object v0

    :pswitch_90
    const-string/jumbo v0, "setCepEnabled"

    return-object v0

    :pswitch_91
    const-string/jumbo v0, "isMobileDataPolicyEnabled"

    return-object v0

    :pswitch_92
    const-string/jumbo v0, "setMobileDataPolicyEnabled"

    return-object v0

    :pswitch_93
    const-string/jumbo v0, "getMmsUAProfUrl"

    return-object v0

    :pswitch_94
    const-string/jumbo v0, "getMmsUserAgent"

    return-object v0

    :pswitch_95
    const-string/jumbo v0, "showSwitchToManagedProfileDialog"

    return-object v0

    :pswitch_96
    const-string v0, "enqueueSmsPickResult"

    return-object v0

    :pswitch_97
    const-string/jumbo v0, "isMvnoMatched"

    return-object v0

    :pswitch_98
    const-string/jumbo v0, "getSystemSelectionChannels"

    return-object v0

    :pswitch_99
    const-string/jumbo v0, "setSystemSelectionChannels"

    return-object v0

    :pswitch_9a
    const-string/jumbo v0, "isApnMetered"

    return-object v0

    :pswitch_9b
    const-string/jumbo v0, "isDataEnabledForApn"

    return-object v0

    :pswitch_9c
    const-string/jumbo v0, "isModemEnabledForSlot"

    return-object v0

    :pswitch_9d
    const-string/jumbo v0, "isApplicationOnUicc"

    return-object v0

    :pswitch_9e
    const-string/jumbo v0, "getCurrentPackageName"

    return-object v0

    :pswitch_9f
    const-string/jumbo v0, "getHalVersion"

    return-object v0

    :pswitch_a0
    const-string/jumbo v0, "getRadioHalVersion"

    return-object v0

    :pswitch_a1
    const-string/jumbo v0, "getSlotsMapping"

    return-object v0

    :pswitch_a2
    const-string v0, "doesSwitchMultiSimConfigTriggerReboot"

    return-object v0

    :pswitch_a3
    const-string/jumbo v0, "switchMultiSimConfig"

    return-object v0

    :pswitch_a4
    const-string/jumbo v0, "isMultiSimSupported"

    return-object v0

    :pswitch_a5
    const-string/jumbo v0, "setMultiSimCarrierRestriction"

    return-object v0

    :pswitch_a6
    const-string v0, "enableModemForSlot"

    return-object v0

    :pswitch_a7
    const-string/jumbo v0, "resetOtaEmergencyNumberDbFilePath"

    return-object v0

    :pswitch_a8
    const-string/jumbo v0, "updateOtaEmergencyNumberDbFilePath"

    return-object v0

    :pswitch_a9
    const-string/jumbo v0, "notifyOtaEmergencyNumberDbInstalled"

    return-object v0

    :pswitch_aa
    const-string/jumbo v0, "getEmergencyNumberDbVersion"

    return-object v0

    :pswitch_ab
    const-string/jumbo v0, "getEmergencyNumberListTestMode"

    return-object v0

    :pswitch_ac
    const-string/jumbo v0, "updateEmergencyNumberListTestMode"

    return-object v0

    :pswitch_ad
    const-string/jumbo v0, "startEmergencyCallbackMode"

    return-object v0

    :pswitch_ae
    const-string/jumbo v0, "setImsProvisioningString"

    return-object v0

    :pswitch_af
    const-string/jumbo v0, "setImsProvisioningInt"

    return-object v0

    :pswitch_b0
    const-string/jumbo v0, "getImsProvisioningString"

    return-object v0

    :pswitch_b1
    const-string/jumbo v0, "getImsProvisioningInt"

    return-object v0

    :pswitch_b2
    const-string/jumbo v0, "setRcsProvisioningStatusForCapability"

    return-object v0

    :pswitch_b3
    const-string/jumbo v0, "getRcsProvisioningStatusForCapability"

    return-object v0

    :pswitch_b4
    const-string/jumbo v0, "getImsProvisioningStatusForCapability"

    return-object v0

    :pswitch_b5
    const-string/jumbo v0, "setImsProvisioningStatusForCapability"

    return-object v0

    :pswitch_b6
    const-string/jumbo v0, "unregisterFeatureProvisioningChangedCallback"

    return-object v0

    :pswitch_b7
    const-string/jumbo v0, "registerFeatureProvisioningChangedCallback"

    return-object v0

    :pswitch_b8
    const-string/jumbo v0, "unregisterImsProvisioningChangedCallback"

    return-object v0

    :pswitch_b9
    const-string/jumbo v0, "registerImsProvisioningChangedCallback"

    return-object v0

    :pswitch_ba
    const-string/jumbo v0, "getCertsFromCarrierPrivilegeAccessRules"

    return-object v0

    :pswitch_bb
    const-string/jumbo v0, "isEmergencyNumber"

    return-object v0

    :pswitch_bc
    const-string/jumbo v0, "getEmergencyNumberList"

    return-object v0

    :pswitch_bd
    const-string/jumbo v0, "isTtyOverVolteEnabled"

    return-object v0

    :pswitch_be
    const-string/jumbo v0, "setRttCapabilitySetting"

    return-object v0

    :pswitch_bf
    const-string/jumbo v0, "setVoWiFiRoamingModeSetting"

    return-object v0

    :pswitch_c0
    const-string/jumbo v0, "getVoWiFiRoamingModeSetting"

    return-object v0

    :pswitch_c1
    const-string/jumbo v0, "setVoWiFiModeSetting"

    return-object v0

    :pswitch_c2
    const-string/jumbo v0, "getVoWiFiModeSetting"

    return-object v0

    :pswitch_c3
    const-string/jumbo v0, "setVoWiFiNonPersistent"

    return-object v0

    :pswitch_c4
    const-string/jumbo v0, "setVoWiFiRoamingSettingEnabled"

    return-object v0

    :pswitch_c5
    const-string/jumbo v0, "isVoWiFiRoamingSettingEnabled"

    return-object v0

    :pswitch_c6
    const-string/jumbo v0, "setCrossSimCallingEnabled"

    return-object v0

    :pswitch_c7
    const-string/jumbo v0, "isCrossSimCallingEnabledByUser"

    return-object v0

    :pswitch_c8
    const-string/jumbo v0, "setVoWiFiSettingEnabled"

    return-object v0

    :pswitch_c9
    const-string/jumbo v0, "isVoWiFiSettingEnabled"

    return-object v0

    :pswitch_ca
    const-string/jumbo v0, "setVtSettingEnabled"

    return-object v0

    :pswitch_cb
    const-string/jumbo v0, "isVtSettingEnabled"

    return-object v0

    :pswitch_cc
    const-string/jumbo v0, "setAdvancedCallingSettingEnabled"

    return-object v0

    :pswitch_cd
    const-string/jumbo v0, "isAdvancedCallingSettingEnabled"

    return-object v0

    :pswitch_ce
    const-string/jumbo v0, "isMmTelCapabilitySupported"

    return-object v0

    :pswitch_cf
    const-string/jumbo v0, "isAvailable"

    return-object v0

    :pswitch_d0
    const-string/jumbo v0, "isCapable"

    return-object v0

    :pswitch_d1
    const-string/jumbo v0, "unregisterMmTelCapabilityCallback"

    return-object v0

    :pswitch_d2
    const-string/jumbo v0, "registerMmTelCapabilityCallback"

    return-object v0

    :pswitch_d3
    const-string/jumbo v0, "getImsMmTelRegistrationTransportType"

    return-object v0

    :pswitch_d4
    const-string/jumbo v0, "getImsMmTelRegistrationState"

    return-object v0

    :pswitch_d5
    const-string/jumbo v0, "unregisterImsEmergencyRegistrationCallback"

    return-object v0

    :pswitch_d6
    const-string/jumbo v0, "registerImsEmergencyRegistrationCallback"

    return-object v0

    :pswitch_d7
    const-string/jumbo v0, "unregisterImsRegistrationCallback"

    return-object v0

    :pswitch_d8
    const-string/jumbo v0, "registerImsRegistrationCallback"

    return-object v0

    :pswitch_d9
    const-string/jumbo v0, "getRadioPowerState"

    return-object v0

    :pswitch_da
    const-string/jumbo v0, "isInEmergencySmsMode"

    return-object v0

    :pswitch_db
    const-string/jumbo v0, "getNetworkSelectionMode"

    return-object v0

    :pswitch_dc
    const-string/jumbo v0, "getNumberOfModemsWithSimultaneousDataConnections"

    return-object v0

    :pswitch_dd
    const-string/jumbo v0, "refreshUiccProfile"

    return-object v0

    :pswitch_de
    const-string/jumbo v0, "getCarrierIdListVersion"

    return-object v0

    :pswitch_df
    const-string/jumbo v0, "setCarrierServicePackageOverride"

    return-object v0

    :pswitch_e0
    const-string/jumbo v0, "setCarrierTestOverride"

    return-object v0

    :pswitch_e1
    const-string/jumbo v0, "setCdmaSubscriptionMode"

    return-object v0

    :pswitch_e2
    const-string/jumbo v0, "getCdmaSubscriptionMode"

    return-object v0

    :pswitch_e3
    const-string/jumbo v0, "setCdmaRoamingMode"

    return-object v0

    :pswitch_e4
    const-string/jumbo v0, "getCdmaRoamingMode"

    return-object v0

    :pswitch_e5
    const-string/jumbo v0, "setDataRoamingEnabled"

    return-object v0

    :pswitch_e6
    const-string/jumbo v0, "isDataRoamingEnabled"

    return-object v0

    :pswitch_e7
    const-string/jumbo v0, "setSimSlotMapping"

    return-object v0

    :pswitch_e8
    const-string/jumbo v0, "switchSlots"

    return-object v0

    :pswitch_e9
    const-string/jumbo v0, "getUiccSlotsInfo"

    return-object v0

    :pswitch_ea
    const-string/jumbo v0, "getUiccCardsInfo"

    return-object v0

    :pswitch_eb
    const-string/jumbo v0, "getCardIdForDefaultEuicc"

    return-object v0

    :pswitch_ec
    const-string/jumbo v0, "getSignalStrength"

    return-object v0

    :pswitch_ed
    const-string/jumbo v0, "getEmergencyCallbackMode"

    return-object v0

    :pswitch_ee
    const-string/jumbo v0, "setForbiddenPlmns"

    return-object v0

    :pswitch_ef
    const-string/jumbo v0, "getForbiddenPlmns"

    return-object v0

    :pswitch_f0
    const-string/jumbo v0, "setSimPowerStateForSlotWithCallback"

    return-object v0

    :pswitch_f1
    const-string/jumbo v0, "setSimPowerStateForSlot"

    return-object v0

    :pswitch_f2
    const-string/jumbo v0, "getClientRequestStats"

    return-object v0

    :pswitch_f3
    const-string/jumbo v0, "setCallWaitingStatus"

    return-object v0

    :pswitch_f4
    const-string/jumbo v0, "getCallWaitingStatus"

    return-object v0

    :pswitch_f5
    const-string/jumbo v0, "setCallForwarding"

    return-object v0

    :pswitch_f6
    const-string/jumbo v0, "getCallForwarding"

    return-object v0

    :pswitch_f7
    const-string v0, "carrierActionResetAll"

    return-object v0

    :pswitch_f8
    const-string v0, "carrierActionReportDefaultNetworkStatus"

    return-object v0

    :pswitch_f9
    const-string v0, "carrierActionSetRadioEnabled"

    return-object v0

    :pswitch_fa
    const-string/jumbo v0, "getCarrierIdFromMccMnc"

    return-object v0

    :pswitch_fb
    const-string/jumbo v0, "getSubscriptionSpecificCarrierName"

    return-object v0

    :pswitch_fc
    const-string/jumbo v0, "getSubscriptionSpecificCarrierId"

    return-object v0

    :pswitch_fd
    const-string/jumbo v0, "getSubscriptionCarrierName"

    return-object v0

    :pswitch_fe
    const-string/jumbo v0, "getSubscriptionCarrierId"

    return-object v0

    :pswitch_ff
    const-string/jumbo v0, "getAllowedCarriers"

    return-object v0

    :pswitch_100
    const-string/jumbo v0, "setAllowedCarriers"

    return-object v0

    :pswitch_101
    const-string/jumbo v0, "getTelephonyHistograms"

    return-object v0

    :pswitch_102
    const-string/jumbo v0, "getCdmaPrlVersion"

    return-object v0

    :pswitch_103
    const-string/jumbo v0, "getEsn"

    return-object v0

    :pswitch_104
    const-string/jumbo v0, "getAidForAppType"

    return-object v0

    :pswitch_105
    const-string/jumbo v0, "getPackagesWithCarrierPrivilegesForAllPhones"

    return-object v0

    :pswitch_106
    const-string/jumbo v0, "getPackagesWithCarrierPrivileges"

    return-object v0

    :pswitch_107
    const-string/jumbo v0, "setVoicemailVibrationEnabled"

    return-object v0

    :pswitch_108
    const-string/jumbo v0, "isVoicemailVibrationEnabled"

    return-object v0

    :pswitch_109
    const-string/jumbo v0, "setVoicemailRingtoneUri"

    return-object v0

    :pswitch_10a
    const-string/jumbo v0, "getVoicemailRingtoneUri"

    return-object v0

    :pswitch_10b
    const-string/jumbo v0, "getServiceStateForSlot"

    return-object v0

    :pswitch_10c
    const-string/jumbo v0, "requestModemActivityInfo"

    return-object v0

    :pswitch_10d
    const-string/jumbo v0, "getSimLocaleForSubscriber"

    return-object v0

    :pswitch_10e
    const-string/jumbo v0, "factoryReset"

    return-object v0

    :pswitch_10f
    const-string/jumbo v0, "getPhoneAccountHandleForSubscriptionId"

    return-object v0

    :pswitch_110
    const-string/jumbo v0, "getSubIdForPhoneAccountHandle"

    return-object v0

    :pswitch_111
    const-string/jumbo v0, "getDeviceSoftwareVersionForSlot"

    return-object v0

    :pswitch_112
    const-string/jumbo v0, "getManufacturerCodeForSlot"

    return-object v0

    :pswitch_113
    const-string/jumbo v0, "getMeidForSlot"

    return-object v0

    :pswitch_114
    const-string/jumbo v0, "getTypeAllocationCodeForSlot"

    return-object v0

    :pswitch_115
    const-string/jumbo v0, "getPrimaryImei"

    return-object v0

    :pswitch_116
    const-string/jumbo v0, "getImeiForSlot"

    return-object v0

    :pswitch_117
    const-string/jumbo v0, "getDeviceIdWithFeature"

    return-object v0

    :pswitch_118
    const-string/jumbo v0, "getDeviceId"

    return-object v0

    :pswitch_119
    const-string/jumbo v0, "getImsRegTechnologyForMmTel"

    return-object v0

    :pswitch_11a
    const-string/jumbo v0, "isVideoTelephonyAvailable"

    return-object v0

    :pswitch_11b
    const-string/jumbo v0, "isWifiCallingAvailable"

    return-object v0

    :pswitch_11c
    const-string/jumbo v0, "isImsRegistered"

    return-object v0

    :pswitch_11d
    const-string/jumbo v0, "isHearingAidCompatibilitySupported"

    return-object v0

    :pswitch_11e
    const-string/jumbo v0, "isRttSupported"

    return-object v0

    :pswitch_11f
    const-string/jumbo v0, "isTtyModeSupported"

    return-object v0

    :pswitch_120
    const-string/jumbo v0, "isWorldPhone"

    return-object v0

    :pswitch_121
    const-string v0, "canChangeDtmfToneLength"

    return-object v0

    :pswitch_122
    const-string/jumbo v0, "isVideoCallingEnabled"

    return-object v0

    :pswitch_123
    const-string v0, "enableVideoCalling"

    return-object v0

    :pswitch_124
    const-string/jumbo v0, "uploadCallComposerPicture"

    return-object v0

    :pswitch_125
    const-string/jumbo v0, "getRadioAccessFamily"

    return-object v0

    :pswitch_126
    const-string/jumbo v0, "shutdownMobileRadios"

    return-object v0

    :pswitch_127
    const-string/jumbo v0, "needMobileRadioShutdown"

    return-object v0

    :pswitch_128
    const-string/jumbo v0, "setRoamingOverride"

    return-object v0

    :pswitch_129
    const-string/jumbo v0, "setOperatorBrandOverride"

    return-object v0

    :pswitch_12a
    const-string/jumbo v0, "getMergedImsisFromGroup"

    return-object v0

    :pswitch_12b
    const-string/jumbo v0, "getMergedSubscriberIds"

    return-object v0

    :pswitch_12c
    const-string/jumbo v0, "getLine1AlphaTagForDisplay"

    return-object v0

    :pswitch_12d
    const-string/jumbo v0, "getLine1NumberForDisplay"

    return-object v0

    :pswitch_12e
    const-string/jumbo v0, "setLine1NumberForDisplayForSubscriber"

    return-object v0

    :pswitch_12f
    const-string/jumbo v0, "getCarrierPackageNamesForIntentAndPhone"

    return-object v0

    :pswitch_130
    const-string v0, "checkCarrierPrivilegesForPackageAnyPhone"

    return-object v0

    :pswitch_131
    const-string v0, "checkCarrierPrivilegesForPackage"

    return-object v0

    :pswitch_132
    const-string/jumbo v0, "getCarrierPrivilegeStatusForUid"

    return-object v0

    :pswitch_133
    const-string/jumbo v0, "getCarrierPrivilegeStatus"

    return-object v0

    :pswitch_134
    const-string/jumbo v0, "requestNumberVerification"

    return-object v0

    :pswitch_135
    const-string/jumbo v0, "getCdmaMin"

    return-object v0

    :pswitch_136
    const-string/jumbo v0, "getCdmaMdn"

    return-object v0

    :pswitch_137
    const-string/jumbo v0, "setImsRegistrationState"

    return-object v0

    :pswitch_138
    const-string/jumbo v0, "isManualNetworkSelectionAllowed"

    return-object v0

    :pswitch_139
    const-string/jumbo v0, "isDataEnabledForReason"

    return-object v0

    :pswitch_13a
    const-string/jumbo v0, "setDataEnabledForReason"

    return-object v0

    :pswitch_13b
    const-string/jumbo v0, "isDataEnabled"

    return-object v0

    :pswitch_13c
    const-string/jumbo v0, "isUserDataEnabled"

    return-object v0

    :pswitch_13d
    const-string/jumbo v0, "getDataEnabled"

    return-object v0

    :pswitch_13e
    const-string/jumbo v0, "setAllowedNetworkTypesForReason"

    return-object v0

    :pswitch_13f
    const-string/jumbo v0, "getAllowedNetworkTypesForReason"

    return-object v0

    :pswitch_140
    const-string/jumbo v0, "setNetworkSelectionModeManual"

    return-object v0

    :pswitch_141
    const-string/jumbo v0, "stopNetworkScan"

    return-object v0

    :pswitch_142
    const-string/jumbo v0, "requestNetworkScan"

    return-object v0

    :pswitch_143
    const-string/jumbo v0, "getCellNetworkScanResults"

    return-object v0

    :pswitch_144
    const-string/jumbo v0, "setNetworkSelectionModeAutomatic"

    return-object v0

    :pswitch_145
    const-string/jumbo v0, "getImsMmTelFeatureState"

    return-object v0

    :pswitch_146
    const-string/jumbo v0, "getBoundImsServicePackage"

    return-object v0

    :pswitch_147
    const-string v0, "clearCarrierImsServiceOverride"

    return-object v0

    :pswitch_148
    const-string/jumbo v0, "setBoundImsServiceOverride"

    return-object v0

    :pswitch_149
    const-string/jumbo v0, "getImsConfig"

    return-object v0

    :pswitch_14a
    const-string/jumbo v0, "getImsRegistration"

    return-object v0

    :pswitch_14b
    const-string/jumbo v0, "unregisterImsFeatureCallback"

    return-object v0

    :pswitch_14c
    const-string/jumbo v0, "registerMmTelFeatureCallback"

    return-object v0

    :pswitch_14d
    const-string/jumbo v0, "resetIms"

    return-object v0

    :pswitch_14e
    const-string v0, "disableIms"

    return-object v0

    :pswitch_14f
    const-string v0, "enableIms"

    return-object v0

    :pswitch_150
    const-string/jumbo v0, "isTetheringApnRequiredForSubscriber"

    return-object v0

    :pswitch_151
    const-string/jumbo v0, "getAllowedNetworkTypesBitmask"

    return-object v0

    :pswitch_152
    const-string/jumbo v0, "rebootModem"

    return-object v0

    :pswitch_153
    const-string/jumbo v0, "resetModemConfig"

    return-object v0

    :pswitch_154
    const-string/jumbo v0, "nvWriteCdmaPrl"

    return-object v0

    :pswitch_155
    const-string/jumbo v0, "nvWriteItem"

    return-object v0

    :pswitch_156
    const-string/jumbo v0, "nvReadItem"

    return-object v0

    :pswitch_157
    const-string/jumbo v0, "sendEnvelopeWithStatus"

    return-object v0

    :pswitch_158
    const-string/jumbo v0, "iccExchangeSimIO"

    return-object v0

    :pswitch_159
    const-string/jumbo v0, "iccTransmitApduBasicChannel"

    return-object v0

    :pswitch_15a
    const-string/jumbo v0, "iccTransmitApduBasicChannelByPort"

    return-object v0

    :pswitch_15b
    const-string/jumbo v0, "iccTransmitApduLogicalChannel"

    return-object v0

    :pswitch_15c
    const-string/jumbo v0, "iccTransmitApduLogicalChannelByPort"

    return-object v0

    :pswitch_15d
    const-string/jumbo v0, "iccCloseLogicalChannel"

    return-object v0

    :pswitch_15e
    const-string/jumbo v0, "iccOpenLogicalChannel"

    return-object v0

    :pswitch_15f
    const-string/jumbo v0, "setCellInfoListRate"

    return-object v0

    :pswitch_160
    const-string/jumbo v0, "requestCellInfoUpdateWithWorkSource"

    return-object v0

    :pswitch_161
    const-string/jumbo v0, "requestCellInfoUpdate"

    return-object v0

    :pswitch_162
    const-string/jumbo v0, "getAllCellInfo"

    return-object v0

    :pswitch_163
    const-string/jumbo v0, "getLteOnCdmaModeForSubscriber"

    return-object v0

    :pswitch_164
    const-string/jumbo v0, "getLteOnCdmaMode"

    return-object v0

    :pswitch_165
    const-string/jumbo v0, "hasIccCardUsingSlotIndex"

    return-object v0

    :pswitch_166
    const-string/jumbo v0, "hasIccCard"

    return-object v0

    :pswitch_167
    const-string/jumbo v0, "getVoiceNetworkTypeForSubscriber"

    return-object v0

    :pswitch_168
    const-string/jumbo v0, "getDataNetworkTypeForSubscriber"

    return-object v0

    :pswitch_169
    const-string/jumbo v0, "getDataNetworkType"

    return-object v0

    :pswitch_16a
    const-string/jumbo v0, "getNetworkTypeForSubscriber"

    return-object v0

    :pswitch_16b
    const-string/jumbo v0, "sendDialerSpecialCode"

    return-object v0

    :pswitch_16c
    const-string/jumbo v0, "sendVisualVoicemailSmsForSubscriber"

    return-object v0

    :pswitch_16d
    const-string/jumbo v0, "getActiveVisualVoicemailSmsFilterSettings"

    return-object v0

    :pswitch_16e
    const-string/jumbo v0, "getVisualVoicemailSmsFilterSettings"

    return-object v0

    :pswitch_16f
    const-string v0, "disableVisualVoicemailSmsFilter"

    return-object v0

    :pswitch_170
    const-string v0, "enableVisualVoicemailSmsFilter"

    return-object v0

    :pswitch_171
    const-string/jumbo v0, "getVisualVoicemailPackageName"

    return-object v0

    :pswitch_172
    const-string/jumbo v0, "getVisualVoicemailSettings"

    return-object v0

    :pswitch_173
    const-string/jumbo v0, "isConcurrentVoiceAndDataAllowed"

    return-object v0

    :pswitch_174
    const-string/jumbo v0, "getVoiceMessageCountForSubscriber"

    return-object v0

    :pswitch_175
    const-string/jumbo v0, "getDataActivationState"

    return-object v0

    :pswitch_176
    const-string/jumbo v0, "getVoiceActivationState"

    return-object v0

    :pswitch_177
    const-string/jumbo v0, "setDataActivationState"

    return-object v0

    :pswitch_178
    const-string/jumbo v0, "setVoiceActivationState"

    return-object v0

    :pswitch_179
    const-string/jumbo v0, "setVoiceMailNumber"

    return-object v0

    :pswitch_17a
    const-string/jumbo v0, "needsOtaServiceProvisioning"

    return-object v0

    :pswitch_17b
    const-string/jumbo v0, "getCdmaEriTextForSubscriber"

    return-object v0

    :pswitch_17c
    const-string/jumbo v0, "getCdmaEriText"

    return-object v0

    :pswitch_17d
    const-string/jumbo v0, "getCdmaEriIconModeForSubscriber"

    return-object v0

    :pswitch_17e
    const-string/jumbo v0, "getCdmaEriIconMode"

    return-object v0

    :pswitch_17f
    const-string/jumbo v0, "getCdmaEriIconIndexForSubscriber"

    return-object v0

    :pswitch_180
    const-string/jumbo v0, "getCdmaEriIconIndex"

    return-object v0

    :pswitch_181
    const-string/jumbo v0, "getActivePhoneTypeForSlot"

    return-object v0

    :pswitch_182
    const-string/jumbo v0, "getActivePhoneType"

    return-object v0

    :pswitch_183
    const-string/jumbo v0, "getDataStateForSubId"

    return-object v0

    :pswitch_184
    const-string/jumbo v0, "getDataState"

    return-object v0

    :pswitch_185
    const-string/jumbo v0, "getDataActivityForSubId"

    return-object v0

    :pswitch_186
    const-string/jumbo v0, "getDataActivity"

    return-object v0

    :pswitch_187
    const-string/jumbo v0, "getCallStateForSubscription"

    return-object v0

    :pswitch_188
    const-string/jumbo v0, "getCallState"

    return-object v0

    :pswitch_189
    const-string/jumbo v0, "getNeighboringCellInfo"

    return-object v0

    :pswitch_18a
    const-string/jumbo v0, "getNetworkCountryIsoForPhone"

    return-object v0

    :pswitch_18b
    const-string/jumbo v0, "getCellLocation"

    return-object v0

    :pswitch_18c
    const-string/jumbo v0, "isDataConnectivityPossible"

    return-object v0

    :pswitch_18d
    const-string v0, "disableDataConnectivity"

    return-object v0

    :pswitch_18e
    const-string v0, "enableDataConnectivity"

    return-object v0

    :pswitch_18f
    const-string v0, "disableLocationUpdates"

    return-object v0

    :pswitch_190
    const-string v0, "enableLocationUpdates"

    return-object v0

    :pswitch_191
    const-string/jumbo v0, "updateServiceLocationWithPackageName"

    return-object v0

    :pswitch_192
    const-string/jumbo v0, "updateServiceLocation"

    return-object v0

    :pswitch_193
    const-string/jumbo v0, "getRadioPowerOffReasons"

    return-object v0

    :pswitch_194
    const-string v0, "clearRadioPowerOffForReason"

    return-object v0

    :pswitch_195
    const-string/jumbo v0, "requestRadioPowerOffForReason"

    return-object v0

    :pswitch_196
    const-string/jumbo v0, "setRadioPower"

    return-object v0

    :pswitch_197
    const-string/jumbo v0, "setRadioForSubscriber"

    return-object v0

    :pswitch_198
    const-string/jumbo v0, "setRadio"

    return-object v0

    :pswitch_199
    const-string/jumbo v0, "toggleRadioOnOffForSubscriber"

    return-object v0

    :pswitch_19a
    const-string/jumbo v0, "toggleRadioOnOff"

    return-object v0

    :pswitch_19b
    const-string/jumbo v0, "handlePinMmiForSubscriber"

    return-object v0

    :pswitch_19c
    const-string/jumbo v0, "handleUssdRequest"

    return-object v0

    :pswitch_19d
    const-string/jumbo v0, "handlePinMmi"

    return-object v0

    :pswitch_19e
    const-string/jumbo v0, "supplyPukReportResultForSubscriber"

    return-object v0

    :pswitch_19f
    const-string/jumbo v0, "supplyPinReportResultForSubscriber"

    return-object v0

    :pswitch_1a0
    const-string/jumbo v0, "supplyPukForSubscriber"

    return-object v0

    :pswitch_1a1
    const-string/jumbo v0, "supplyPinForSubscriber"

    return-object v0

    :pswitch_1a2
    const-string/jumbo v0, "getCallComposerStatus"

    return-object v0

    :pswitch_1a3
    const-string/jumbo v0, "setCallComposerStatus"

    return-object v0

    :pswitch_1a4
    const-string/jumbo v0, "isRadioOnForSubscriberWithFeature"

    return-object v0

    :pswitch_1a5
    const-string/jumbo v0, "isRadioOnForSubscriber"

    return-object v0

    :pswitch_1a6
    const-string/jumbo v0, "isRadioOnWithFeature"

    return-object v0

    :pswitch_1a7
    const-string/jumbo v0, "isRadioOn"

    return-object v0

    :pswitch_1a8
    const-string v0, "call"

    return-object v0

    :pswitch_1a9
    const-string v0, "dial"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a9
        :pswitch_1a8
        :pswitch_1a7
        :pswitch_1a6
        :pswitch_1a5
        :pswitch_1a4
        :pswitch_1a3
        :pswitch_1a2
        :pswitch_1a1
        :pswitch_1a0
        :pswitch_19f
        :pswitch_19e
        :pswitch_19d
        :pswitch_19c
        :pswitch_19b
        :pswitch_19a
        :pswitch_199
        :pswitch_198
        :pswitch_197
        :pswitch_196
        :pswitch_195
        :pswitch_194
        :pswitch_193
        :pswitch_192
        :pswitch_191
        :pswitch_190
        :pswitch_18f
        :pswitch_18e
        :pswitch_18d
        :pswitch_18c
        :pswitch_18b
        :pswitch_18a
        :pswitch_189
        :pswitch_188
        :pswitch_187
        :pswitch_186
        :pswitch_185
        :pswitch_184
        :pswitch_183
        :pswitch_182
        :pswitch_181
        :pswitch_180
        :pswitch_17f
        :pswitch_17e
        :pswitch_17d
        :pswitch_17c
        :pswitch_17b
        :pswitch_17a
        :pswitch_179
        :pswitch_178
        :pswitch_177
        :pswitch_176
        :pswitch_175
        :pswitch_174
        :pswitch_173
        :pswitch_172
        :pswitch_171
        :pswitch_170
        :pswitch_16f
        :pswitch_16e
        :pswitch_16d
        :pswitch_16c
        :pswitch_16b
        :pswitch_16a
        :pswitch_169
        :pswitch_168
        :pswitch_167
        :pswitch_166
        :pswitch_165
        :pswitch_164
        :pswitch_163
        :pswitch_162
        :pswitch_161
        :pswitch_160
        :pswitch_15f
        :pswitch_15e
        :pswitch_15d
        :pswitch_15c
        :pswitch_15b
        :pswitch_15a
        :pswitch_159
        :pswitch_158
        :pswitch_157
        :pswitch_156
        :pswitch_155
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
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist onTransact$addAttachRestrictionForCarrier$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->addAttachRestrictionForCarrier(IILcom/android/internal/telephony/IIntegerConsumer;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$addUceRegistrationOverrideShell$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->addUceRegistrationOverrideShell(ILjava/util/List;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return v3
.end method

.method private blacklist onTransact$bootstrapAuthenticationRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/net/Uri;

    sget-object v0, Landroid/telephony/gba/UaSecurityProtocolIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/telephony/gba/UaSecurityProtocolIdentifier;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/IBootstrapAuthenticationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IBootstrapAuthenticationCallback;

    move-result-object v12

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move v1, v7

    move v2, v8

    move-object v3, v9

    move-object v4, v10

    move v5, v11

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony$Stub;->bootstrapAuthenticationRequest(IILandroid/net/Uri;Landroid/telephony/gba/UaSecurityProtocolIdentifier;ZLandroid/telephony/IBootstrapAuthenticationCallback;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$canChangeDtmfToneLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->canChangeDtmfToneLength(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$changeIccLockPassword$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->changeIccLockPassword(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$clearSignalStrengthUpdateRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/telephony/SignalStrengthUpdateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->clearSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$deprovisionSatellite$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->deprovisionSatellite(Ljava/util/List;Landroid/os/ResultReceiver;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$deprovisionSatelliteService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->deprovisionSatelliteService(Ljava/lang/String;Lcom/android/internal/telephony/IIntegerConsumer;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$doesSwitchMultiSimConfigTriggerReboot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->doesSwitchMultiSimConfigTriggerReboot(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$enableModemForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableModemForSlot(IZ)Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$enableVisualVoicemailSmsFilter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    sget-object v2, Landroid/telephony/VisualVoicemailSmsFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/VisualVoicemailSmsFilterSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableVisualVoicemailSmsFilter(Ljava/lang/String;ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$enqueueSmsPickResult$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enqueueSmsPickResult(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IIntegerConsumer;)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$getBoundImsServicePackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getBoundImsServicePackage(IZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getCallForwarding$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ICallForwardingInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICallForwardingInfoCallback;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallForwarding(IILcom/android/internal/telephony/ICallForwardingInfoCallback;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$getCallStateForSubscription$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallStateForSubscription(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getCarrierIdFromMccMnc$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierIdFromMccMnc(ILjava/lang/String;Z)I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getCarrierRestrictionStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierRestrictionStatus(Lcom/android/internal/telephony/IIntegerConsumer;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$getCdmaEriIconIndexForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndexForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getCdmaEriIconModeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconModeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getCdmaEriTextForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriTextForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getCellNetworkScanResults$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellNetworkScanResults(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/CellNetworkScanResult;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return v4
.end method

.method private blacklist onTransact$getClientRequestStats$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getClientRequestStats(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    return v4
.end method

.method private blacklist onTransact$getDataNetworkTypeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getDefaultRespondViaMessageApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDefaultRespondViaMessageApplication(IZ)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return v3
.end method

.method private blacklist onTransact$getDeviceSoftwareVersionForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceSoftwareVersionForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getEmergencyNumberList$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
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

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getEmergencyNumberList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$getEquivalentHomePlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getEquivalentHomePlmns(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getForbiddenPlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getForbiddenPlmns(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$getImeiForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getImeiForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getImsProvisioningInt$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsProvisioningInt(II)I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$getImsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsProvisioningStatusForCapability(III)Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getImsProvisioningString$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsProvisioningString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$getLastKnownCellIdentity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLastKnownCellIdentity(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return v4
.end method

.method private blacklist onTransact$getLine1AlphaTagForDisplay$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1AlphaTagForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getLine1NumberForDisplay$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getLteOnCdmaModeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaModeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getMeidForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getMeidForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getMergedSubscriberIds$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getMergedSubscriberIds(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getNetworkTypeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getNumberOfModemsWithSimultaneousDataConnections$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getNumberOfModemsWithSimultaneousDataConnections(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getRadioPowerOffReasons$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioPowerOffReasons(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getRadioPowerState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioPowerState(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getRcsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getRcsProvisioningStatusForCapability(III)Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getServiceStateForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

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

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceStateForSlot(IZZLjava/lang/String;Ljava/lang/String;)Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return v1
.end method

.method private blacklist onTransact$getShaIdFromAllowList$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getShaIdFromAllowList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$getSubIdForPhoneAccountHandle$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getVisualVoicemailPackageName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVisualVoicemailPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getVoiceMessageCountForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCountForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$getVoiceNetworkTypeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$handleUssdRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->handleUssdRequest(ILjava/lang/String;Landroid/os/ResultReceiver;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$iccExchangeSimIO$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

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

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$iccTransmitApduBasicChannel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

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

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$iccTransmitApduBasicChannelByPort$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

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

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

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

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$iccTransmitApduLogicalChannel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 17
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

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

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

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$iccTransmitApduLogicalChannelByPort$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

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

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$isApnMetered$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isApnMetered(II)Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$isApplicationOnUicc$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isApplicationOnUicc(II)Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$isAvailable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isAvailable(III)Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isCapable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isCapable(III)Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isDataEnabledForApn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataEnabledForApn(IILjava/lang/String;)Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isEmergencyNumber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isEmergencyNumber(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$isMmTelCapabilitySupported$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isMmTelCapabilitySupported(ILcom/android/internal/telephony/IIntegerConsumer;II)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isMobileDataPolicyEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isMobileDataPolicyEnabled(II)Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$isModemEnabledForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isModemEnabledForSlot(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isMultiSimSupported$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
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

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isMultiSimSupported(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$isMvnoMatched$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isMvnoMatched(IILjava/lang/String;)Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isPremiumCapabilityAvailableForPurchase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isPremiumCapabilityAvailableForPurchase(II)Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$isProvisioningRequiredForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isProvisioningRequiredForCapability(III)Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isRadioOnForSubscriberWithFeature$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnForSubscriberWithFeature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isRcsProvisioningRequiredForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRcsProvisioningRequiredForCapability(III)Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$isWorldPhone$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isWorldPhone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$notifyRcsAutoConfigurationReceived$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->notifyRcsAutoConfigurationReceived(I[BZ)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$overrideCarrierRoamingNtnEligibilityChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->overrideCarrierRoamingNtnEligibilityChanged(ZZ)Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$persistEmergencyCallDiagnosticData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move-object v1, v7

    move v2, v8

    move-wide v3, v9

    move v5, v11

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony$Stub;->persistEmergencyCallDiagnosticData(Ljava/lang/String;ZJZZ)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$provisionSatellite$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->provisionSatellite(Ljava/util/List;Landroid/os/ResultReceiver;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$provisionSatelliteService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->provisionSatelliteService(Ljava/lang/String;[BLcom/android/internal/telephony/IIntegerConsumer;)Landroid/os/ICancellationSignal;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$purchasePremiumCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-static {v1}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->purchasePremiumCapability(ILcom/android/internal/telephony/IIntegerConsumer;I)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$registerFeatureProvisioningChangedCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IFeatureProvisioningCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->registerFeatureProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IFeatureProvisioningCallback;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$registerForCommunicationAllowedStateChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-static {v1}, Landroid/telephony/satellite/ISatelliteCommunicationAllowedStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteCommunicationAllowedStateCallback;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForCommunicationAllowedStateChanged(ILandroid/telephony/satellite/ISatelliteCommunicationAllowedStateCallback;)I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$registerImsProvisioningChangedCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->registerImsProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IImsConfigCallback;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$registerImsStateCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IImsStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IImsStateCallback;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerImsStateCallback(IILcom/android/internal/telephony/IImsStateCallback;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$registerRcsProvisioningCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsConfigCallback;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->registerRcsProvisioningCallback(ILandroid/telephony/ims/aidl/IRcsConfigCallback;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$removeAttachRestrictionForCarrier$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->removeAttachRestrictionForCarrier(IILcom/android/internal/telephony/IIntegerConsumer;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$removeContactFromEab$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->removeContactFromEab(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$removeUceRegistrationOverrideShell$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->removeUceRegistrationOverrideShell(ILjava/util/List;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return v3
.end method

.method private blacklist onTransact$requestCellInfoUpdate$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ICellInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ICellInfoCallback;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->requestCellInfoUpdate(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$requestCellInfoUpdateWithWorkSource$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ICellInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ICellInfoCallback;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/WorkSource;

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->requestCellInfoUpdateWithWorkSource(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$requestIsCommunicationAllowedForCurrentLocation$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestIsCommunicationAllowedForCurrentLocation(ILandroid/os/ResultReceiver;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$requestNetworkScan$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    sget-object v1, Landroid/telephony/NetworkScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/telephony/NetworkScanRequest;

    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/os/Messenger;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

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

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$requestNumberVerification$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/telephony/PhoneNumberRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneNumberRange;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/INumberVerificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/INumberVerificationCallback;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v1, p0

    move-object v2, v0

    move-wide v3, v7

    move-object v5, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/ITelephony$Stub;->requestNumberVerification(Landroid/telephony/PhoneNumberRange;JLcom/android/internal/telephony/INumberVerificationCallback;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    return v1
.end method

.method private blacklist onTransact$requestSatelliteEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->requestSatelliteEnabled(ZZZLcom/android/internal/telephony/IIntegerConsumer;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$requestSatelliteSessionStats$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestSatelliteSessionStats(ILandroid/os/ResultReceiver;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$sendDatagram$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/telephony/satellite/SatelliteDatagram;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/satellite/SatelliteDatagram;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->sendDatagram(ILandroid/telephony/satellite/SatelliteDatagram;ZLcom/android/internal/telephony/IIntegerConsumer;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$sendDeviceToDeviceMessage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->sendDeviceToDeviceMessage(II)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$sendThermalMitigationRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/telephony/ThermalMitigationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ThermalMitigationRequest;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->sendThermalMitigationRequest(ILandroid/telephony/ThermalMitigationRequest;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$sendVisualVoicemailSmsForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v14, p1

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/app/PendingIntent;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move v5, v12

    move-object v6, v13

    move-object v7, v15

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony$Stub;->sendVisualVoicemailSmsForSubscriber(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setAllowedNetworkTypesForReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setAllowedNetworkTypesForReason(IIJ)Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setBoundGbaServiceOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setBoundGbaServiceOverride(ILjava/lang/String;)Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setBoundImsServiceOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setBoundImsServiceOverride(IZ[ILjava/lang/String;)Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setCallForwarding$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/telephony/CallForwardingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CallForwardingInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCallForwarding(ILandroid/telephony/CallForwardingInfo;Lcom/android/internal/telephony/IIntegerConsumer;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setCallWaitingStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCallWaitingStatus(IZLcom/android/internal/telephony/IIntegerConsumer;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setCapabilitiesRequestTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCapabilitiesRequestTimeout(IJ)Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setCarrierServicePackageOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCarrierServicePackageOverride(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setCarrierSingleRegistrationEnabledOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setCarrierSingleRegistrationEnabledOverride(ILjava/lang/String;)Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setCarrierTestOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

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

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setCellBroadcastIdRanges$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/telephony/CellBroadcastIdRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellBroadcastIdRanges(ILjava/util/List;Lcom/android/internal/telephony/IIntegerConsumer;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setCountryCodes$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v10, p1

    invoke-virtual {v10, v9}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v11

    move-object v4, v12

    move-wide v5, v13

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony$Stub;->setCountryCodes(ZLjava/util/List;Ljava/util/Map;Ljava/lang/String;J)Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setDataEnabledForReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataEnabledForReason(IIZLjava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setDatagramControllerBooleanConfig$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setDatagramControllerBooleanConfig(ZIZ)Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setDatagramControllerTimeoutDuration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDatagramControllerTimeoutDuration(ZIJ)Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setEmergencyCallToSatelliteHandoverType$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setEmergencyCallToSatelliteHandoverType(II)Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setForbiddenPlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setForbiddenPlmns(IILjava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1
.end method

.method private blacklist onTransact$setGbaReleaseTimeOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setGbaReleaseTimeOverride(II)Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setIccLockEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
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

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setIccLockEnabled(IZLjava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setImsFeatureValidationOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsFeatureValidationOverride(ILjava/lang/String;)Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setImsProvisioningInt$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsProvisioningInt(III)I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setImsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsProvisioningStatusForCapability(IIIZ)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setImsProvisioningString$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsProvisioningString(IILjava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setLine1NumberForDisplayForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setMobileDataPolicyEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setMobileDataPolicyEnabled(IIZ)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setNetworkSelectionModeManual$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setNrDualConnectivityState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setNrDualConnectivityState(II)I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setOemEnabledSatelliteProvisionStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setOemEnabledSatelliteProvisionStatus(ZZ)Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setRcsClientConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/telephony/ims/RcsClientConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/RcsClientConfiguration;

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRcsClientConfiguration(ILandroid/telephony/ims/RcsClientConfiguration;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setRcsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setRcsProvisioningStatusForCapability(IIIZ)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setRemovableEsimAsDefaultEuicc$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRemovableEsimAsDefaultEuicc(ZLjava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setRoamingOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v1, 0x1

    return v1
.end method

.method private blacklist onTransact$setRttCapabilitySetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRttCapabilitySetting(IZ)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setSatelliteAccessControlOverlayConfigs$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move v1, v7

    move v2, v8

    move-object v3, v9

    move-wide v4, v10

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteAccessControlOverlayConfigs(ZZLjava/lang/String;JLjava/util/List;)Z

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v1, 0x1

    return v1
.end method

.method private blacklist onTransact$setSatelliteControllerTimeoutDuration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteControllerTimeoutDuration(ZIJ)Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setSatellitePointingUiClassName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
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

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatellitePointingUiClassName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setSatelliteServicePackageName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
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

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteServicePackageName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setSignalStrengthUpdateRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/telephony/SignalStrengthUpdateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SignalStrengthUpdateRequest;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setSimPowerStateForSlotWithCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSimPowerStateForSlotWithCallback(IILcom/android/internal/telephony/IIntegerConsumer;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setSystemSelectionChannels$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/telephony/RadioAccessSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IBooleanConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IBooleanConsumer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSystemSelectionChannels(Ljava/util/List;ILcom/android/internal/telephony/IBooleanConsumer;)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setVoNrEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoNrEnabled(IZ)I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setVoWiFiNonPersistent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoWiFiNonPersistent(IZI)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setVoiceMailNumber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setVoiceServiceStateOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoiceServiceStateOverride(IZLjava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setVoicemailRingtoneUri$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoicemailRingtoneUri(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setVoicemailVibrationEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoicemailVibrationEnabled(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$startSatelliteTransmissionUpdates$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->startSatelliteTransmissionUpdates(Lcom/android/internal/telephony/IIntegerConsumer;Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$stopSatelliteTransmissionUpdates$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->stopSatelliteTransmissionUpdates(Lcom/android/internal/telephony/IIntegerConsumer;Landroid/telephony/satellite/ISatelliteTransmissionUpdateCallback;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$supplyPukForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$supplyPukReportResultForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$unregisterFeatureProvisioningChangedCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IFeatureProvisioningCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterFeatureProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IFeatureProvisioningCallback;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$unregisterForCommunicationAllowedStateChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/satellite/ISatelliteCommunicationAllowedStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteCommunicationAllowedStateCallback;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForCommunicationAllowedStateChanged(ILandroid/telephony/satellite/ISatelliteCommunicationAllowedStateCallback;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$unregisterImsProvisioningChangedCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterImsProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IImsConfigCallback;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$unregisterRcsProvisioningCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IRcsConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsConfigCallback;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterRcsProvisioningCallback(ILandroid/telephony/ims/aidl/IRcsConfigCallback;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$updateEmergencyNumberListTestMode$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/telephony/emergency/EmergencyNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->updateEmergencyNumberListTestMode(ILandroid/telephony/emergency/EmergencyNumber;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$uploadCallComposerPicture$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/ParcelFileDescriptor;

    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/ResultReceiver;

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony$Stub;->uploadCallComposerPicture(ILjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ResultReceiver;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x1a9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.android.internal.telephony.ITelephony"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setNtnSmsSupported(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$deprovisionSatellite$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$overrideCarrierRoamingNtnEligibilityChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteSubscriberIdListChangedIntentComponent(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$provisionSatellite$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_5
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestSatelliteSubscriberProvisionStatus(Landroid/os/ResultReceiver;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestSatelliteSessionStats$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setIsSatelliteCommunicationAllowedForCurrentLocationCache(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_8
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setDatagramControllerBooleanConfig$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_9
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$unregisterForCommunicationAllowedStateChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$registerForCommunicationAllowedStateChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISatelliteSupportedStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteSupportedStateCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForSatelliteSupportedStateChanged(Landroid/telephony/satellite/ISatelliteSupportedStateCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISatelliteSupportedStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteSupportedStateCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForSatelliteSupportedStateChanged(Landroid/telephony/satellite/ISatelliteSupportedStateCallback;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSatellitePlmnsForCarrier(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isNullCipherNotificationsEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setNullCipherNotificationsEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isCellularIdentifierDisclosureNotificationsEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setEnableCellularIdentifierDisclosureNotifications(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isAospDomainSelectionService()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->clearDomainSelectionServiceOverride()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_14
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setDomainSelectionServiceOverride(Landroid/content/ComponentName;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setShouldSendDatagramToModemInDemoMode(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISatelliteCapabilitiesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForCapabilitiesChanged(Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISatelliteCapabilitiesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForCapabilitiesChanged(Landroid/telephony/satellite/ISatelliteCapabilitiesCallback;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/INtnSignalStrengthCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/INtnSignalStrengthCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForNtnSignalStrengthChanged(Landroid/telephony/satellite/INtnSignalStrengthCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/INtnSignalStrengthCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/INtnSignalStrengthCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForNtnSignalStrengthChanged(Landroid/telephony/satellite/INtnSignalStrengthCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1a
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestNtnSignalStrength(Landroid/os/ResultReceiver;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getAttachRestrictionReasonsForCarrier(I)[I

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :pswitch_1c
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$removeAttachRestrictionForCarrier$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_1d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$addAttachRestrictionForCarrier$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_1e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getShaIdFromAllowList$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_1f
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setOemEnabledSatelliteProvisionStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_20
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSatelliteAccessControlOverlayConfigs$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_21
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCountryCodes$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_22
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setEmergencyCallToSatelliteHandoverType$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_23
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSatelliteControllerTimeoutDuration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_24
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setDatagramControllerTimeoutDuration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_25
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSatellitePointingUiClassName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteIgnoreCellularServiceState(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteListeningTimeoutDuration(J)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSatelliteGatewayServicePackageName(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_29
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSatelliteServicePackageName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setDeviceAlignedWithSatellite(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2b
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestSelectedNbIotSatelliteSubscriptionId(Landroid/os/ResultReceiver;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2c
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestTimeForNextSatelliteVisibility(Landroid/os/ResultReceiver;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestIsCommunicationAllowedForCurrentLocation$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForSatelliteDisallowedReasonsChanged(Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForSatelliteDisallowedReasonsChanged(Landroid/telephony/satellite/ISatelliteDisallowedReasonsCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_30
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSatelliteDisallowedReasons()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :pswitch_31
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$sendDatagram$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->pollPendingDatagrams(Lcom/android/internal/telephony/IIntegerConsumer;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISatelliteDatagramCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteDatagramCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForIncomingDatagram(Landroid/telephony/satellite/ISatelliteDatagramCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISatelliteDatagramCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteDatagramCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForIncomingDatagram(Landroid/telephony/satellite/ISatelliteDatagramCallback;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteModemStateCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForModemStateChanged(Landroid/telephony/satellite/ISatelliteModemStateCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISatelliteModemStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteModemStateCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForSatelliteModemStateChanged(Landroid/telephony/satellite/ISatelliteModemStateCallback;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_37
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestIsSatelliteProvisioned(Landroid/os/ResultReceiver;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISatelliteProvisionStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteProvisionStateCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForSatelliteProvisionStateChanged(Landroid/telephony/satellite/ISatelliteProvisionStateCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/ISatelliteProvisionStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/ISatelliteProvisionStateCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForSatelliteProvisionStateChanged(Landroid/telephony/satellite/ISatelliteProvisionStateCallback;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_3a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$deprovisionSatelliteService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_3b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$provisionSatelliteService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_3c
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$stopSatelliteTransmissionUpdates$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_3d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$startSatelliteTransmissionUpdates$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_3e
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestSatelliteCapabilities(Landroid/os/ResultReceiver;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3f
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestIsSatelliteSupported(Landroid/os/ResultReceiver;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_40
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestIsEmergencyModeEnabled(Landroid/os/ResultReceiver;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_41
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestIsDemoModeEnabled(Landroid/os/ResultReceiver;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_42
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestIsSatelliteEnabled(Landroid/os/ResultReceiver;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_43
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestSatelliteEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_44
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCarrierRestrictionStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_45
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDomainSelectionSupported()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_46
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCellBroadcastIdRanges$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellBroadcastIdRanges(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_48
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isNullCipherAndIntegrityPreferenceEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setNullCipherAndIntegrityEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$persistEmergencyCallDiagnosticData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimStateForSlotIndex(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_4c
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getDefaultRespondViaMessageApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRemovableEsimDefaultEuicc(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_4e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setRemovableEsimAsDefaultEuicc$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_50
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoiceServiceStateOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_51
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isRcsProvisioningRequiredForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_52
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isProvisioningRequiredForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_53
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getModemService()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setModemService(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_55
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getLastKnownCellIdentity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IImsStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IImsStateCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterImsStateCallback(Lcom/android/internal/telephony/IImsStateCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_57
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$registerImsStateCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_58
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$purchasePremiumCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_59
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isPremiumCapabilityAvailableForPurchase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_5a
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSlicingConfig(Landroid/os/ResultReceiver;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5b
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->prepareForUnattendedReboot()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_5c
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPhoneCapability()Landroid/telephony/PhoneCapability;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_5d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$clearSignalStrengthUpdateRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_5e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSignalStrengthUpdateRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_5f
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCapabilitiesRequestTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->removeUceRequestDisallowedStatus(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLastUcePidfXmlShell(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getLatestRcsContactUceCapabilityShell(I)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->clearUceRegistrationOverrideShell(I)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_64
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$removeUceRegistrationOverrideShell$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_65
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$addUceRegistrationOverrideShell$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setDeviceUceEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_67
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceUceEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCapabilityFromEab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getContactFromEab(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$removeContactFromEab$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_6b
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsFeatureValidationOverride(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_6d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setImsFeatureValidationOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierSingleRegistrationEnabled(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setDeviceToDeviceForceEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setActiveDeviceToDeviceTransport(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_71
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$sendDeviceToDeviceMessage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_72
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCarrierSingleRegistrationEnabledOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_73
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceSingleRegistrationEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setDeviceSingleRegistrationEnabledOverride(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_75
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getRcsSingleRegistrationTestModeEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setRcsSingleRegistrationTestModeEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->triggerRcsReconfiguration(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_78
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$unregisterRcsProvisioningCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_79
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$registerRcsProvisioningCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRcsVolteSingleRegistrationCapable(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_7b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setRcsClientConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getGbaReleaseTime(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_7d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setGbaReleaseTimeOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getBoundGbaService(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7f
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setBoundGbaServiceOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_80
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$bootstrapAuthenticationRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_81
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$sendThermalMitigationRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isNrDualConnectivityEnabled(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_84
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setNrDualConnectivityState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoNrEnabled(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_86
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoNrEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_87
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getEquivalentHomePlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_88
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->canConnectTo5GInDsdsMode()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getManualNetworkSelectionPlmn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8a
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->userActivity()V

    goto/16 :goto_0

    :pswitch_8b
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->requestUserActivityNotification()V

    goto/16 :goto_0

    :pswitch_8c
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$changeIccLockPassword$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_8d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setIccLockEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isIccLockEnabled(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_8f
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$notifyRcsAutoConfigurationReceived$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setCepEnabled(Z)V

    goto/16 :goto_0

    :pswitch_91
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isMobileDataPolicyEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_92
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setMobileDataPolicyEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getMmsUAProfUrl(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getMmsUserAgent(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_95
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->showSwitchToManagedProfileDialog()V

    goto/16 :goto_0

    :pswitch_96
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$enqueueSmsPickResult$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_97
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isMvnoMatched$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSystemSelectionChannels(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_99
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSystemSelectionChannels$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_9a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isApnMetered$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_9b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isDataEnabledForApn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_9c
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isModemEnabledForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_9d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isApplicationOnUicc$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_9e
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getHalVersion(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_a0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioHalVersion()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSlotsMapping(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_a2
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$doesSwitchMultiSimConfigTriggerReboot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->switchMultiSimConfig(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_a4
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isMultiSimSupported$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setMultiSimCarrierRestriction(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_a6
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$enableModemForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_a7
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->resetOtaEmergencyNumberDbFilePath()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_a8
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->updateOtaEmergencyNumberDbFilePath(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_a9
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->notifyOtaEmergencyNumberDbInstalled()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getEmergencyNumberDbVersion(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_ab
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getEmergencyNumberListTestMode()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_ac
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$updateEmergencyNumberListTestMode$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_ad
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->startEmergencyCallbackMode()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_ae
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setImsProvisioningString$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_af
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setImsProvisioningInt$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_b0
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getImsProvisioningString$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_b1
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getImsProvisioningInt$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_b2
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setRcsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_b3
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getRcsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_b4
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getImsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_b5
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setImsProvisioningStatusForCapability$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_b6
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$unregisterFeatureProvisioningChangedCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_b7
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$registerFeatureProvisioningChangedCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_b8
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$unregisterImsProvisioningChangedCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_b9
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$registerImsProvisioningChangedCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCertsFromCarrierPrivilegeAccessRules(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_bb
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isEmergencyNumber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_bc
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getEmergencyNumberList$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isTtyOverVolteEnabled(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_be
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setRttCapabilitySetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoWiFiRoamingModeSetting(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoWiFiRoamingModeSetting(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoWiFiModeSetting(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoWiFiModeSetting(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_c3
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoWiFiNonPersistent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoWiFiRoamingSettingEnabled(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoWiFiRoamingSettingEnabled(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setCrossSimCallingEnabled(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isCrossSimCallingEnabledByUser(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoWiFiSettingEnabled(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoWiFiSettingEnabled(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setVtSettingEnabled(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVtSettingEnabled(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setAdvancedCallingSettingEnabled(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isAdvancedCallingSettingEnabled(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_ce
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isMmTelCapabilitySupported$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_cf
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isAvailable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_d0
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isCapable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterMmTelCapabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerMmTelCapabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsMmTelRegistrationTransportType(ILcom/android/internal/telephony/IIntegerConsumer;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsMmTelRegistrationState(ILcom/android/internal/telephony/IIntegerConsumer;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterImsEmergencyRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerImsEmergencyRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d9
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getRadioPowerState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_da
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isInEmergencySmsMode()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_db
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkSelectionMode(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_dc
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getNumberOfModemsWithSimultaneousDataConnections$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->refreshUiccProfile(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_de
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierIdListVersion(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_df
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCarrierServicePackageOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_e0
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCarrierTestOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setCdmaSubscriptionMode(II)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaSubscriptionMode(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setCdmaRoamingMode(II)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaRoamingMode(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataRoamingEnabled(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataRoamingEnabled(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e7
    sget-object v2, Landroid/telephony/UiccSlotMapping;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setSimSlotMapping(Ljava/util/List;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e8
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->switchSlots([I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getUiccSlotsInfo(Ljava/lang/String;)[Landroid/telephony/UiccSlotInfo;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getUiccCardsInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCardIdForDefaultEuicc(ILjava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSignalStrength(I)Landroid/telephony/SignalStrength;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getEmergencyCallbackMode(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_ee
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setForbiddenPlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_ef
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getForbiddenPlmns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_f0
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setSimPowerStateForSlotWithCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setSimPowerStateForSlot(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_f2
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getClientRequestStats$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_f3
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCallWaitingStatus$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallWaitingStatus(ILcom/android/internal/telephony/IIntegerConsumer;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_f5
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setCallForwarding$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_f6
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCallForwarding$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->carrierActionResetAll(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->carrierActionReportDefaultNetworkStatus(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->carrierActionSetRadioEnabled(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_fa
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCarrierIdFromMccMnc$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriptionSpecificCarrierName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriptionSpecificCarrierId(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriptionCarrierName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriptionCarrierId(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_ff
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllowedCarriers()Landroid/telephony/CarrierRestrictionRules;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_100
    sget-object v2, Landroid/telephony/CarrierRestrictionRules;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierRestrictionRules;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_101
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getTelephonyHistograms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaPrlVersion(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getEsn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getAidForAppType(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_105
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPackagesWithCarrierPrivilegesForAllPhones()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getPackagesWithCarrierPrivileges(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_107
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoicemailVibrationEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_108
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_109
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoicemailRingtoneUri$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_10a
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_10b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getServiceStateForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_10c
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V

    goto/16 :goto_0

    :pswitch_10d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimLocaleForSubscriber(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->factoryReset(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_10f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_110
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getSubIdForPhoneAccountHandle$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_111
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getDeviceSoftwareVersionForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getManufacturerCodeForSlot(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_113
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getMeidForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getTypeAllocationCodeForSlot(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getPrimaryImei(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_116
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getImeiForSlot$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceIdWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsRegTechnologyForMmTel(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_11a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoTelephonyAvailable(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_11b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isWifiCallingAvailable(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_11c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isImsRegistered(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_11d
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isHearingAidCompatibilitySupported()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_11e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRttSupported(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_11f
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isTtyModeSupported()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_120
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isWorldPhone$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_121
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$canChangeDtmfToneLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoCallingEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_123
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableVideoCalling(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_124
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$uploadCallComposerPicture$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioAccessFamily(ILjava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_126
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->shutdownMobileRadios()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_127
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needMobileRadioShutdown()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_128
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setRoamingOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setOperatorBrandOverride(ILjava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_12a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getMergedImsisFromGroup(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_12b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getMergedSubscriberIds$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_12c
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getLine1AlphaTagForDisplay$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_12d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getLine1NumberForDisplay$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_12e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setLine1NumberForDisplayForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_12f
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackage(ILjava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPrivilegeStatusForUid(II)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPrivilegeStatus(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_134
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestNumberVerification$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMdn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_137
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsRegistrationState(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isManualNetworkSelectionAllowed(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataEnabledForReason(II)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_13a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setDataEnabledForReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_13b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataEnabled(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_13c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isUserDataEnabled(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_13d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataEnabled(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_13e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setAllowedNetworkTypesForReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_13f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllowedNetworkTypesForReason(II)J

    move-result-wide v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_140
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setNetworkSelectionModeManual$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->stopNetworkScan(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_142
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestNetworkScan$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_143
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCellNetworkScanResults$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeAutomatic(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsMmTelFeatureState(ILcom/android/internal/telephony/IIntegerConsumer;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_146
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getBoundImsServicePackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->clearCarrierImsServiceOverride(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_148
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setBoundImsServiceOverride$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsConfig(II)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_14a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_14b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceFeatureCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterImsFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_14c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceFeatureCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerMmTelFeatureCallback(ILcom/android/ims/internal/IImsServiceFeatureCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_14d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->resetIms(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_14e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->disableIms(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_14f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableIms(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isTetheringApnRequiredForSubscriber(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllowedNetworkTypesBitmask(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->rebootModem(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->resetModemConfig(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_154
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteCdmaPrl([B)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteItem(ILjava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->nvReadItem(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_158
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$iccExchangeSimIO$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_159
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$iccTransmitApduBasicChannel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_15a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$iccTransmitApduBasicChannelByPort$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_15b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$iccTransmitApduLogicalChannel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_15c
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$iccTransmitApduLogicalChannelByPort$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_15d
    sget-object v2, Lcom/android/internal/telephony/IccLogicalChannelRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->iccCloseLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_15e
    sget-object v2, Lcom/android/internal/telephony/IccLogicalChannelRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_15f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellInfoListRate(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_160
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestCellInfoUpdateWithWorkSource$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_161
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$requestCellInfoUpdate$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_163
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getLteOnCdmaModeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCardUsingSlotIndex(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_166
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_167
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getVoiceNetworkTypeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_168
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getDataNetworkTypeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_16a
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getNetworkTypeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_16b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->sendDialerSpecialCode(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_16c
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$sendVisualVoicemailSmsForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_16d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getActiveVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_16e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_16f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->disableVisualVoicemailSmsFilter(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_170
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$enableVisualVoicemailSmsFilter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_171
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getVisualVoicemailPackageName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getVisualVoicemailSettings(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isConcurrentVoiceAndDataAllowed(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_174
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getVoiceMessageCountForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivationState(ILjava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceActivationState(ILjava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataActivationState(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoiceActivationState(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_179
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$setVoiceMailNumber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_17a
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_17b
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCdmaEriTextForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_17c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_17d
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCdmaEriIconModeForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_17e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_17f
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCdmaEriIconIndexForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneTypeForSlot(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_182
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataStateForSubId(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_184
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivityForSubId(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_186
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_187
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getCallStateForSubscription$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_188
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_18a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_18b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_18c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_18d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_18e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_18f
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_190
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocationWithPackageName(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_192
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_193
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$getRadioPowerOffReasons$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->clearRadioPowerOffForReason(II)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->requestRadioPowerOffForReason(II)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_196
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioPower(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioForSubscriber(IZ)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_198
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOffForSubscriber(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_19a
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_19b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmiForSubscriber(ILjava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_19c
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$handleUssdRequest$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_19d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_19e
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$supplyPukReportResultForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_19f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :pswitch_1a0
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$supplyPukForSubscriber$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_1a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinForSubscriber(ILjava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallComposerStatus(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setCallComposerStatus(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_1a4
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/ITelephony$Stub;->onTransact$isRadioOnForSubscriberWithFeature$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_1a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnForSubscriber(ILjava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_1a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnWithFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_1a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_1a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_1a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a9
        :pswitch_1a8
        :pswitch_1a7
        :pswitch_1a6
        :pswitch_1a5
        :pswitch_1a4
        :pswitch_1a3
        :pswitch_1a2
        :pswitch_1a1
        :pswitch_1a0
        :pswitch_19f
        :pswitch_19e
        :pswitch_19d
        :pswitch_19c
        :pswitch_19b
        :pswitch_19a
        :pswitch_199
        :pswitch_198
        :pswitch_197
        :pswitch_196
        :pswitch_195
        :pswitch_194
        :pswitch_193
        :pswitch_192
        :pswitch_191
        :pswitch_190
        :pswitch_18f
        :pswitch_18e
        :pswitch_18d
        :pswitch_18c
        :pswitch_18b
        :pswitch_18a
        :pswitch_189
        :pswitch_188
        :pswitch_187
        :pswitch_186
        :pswitch_185
        :pswitch_184
        :pswitch_183
        :pswitch_182
        :pswitch_181
        :pswitch_180
        :pswitch_17f
        :pswitch_17e
        :pswitch_17d
        :pswitch_17c
        :pswitch_17b
        :pswitch_17a
        :pswitch_179
        :pswitch_178
        :pswitch_177
        :pswitch_176
        :pswitch_175
        :pswitch_174
        :pswitch_173
        :pswitch_172
        :pswitch_171
        :pswitch_170
        :pswitch_16f
        :pswitch_16e
        :pswitch_16d
        :pswitch_16c
        :pswitch_16b
        :pswitch_16a
        :pswitch_169
        :pswitch_168
        :pswitch_167
        :pswitch_166
        :pswitch_165
        :pswitch_164
        :pswitch_163
        :pswitch_162
        :pswitch_161
        :pswitch_160
        :pswitch_15f
        :pswitch_15e
        :pswitch_15d
        :pswitch_15c
        :pswitch_15b
        :pswitch_15a
        :pswitch_159
        :pswitch_158
        :pswitch_157
        :pswitch_156
        :pswitch_155
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
        :pswitch_0
    .end packed-switch
.end method
