.class public abstract Lcom/samsung/android/wifi/ISemWifiManager$Stub;
.super Landroid/os/Binder;
.source "ISemWifiManager.java"

# interfaces
.implements Lcom/samsung/android/wifi/ISemWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/ISemWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/ISemWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addOrUpdateNetwork:I = 0xcf

.field static final blacklist TRANSACTION_addOrUpdateWifiControlHistory:I = 0xcd

.field static final blacklist TRANSACTION_allowAutojoinPasspoint:I = 0xd4

.field static final blacklist TRANSACTION_autohotspotWifiScanConnect:I = 0xa5

.field static final blacklist TRANSACTION_blockFccChannelBackoff:I = 0x4

.field static final blacklist TRANSACTION_canAutoHotspotBeEnabled:I = 0x98

.field static final blacklist TRANSACTION_canSmartMHSLocked:I = 0x49

.field static final blacklist TRANSACTION_checkAppForWiFiOffloading:I = 0x119

.field static final blacklist TRANSACTION_clearAutoHotspotLists:I = 0x30

.field static final blacklist TRANSACTION_connectToMcfMHS:I = 0xac

.field static final blacklist TRANSACTION_connectToSmartD2DClient:I = 0x5a

.field static final blacklist TRANSACTION_connectToSmartMHS:I = 0x4f

.field static final blacklist TRANSACTION_disableRandomMac:I = 0xf6

.field static final blacklist TRANSACTION_disconnectApBlockAutojoin:I = 0x10a

.field static final blacklist TRANSACTION_enableHotspotTsfInfo:I = 0x95

.field static final blacklist TRANSACTION_enableTxPowerLogging:I = 0x142

.field static final blacklist TRANSACTION_externalTwtInterface:I = 0x11b

.field static final blacklist TRANSACTION_factoryReset:I = 0xd1

.field static final blacklist TRANSACTION_getAbTestConfigs:I = 0x14f

.field static final blacklist TRANSACTION_getAbTestConfiguredModule:I = 0x150

.field static final blacklist TRANSACTION_getAdvancedAutohotspotConnectSettings:I = 0x2a

.field static final blacklist TRANSACTION_getAdvancedAutohotspotLCDSettings:I = 0x2c

.field static final blacklist TRANSACTION_getAntInfo:I = 0xb

.field static final blacklist TRANSACTION_getAutoShareDump:I = 0xe7

.field static final blacklist TRANSACTION_getAutoWifiDefaultValue:I = 0xea

.field static final blacklist TRANSACTION_getAutoWifiDump:I = 0xed

.field static final blacklist TRANSACTION_getChannelUtilization:I = 0x32

.field static final blacklist TRANSACTION_getChannelUtilizationExtended:I = 0x33

.field static final blacklist TRANSACTION_getConfiguredNetworkLocations:I = 0xee

.field static final blacklist TRANSACTION_getConfiguredNetworks:I = 0xd3

.field static final blacklist TRANSACTION_getConnectivityLog:I = 0xdc

.field static final blacklist TRANSACTION_getCountryCode:I = 0x3e

.field static final blacklist TRANSACTION_getCountryRev:I = 0x3d

.field static final blacklist TRANSACTION_getCtlFeatureState:I = 0x11d

.field static final blacklist TRANSACTION_getCurrentL2TransitionMode:I = 0x120

.field static final blacklist TRANSACTION_getCurrentStateAndEnterTime:I = 0x21

.field static final blacklist TRANSACTION_getCurrentStatusMode:I = 0xfa

.field static final blacklist TRANSACTION_getCurrentWifiRouterInfo:I = 0x19

.field static final blacklist TRANSACTION_getDailyUsageInfo:I = 0x23

.field static final blacklist TRANSACTION_getDataConsumedValues:I = 0x13c

.field static final blacklist TRANSACTION_getDcxoCalibrationData:I = 0x18

.field static final blacklist TRANSACTION_getDiagnosisResults:I = 0xd9

.field static final blacklist TRANSACTION_getDynamicFeatureStatus:I = 0x143

.field static final blacklist TRANSACTION_getEasySetupScanSettings:I = 0xf5

.field static final blacklist TRANSACTION_getFactoryMacAddress:I = 0xa

.field static final blacklist TRANSACTION_getFrameburstInfo:I = 0xc

.field static final blacklist TRANSACTION_getHotspotAntMode:I = 0x65

.field static final blacklist TRANSACTION_getIWCQTables:I = 0x106

.field static final blacklist TRANSACTION_getIndoorStatus:I = 0x7d

.field static final blacklist TRANSACTION_getIsPacketCaptureSupportedByDriver:I = 0x14a

.field static final blacklist TRANSACTION_getIssueDetectorDump:I = 0xd6

.field static final blacklist TRANSACTION_getIwhState:I = 0x123

.field static final blacklist TRANSACTION_getL2TransitionLog:I = 0x121

.field static final blacklist TRANSACTION_getMHSClientTrafficDetails:I = 0x13a

.field static final blacklist TRANSACTION_getMHSConfig:I = 0x68

.field static final blacklist TRANSACTION_getMHSMacFromInterface:I = 0xa0

.field static final blacklist TRANSACTION_getMaxTdlsSession:I = 0x138

.field static final blacklist TRANSACTION_getMcfConnectedStatus:I = 0xad

.field static final blacklist TRANSACTION_getMcfConnectedStatusFromScanResult:I = 0xae

.field static final blacklist TRANSACTION_getMcfScanDetail:I = 0xa9

.field static final blacklist TRANSACTION_getMonthlyDataUsage:I = 0xba

.field static final blacklist TRANSACTION_getNRTTrafficbandwidth:I = 0x13b

.field static final blacklist TRANSACTION_getNetworkLastUpdatedTimeMap:I = 0x20

.field static final blacklist TRANSACTION_getNetworkUsageInfo:I = 0x22

.field static final blacklist TRANSACTION_getNumOfTdlsSession:I = 0x139

.field static final blacklist TRANSACTION_getNumOfWifiAnt:I = 0x117

.field static final blacklist TRANSACTION_getNumberOfDataInEachRssiLevel:I = 0x122

.field static final blacklist TRANSACTION_getOptimizerForceControlMode:I = 0x10c

.field static final blacklist TRANSACTION_getOptimizerState:I = 0x10d

.field static final blacklist TRANSACTION_getPasspointConfigurations:I = 0xd5

.field static final blacklist TRANSACTION_getProfileShareDump:I = 0xe6

.field static final blacklist TRANSACTION_getProvisionSuccess:I = 0x78

.field static final blacklist TRANSACTION_getPsmInfo:I = 0xd

.field static final blacklist TRANSACTION_getQoSScores:I = 0xdd

.field static final blacklist TRANSACTION_getRVFModeStatus:I = 0x7e

.field static final blacklist TRANSACTION_getRoamBand:I = 0x3b

.field static final blacklist TRANSACTION_getRoamDelta:I = 0x37

.field static final blacklist TRANSACTION_getRoamScanPeriod:I = 0x39

.field static final blacklist TRANSACTION_getRoamTrigger:I = 0x35

.field static final blacklist TRANSACTION_getRssi:I = 0x115

.field static final blacklist TRANSACTION_getSamsungIwhCtrl:I = 0x127

.field static final blacklist TRANSACTION_getSamsungMloCtrl:I = 0x126

.field static final blacklist TRANSACTION_getServiceDetectionResult:I = 0x10e

.field static final blacklist TRANSACTION_getSilentRoamingDump:I = 0xdb

.field static final blacklist TRANSACTION_getSmartApConnectedStatus:I = 0x51

.field static final blacklist TRANSACTION_getSmartApConnectedStatusFromScanResult:I = 0x56

.field static final blacklist TRANSACTION_getSmartD2DClientConnectedStatus:I = 0x5b

.field static final blacklist TRANSACTION_getSmartMHSLockStatus:I = 0x48

.field static final blacklist TRANSACTION_getSoftApBands:I = 0x97

.field static final blacklist TRANSACTION_getSoftApConfiguration:I = 0x5f

.field static final blacklist TRANSACTION_getSoftApFreq:I = 0xa1

.field static final blacklist TRANSACTION_getSoftApSecurityType:I = 0x9b

.field static final blacklist TRANSACTION_getSoftApUpStreamNetworkType:I = 0x9f

.field static final blacklist TRANSACTION_getStationInfo:I = 0x61

.field static final blacklist TRANSACTION_getTWTParams:I = 0x11c

.field static final blacklist TRANSACTION_getTasAverage:I = 0x13e

.field static final blacklist TRANSACTION_getTcpMonitorAllSocketHistory:I = 0x131

.field static final blacklist TRANSACTION_getTcpMonitorDnsHistory:I = 0x132

.field static final blacklist TRANSACTION_getTcpMonitorSocketForegroundHistory:I = 0x130

.field static final blacklist TRANSACTION_getTopHotspotClientsToday:I = 0xb5

.field static final blacklist TRANSACTION_getTopHotspotClientsTodayAsString:I = 0xb6

.field static final blacklist TRANSACTION_getTotalAndTop3ClientsDataUsageBetweenGivenDates:I = 0xb9

.field static final blacklist TRANSACTION_getTxPower:I = 0x62

.field static final blacklist TRANSACTION_getValidState:I = 0xfb

.field static final blacklist TRANSACTION_getVendorWlanDriverProp:I = 0xf

.field static final blacklist TRANSACTION_getWcmEverQualityTested:I = 0xf8

.field static final blacklist TRANSACTION_getWifi7DisabledCountry:I = 0x3f

.field static final blacklist TRANSACTION_getWifiApBleD2DScanDetail:I = 0x57

.field static final blacklist TRANSACTION_getWifiApBleScanDetail:I = 0x4c

.field static final blacklist TRANSACTION_getWifiApChannel:I = 0x6a

.field static final blacklist TRANSACTION_getWifiApClientDetails:I = 0xb4

.field static final blacklist TRANSACTION_getWifiApConnectedStationCount:I = 0x7b

.field static final blacklist TRANSACTION_getWifiApDailyDataLimit:I = 0xb8

.field static final blacklist TRANSACTION_getWifiApFreq:I = 0x63

.field static final blacklist TRANSACTION_getWifiApGuestPassword:I = 0xc1

.field static final blacklist TRANSACTION_getWifiApHostapdFreq:I = 0xa6

.field static final blacklist TRANSACTION_getWifiApHostapdSecurtiy:I = 0xa7

.field static final blacklist TRANSACTION_getWifiApInterfaceName:I = 0x74

.field static final blacklist TRANSACTION_getWifiApInterfaceNames:I = 0x73

.field static final blacklist TRANSACTION_getWifiApIsolate:I = 0x88

.field static final blacklist TRANSACTION_getWifiApLOHSState:I = 0x7c

.field static final blacklist TRANSACTION_getWifiApMacAclMode:I = 0x8c

.field static final blacklist TRANSACTION_getWifiApMaxClient:I = 0x6b

.field static final blacklist TRANSACTION_getWifiApMaxClientFromFramework:I = 0x84

.field static final blacklist TRANSACTION_getWifiApStaList:I = 0x6e

.field static final blacklist TRANSACTION_getWifiApStaListDetail:I = 0x71

.field static final blacklist TRANSACTION_getWifiApState:I = 0x92

.field static final blacklist TRANSACTION_getWifiApTodaysTotalDataUsage:I = 0xb7

.field static final blacklist TRANSACTION_getWifiApWarningActivityRunningState:I = 0x2f

.field static final blacklist TRANSACTION_getWifiApWpsPbc:I = 0x86

.field static final blacklist TRANSACTION_getWifiCid:I = 0x8

.field static final blacklist TRANSACTION_getWifiEnableHistory:I = 0xce

.field static final blacklist TRANSACTION_getWifiFirmwareVersion:I = 0x7

.field static final blacklist TRANSACTION_getWifiIconVisibility:I = 0xf9

.field static final blacklist TRANSACTION_getWifiMACAddress:I = 0xa4

.field static final blacklist TRANSACTION_getWifiRouterInfo:I = 0x1a

.field static final blacklist TRANSACTION_getWifiRouterInfoBestEffort:I = 0x1b

.field static final blacklist TRANSACTION_getWifiRouterInfoBestEffortByBssid:I = 0x1e

.field static final blacklist TRANSACTION_getWifiRouterInfoByBssid:I = 0x1d

.field static final blacklist TRANSACTION_getWifiRouterInfoPresentable:I = 0x1c

.field static final blacklist TRANSACTION_getWifiRouterInfoPresentableByBssid:I = 0x1f

.field static final blacklist TRANSACTION_getWifiStaInfo:I = 0x116

.field static final blacklist TRANSACTION_getWifiSupportedFeatureSet:I = 0xe

.field static final blacklist TRANSACTION_getWifiUsabilityStatsEntry:I = 0x134

.field static final blacklist TRANSACTION_getWifiVersions:I = 0x9

.field static final blacklist TRANSACTION_hasConfiguredNetworkLocations:I = 0xef

.field static final blacklist TRANSACTION_isAvailableAutoWifiScan:I = 0xec

.field static final blacklist TRANSACTION_isAvailableTdls:I = 0x135

.field static final blacklist TRANSACTION_isCaptureRunning:I = 0x149

.field static final blacklist TRANSACTION_isClientAcceptedWifiProfileSharing:I = 0x4b

.field static final blacklist TRANSACTION_isDataSaverEnabled:I = 0x9c

.field static final blacklist TRANSACTION_isGripSensorMonitorEnabled:I = 0x25

.field static final blacklist TRANSACTION_isIndividualAppSupported:I = 0x133

.field static final blacklist TRANSACTION_isMCFClientAutohotspotSupported:I = 0xa8

.field static final blacklist TRANSACTION_isNCHOModeEnabled:I = 0x40

.field static final blacklist TRANSACTION_isNeededToShowWifiApDatalimitReachedDialog:I = 0xa3

.field static final blacklist TRANSACTION_isOverAllMhsDataLimitReached:I = 0xbb

.field static final blacklist TRANSACTION_isOverAllMhsDataLimitSet:I = 0xbc

.field static final blacklist TRANSACTION_isP2pConnected:I = 0x99

.field static final blacklist TRANSACTION_isSAFamilySupportedBasedOnCountry:I = 0xc7

.field static final blacklist TRANSACTION_isScanningEnabled:I = 0xf2

.field static final blacklist TRANSACTION_isSoftAp6ENetwork:I = 0x9e

.field static final blacklist TRANSACTION_isSoftap11axEnabled:I = 0x9d

.field static final blacklist TRANSACTION_isSupportedAutoWifi:I = 0xe9

.field static final blacklist TRANSACTION_isSupportedProfileRequest:I = 0xe5

.field static final blacklist TRANSACTION_isSupportedQoSProvider:I = 0xe4

.field static final blacklist TRANSACTION_isSwitchToMobileDataDefaultOff:I = 0x144

.field static final blacklist TRANSACTION_isUploadModeEnabled:I = 0x29

.field static final blacklist TRANSACTION_isUsingNonTerrestrialNetwork:I = 0x91

.field static final blacklist TRANSACTION_isWesModeEnabled:I = 0x44

.field static final blacklist TRANSACTION_isWiderBandwidthTdlsSupported:I = 0x136

.field static final blacklist TRANSACTION_isWifiApEnabled:I = 0x7a

.field static final blacklist TRANSACTION_isWifiApEnabledWithDualBand:I = 0x93

.field static final blacklist TRANSACTION_isWifiApGuestClient:I = 0xc6

.field static final blacklist TRANSACTION_isWifiApGuestModeEnabled:I = 0xc2

.field static final blacklist TRANSACTION_isWifiApGuestModeIsolationEnabled:I = 0xc4

.field static final blacklist TRANSACTION_isWifiApMacAclEnabled:I = 0x8e

.field static final blacklist TRANSACTION_isWifiApWpa3Supported:I = 0x5c

.field static final blacklist TRANSACTION_isWifiDeveloperModeEnabled:I = 0x6

.field static final blacklist TRANSACTION_isWifiSharingEnabled:I = 0x79

.field static final blacklist TRANSACTION_isWifiSharingLiteSupported:I = 0x70

.field static final blacklist TRANSACTION_isWifiSharingSupported:I = 0x6f

.field static final blacklist TRANSACTION_iwhIntendedDisconnection:I = 0x129

.field static final blacklist TRANSACTION_launchWifiApWarningForMcfMHS:I = 0xa2

.field static final blacklist TRANSACTION_linkQosQuery:I = 0x12a

.field static final blacklist TRANSACTION_manageWifiApMacAclList:I = 0x8a

.field static final blacklist TRANSACTION_notifyConnect:I = 0x96

.field static final blacklist TRANSACTION_notifyReachabilityLost:I = 0xfc

.field static final blacklist TRANSACTION_readWifiApMacAclList:I = 0x8b

.field static final blacklist TRANSACTION_registerAbTestConfigUpdateObserver:I = 0x14c

.field static final blacklist TRANSACTION_registerClientDataUsageCallback:I = 0xca

.field static final blacklist TRANSACTION_registerClientListDataUsageCallback:I = 0xc8

.field static final blacklist TRANSACTION_registerPasswordCallback:I = 0xe0

.field static final blacklist TRANSACTION_registerTasPolicyChangedListener:I = 0x140

.field static final blacklist TRANSACTION_registerWifiApDataUsageCallback:I = 0x54

.field static final blacklist TRANSACTION_registerWifiApSmartCallback:I = 0x52

.field static final blacklist TRANSACTION_removeExcludedNetwork:I = 0x101

.field static final blacklist TRANSACTION_removeFactoryMacAddress:I = 0x11

.field static final blacklist TRANSACTION_removeNetwork:I = 0xd0

.field static final blacklist TRANSACTION_removePktlogFilter:I = 0x113

.field static final blacklist TRANSACTION_reportAbTestResult:I = 0x14e

.field static final blacklist TRANSACTION_reportBigData:I = 0xcc

.field static final blacklist TRANSACTION_reportHotspotDumpLogs:I = 0x90

.field static final blacklist TRANSACTION_reportIssue:I = 0xd7

.field static final blacklist TRANSACTION_requestPassword:I = 0xe2

.field static final blacklist TRANSACTION_requestStopAutohotspotAdvertisement:I = 0x50

.field static final blacklist TRANSACTION_resetCallbackCondition:I = 0x11e

.field static final blacklist TRANSACTION_resetComebackCondition:I = 0x11f

.field static final blacklist TRANSACTION_resetDeveloperOptionsSettings:I = 0xd2

.field static final blacklist TRANSACTION_resetSoftAp:I = 0x82

.field static final blacklist TRANSACTION_resetTotalPriorityDataConsumedValues:I = 0x13d

.field static final blacklist TRANSACTION_restoreIWCSettingsValue:I = 0x105

.field static final blacklist TRANSACTION_restoreSemConfigurationsBackupData:I = 0x103

.field static final blacklist TRANSACTION_retrieveSemWifiConfigsBackupData:I = 0x102

.field static final blacklist TRANSACTION_runAutoShareForCurrent:I = 0xe8

.field static final blacklist TRANSACTION_runIptablesRulesCommand:I = 0x75

.field static final blacklist TRANSACTION_saveFwDump:I = 0x114

.field static final blacklist TRANSACTION_sendReassociationFrequencyRequestFrame:I = 0x151

.field static final blacklist TRANSACTION_sendReassociationRequestFrame:I = 0x47

.field static final blacklist TRANSACTION_sendVendorSpecificActionFrame:I = 0x46

.field static final blacklist TRANSACTION_set5GmmWaveSarBackoffEnabled:I = 0x27

.field static final blacklist TRANSACTION_setAdvancedAutohotspotConnectSettings:I = 0x2b

.field static final blacklist TRANSACTION_setAdvancedAutohotspotLCDSettings:I = 0x31

.field static final blacklist TRANSACTION_setAllowWifiScan:I = 0xf1

.field static final blacklist TRANSACTION_setAntInfo:I = 0x15

.field static final blacklist TRANSACTION_setAntMode:I = 0x66

.field static final blacklist TRANSACTION_setArdkPowerSaveMode:I = 0x94

.field static final blacklist TRANSACTION_setAutohotspotToastMessage:I = 0x9a

.field static final blacklist TRANSACTION_setBtmOptionUserDisabled:I = 0xdf

.field static final blacklist TRANSACTION_setBtmOptionUserEnabled:I = 0xde

.field static final blacklist TRANSACTION_setConnectionAttemptInfo:I = 0x104

.field static final blacklist TRANSACTION_setConnectivityCheckDisabled:I = 0xfd

.field static final blacklist TRANSACTION_setCountryRev:I = 0x3c

.field static final blacklist TRANSACTION_setDcxoCalibrationData:I = 0x17

.field static final blacklist TRANSACTION_setDtimInSuspendMode:I = 0x2

.field static final blacklist TRANSACTION_setEasySetupScanSettings:I = 0xf4

.field static final blacklist TRANSACTION_setFactoryMacAddress:I = 0x12

.field static final blacklist TRANSACTION_setFccChannelBackoffEnabled:I = 0x13

.field static final blacklist TRANSACTION_setFrameburstInfo:I = 0x16

.field static final blacklist TRANSACTION_setGripSensorMonitorEnabled:I = 0x24

.field static final blacklist TRANSACTION_setHotspotAntMode:I = 0x64

.field static final blacklist TRANSACTION_setIWCMockAction:I = 0x109

.field static final blacklist TRANSACTION_setIWCQTables:I = 0x107

.field static final blacklist TRANSACTION_setIlaTrainingResult:I = 0x12f

.field static final blacklist TRANSACTION_setImsCallEstablished:I = 0xf7

.field static final blacklist TRANSACTION_setKeepConnection:I = 0xff

.field static final blacklist TRANSACTION_setKeepConnectionAlways:I = 0xfe

.field static final blacklist TRANSACTION_setKeepConnectionBigData:I = 0x100

.field static final blacklist TRANSACTION_setLatencyCritical:I = 0x111

.field static final blacklist TRANSACTION_setLocalOnlyHotspotEnabled:I = 0x5e

.field static final blacklist TRANSACTION_setMHSConfig:I = 0x69

.field static final blacklist TRANSACTION_setMaxDtimInSuspendMode:I = 0x1

.field static final blacklist TRANSACTION_setMcfMultiControlMode:I = 0x14b

.field static final blacklist TRANSACTION_setMhsAiServiceNsdResult:I = 0x146

.field static final blacklist TRANSACTION_setMhsAiServiceState:I = 0x145

.field static final blacklist TRANSACTION_setNCHOModeEnabled:I = 0x41

.field static final blacklist TRANSACTION_setOptimizerForceControlMode:I = 0x10b

.field static final blacklist TRANSACTION_setPktlogFilter:I = 0x112

.field static final blacklist TRANSACTION_setPowerSavingTime:I = 0x67

.field static final blacklist TRANSACTION_setProvisionSuccess:I = 0x77

.field static final blacklist TRANSACTION_setPsmInfo:I = 0x14

.field static final blacklist TRANSACTION_setRVFmodeStatus:I = 0x7f

.field static final blacklist TRANSACTION_setRoamBand:I = 0x3a

.field static final blacklist TRANSACTION_setRoamDelta:I = 0x36

.field static final blacklist TRANSACTION_setRoamScanChannels:I = 0x43

.field static final blacklist TRANSACTION_setRoamScanEnabled:I = 0x42

.field static final blacklist TRANSACTION_setRoamScanPeriod:I = 0x38

.field static final blacklist TRANSACTION_setRoamTrigger:I = 0x34

.field static final blacklist TRANSACTION_setSamsungIwhCtrl:I = 0x125

.field static final blacklist TRANSACTION_setSamsungMloCtrl:I = 0x124

.field static final blacklist TRANSACTION_setSmartMHSLocked:I = 0x4a

.field static final blacklist TRANSACTION_setSoftApConfiguration:I = 0x60

.field static final blacklist TRANSACTION_setTCRule:I = 0x11a

.field static final blacklist TRANSACTION_setTasPolicy:I = 0x13f

.field static final blacklist TRANSACTION_setTdlsEnabled:I = 0x137

.field static final blacklist TRANSACTION_setTestMode:I = 0x128

.field static final blacklist TRANSACTION_setTestSettings:I = 0xf0

.field static final blacklist TRANSACTION_setTrafficPatternTestSettings:I = 0x10f

.field static final blacklist TRANSACTION_setUploadModeEnabled:I = 0x28

.field static final blacklist TRANSACTION_setUserConfirmForSharingPassword:I = 0xe3

.field static final blacklist TRANSACTION_setVendorWlanDriverProp:I = 0x10

.field static final blacklist TRANSACTION_setVerboseLoggingEnabled:I = 0x3

.field static final blacklist TRANSACTION_setWesModeEnabled:I = 0x45

.field static final blacklist TRANSACTION_setWifiAiIwhInferenceResult:I = 0x12e

.field static final blacklist TRANSACTION_setWifiAiIwhTrainingResult:I = 0x12d

.field static final blacklist TRANSACTION_setWifiAiServiceNsdResult:I = 0x12c

.field static final blacklist TRANSACTION_setWifiAiServiceState:I = 0x12b

.field static final blacklist TRANSACTION_setWifiApClientDataPaused:I = 0xb1

.field static final blacklist TRANSACTION_setWifiApClientEditedName:I = 0xb2

.field static final blacklist TRANSACTION_setWifiApClientMobileDataLimit:I = 0xaf

.field static final blacklist TRANSACTION_setWifiApClientTimeLimit:I = 0xb0

.field static final blacklist TRANSACTION_setWifiApConfigurationToDefault:I = 0x72

.field static final blacklist TRANSACTION_setWifiApDailyDataLimit:I = 0xb3

.field static final blacklist TRANSACTION_setWifiApEnabled:I = 0x5d

.field static final blacklist TRANSACTION_setWifiApGuestModeEnabled:I = 0xc3

.field static final blacklist TRANSACTION_setWifiApGuestModeIsolationEnabled:I = 0xc5

.field static final blacklist TRANSACTION_setWifiApGuestPassword:I = 0xc0

.field static final blacklist TRANSACTION_setWifiApIsolate:I = 0x87

.field static final blacklist TRANSACTION_setWifiApMacAclEnable:I = 0x8f

.field static final blacklist TRANSACTION_setWifiApMacAclMode:I = 0x8d

.field static final blacklist TRANSACTION_setWifiApMaxClient:I = 0x81

.field static final blacklist TRANSACTION_setWifiApMaxClientToFramework:I = 0x83

.field static final blacklist TRANSACTION_setWifiApWarningActivityRunning:I = 0x2e

.field static final blacklist TRANSACTION_setWifiApWpsPbc:I = 0x85

.field static final blacklist TRANSACTION_setWifiDeveloperModeEnabled:I = 0x5

.field static final blacklist TRANSACTION_setWifiSettingsForegroundState:I = 0x2d

.field static final blacklist TRANSACTION_setWifiSharingEnabled:I = 0x76

.field static final blacklist TRANSACTION_setWifiUwbCoexEnabled:I = 0x110

.field static final blacklist TRANSACTION_shouldShowAutoWifiBubbleTip:I = 0xeb

.field static final blacklist TRANSACTION_startCapture:I = 0x147

.field static final blacklist TRANSACTION_startIssueMonitoring:I = 0xda

.field static final blacklist TRANSACTION_startMcfClientMHSDiscovery:I = 0xaa

.field static final blacklist TRANSACTION_startMcfMHSAdvertisement:I = 0xab

.field static final blacklist TRANSACTION_startScan:I = 0xf3

.field static final blacklist TRANSACTION_startTimerForWifiOffload:I = 0x118

.field static final blacklist TRANSACTION_stopCapture:I = 0x148

.field static final blacklist TRANSACTION_supportWifiAp5GBasedOnCountry:I = 0x6c

.field static final blacklist TRANSACTION_supportWifiAp6GBasedOnCountry:I = 0x6d

.field static final blacklist TRANSACTION_triggerBackoffRoutine:I = 0x26

.field static final blacklist TRANSACTION_unRegisterWifiApDataUsageCallback:I = 0x55

.field static final blacklist TRANSACTION_unregisterAbTestConfigUpdateObserver:I = 0x14d

.field static final blacklist TRANSACTION_unregisterClientDataUsageCallback:I = 0xcb

.field static final blacklist TRANSACTION_unregisterClientListDataUsageCallback:I = 0xc9

.field static final blacklist TRANSACTION_unregisterPasswordCallback:I = 0xe1

.field static final blacklist TRANSACTION_unregisterTasPolicyChangedListener:I = 0x141

.field static final blacklist TRANSACTION_unregisterWifiApSmartCallback:I = 0x53

.field static final blacklist TRANSACTION_updateGuiderFeature:I = 0xd8

.field static final blacklist TRANSACTION_updateHostapdMacList:I = 0x89

.field static final blacklist TRANSACTION_updateIWCHintCard:I = 0x108

.field static final blacklist TRANSACTION_wifiApBackUpClientDataUsageSettingsInfo:I = 0xbd

.field static final blacklist TRANSACTION_wifiApBleClientRole:I = 0x4d

.field static final blacklist TRANSACTION_wifiApBleD2DClientRole:I = 0x58

.field static final blacklist TRANSACTION_wifiApBleD2DMhsRole:I = 0x59

.field static final blacklist TRANSACTION_wifiApBleMhsRole:I = 0x4e

.field static final blacklist TRANSACTION_wifiApDisassocSta:I = 0x80

.field static final blacklist TRANSACTION_wifiApRestoreClientDataUsageSettingsInfo:I = 0xbe

.field static final blacklist TRANSACTION_wifiApRestoreDailyHotspotDataLimit:I = 0xbf


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.wifi.ISemWifiManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemWifiManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.wifi.ISemWifiManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/wifi/ISemWifiManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/wifi/ISemWifiManager;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/wifi/ISemWifiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "sendReassociationFrequencyRequestFrame"

    return-object v0

    :pswitch_1
    const-string v0, "getAbTestConfiguredModule"

    return-object v0

    :pswitch_2
    const-string v0, "getAbTestConfigs"

    return-object v0

    :pswitch_3
    const-string v0, "reportAbTestResult"

    return-object v0

    :pswitch_4
    const-string v0, "unregisterAbTestConfigUpdateObserver"

    return-object v0

    :pswitch_5
    const-string v0, "registerAbTestConfigUpdateObserver"

    return-object v0

    :pswitch_6
    const-string v0, "setMcfMultiControlMode"

    return-object v0

    :pswitch_7
    const-string v0, "getIsPacketCaptureSupportedByDriver"

    return-object v0

    :pswitch_8
    const-string v0, "isCaptureRunning"

    return-object v0

    :pswitch_9
    const-string v0, "stopCapture"

    return-object v0

    :pswitch_a
    const-string v0, "startCapture"

    return-object v0

    :pswitch_b
    const-string v0, "setMhsAiServiceNsdResult"

    return-object v0

    :pswitch_c
    const-string v0, "setMhsAiServiceState"

    return-object v0

    :pswitch_d
    const-string v0, "isSwitchToMobileDataDefaultOff"

    return-object v0

    :pswitch_e
    const-string v0, "getDynamicFeatureStatus"

    return-object v0

    :pswitch_f
    const-string v0, "enableTxPowerLogging"

    return-object v0

    :pswitch_10
    const-string v0, "unregisterTasPolicyChangedListener"

    return-object v0

    :pswitch_11
    const-string v0, "registerTasPolicyChangedListener"

    return-object v0

    :pswitch_12
    const-string v0, "setTasPolicy"

    return-object v0

    :pswitch_13
    const-string v0, "getTasAverage"

    return-object v0

    :pswitch_14
    const-string v0, "resetTotalPriorityDataConsumedValues"

    return-object v0

    :pswitch_15
    const-string v0, "getDataConsumedValues"

    return-object v0

    :pswitch_16
    const-string v0, "getNRTTrafficbandwidth"

    return-object v0

    :pswitch_17
    const-string v0, "getMHSClientTrafficDetails"

    return-object v0

    :pswitch_18
    const-string v0, "getNumOfTdlsSession"

    return-object v0

    :pswitch_19
    const-string v0, "getMaxTdlsSession"

    return-object v0

    :pswitch_1a
    const-string v0, "setTdlsEnabled"

    return-object v0

    :pswitch_1b
    const-string v0, "isWiderBandwidthTdlsSupported"

    return-object v0

    :pswitch_1c
    const-string v0, "isAvailableTdls"

    return-object v0

    :pswitch_1d
    const-string v0, "getWifiUsabilityStatsEntry"

    return-object v0

    :pswitch_1e
    const-string v0, "isIndividualAppSupported"

    return-object v0

    :pswitch_1f
    const-string v0, "getTcpMonitorDnsHistory"

    return-object v0

    :pswitch_20
    const-string v0, "getTcpMonitorAllSocketHistory"

    return-object v0

    :pswitch_21
    const-string v0, "getTcpMonitorSocketForegroundHistory"

    return-object v0

    :pswitch_22
    const-string v0, "setIlaTrainingResult"

    return-object v0

    :pswitch_23
    const-string v0, "setWifiAiIwhInferenceResult"

    return-object v0

    :pswitch_24
    const-string v0, "setWifiAiIwhTrainingResult"

    return-object v0

    :pswitch_25
    const-string v0, "setWifiAiServiceNsdResult"

    return-object v0

    :pswitch_26
    const-string v0, "setWifiAiServiceState"

    return-object v0

    :pswitch_27
    const-string v0, "linkQosQuery"

    return-object v0

    :pswitch_28
    const-string v0, "iwhIntendedDisconnection"

    return-object v0

    :pswitch_29
    const-string v0, "setTestMode"

    return-object v0

    :pswitch_2a
    const-string v0, "getSamsungIwhCtrl"

    return-object v0

    :pswitch_2b
    const-string v0, "getSamsungMloCtrl"

    return-object v0

    :pswitch_2c
    const-string v0, "setSamsungIwhCtrl"

    return-object v0

    :pswitch_2d
    const-string v0, "setSamsungMloCtrl"

    return-object v0

    :pswitch_2e
    const-string v0, "getIwhState"

    return-object v0

    :pswitch_2f
    const-string v0, "getNumberOfDataInEachRssiLevel"

    return-object v0

    :pswitch_30
    const-string v0, "getL2TransitionLog"

    return-object v0

    :pswitch_31
    const-string v0, "getCurrentL2TransitionMode"

    return-object v0

    :pswitch_32
    const-string v0, "resetComebackCondition"

    return-object v0

    :pswitch_33
    const-string v0, "resetCallbackCondition"

    return-object v0

    :pswitch_34
    const-string v0, "getCtlFeatureState"

    return-object v0

    :pswitch_35
    const-string v0, "getTWTParams"

    return-object v0

    :pswitch_36
    const-string v0, "externalTwtInterface"

    return-object v0

    :pswitch_37
    const-string v0, "setTCRule"

    return-object v0

    :pswitch_38
    const-string v0, "checkAppForWiFiOffloading"

    return-object v0

    :pswitch_39
    const-string v0, "startTimerForWifiOffload"

    return-object v0

    :pswitch_3a
    const-string v0, "getNumOfWifiAnt"

    return-object v0

    :pswitch_3b
    const-string v0, "getWifiStaInfo"

    return-object v0

    :pswitch_3c
    const-string v0, "getRssi"

    return-object v0

    :pswitch_3d
    const-string v0, "saveFwDump"

    return-object v0

    :pswitch_3e
    const-string v0, "removePktlogFilter"

    return-object v0

    :pswitch_3f
    const-string v0, "setPktlogFilter"

    return-object v0

    :pswitch_40
    const-string v0, "setLatencyCritical"

    return-object v0

    :pswitch_41
    const-string v0, "setWifiUwbCoexEnabled"

    return-object v0

    :pswitch_42
    const-string v0, "setTrafficPatternTestSettings"

    return-object v0

    :pswitch_43
    const-string v0, "getServiceDetectionResult"

    return-object v0

    :pswitch_44
    const-string v0, "getOptimizerState"

    return-object v0

    :pswitch_45
    const-string v0, "getOptimizerForceControlMode"

    return-object v0

    :pswitch_46
    const-string v0, "setOptimizerForceControlMode"

    return-object v0

    :pswitch_47
    const-string v0, "disconnectApBlockAutojoin"

    return-object v0

    :pswitch_48
    const-string v0, "setIWCMockAction"

    return-object v0

    :pswitch_49
    const-string v0, "updateIWCHintCard"

    return-object v0

    :pswitch_4a
    const-string v0, "setIWCQTables"

    return-object v0

    :pswitch_4b
    const-string v0, "getIWCQTables"

    return-object v0

    :pswitch_4c
    const-string v0, "restoreIWCSettingsValue"

    return-object v0

    :pswitch_4d
    const-string v0, "setConnectionAttemptInfo"

    return-object v0

    :pswitch_4e
    const-string v0, "restoreSemConfigurationsBackupData"

    return-object v0

    :pswitch_4f
    const-string v0, "retrieveSemWifiConfigsBackupData"

    return-object v0

    :pswitch_50
    const-string v0, "removeExcludedNetwork"

    return-object v0

    :pswitch_51
    const-string v0, "setKeepConnectionBigData"

    return-object v0

    :pswitch_52
    const-string v0, "setKeepConnection"

    return-object v0

    :pswitch_53
    const-string v0, "setKeepConnectionAlways"

    return-object v0

    :pswitch_54
    const-string v0, "setConnectivityCheckDisabled"

    return-object v0

    :pswitch_55
    const-string v0, "notifyReachabilityLost"

    return-object v0

    :pswitch_56
    const-string v0, "getValidState"

    return-object v0

    :pswitch_57
    const-string v0, "getCurrentStatusMode"

    return-object v0

    :pswitch_58
    const-string v0, "getWifiIconVisibility"

    return-object v0

    :pswitch_59
    const-string v0, "getWcmEverQualityTested"

    return-object v0

    :pswitch_5a
    const-string v0, "setImsCallEstablished"

    return-object v0

    :pswitch_5b
    const-string v0, "disableRandomMac"

    return-object v0

    :pswitch_5c
    const-string v0, "getEasySetupScanSettings"

    return-object v0

    :pswitch_5d
    const-string v0, "setEasySetupScanSettings"

    return-object v0

    :pswitch_5e
    const-string v0, "startScan"

    return-object v0

    :pswitch_5f
    const-string v0, "isScanningEnabled"

    return-object v0

    :pswitch_60
    const-string v0, "setAllowWifiScan"

    return-object v0

    :pswitch_61
    const-string v0, "setTestSettings"

    return-object v0

    :pswitch_62
    const-string v0, "hasConfiguredNetworkLocations"

    return-object v0

    :pswitch_63
    const-string v0, "getConfiguredNetworkLocations"

    return-object v0

    :pswitch_64
    const-string v0, "getAutoWifiDump"

    return-object v0

    :pswitch_65
    const-string v0, "isAvailableAutoWifiScan"

    return-object v0

    :pswitch_66
    const-string v0, "shouldShowAutoWifiBubbleTip"

    return-object v0

    :pswitch_67
    const-string v0, "getAutoWifiDefaultValue"

    return-object v0

    :pswitch_68
    const-string v0, "isSupportedAutoWifi"

    return-object v0

    :pswitch_69
    const-string v0, "runAutoShareForCurrent"

    return-object v0

    :pswitch_6a
    const-string v0, "getAutoShareDump"

    return-object v0

    :pswitch_6b
    const-string v0, "getProfileShareDump"

    return-object v0

    :pswitch_6c
    const-string v0, "isSupportedProfileRequest"

    return-object v0

    :pswitch_6d
    const-string v0, "isSupportedQoSProvider"

    return-object v0

    :pswitch_6e
    const-string v0, "setUserConfirmForSharingPassword"

    return-object v0

    :pswitch_6f
    const-string v0, "requestPassword"

    return-object v0

    :pswitch_70
    const-string v0, "unregisterPasswordCallback"

    return-object v0

    :pswitch_71
    const-string v0, "registerPasswordCallback"

    return-object v0

    :pswitch_72
    const-string v0, "setBtmOptionUserDisabled"

    return-object v0

    :pswitch_73
    const-string v0, "setBtmOptionUserEnabled"

    return-object v0

    :pswitch_74
    const-string v0, "getQoSScores"

    return-object v0

    :pswitch_75
    const-string v0, "getConnectivityLog"

    return-object v0

    :pswitch_76
    const-string v0, "getSilentRoamingDump"

    return-object v0

    :pswitch_77
    const-string v0, "startIssueMonitoring"

    return-object v0

    :pswitch_78
    const-string v0, "getDiagnosisResults"

    return-object v0

    :pswitch_79
    const-string v0, "updateGuiderFeature"

    return-object v0

    :pswitch_7a
    const-string v0, "reportIssue"

    return-object v0

    :pswitch_7b
    const-string v0, "getIssueDetectorDump"

    return-object v0

    :pswitch_7c
    const-string v0, "getPasspointConfigurations"

    return-object v0

    :pswitch_7d
    const-string v0, "allowAutojoinPasspoint"

    return-object v0

    :pswitch_7e
    const-string v0, "getConfiguredNetworks"

    return-object v0

    :pswitch_7f
    const-string v0, "resetDeveloperOptionsSettings"

    return-object v0

    :pswitch_80
    const-string v0, "factoryReset"

    return-object v0

    :pswitch_81
    const-string v0, "removeNetwork"

    return-object v0

    :pswitch_82
    const-string v0, "addOrUpdateNetwork"

    return-object v0

    :pswitch_83
    const-string v0, "getWifiEnableHistory"

    return-object v0

    :pswitch_84
    const-string v0, "addOrUpdateWifiControlHistory"

    return-object v0

    :pswitch_85
    const-string v0, "reportBigData"

    return-object v0

    :pswitch_86
    const-string v0, "unregisterClientDataUsageCallback"

    return-object v0

    :pswitch_87
    const-string v0, "registerClientDataUsageCallback"

    return-object v0

    :pswitch_88
    const-string v0, "unregisterClientListDataUsageCallback"

    return-object v0

    :pswitch_89
    const-string v0, "registerClientListDataUsageCallback"

    return-object v0

    :pswitch_8a
    const-string v0, "isSAFamilySupportedBasedOnCountry"

    return-object v0

    :pswitch_8b
    const-string v0, "isWifiApGuestClient"

    return-object v0

    :pswitch_8c
    const-string v0, "setWifiApGuestModeIsolationEnabled"

    return-object v0

    :pswitch_8d
    const-string v0, "isWifiApGuestModeIsolationEnabled"

    return-object v0

    :pswitch_8e
    const-string v0, "setWifiApGuestModeEnabled"

    return-object v0

    :pswitch_8f
    const-string v0, "isWifiApGuestModeEnabled"

    return-object v0

    :pswitch_90
    const-string v0, "getWifiApGuestPassword"

    return-object v0

    :pswitch_91
    const-string v0, "setWifiApGuestPassword"

    return-object v0

    :pswitch_92
    const-string v0, "wifiApRestoreDailyHotspotDataLimit"

    return-object v0

    :pswitch_93
    const-string v0, "wifiApRestoreClientDataUsageSettingsInfo"

    return-object v0

    :pswitch_94
    const-string v0, "wifiApBackUpClientDataUsageSettingsInfo"

    return-object v0

    :pswitch_95
    const-string v0, "isOverAllMhsDataLimitSet"

    return-object v0

    :pswitch_96
    const-string v0, "isOverAllMhsDataLimitReached"

    return-object v0

    :pswitch_97
    const-string v0, "getMonthlyDataUsage"

    return-object v0

    :pswitch_98
    const-string v0, "getTotalAndTop3ClientsDataUsageBetweenGivenDates"

    return-object v0

    :pswitch_99
    const-string v0, "getWifiApDailyDataLimit"

    return-object v0

    :pswitch_9a
    const-string v0, "getWifiApTodaysTotalDataUsage"

    return-object v0

    :pswitch_9b
    const-string v0, "getTopHotspotClientsTodayAsString"

    return-object v0

    :pswitch_9c
    const-string v0, "getTopHotspotClientsToday"

    return-object v0

    :pswitch_9d
    const-string v0, "getWifiApClientDetails"

    return-object v0

    :pswitch_9e
    const-string v0, "setWifiApDailyDataLimit"

    return-object v0

    :pswitch_9f
    const-string v0, "setWifiApClientEditedName"

    return-object v0

    :pswitch_a0
    const-string v0, "setWifiApClientDataPaused"

    return-object v0

    :pswitch_a1
    const-string v0, "setWifiApClientTimeLimit"

    return-object v0

    :pswitch_a2
    const-string v0, "setWifiApClientMobileDataLimit"

    return-object v0

    :pswitch_a3
    const-string v0, "getMcfConnectedStatusFromScanResult"

    return-object v0

    :pswitch_a4
    const-string v0, "getMcfConnectedStatus"

    return-object v0

    :pswitch_a5
    const-string v0, "connectToMcfMHS"

    return-object v0

    :pswitch_a6
    const-string v0, "startMcfMHSAdvertisement"

    return-object v0

    :pswitch_a7
    const-string v0, "startMcfClientMHSDiscovery"

    return-object v0

    :pswitch_a8
    const-string v0, "getMcfScanDetail"

    return-object v0

    :pswitch_a9
    const-string v0, "isMCFClientAutohotspotSupported"

    return-object v0

    :pswitch_aa
    const-string v0, "getWifiApHostapdSecurtiy"

    return-object v0

    :pswitch_ab
    const-string v0, "getWifiApHostapdFreq"

    return-object v0

    :pswitch_ac
    const-string v0, "autohotspotWifiScanConnect"

    return-object v0

    :pswitch_ad
    const-string v0, "getWifiMACAddress"

    return-object v0

    :pswitch_ae
    const-string v0, "isNeededToShowWifiApDatalimitReachedDialog"

    return-object v0

    :pswitch_af
    const-string v0, "launchWifiApWarningForMcfMHS"

    return-object v0

    :pswitch_b0
    const-string v0, "getSoftApFreq"

    return-object v0

    :pswitch_b1
    const-string v0, "getMHSMacFromInterface"

    return-object v0

    :pswitch_b2
    const-string v0, "getSoftApUpStreamNetworkType"

    return-object v0

    :pswitch_b3
    const-string v0, "isSoftAp6ENetwork"

    return-object v0

    :pswitch_b4
    const-string v0, "isSoftap11axEnabled"

    return-object v0

    :pswitch_b5
    const-string v0, "isDataSaverEnabled"

    return-object v0

    :pswitch_b6
    const-string v0, "getSoftApSecurityType"

    return-object v0

    :pswitch_b7
    const-string v0, "setAutohotspotToastMessage"

    return-object v0

    :pswitch_b8
    const-string v0, "isP2pConnected"

    return-object v0

    :pswitch_b9
    const-string v0, "canAutoHotspotBeEnabled"

    return-object v0

    :pswitch_ba
    const-string v0, "getSoftApBands"

    return-object v0

    :pswitch_bb
    const-string v0, "notifyConnect"

    return-object v0

    :pswitch_bc
    const-string v0, "enableHotspotTsfInfo"

    return-object v0

    :pswitch_bd
    const-string v0, "setArdkPowerSaveMode"

    return-object v0

    :pswitch_be
    const-string v0, "isWifiApEnabledWithDualBand"

    return-object v0

    :pswitch_bf
    const-string v0, "getWifiApState"

    return-object v0

    :pswitch_c0
    const-string v0, "isUsingNonTerrestrialNetwork"

    return-object v0

    :pswitch_c1
    const-string v0, "reportHotspotDumpLogs"

    return-object v0

    :pswitch_c2
    const-string v0, "setWifiApMacAclEnable"

    return-object v0

    :pswitch_c3
    const-string v0, "isWifiApMacAclEnabled"

    return-object v0

    :pswitch_c4
    const-string v0, "setWifiApMacAclMode"

    return-object v0

    :pswitch_c5
    const-string v0, "getWifiApMacAclMode"

    return-object v0

    :pswitch_c6
    const-string v0, "readWifiApMacAclList"

    return-object v0

    :pswitch_c7
    const-string v0, "manageWifiApMacAclList"

    return-object v0

    :pswitch_c8
    const-string v0, "updateHostapdMacList"

    return-object v0

    :pswitch_c9
    const-string v0, "getWifiApIsolate"

    return-object v0

    :pswitch_ca
    const-string v0, "setWifiApIsolate"

    return-object v0

    :pswitch_cb
    const-string v0, "getWifiApWpsPbc"

    return-object v0

    :pswitch_cc
    const-string v0, "setWifiApWpsPbc"

    return-object v0

    :pswitch_cd
    const-string v0, "getWifiApMaxClientFromFramework"

    return-object v0

    :pswitch_ce
    const-string v0, "setWifiApMaxClientToFramework"

    return-object v0

    :pswitch_cf
    const-string v0, "resetSoftAp"

    return-object v0

    :pswitch_d0
    const-string v0, "setWifiApMaxClient"

    return-object v0

    :pswitch_d1
    const-string v0, "wifiApDisassocSta"

    return-object v0

    :pswitch_d2
    const-string v0, "setRVFmodeStatus"

    return-object v0

    :pswitch_d3
    const-string v0, "getRVFModeStatus"

    return-object v0

    :pswitch_d4
    const-string v0, "getIndoorStatus"

    return-object v0

    :pswitch_d5
    const-string v0, "getWifiApLOHSState"

    return-object v0

    :pswitch_d6
    const-string v0, "getWifiApConnectedStationCount"

    return-object v0

    :pswitch_d7
    const-string v0, "isWifiApEnabled"

    return-object v0

    :pswitch_d8
    const-string v0, "isWifiSharingEnabled"

    return-object v0

    :pswitch_d9
    const-string v0, "getProvisionSuccess"

    return-object v0

    :pswitch_da
    const-string v0, "setProvisionSuccess"

    return-object v0

    :pswitch_db
    const-string v0, "setWifiSharingEnabled"

    return-object v0

    :pswitch_dc
    const-string v0, "runIptablesRulesCommand"

    return-object v0

    :pswitch_dd
    const-string v0, "getWifiApInterfaceName"

    return-object v0

    :pswitch_de
    const-string v0, "getWifiApInterfaceNames"

    return-object v0

    :pswitch_df
    const-string v0, "setWifiApConfigurationToDefault"

    return-object v0

    :pswitch_e0
    const-string v0, "getWifiApStaListDetail"

    return-object v0

    :pswitch_e1
    const-string v0, "isWifiSharingLiteSupported"

    return-object v0

    :pswitch_e2
    const-string v0, "isWifiSharingSupported"

    return-object v0

    :pswitch_e3
    const-string v0, "getWifiApStaList"

    return-object v0

    :pswitch_e4
    const-string v0, "supportWifiAp6GBasedOnCountry"

    return-object v0

    :pswitch_e5
    const-string v0, "supportWifiAp5GBasedOnCountry"

    return-object v0

    :pswitch_e6
    const-string v0, "getWifiApMaxClient"

    return-object v0

    :pswitch_e7
    const-string v0, "getWifiApChannel"

    return-object v0

    :pswitch_e8
    const-string v0, "setMHSConfig"

    return-object v0

    :pswitch_e9
    const-string v0, "getMHSConfig"

    return-object v0

    :pswitch_ea
    const-string v0, "setPowerSavingTime"

    return-object v0

    :pswitch_eb
    const-string v0, "setAntMode"

    return-object v0

    :pswitch_ec
    const-string v0, "getHotspotAntMode"

    return-object v0

    :pswitch_ed
    const-string v0, "setHotspotAntMode"

    return-object v0

    :pswitch_ee
    const-string v0, "getWifiApFreq"

    return-object v0

    :pswitch_ef
    const-string v0, "getTxPower"

    return-object v0

    :pswitch_f0
    const-string v0, "getStationInfo"

    return-object v0

    :pswitch_f1
    const-string v0, "setSoftApConfiguration"

    return-object v0

    :pswitch_f2
    const-string v0, "getSoftApConfiguration"

    return-object v0

    :pswitch_f3
    const-string v0, "setLocalOnlyHotspotEnabled"

    return-object v0

    :pswitch_f4
    const-string v0, "setWifiApEnabled"

    return-object v0

    :pswitch_f5
    const-string v0, "isWifiApWpa3Supported"

    return-object v0

    :pswitch_f6
    const-string v0, "getSmartD2DClientConnectedStatus"

    return-object v0

    :pswitch_f7
    const-string v0, "connectToSmartD2DClient"

    return-object v0

    :pswitch_f8
    const-string v0, "wifiApBleD2DMhsRole"

    return-object v0

    :pswitch_f9
    const-string v0, "wifiApBleD2DClientRole"

    return-object v0

    :pswitch_fa
    const-string v0, "getWifiApBleD2DScanDetail"

    return-object v0

    :pswitch_fb
    const-string v0, "getSmartApConnectedStatusFromScanResult"

    return-object v0

    :pswitch_fc
    const-string v0, "unRegisterWifiApDataUsageCallback"

    return-object v0

    :pswitch_fd
    const-string v0, "registerWifiApDataUsageCallback"

    return-object v0

    :pswitch_fe
    const-string v0, "unregisterWifiApSmartCallback"

    return-object v0

    :pswitch_ff
    const-string v0, "registerWifiApSmartCallback"

    return-object v0

    :pswitch_100
    const-string v0, "getSmartApConnectedStatus"

    return-object v0

    :pswitch_101
    const-string v0, "requestStopAutohotspotAdvertisement"

    return-object v0

    :pswitch_102
    const-string v0, "connectToSmartMHS"

    return-object v0

    :pswitch_103
    const-string v0, "wifiApBleMhsRole"

    return-object v0

    :pswitch_104
    const-string v0, "wifiApBleClientRole"

    return-object v0

    :pswitch_105
    const-string v0, "getWifiApBleScanDetail"

    return-object v0

    :pswitch_106
    const-string v0, "isClientAcceptedWifiProfileSharing"

    return-object v0

    :pswitch_107
    const-string v0, "setSmartMHSLocked"

    return-object v0

    :pswitch_108
    const-string v0, "canSmartMHSLocked"

    return-object v0

    :pswitch_109
    const-string v0, "getSmartMHSLockStatus"

    return-object v0

    :pswitch_10a
    const-string v0, "sendReassociationRequestFrame"

    return-object v0

    :pswitch_10b
    const-string v0, "sendVendorSpecificActionFrame"

    return-object v0

    :pswitch_10c
    const-string v0, "setWesModeEnabled"

    return-object v0

    :pswitch_10d
    const-string v0, "isWesModeEnabled"

    return-object v0

    :pswitch_10e
    const-string v0, "setRoamScanChannels"

    return-object v0

    :pswitch_10f
    const-string v0, "setRoamScanEnabled"

    return-object v0

    :pswitch_110
    const-string v0, "setNCHOModeEnabled"

    return-object v0

    :pswitch_111
    const-string v0, "isNCHOModeEnabled"

    return-object v0

    :pswitch_112
    const-string v0, "getWifi7DisabledCountry"

    return-object v0

    :pswitch_113
    const-string v0, "getCountryCode"

    return-object v0

    :pswitch_114
    const-string v0, "getCountryRev"

    return-object v0

    :pswitch_115
    const-string v0, "setCountryRev"

    return-object v0

    :pswitch_116
    const-string v0, "getRoamBand"

    return-object v0

    :pswitch_117
    const-string v0, "setRoamBand"

    return-object v0

    :pswitch_118
    const-string v0, "getRoamScanPeriod"

    return-object v0

    :pswitch_119
    const-string v0, "setRoamScanPeriod"

    return-object v0

    :pswitch_11a
    const-string v0, "getRoamDelta"

    return-object v0

    :pswitch_11b
    const-string v0, "setRoamDelta"

    return-object v0

    :pswitch_11c
    const-string v0, "getRoamTrigger"

    return-object v0

    :pswitch_11d
    const-string v0, "setRoamTrigger"

    return-object v0

    :pswitch_11e
    const-string v0, "getChannelUtilizationExtended"

    return-object v0

    :pswitch_11f
    const-string v0, "getChannelUtilization"

    return-object v0

    :pswitch_120
    const-string v0, "setAdvancedAutohotspotLCDSettings"

    return-object v0

    :pswitch_121
    const-string v0, "clearAutoHotspotLists"

    return-object v0

    :pswitch_122
    const-string v0, "getWifiApWarningActivityRunningState"

    return-object v0

    :pswitch_123
    const-string v0, "setWifiApWarningActivityRunning"

    return-object v0

    :pswitch_124
    const-string v0, "setWifiSettingsForegroundState"

    return-object v0

    :pswitch_125
    const-string v0, "getAdvancedAutohotspotLCDSettings"

    return-object v0

    :pswitch_126
    const-string v0, "setAdvancedAutohotspotConnectSettings"

    return-object v0

    :pswitch_127
    const-string v0, "getAdvancedAutohotspotConnectSettings"

    return-object v0

    :pswitch_128
    const-string v0, "isUploadModeEnabled"

    return-object v0

    :pswitch_129
    const-string v0, "setUploadModeEnabled"

    return-object v0

    :pswitch_12a
    const-string v0, "set5GmmWaveSarBackoffEnabled"

    return-object v0

    :pswitch_12b
    const-string v0, "triggerBackoffRoutine"

    return-object v0

    :pswitch_12c
    const-string v0, "isGripSensorMonitorEnabled"

    return-object v0

    :pswitch_12d
    const-string v0, "setGripSensorMonitorEnabled"

    return-object v0

    :pswitch_12e
    const-string v0, "getDailyUsageInfo"

    return-object v0

    :pswitch_12f
    const-string v0, "getNetworkUsageInfo"

    return-object v0

    :pswitch_130
    const-string v0, "getCurrentStateAndEnterTime"

    return-object v0

    :pswitch_131
    const-string v0, "getNetworkLastUpdatedTimeMap"

    return-object v0

    :pswitch_132
    const-string v0, "getWifiRouterInfoPresentableByBssid"

    return-object v0

    :pswitch_133
    const-string v0, "getWifiRouterInfoBestEffortByBssid"

    return-object v0

    :pswitch_134
    const-string v0, "getWifiRouterInfoByBssid"

    return-object v0

    :pswitch_135
    const-string v0, "getWifiRouterInfoPresentable"

    return-object v0

    :pswitch_136
    const-string v0, "getWifiRouterInfoBestEffort"

    return-object v0

    :pswitch_137
    const-string v0, "getWifiRouterInfo"

    return-object v0

    :pswitch_138
    const-string v0, "getCurrentWifiRouterInfo"

    return-object v0

    :pswitch_139
    const-string v0, "getDcxoCalibrationData"

    return-object v0

    :pswitch_13a
    const-string v0, "setDcxoCalibrationData"

    return-object v0

    :pswitch_13b
    const-string v0, "setFrameburstInfo"

    return-object v0

    :pswitch_13c
    const-string v0, "setAntInfo"

    return-object v0

    :pswitch_13d
    const-string v0, "setPsmInfo"

    return-object v0

    :pswitch_13e
    const-string v0, "setFccChannelBackoffEnabled"

    return-object v0

    :pswitch_13f
    const-string v0, "setFactoryMacAddress"

    return-object v0

    :pswitch_140
    const-string v0, "removeFactoryMacAddress"

    return-object v0

    :pswitch_141
    const-string v0, "setVendorWlanDriverProp"

    return-object v0

    :pswitch_142
    const-string v0, "getVendorWlanDriverProp"

    return-object v0

    :pswitch_143
    const-string v0, "getWifiSupportedFeatureSet"

    return-object v0

    :pswitch_144
    const-string v0, "getPsmInfo"

    return-object v0

    :pswitch_145
    const-string v0, "getFrameburstInfo"

    return-object v0

    :pswitch_146
    const-string v0, "getAntInfo"

    return-object v0

    :pswitch_147
    const-string v0, "getFactoryMacAddress"

    return-object v0

    :pswitch_148
    const-string v0, "getWifiVersions"

    return-object v0

    :pswitch_149
    const-string v0, "getWifiCid"

    return-object v0

    :pswitch_14a
    const-string v0, "getWifiFirmwareVersion"

    return-object v0

    :pswitch_14b
    const-string v0, "isWifiDeveloperModeEnabled"

    return-object v0

    :pswitch_14c
    const-string v0, "setWifiDeveloperModeEnabled"

    return-object v0

    :pswitch_14d
    const-string v0, "blockFccChannelBackoff"

    return-object v0

    :pswitch_14e
    const-string v0, "setVerboseLoggingEnabled"

    return-object v0

    :pswitch_14f
    const-string v0, "setDtimInSuspendMode"

    return-object v0

    :pswitch_150
    const-string v0, "setMaxDtimInSuspendMode"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method

.method private blacklist onTransact$addOrUpdateWifiControlHistory$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
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

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->addOrUpdateWifiControlHistory(Ljava/lang/String;Z)V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$allowAutojoinPasspoint$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
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

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->allowAutojoinPasspoint(Ljava/lang/String;Z)V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$autohotspotWifiScanConnect$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move v5, v11

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->autohotspotWifiScanConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1
.end method

.method private blacklist onTransact$connectToMcfMHS$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move-object v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move-object v5, v12

    move-object v6, v13

    move v7, v14

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->connectToMcfMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$connectToSmartD2DClient$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/wifi/ISemWifiApSmartCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemWifiApSmartCallback;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->connectToSmartD2DClient(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;)Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$connectToSmartMHS$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, v13

    move-object v6, v14

    move v7, v15

    move/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$enableTxPowerLogging$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->enableTxPowerLogging(ZI)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$externalTwtInterface$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
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

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->externalTwtInterface(ILjava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$getAbTestConfiguredModule$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getAbTestConfiguredModule(Ljava/lang/String;)Lcom/samsung/android/wifi/SemAbTestConfiguration;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return v2
.end method

.method private blacklist onTransact$getTopHotspotClientsToday$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getTopHotspotClientsToday(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    return v3
.end method

.method private blacklist onTransact$getTopHotspotClientsTodayAsString$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getTopHotspotClientsTodayAsString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$getTotalAndTop3ClientsDataUsageBetweenGivenDates$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getTotalAndTop3ClientsDataUsageBetweenGivenDates(JJ)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$getWifiUsabilityStatsEntry$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiUsabilityStatsEntry(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$launchWifiApWarningForMcfMHS$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->launchWifiApWarningForMcfMHS(IIZ)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$linkQosQuery$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v12

    move-wide v5, v14

    move/from16 v7, v16

    move-wide/from16 v8, v17

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->linkQosQuery(JJJIJ)Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$manageWifiApMacAclList$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->manageWifiApMacAclList(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$notifyConnect$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
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

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->notifyConnect(ILjava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$registerAbTestConfigUpdateObserver$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/wifi/ISemAbTestConfigurationUpdateObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemAbTestConfigurationUpdateObserver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->registerAbTestConfigUpdateObserver(Lcom/samsung/android/wifi/ISemAbTestConfigurationUpdateObserver;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$registerClientDataUsageCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->registerClientDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;ILjava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$registerClientListDataUsageCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->registerClientListDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApClientListUpdateCallback;III)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$registerPasswordCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-static {v1}, Lcom/samsung/android/wifi/ISemSharedPasswordCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemSharedPasswordCallback;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->registerPasswordCallback(Ljava/lang/String;Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$registerTasPolicyChangedListener$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/wifi/SemTasPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/SemTasPolicyListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->registerTasPolicyChangedListener(Lcom/samsung/android/wifi/SemTasPolicyListener;)V

    const/4 v1, 0x1

    return v1
.end method

.method private blacklist onTransact$registerWifiApDataUsageCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->registerWifiApDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;I)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$registerWifiApSmartCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/wifi/ISemWifiApSmartCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemWifiApSmartCallback;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->registerWifiApSmartCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;I)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$removePktlogFilter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->removePktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$reportAbTestResult$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->reportAbTestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$reportBigData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
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

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->reportBigData(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$reportIssue$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->reportIssue(ILandroid/os/Bundle;)V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$restoreIWCSettingsValue$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->restoreIWCSettingsValue(II)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$sendReassociationFrequencyRequestFrame$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->sendReassociationFrequencyRequestFrame(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$sendReassociationRequestFrame$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->sendReassociationRequestFrame(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$sendVendorSpecificActionFrame$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->sendVendorSpecificActionFrame(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setAllowWifiScan$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setAllowWifiScan(ZLjava/lang/String;)V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setConnectionAttemptInfo$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setConnectionAttemptInfo(IZLjava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setEasySetupScanSettings$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setEasySetupScanSettings(Ljava/lang/String;Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;)V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setFccChannelBackoffEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
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

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setFccChannelBackoffEnabled(Ljava/lang/String;Z)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setIlaTrainingResult$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setIlaTrainingResult(DLjava/lang/String;)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setKeepConnection$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
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

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setKeepConnection(ZZ)V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setLatencyCritical$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setLatencyCritical(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setLocalOnlyHotspotEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setLocalOnlyHotspotEnabled(ZLjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$setMcfMultiControlMode$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setMcfMultiControlMode(Z)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    return v1
.end method

.method private blacklist onTransact$setMhsAiServiceNsdResult$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setMhsAiServiceNsdResult([I[Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setMhsAiServiceState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setMhsAiServiceState(Z[I[I)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setPktlogFilter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setPktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setTCRule$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setTCRule(ZLjava/lang/String;I)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setTasPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setTasPolicy(II)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setTdlsEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setTdlsEnabled(Z)Z

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setTestSettings$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setTestSettings(ILandroid/os/Bundle;)V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setUserConfirmForSharingPassword$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setUserConfirmForSharingPassword(ZLjava/lang/String;)V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setVendorWlanDriverProp$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setVendorWlanDriverProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setWifiAiIwhTrainingResult$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
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

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiAiIwhTrainingResult(Ljava/lang/String;III)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setWifiAiServiceNsdResult$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiAiServiceNsdResult([I[I[I[Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setWifiAiServiceState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiAiServiceState(Z[I[I)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setWifiApClientDataPaused$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
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

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApClientDataPaused(Ljava/lang/String;Z)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setWifiApClientEditedName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
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

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApClientEditedName(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$setWifiApClientMobileDataLimit$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApClientMobileDataLimit(Ljava/lang/String;J)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setWifiApClientTimeLimit$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApClientTimeLimit(Ljava/lang/String;J)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setWifiApEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/net/wifi/SoftApConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$setWifiUwbCoexEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
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

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiUwbCoexEnabled(IZ)I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$startCapture$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->startCapture(I)I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$unregisterAbTestConfigUpdateObserver$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/wifi/ISemAbTestConfigurationUpdateObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemAbTestConfigurationUpdateObserver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->unregisterAbTestConfigUpdateObserver(Lcom/samsung/android/wifi/ISemAbTestConfigurationUpdateObserver;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    return v1
.end method

.method private blacklist onTransact$unregisterTasPolicyChangedListener$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/wifi/SemTasPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/SemTasPolicyListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->unregisterTasPolicyChangedListener(Lcom/samsung/android/wifi/SemTasPolicyListener;)V

    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x150

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.wifi.ISemWifiManager"

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
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$sendReassociationFrequencyRequestFrame$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$getAbTestConfiguredModule$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getAbTestConfigs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$reportAbTestResult$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_4
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$unregisterAbTestConfigUpdateObserver$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_5
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$registerAbTestConfigUpdateObserver$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_6
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setMcfMultiControlMode$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_7
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getIsPacketCaptureSupportedByDriver()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isCaptureRunning()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->stopCapture()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_a
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$startCapture$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_b
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setMhsAiServiceNsdResult$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_c
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setMhsAiServiceState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_d
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isSwitchToMobileDataDefaultOff()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getDynamicFeatureStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$enableTxPowerLogging$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_10
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$unregisterTasPolicyChangedListener$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_11
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$registerTasPolicyChangedListener$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_12
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setTasPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_13
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getTasAverage()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->resetTotalPriorityDataConsumedValues()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getDataConsumedValues()[J

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getNRTTrafficbandwidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getMHSClientTrafficDetails()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getNumOfTdlsSession()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getMaxTdlsSession()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setTdlsEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_1b
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWiderBandwidthTdlsSupported()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isAvailableTdls()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1d
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$getWifiUsabilityStatsEntry$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_1e
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isIndividualAppSupported()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getTcpMonitorDnsHistory(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getTcpMonitorAllSocketHistory(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getTcpMonitorSocketForegroundHistory(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_22
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setIlaTrainingResult$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiAiIwhInferenceResult([Z)V

    goto/16 :goto_0

    :pswitch_24
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setWifiAiIwhTrainingResult$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_25
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setWifiAiServiceNsdResult$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_26
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setWifiAiServiceState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_27
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$linkQosQuery$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_28
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->iwhIntendedDisconnection()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setTestMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2a
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getSamsungIwhCtrl()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2b
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getSamsungMloCtrl()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setSamsungIwhCtrl(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setSamsungMloCtrl(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2e
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getIwhState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2f
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getNumberOfDataInEachRssiLevel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_30
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getL2TransitionLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_31
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getCurrentL2TransitionMode()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_32
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->resetComebackCondition()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->resetCallbackCondition(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_34
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getCtlFeatureState()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    :pswitch_35
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getTWTParams()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :pswitch_36
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$externalTwtInterface$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_37
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setTCRule$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->checkAppForWiFiOffloading(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_39
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->startTimerForWifiOffload()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3a
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getNumOfWifiAnt()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_3b
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiStaInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getRssi(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_3d
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->saveFwDump()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_3e
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$removePktlogFilter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_3f
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setPktlogFilter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_40
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setLatencyCritical$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_41
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setWifiUwbCoexEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_42
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setTrafficPatternTestSettings(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_43
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getServiceDetectionResult()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :pswitch_44
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getOptimizerState()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :pswitch_45
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getOptimizerForceControlMode()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setOptimizerForceControlMode(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->disconnectApBlockAutojoin(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setIWCMockAction(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->updateIWCHintCard(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setIWCQTables(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4b
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getIWCQTables()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4c
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$restoreIWCSettingsValue$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_4d
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setConnectionAttemptInfo$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->restoreSemConfigurationsBackupData(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4f
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->retrieveSemWifiConfigsBackupData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->removeExcludedNetwork(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setKeepConnectionBigData(I)V

    goto/16 :goto_0

    :pswitch_52
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setKeepConnection$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setKeepConnectionAlways(Z)V

    goto/16 :goto_0

    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setConnectivityCheckDisabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_55
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->notifyReachabilityLost()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_56
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getValidState()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_57
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getCurrentStatusMode()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_58
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiIconVisibility()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_59
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWcmEverQualityTested()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setImsCallEstablished(Z)V

    goto/16 :goto_0

    :pswitch_5b
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->disableRandomMac()V

    goto/16 :goto_0

    :pswitch_5c
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getEasySetupScanSettings()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v2, :cond_2

    const/4 v3, -0x1

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v3, Lcom/samsung/android/wifi/ISemWifiManager$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v3, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    :pswitch_5d
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setEasySetupScanSettings$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->startScan(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_5f
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isScanningEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_60
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setAllowWifiScan$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_61
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setTestSettings$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->hasConfiguredNetworkLocations(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_63
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getConfiguredNetworkLocations()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    :pswitch_64
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getAutoWifiDump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_65
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isAvailableAutoWifiScan()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_66
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->shouldShowAutoWifiBubbleTip()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_67
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getAutoWifiDefaultValue()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_68
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isSupportedAutoWifi()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->runAutoShareForCurrent(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_6a
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getAutoShareDump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6b
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getProfileShareDump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6c
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isSupportedProfileRequest()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_6d
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isSupportedQoSProvider()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_6e
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setUserConfirmForSharingPassword$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->requestPassword(Z)V

    goto/16 :goto_0

    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/wifi/ISemSharedPasswordCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemSharedPasswordCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->unregisterPasswordCallback(Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V

    goto/16 :goto_0

    :pswitch_71
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$registerPasswordCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setBtmOptionUserDisabled(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setBtmOptionUserEnabled(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_74
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getQoSScores(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getConnectivityLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getSilentRoamingDump(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_77
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->startIssueMonitoring(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_78
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getDiagnosisResults()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_79
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->updateGuiderFeature(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_7a
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$reportIssue$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getIssueDetectorDump(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7c
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getPasspointConfigurations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_7d
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$allowAutojoinPasspoint$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_7e
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getConfiguredNetworks()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_7f
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->resetDeveloperOptionsSettings()V

    goto/16 :goto_0

    :pswitch_80
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->factoryReset()V

    goto/16 :goto_0

    :pswitch_81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->removeNetwork(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_82
    sget-object v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiConfiguration;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_83
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiEnableHistory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_84
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$addOrUpdateWifiControlHistory$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_85
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$reportBigData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->unregisterClientDataUsageCallback(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_87
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$registerClientDataUsageCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->unregisterClientListDataUsageCallback(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_89
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$registerClientListDataUsageCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_8a
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isSAFamilySupportedBasedOnCountry()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiApGuestClient(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApGuestModeIsolationEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_8d
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiApGuestModeIsolationEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApGuestModeEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_8f
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiApGuestModeEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_90
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApGuestPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApGuestPassword(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->wifiApRestoreDailyHotspotDataLimit(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->wifiApRestoreClientDataUsageSettingsInfo(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_94
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->wifiApBackUpClientDataUsageSettingsInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_95
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isOverAllMhsDataLimitSet()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_96
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isOverAllMhsDataLimitReached()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_97
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getMonthlyDataUsage()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_98
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$getTotalAndTop3ClientsDataUsageBetweenGivenDates$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_99
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApDailyDataLimit()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_9a
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApTodaysTotalDataUsage()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_9b
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$getTopHotspotClientsTodayAsString$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_9c
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$getTopHotspotClientsToday$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApClientDetails(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApDailyDataLimit(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_9f
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setWifiApClientEditedName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_a0
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setWifiApClientDataPaused$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_a1
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setWifiApClientTimeLimit$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_a2
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setWifiApClientMobileDataLimit$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getMcfConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getMcfConnectedStatus(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_a5
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$connectToMcfMHS$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->startMcfMHSAdvertisement(Z)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->startMcfClientMHSDiscovery(Z)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_a8
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getMcfScanDetail()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_a9
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isMCFClientAutohotspotSupported()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_aa
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApHostapdSecurtiy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_ab
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApHostapdFreq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_ac
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$autohotspotWifiScanConnect$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_ad
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiMACAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_ae
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isNeededToShowWifiApDatalimitReachedDialog()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_af
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$launchWifiApWarningForMcfMHS$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_b0
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getSoftApFreq()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_b1
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getMHSMacFromInterface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b2
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getSoftApUpStreamNetworkType()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_b3
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isSoftAp6ENetwork()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_b4
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isSoftap11axEnabled()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_b5
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isDataSaverEnabled()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_b6
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getSoftApSecurityType()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setAutohotspotToastMessage(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_b8
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isP2pConnected()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_b9
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->canAutoHotspotBeEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_ba
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getSoftApBands()[I

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :pswitch_bb
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$notifyConnect$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->enableHotspotTsfInfo(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setArdkPowerSaveMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_be
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiApEnabledWithDualBand()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_bf
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApState()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_c0
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isUsingNonTerrestrialNetwork()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->reportHotspotDumpLogs(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApMacAclEnable(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c3
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiApMacAclEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApMacAclMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c5
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApMacAclMode()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->readWifiApMacAclList(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_c7
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$manageWifiApMacAclList$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->updateHostapdMacList(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c9
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApIsolate()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApIsolate(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_cb
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApWpsPbc()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApWpsPbc(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_cd
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApMaxClientFromFramework()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApMaxClientToFramework(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_cf
    sget-object v2, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->resetSoftAp(Landroid/os/Message;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApMaxClient(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->wifiApDisassocSta(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setRVFmodeStatus(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d3
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getRVFModeStatus()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_d4
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getIndoorStatus()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_d5
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApLOHSState()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_d6
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApConnectedStationCount()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_d7
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiApEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_d8
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiSharingEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_d9
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getProvisionSuccess()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_da
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setProvisionSuccess(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_db
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiSharingEnabled(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->runIptablesRulesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_dd
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_de
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApInterfaceNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_df
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApConfigurationToDefault()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_e0
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApStaListDetail()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_e1
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiSharingLiteSupported()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e2
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiSharingSupported()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e3
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApStaList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_e4
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->supportWifiAp6GBasedOnCountry()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e5
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->supportWifiAp5GBasedOnCountry()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e6
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApMaxClient()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_e7
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApChannel()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setMHSConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getMHSConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setPowerSavingTime(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setAntMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_ec
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getHotspotAntMode()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setHotspotAntMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_ee
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApFreq()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_ef
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getTxPower()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getStationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f1
    sget-object v2, Landroid/net/wifi/SoftApConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_f2
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_f3
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setLocalOnlyHotspotEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_f4
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setWifiApEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_f5
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiApWpa3Supported()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getSmartD2DClientConnectedStatus(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_f7
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$connectToSmartD2DClient$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->wifiApBleD2DMhsRole(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->wifiApBleD2DClientRole(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_fa
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApBleD2DScanDetail()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->unRegisterWifiApDataUsageCallback(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_fd
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$registerWifiApDataUsageCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->unregisterWifiApSmartCallback(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_ff
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$registerWifiApSmartCallback$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getSmartApConnectedStatus(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_101
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->requestStopAutohotspotAdvertisement(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_102
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$connectToSmartMHS$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_103
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->wifiApBleMhsRole(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_104
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->wifiApBleClientRole(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_105
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApBleScanDetail()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_106
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isClientAcceptedWifiProfileSharing(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setSmartMHSLocked(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_108
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->canSmartMHSLocked()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_109
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getSmartMHSLockStatus()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_10a
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$sendReassociationRequestFrame$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_10b
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$sendVendorSpecificActionFrame$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_10c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWesModeEnabled(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_10d
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWesModeEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_10e
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setRoamScanChannels([Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_10f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setRoamScanEnabled(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_110
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setNCHOModeEnabled(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_111
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isNCHOModeEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_112
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifi7DisabledCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_113
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_114
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getCountryRev()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setCountryRev(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_116
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getRoamBand()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setRoamBand(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_118
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getRoamScanPeriod()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setRoamScanPeriod(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_11a
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getRoamDelta()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_11b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setRoamDelta(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_11c
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getRoamTrigger()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_11d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setRoamTrigger(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_11e
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getChannelUtilizationExtended()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    :pswitch_11f
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getChannelUtilization()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setAdvancedAutohotspotLCDSettings(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_121
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->clearAutoHotspotLists()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_122
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApWarningActivityRunningState()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApWarningActivityRunning(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiSettingsForegroundState(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_125
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getAdvancedAutohotspotLCDSettings()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setAdvancedAutohotspotConnectSettings(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_127
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getAdvancedAutohotspotConnectSettings()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_128
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isUploadModeEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_129
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setUploadModeEnabled(Z)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_12a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->set5GmmWaveSarBackoffEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_12b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->triggerBackoffRoutine(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_12c
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isGripSensorMonitorEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_12d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setGripSensorMonitorEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_12e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getDailyUsageInfo(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_12f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getNetworkUsageInfo(Ljava/lang/String;)[J

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_0

    :pswitch_130
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getCurrentStateAndEnterTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_131
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getNetworkLastUpdatedTimeMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    :pswitch_132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiRouterInfoPresentableByBssid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiRouterInfoBestEffortByBssid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiRouterInfoByBssid(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiRouterInfoPresentable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiRouterInfoBestEffort(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiRouterInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_138
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getCurrentWifiRouterInfo()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_139
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getDcxoCalibrationData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_13a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setDcxoCalibrationData(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_13b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setFrameburstInfo(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_13c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setAntInfo(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_13d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setPsmInfo(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_13e
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setFccChannelBackoffEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_13f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setFactoryMacAddress(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_140
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->removeFactoryMacAddress()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_141
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->onTransact$setVendorWlanDriverProp$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    :pswitch_142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getVendorWlanDriverProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_143
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiSupportedFeatureSet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_144
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getPsmInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_145
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getFrameburstInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_146
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getAntInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_147
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getFactoryMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_148
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiVersions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_149
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_14a
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiFirmwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_14b
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiDeveloperModeEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_14c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiDeveloperModeEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_14d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->blockFccChannelBackoff(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_14e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setVerboseLoggingEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_14f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setDtimInSuspendMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_150
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setMaxDtimInSuspendMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
