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
.field static final blacklist TRANSACTION_addOrUpdateNetwork:I = 0xa6

.field static final blacklist TRANSACTION_addOrUpdateWifiControlHistory:I = 0xa4

.field static final blacklist TRANSACTION_blockFccChannelBackoff:I = 0x4

.field static final blacklist TRANSACTION_canAutoHotspotBeEnabled:I = 0x84

.field static final blacklist TRANSACTION_checkAppForWiFiOffloading:I = 0xe5

.field static final blacklist TRANSACTION_clearAutoHotspotLists:I = 0x23

.field static final blacklist TRANSACTION_connectToMcfMHS:I = 0x8b

.field static final blacklist TRANSACTION_connectToSmartD2DClient:I = 0x48

.field static final blacklist TRANSACTION_connectToSmartMHS:I = 0x3d

.field static final blacklist TRANSACTION_disableRandomMac:I = 0xc5

.field static final blacklist TRANSACTION_disconnectApBlockAutojoin:I = 0xd9

.field static final blacklist TRANSACTION_enableHotspotTsfInfo:I = 0x81

.field static final blacklist TRANSACTION_externalTwtInterface:I = 0xe7

.field static final blacklist TRANSACTION_factoryReset:I = 0xa8

.field static final blacklist TRANSACTION_getAdvancedAutohotspotConnectSettings:I = 0x1d

.field static final blacklist TRANSACTION_getAdvancedAutohotspotLCDSettings:I = 0x1f

.field static final blacklist TRANSACTION_getAntInfo:I = 0xb

.field static final blacklist TRANSACTION_getAutoShareDump:I = 0xb9

.field static final blacklist TRANSACTION_getAutoWifiDump:I = 0xbc

.field static final blacklist TRANSACTION_getChannelUtilization:I = 0x25

.field static final blacklist TRANSACTION_getConfiguredNetworkLocations:I = 0xbd

.field static final blacklist TRANSACTION_getConfiguredNetworks:I = 0xa9

.field static final blacklist TRANSACTION_getConnectivityLog:I = 0xb0

.field static final blacklist TRANSACTION_getCountryCode:I = 0x30

.field static final blacklist TRANSACTION_getCountryRev:I = 0x2f

.field static final blacklist TRANSACTION_getCurrentStatusMode:I = 0xc9

.field static final blacklist TRANSACTION_getDiagnosisResults:I = 0xad

.field static final blacklist TRANSACTION_getEasySetupScanSettings:I = 0xc4

.field static final blacklist TRANSACTION_getFactoryMacAddress:I = 0xa

.field static final blacklist TRANSACTION_getFrameburstInfo:I = 0xc

.field static final blacklist TRANSACTION_getHotspotAntMode:I = 0x52

.field static final blacklist TRANSACTION_getIWCQTables:I = 0xd5

.field static final blacklist TRANSACTION_getIndoorStatus:I = 0x6a

.field static final blacklist TRANSACTION_getIssueDetectorDump:I = 0xaa

.field static final blacklist TRANSACTION_getMHSConfig:I = 0x55

.field static final blacklist TRANSACTION_getMaxTdlsSession:I = 0xf2

.field static final blacklist TRANSACTION_getMcfConnectedStatus:I = 0x8c

.field static final blacklist TRANSACTION_getMcfConnectedStatusFromScanResult:I = 0x8d

.field static final blacklist TRANSACTION_getMcfScanDetail:I = 0x88

.field static final blacklist TRANSACTION_getMonthlyDataUsage:I = 0x98

.field static final blacklist TRANSACTION_getNumOfTdlsSession:I = 0xf3

.field static final blacklist TRANSACTION_getNumOfWifiAnt:I = 0xe3

.field static final blacklist TRANSACTION_getOptimizerMode:I = 0xdb

.field static final blacklist TRANSACTION_getProfileShareDump:I = 0xb8

.field static final blacklist TRANSACTION_getProvisionSuccess:I = 0x65

.field static final blacklist TRANSACTION_getPsmInfo:I = 0xd

.field static final blacklist TRANSACTION_getQoSScores:I = 0xb1

.field static final blacklist TRANSACTION_getRVFModeStatus:I = 0x6b

.field static final blacklist TRANSACTION_getRoamBand:I = 0x2d

.field static final blacklist TRANSACTION_getRoamDelta:I = 0x29

.field static final blacklist TRANSACTION_getRoamScanPeriod:I = 0x2b

.field static final blacklist TRANSACTION_getRoamTrigger:I = 0x27

.field static final blacklist TRANSACTION_getRssi:I = 0xe1

.field static final blacklist TRANSACTION_getSilentRoamingDump:I = 0xaf

.field static final blacklist TRANSACTION_getSmartApConnectedStatus:I = 0x3f

.field static final blacklist TRANSACTION_getSmartApConnectedStatusFromScanResult:I = 0x44

.field static final blacklist TRANSACTION_getSmartD2DClientConnectedStatus:I = 0x49

.field static final blacklist TRANSACTION_getSoftApBands:I = 0x83

.field static final blacklist TRANSACTION_getSoftApConfiguration:I = 0x4d

.field static final blacklist TRANSACTION_getStationInfo:I = 0x4f

.field static final blacklist TRANSACTION_getTWTParams:I = 0xe8

.field static final blacklist TRANSACTION_getTcpMonitorAllSocketHistory:I = 0xeb

.field static final blacklist TRANSACTION_getTcpMonitorDnsHistory:I = 0xec

.field static final blacklist TRANSACTION_getTcpMonitorSocketForegroundHistory:I = 0xea

.field static final blacklist TRANSACTION_getTopHotspotClientsToday:I = 0x93

.field static final blacklist TRANSACTION_getTopHotspotClientsTodayAsString:I = 0x94

.field static final blacklist TRANSACTION_getTotalAndTop3ClientsDataUsageBetweenGivenDates:I = 0x97

.field static final blacklist TRANSACTION_getValidState:I = 0xca

.field static final blacklist TRANSACTION_getVendorWlanDriverProp:I = 0xf

.field static final blacklist TRANSACTION_getWcmEverQualityTested:I = 0xc7

.field static final blacklist TRANSACTION_getWifiApBleD2DScanDetail:I = 0x45

.field static final blacklist TRANSACTION_getWifiApBleScanDetail:I = 0x3a

.field static final blacklist TRANSACTION_getWifiApChannel:I = 0x57

.field static final blacklist TRANSACTION_getWifiApClientDetails:I = 0x92

.field static final blacklist TRANSACTION_getWifiApConnectedStationCount:I = 0x68

.field static final blacklist TRANSACTION_getWifiApDailyDataLimit:I = 0x96

.field static final blacklist TRANSACTION_getWifiApFreq:I = 0x50

.field static final blacklist TRANSACTION_getWifiApGuestPassword:I = 0x9e

.field static final blacklist TRANSACTION_getWifiApInterfaceName:I = 0x61

.field static final blacklist TRANSACTION_getWifiApIsolate:I = 0x75

.field static final blacklist TRANSACTION_getWifiApLOHSState:I = 0x69

.field static final blacklist TRANSACTION_getWifiApMacAclMode:I = 0x79

.field static final blacklist TRANSACTION_getWifiApMaxClient:I = 0x58

.field static final blacklist TRANSACTION_getWifiApMaxClientFromFramework:I = 0x71

.field static final blacklist TRANSACTION_getWifiApStaList:I = 0x5c

.field static final blacklist TRANSACTION_getWifiApStaListDetail:I = 0x5f

.field static final blacklist TRANSACTION_getWifiApState:I = 0x7e

.field static final blacklist TRANSACTION_getWifiApTodaysTotalDataUsage:I = 0x95

.field static final blacklist TRANSACTION_getWifiApWarningActivityRunningState:I = 0x22

.field static final blacklist TRANSACTION_getWifiApWpsPbc:I = 0x73

.field static final blacklist TRANSACTION_getWifiCid:I = 0x8

.field static final blacklist TRANSACTION_getWifiEnableHistory:I = 0xa5

.field static final blacklist TRANSACTION_getWifiFirmwareVersion:I = 0x7

.field static final blacklist TRANSACTION_getWifiIconVisibility:I = 0xc8

.field static final blacklist TRANSACTION_getWifiStaInfo:I = 0xe2

.field static final blacklist TRANSACTION_getWifiSupportedFeatureSet:I = 0xe

.field static final blacklist TRANSACTION_getWifiUsabilityStatsEntry:I = 0xee

.field static final blacklist TRANSACTION_getWifiVersions:I = 0x9

.field static final blacklist TRANSACTION_hasConfiguredNetworkLocations:I = 0xbe

.field static final blacklist TRANSACTION_isAvailableAutoWifiScan:I = 0xbb

.field static final blacklist TRANSACTION_isAvailableTdls:I = 0xef

.field static final blacklist TRANSACTION_isClientAcceptedWifiProfileSharing:I = 0x39

.field static final blacklist TRANSACTION_isGripSensorMonitorEnabled:I = 0x18

.field static final blacklist TRANSACTION_isIndividualAppSupported:I = 0xed

.field static final blacklist TRANSACTION_isMCFClientAutohotspotSupported:I = 0x87

.field static final blacklist TRANSACTION_isNCHOModeEnabled:I = 0x31

.field static final blacklist TRANSACTION_isOverAllMhsDataLimitReached:I = 0x99

.field static final blacklist TRANSACTION_isOverAllMhsDataLimitSet:I = 0x9a

.field static final blacklist TRANSACTION_isP2pConnected:I = 0x85

.field static final blacklist TRANSACTION_isScanningEnabled:I = 0xc1

.field static final blacklist TRANSACTION_isSupportedAutoWifi:I = 0xba

.field static final blacklist TRANSACTION_isSupportedProfileRequest:I = 0xb7

.field static final blacklist TRANSACTION_isSupportedQoSProvider:I = 0xb6

.field static final blacklist TRANSACTION_isUploadModeEnabled:I = 0x1c

.field static final blacklist TRANSACTION_isWesModeEnabled:I = 0x35

.field static final blacklist TRANSACTION_isWiderBandwidthTdlsSupported:I = 0xf0

.field static final blacklist TRANSACTION_isWifiApEnabled:I = 0x67

.field static final blacklist TRANSACTION_isWifiApEnabledWithDualBand:I = 0x7f

.field static final blacklist TRANSACTION_isWifiApGuestModeEnabled:I = 0x9f

.field static final blacklist TRANSACTION_isWifiApGuestModeIsolationEnabled:I = 0xa1

.field static final blacklist TRANSACTION_isWifiApMacAclEnabled:I = 0x7b

.field static final blacklist TRANSACTION_isWifiApWpa3Supported:I = 0x4a

.field static final blacklist TRANSACTION_isWifiDeveloperModeEnabled:I = 0x6

.field static final blacklist TRANSACTION_isWifiSharingEnabled:I = 0x66

.field static final blacklist TRANSACTION_isWifiSharingLiteSupported:I = 0x5e

.field static final blacklist TRANSACTION_isWifiSharingSupported:I = 0x5d

.field static final blacklist TRANSACTION_linkQosQuery:I = 0xe9

.field static final blacklist TRANSACTION_manageWifiApMacAclList:I = 0x77

.field static final blacklist TRANSACTION_notifyConnect:I = 0x82

.field static final blacklist TRANSACTION_notifyReachabilityLost:I = 0xcb

.field static final blacklist TRANSACTION_readWifiApMacAclList:I = 0x78

.field static final blacklist TRANSACTION_registerPasswordCallback:I = 0xb2

.field static final blacklist TRANSACTION_registerWifiApDataUsageCallback:I = 0x42

.field static final blacklist TRANSACTION_registerWifiApSmartCallback:I = 0x40

.field static final blacklist TRANSACTION_removeExcludedNetwork:I = 0xd0

.field static final blacklist TRANSACTION_removeFactoryMacAddress:I = 0x11

.field static final blacklist TRANSACTION_removeNetwork:I = 0xa7

.field static final blacklist TRANSACTION_removePktlogFilter:I = 0xdf

.field static final blacklist TRANSACTION_reportBigData:I = 0xa3

.field static final blacklist TRANSACTION_reportHotspotDumpLogs:I = 0x7d

.field static final blacklist TRANSACTION_reportIssue:I = 0xab

.field static final blacklist TRANSACTION_requestPassword:I = 0xb4

.field static final blacklist TRANSACTION_requestStopAutohotspotAdvertisement:I = 0x3e

.field static final blacklist TRANSACTION_resetSoftAp:I = 0x6f

.field static final blacklist TRANSACTION_restoreIWCSettingsValue:I = 0xd4

.field static final blacklist TRANSACTION_restoreSemConfigurationsBackupData:I = 0xd2

.field static final blacklist TRANSACTION_retrieveSemWifiConfigsBackupData:I = 0xd1

.field static final blacklist TRANSACTION_runIptablesRulesCommand:I = 0x62

.field static final blacklist TRANSACTION_saveFwDump:I = 0xe0

.field static final blacklist TRANSACTION_sendReassociationRequestFrame:I = 0x38

.field static final blacklist TRANSACTION_sendVendorSpecificActionFrame:I = 0x37

.field static final blacklist TRANSACTION_set5GmmWaveSarBackoffEnabled:I = 0x1a

.field static final blacklist TRANSACTION_setAdvancedAutohotspotConnectSettings:I = 0x1e

.field static final blacklist TRANSACTION_setAdvancedAutohotspotLCDSettings:I = 0x24

.field static final blacklist TRANSACTION_setAllowWifiScan:I = 0xc0

.field static final blacklist TRANSACTION_setAntInfo:I = 0x15

.field static final blacklist TRANSACTION_setAntMode:I = 0x53

.field static final blacklist TRANSACTION_setArdkPowerSaveMode:I = 0x80

.field static final blacklist TRANSACTION_setAutohotspotToastMessage:I = 0x86

.field static final blacklist TRANSACTION_setConnectionAttemptInfo:I = 0xd3

.field static final blacklist TRANSACTION_setConnectivityCheckDisabled:I = 0xcc

.field static final blacklist TRANSACTION_setCountryRev:I = 0x2e

.field static final blacklist TRANSACTION_setDtimInSuspendMode:I = 0x2

.field static final blacklist TRANSACTION_setEasySetupScanSettings:I = 0xc3

.field static final blacklist TRANSACTION_setFactoryMacAddress:I = 0x12

.field static final blacklist TRANSACTION_setFccChannelBackoffEnabled:I = 0x13

.field static final blacklist TRANSACTION_setFrameburstInfo:I = 0x16

.field static final blacklist TRANSACTION_setGripSensorMonitorEnabled:I = 0x17

.field static final blacklist TRANSACTION_setHotspotAntMode:I = 0x51

.field static final blacklist TRANSACTION_setIWCMockAction:I = 0xd8

.field static final blacklist TRANSACTION_setIWCQTables:I = 0xd6

.field static final blacklist TRANSACTION_setImsCallEstablished:I = 0xc6

.field static final blacklist TRANSACTION_setKeepConnection:I = 0xce

.field static final blacklist TRANSACTION_setKeepConnectionAlways:I = 0xcd

.field static final blacklist TRANSACTION_setKeepConnectionBigData:I = 0xcf

.field static final blacklist TRANSACTION_setLatencyCritical:I = 0xdd

.field static final blacklist TRANSACTION_setLocalOnlyHotspotEnabled:I = 0x4c

.field static final blacklist TRANSACTION_setMHSConfig:I = 0x56

.field static final blacklist TRANSACTION_setMaxDtimInSuspendMode:I = 0x1

.field static final blacklist TRANSACTION_setNCHOModeEnabled:I = 0x32

.field static final blacklist TRANSACTION_setOptimizerMode:I = 0xda

.field static final blacklist TRANSACTION_setPktlogFilter:I = 0xde

.field static final blacklist TRANSACTION_setPowerSavingTime:I = 0x54

.field static final blacklist TRANSACTION_setProvisionSuccess:I = 0x64

.field static final blacklist TRANSACTION_setPsmInfo:I = 0x14

.field static final blacklist TRANSACTION_setRVFmodeStatus:I = 0x6c

.field static final blacklist TRANSACTION_setRoamBand:I = 0x2c

.field static final blacklist TRANSACTION_setRoamDelta:I = 0x28

.field static final blacklist TRANSACTION_setRoamScanChannels:I = 0x34

.field static final blacklist TRANSACTION_setRoamScanEnabled:I = 0x33

.field static final blacklist TRANSACTION_setRoamScanPeriod:I = 0x2a

.field static final blacklist TRANSACTION_setRoamTrigger:I = 0x26

.field static final blacklist TRANSACTION_setSoftApConfiguration:I = 0x4e

.field static final blacklist TRANSACTION_setTCRule:I = 0xe6

.field static final blacklist TRANSACTION_setTdlsEnabled:I = 0xf1

.field static final blacklist TRANSACTION_setTestSettings:I = 0xbf

.field static final blacklist TRANSACTION_setUploadModeEnabled:I = 0x1b

.field static final blacklist TRANSACTION_setUserConfirmForSharingPassword:I = 0xb5

.field static final blacklist TRANSACTION_setVendorWlanDriverProp:I = 0x10

.field static final blacklist TRANSACTION_setVerboseLoggingEnabled:I = 0x3

.field static final blacklist TRANSACTION_setWesModeEnabled:I = 0x36

.field static final blacklist TRANSACTION_setWifiApClientDataPaused:I = 0x90

.field static final blacklist TRANSACTION_setWifiApClientMobileDataLimit:I = 0x8e

.field static final blacklist TRANSACTION_setWifiApClientTimeLimit:I = 0x8f

.field static final blacklist TRANSACTION_setWifiApConfigurationToDefault:I = 0x60

.field static final blacklist TRANSACTION_setWifiApDailyDataLimit:I = 0x91

.field static final blacklist TRANSACTION_setWifiApEnabled:I = 0x4b

.field static final blacklist TRANSACTION_setWifiApGuestModeEnabled:I = 0xa0

.field static final blacklist TRANSACTION_setWifiApGuestModeIsolationEnabled:I = 0xa2

.field static final blacklist TRANSACTION_setWifiApGuestPassword:I = 0x9d

.field static final blacklist TRANSACTION_setWifiApIsolate:I = 0x74

.field static final blacklist TRANSACTION_setWifiApMacAclEnable:I = 0x7c

.field static final blacklist TRANSACTION_setWifiApMacAclMode:I = 0x7a

.field static final blacklist TRANSACTION_setWifiApMaxClient:I = 0x6e

.field static final blacklist TRANSACTION_setWifiApMaxClientToFramework:I = 0x70

.field static final blacklist TRANSACTION_setWifiApWarningActivityRunning:I = 0x21

.field static final blacklist TRANSACTION_setWifiApWpsPbc:I = 0x72

.field static final blacklist TRANSACTION_setWifiDeveloperModeEnabled:I = 0x5

.field static final blacklist TRANSACTION_setWifiSettingsForegroundState:I = 0x20

.field static final blacklist TRANSACTION_setWifiSharingEnabled:I = 0x63

.field static final blacklist TRANSACTION_setWifiUwbCoexEnabled:I = 0xdc

.field static final blacklist TRANSACTION_startIssueMonitoring:I = 0xae

.field static final blacklist TRANSACTION_startMcfClientMHSDiscovery:I = 0x89

.field static final blacklist TRANSACTION_startMcfMHSAdvertisement:I = 0x8a

.field static final blacklist TRANSACTION_startScan:I = 0xc2

.field static final blacklist TRANSACTION_startTimerForWifiOffload:I = 0xe4

.field static final blacklist TRANSACTION_supportWifiAp5G:I = 0x59

.field static final blacklist TRANSACTION_supportWifiAp5GBasedOnCountry:I = 0x5a

.field static final blacklist TRANSACTION_supportWifiAp6GBasedOnCountry:I = 0x5b

.field static final blacklist TRANSACTION_triggerBackoffRoutine:I = 0x19

.field static final blacklist TRANSACTION_unRegisterWifiApDataUsageCallback:I = 0x43

.field static final blacklist TRANSACTION_unregisterPasswordCallback:I = 0xb3

.field static final blacklist TRANSACTION_unregisterWifiApSmartCallback:I = 0x41

.field static final blacklist TRANSACTION_updateGuiderFeature:I = 0xac

.field static final blacklist TRANSACTION_updateHostapdMacList:I = 0x76

.field static final blacklist TRANSACTION_updateIWCHintCard:I = 0xd7

.field static final blacklist TRANSACTION_wifiApBackUpClientDataUsageSettingsInfo:I = 0x9b

.field static final blacklist TRANSACTION_wifiApBleClientRole:I = 0x3b

.field static final blacklist TRANSACTION_wifiApBleD2DClientRole:I = 0x46

.field static final blacklist TRANSACTION_wifiApBleD2DMhsRole:I = 0x47

.field static final blacklist TRANSACTION_wifiApBleMhsRole:I = 0x3c

.field static final blacklist TRANSACTION_wifiApDisassocSta:I = 0x6d

.field static final blacklist TRANSACTION_wifiApRestoreClientDataUsageSettingsInfo:I = 0x9c


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 959
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 960
    const-string v0, "com.samsung.android.wifi.ISemWifiManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 961
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemWifiManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 968
    if-nez p0, :cond_0

    .line 969
    const/4 v0, 0x0

    return-object v0

    .line 971
    :cond_0
    const-string v0, "com.samsung.android.wifi.ISemWifiManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 972
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/wifi/ISemWifiManager;

    if-eqz v1, :cond_1

    .line 973
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/wifi/ISemWifiManager;

    return-object v1

    .line 975
    :cond_1
    new-instance v1, Lcom/samsung/android/wifi/ISemWifiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 984
    packed-switch p0, :pswitch_data_0

    .line 1960
    const/4 v0, 0x0

    return-object v0

    .line 1956
    :pswitch_0
    const-string v0, "getNumOfTdlsSession"

    return-object v0

    .line 1952
    :pswitch_1
    const-string v0, "getMaxTdlsSession"

    return-object v0

    .line 1948
    :pswitch_2
    const-string/jumbo v0, "setTdlsEnabled"

    return-object v0

    .line 1944
    :pswitch_3
    const-string v0, "isWiderBandwidthTdlsSupported"

    return-object v0

    .line 1940
    :pswitch_4
    const-string v0, "isAvailableTdls"

    return-object v0

    .line 1936
    :pswitch_5
    const-string v0, "getWifiUsabilityStatsEntry"

    return-object v0

    .line 1932
    :pswitch_6
    const-string v0, "isIndividualAppSupported"

    return-object v0

    .line 1928
    :pswitch_7
    const-string v0, "getTcpMonitorDnsHistory"

    return-object v0

    .line 1924
    :pswitch_8
    const-string v0, "getTcpMonitorAllSocketHistory"

    return-object v0

    .line 1920
    :pswitch_9
    const-string v0, "getTcpMonitorSocketForegroundHistory"

    return-object v0

    .line 1916
    :pswitch_a
    const-string v0, "linkQosQuery"

    return-object v0

    .line 1912
    :pswitch_b
    const-string v0, "getTWTParams"

    return-object v0

    .line 1908
    :pswitch_c
    const-string v0, "externalTwtInterface"

    return-object v0

    .line 1904
    :pswitch_d
    const-string/jumbo v0, "setTCRule"

    return-object v0

    .line 1900
    :pswitch_e
    const-string v0, "checkAppForWiFiOffloading"

    return-object v0

    .line 1896
    :pswitch_f
    const-string/jumbo v0, "startTimerForWifiOffload"

    return-object v0

    .line 1892
    :pswitch_10
    const-string v0, "getNumOfWifiAnt"

    return-object v0

    .line 1888
    :pswitch_11
    const-string v0, "getWifiStaInfo"

    return-object v0

    .line 1884
    :pswitch_12
    const-string v0, "getRssi"

    return-object v0

    .line 1880
    :pswitch_13
    const-string/jumbo v0, "saveFwDump"

    return-object v0

    .line 1876
    :pswitch_14
    const-string/jumbo v0, "removePktlogFilter"

    return-object v0

    .line 1872
    :pswitch_15
    const-string/jumbo v0, "setPktlogFilter"

    return-object v0

    .line 1868
    :pswitch_16
    const-string/jumbo v0, "setLatencyCritical"

    return-object v0

    .line 1864
    :pswitch_17
    const-string/jumbo v0, "setWifiUwbCoexEnabled"

    return-object v0

    .line 1860
    :pswitch_18
    const-string v0, "getOptimizerMode"

    return-object v0

    .line 1856
    :pswitch_19
    const-string/jumbo v0, "setOptimizerMode"

    return-object v0

    .line 1852
    :pswitch_1a
    const-string v0, "disconnectApBlockAutojoin"

    return-object v0

    .line 1848
    :pswitch_1b
    const-string/jumbo v0, "setIWCMockAction"

    return-object v0

    .line 1844
    :pswitch_1c
    const-string/jumbo v0, "updateIWCHintCard"

    return-object v0

    .line 1840
    :pswitch_1d
    const-string/jumbo v0, "setIWCQTables"

    return-object v0

    .line 1836
    :pswitch_1e
    const-string v0, "getIWCQTables"

    return-object v0

    .line 1832
    :pswitch_1f
    const-string/jumbo v0, "restoreIWCSettingsValue"

    return-object v0

    .line 1828
    :pswitch_20
    const-string/jumbo v0, "setConnectionAttemptInfo"

    return-object v0

    .line 1824
    :pswitch_21
    const-string/jumbo v0, "restoreSemConfigurationsBackupData"

    return-object v0

    .line 1820
    :pswitch_22
    const-string/jumbo v0, "retrieveSemWifiConfigsBackupData"

    return-object v0

    .line 1816
    :pswitch_23
    const-string/jumbo v0, "removeExcludedNetwork"

    return-object v0

    .line 1812
    :pswitch_24
    const-string/jumbo v0, "setKeepConnectionBigData"

    return-object v0

    .line 1808
    :pswitch_25
    const-string/jumbo v0, "setKeepConnection"

    return-object v0

    .line 1804
    :pswitch_26
    const-string/jumbo v0, "setKeepConnectionAlways"

    return-object v0

    .line 1800
    :pswitch_27
    const-string/jumbo v0, "setConnectivityCheckDisabled"

    return-object v0

    .line 1796
    :pswitch_28
    const-string v0, "notifyReachabilityLost"

    return-object v0

    .line 1792
    :pswitch_29
    const-string v0, "getValidState"

    return-object v0

    .line 1788
    :pswitch_2a
    const-string v0, "getCurrentStatusMode"

    return-object v0

    .line 1784
    :pswitch_2b
    const-string v0, "getWifiIconVisibility"

    return-object v0

    .line 1780
    :pswitch_2c
    const-string v0, "getWcmEverQualityTested"

    return-object v0

    .line 1776
    :pswitch_2d
    const-string/jumbo v0, "setImsCallEstablished"

    return-object v0

    .line 1772
    :pswitch_2e
    const-string v0, "disableRandomMac"

    return-object v0

    .line 1768
    :pswitch_2f
    const-string v0, "getEasySetupScanSettings"

    return-object v0

    .line 1764
    :pswitch_30
    const-string/jumbo v0, "setEasySetupScanSettings"

    return-object v0

    .line 1760
    :pswitch_31
    const-string/jumbo v0, "startScan"

    return-object v0

    .line 1756
    :pswitch_32
    const-string v0, "isScanningEnabled"

    return-object v0

    .line 1752
    :pswitch_33
    const-string/jumbo v0, "setAllowWifiScan"

    return-object v0

    .line 1748
    :pswitch_34
    const-string/jumbo v0, "setTestSettings"

    return-object v0

    .line 1744
    :pswitch_35
    const-string v0, "hasConfiguredNetworkLocations"

    return-object v0

    .line 1740
    :pswitch_36
    const-string v0, "getConfiguredNetworkLocations"

    return-object v0

    .line 1736
    :pswitch_37
    const-string v0, "getAutoWifiDump"

    return-object v0

    .line 1732
    :pswitch_38
    const-string v0, "isAvailableAutoWifiScan"

    return-object v0

    .line 1728
    :pswitch_39
    const-string v0, "isSupportedAutoWifi"

    return-object v0

    .line 1724
    :pswitch_3a
    const-string v0, "getAutoShareDump"

    return-object v0

    .line 1720
    :pswitch_3b
    const-string v0, "getProfileShareDump"

    return-object v0

    .line 1716
    :pswitch_3c
    const-string v0, "isSupportedProfileRequest"

    return-object v0

    .line 1712
    :pswitch_3d
    const-string v0, "isSupportedQoSProvider"

    return-object v0

    .line 1708
    :pswitch_3e
    const-string/jumbo v0, "setUserConfirmForSharingPassword"

    return-object v0

    .line 1704
    :pswitch_3f
    const-string/jumbo v0, "requestPassword"

    return-object v0

    .line 1700
    :pswitch_40
    const-string/jumbo v0, "unregisterPasswordCallback"

    return-object v0

    .line 1696
    :pswitch_41
    const-string/jumbo v0, "registerPasswordCallback"

    return-object v0

    .line 1692
    :pswitch_42
    const-string v0, "getQoSScores"

    return-object v0

    .line 1688
    :pswitch_43
    const-string v0, "getConnectivityLog"

    return-object v0

    .line 1684
    :pswitch_44
    const-string v0, "getSilentRoamingDump"

    return-object v0

    .line 1680
    :pswitch_45
    const-string/jumbo v0, "startIssueMonitoring"

    return-object v0

    .line 1676
    :pswitch_46
    const-string v0, "getDiagnosisResults"

    return-object v0

    .line 1672
    :pswitch_47
    const-string/jumbo v0, "updateGuiderFeature"

    return-object v0

    .line 1668
    :pswitch_48
    const-string/jumbo v0, "reportIssue"

    return-object v0

    .line 1664
    :pswitch_49
    const-string v0, "getIssueDetectorDump"

    return-object v0

    .line 1660
    :pswitch_4a
    const-string v0, "getConfiguredNetworks"

    return-object v0

    .line 1656
    :pswitch_4b
    const-string v0, "factoryReset"

    return-object v0

    .line 1652
    :pswitch_4c
    const-string/jumbo v0, "removeNetwork"

    return-object v0

    .line 1648
    :pswitch_4d
    const-string v0, "addOrUpdateNetwork"

    return-object v0

    .line 1644
    :pswitch_4e
    const-string v0, "getWifiEnableHistory"

    return-object v0

    .line 1640
    :pswitch_4f
    const-string v0, "addOrUpdateWifiControlHistory"

    return-object v0

    .line 1636
    :pswitch_50
    const-string/jumbo v0, "reportBigData"

    return-object v0

    .line 1632
    :pswitch_51
    const-string/jumbo v0, "setWifiApGuestModeIsolationEnabled"

    return-object v0

    .line 1628
    :pswitch_52
    const-string v0, "isWifiApGuestModeIsolationEnabled"

    return-object v0

    .line 1624
    :pswitch_53
    const-string/jumbo v0, "setWifiApGuestModeEnabled"

    return-object v0

    .line 1620
    :pswitch_54
    const-string v0, "isWifiApGuestModeEnabled"

    return-object v0

    .line 1616
    :pswitch_55
    const-string v0, "getWifiApGuestPassword"

    return-object v0

    .line 1612
    :pswitch_56
    const-string/jumbo v0, "setWifiApGuestPassword"

    return-object v0

    .line 1608
    :pswitch_57
    const-string/jumbo v0, "wifiApRestoreClientDataUsageSettingsInfo"

    return-object v0

    .line 1604
    :pswitch_58
    const-string/jumbo v0, "wifiApBackUpClientDataUsageSettingsInfo"

    return-object v0

    .line 1600
    :pswitch_59
    const-string v0, "isOverAllMhsDataLimitSet"

    return-object v0

    .line 1596
    :pswitch_5a
    const-string v0, "isOverAllMhsDataLimitReached"

    return-object v0

    .line 1592
    :pswitch_5b
    const-string v0, "getMonthlyDataUsage"

    return-object v0

    .line 1588
    :pswitch_5c
    const-string v0, "getTotalAndTop3ClientsDataUsageBetweenGivenDates"

    return-object v0

    .line 1584
    :pswitch_5d
    const-string v0, "getWifiApDailyDataLimit"

    return-object v0

    .line 1580
    :pswitch_5e
    const-string v0, "getWifiApTodaysTotalDataUsage"

    return-object v0

    .line 1576
    :pswitch_5f
    const-string v0, "getTopHotspotClientsTodayAsString"

    return-object v0

    .line 1572
    :pswitch_60
    const-string v0, "getTopHotspotClientsToday"

    return-object v0

    .line 1568
    :pswitch_61
    const-string v0, "getWifiApClientDetails"

    return-object v0

    .line 1564
    :pswitch_62
    const-string/jumbo v0, "setWifiApDailyDataLimit"

    return-object v0

    .line 1560
    :pswitch_63
    const-string/jumbo v0, "setWifiApClientDataPaused"

    return-object v0

    .line 1556
    :pswitch_64
    const-string/jumbo v0, "setWifiApClientTimeLimit"

    return-object v0

    .line 1552
    :pswitch_65
    const-string/jumbo v0, "setWifiApClientMobileDataLimit"

    return-object v0

    .line 1548
    :pswitch_66
    const-string v0, "getMcfConnectedStatusFromScanResult"

    return-object v0

    .line 1544
    :pswitch_67
    const-string v0, "getMcfConnectedStatus"

    return-object v0

    .line 1540
    :pswitch_68
    const-string v0, "connectToMcfMHS"

    return-object v0

    .line 1536
    :pswitch_69
    const-string/jumbo v0, "startMcfMHSAdvertisement"

    return-object v0

    .line 1532
    :pswitch_6a
    const-string/jumbo v0, "startMcfClientMHSDiscovery"

    return-object v0

    .line 1528
    :pswitch_6b
    const-string v0, "getMcfScanDetail"

    return-object v0

    .line 1524
    :pswitch_6c
    const-string v0, "isMCFClientAutohotspotSupported"

    return-object v0

    .line 1520
    :pswitch_6d
    const-string/jumbo v0, "setAutohotspotToastMessage"

    return-object v0

    .line 1516
    :pswitch_6e
    const-string v0, "isP2pConnected"

    return-object v0

    .line 1512
    :pswitch_6f
    const-string v0, "canAutoHotspotBeEnabled"

    return-object v0

    .line 1508
    :pswitch_70
    const-string v0, "getSoftApBands"

    return-object v0

    .line 1504
    :pswitch_71
    const-string v0, "notifyConnect"

    return-object v0

    .line 1500
    :pswitch_72
    const-string v0, "enableHotspotTsfInfo"

    return-object v0

    .line 1496
    :pswitch_73
    const-string/jumbo v0, "setArdkPowerSaveMode"

    return-object v0

    .line 1492
    :pswitch_74
    const-string v0, "isWifiApEnabledWithDualBand"

    return-object v0

    .line 1488
    :pswitch_75
    const-string v0, "getWifiApState"

    return-object v0

    .line 1484
    :pswitch_76
    const-string/jumbo v0, "reportHotspotDumpLogs"

    return-object v0

    .line 1480
    :pswitch_77
    const-string/jumbo v0, "setWifiApMacAclEnable"

    return-object v0

    .line 1476
    :pswitch_78
    const-string v0, "isWifiApMacAclEnabled"

    return-object v0

    .line 1472
    :pswitch_79
    const-string/jumbo v0, "setWifiApMacAclMode"

    return-object v0

    .line 1468
    :pswitch_7a
    const-string v0, "getWifiApMacAclMode"

    return-object v0

    .line 1464
    :pswitch_7b
    const-string/jumbo v0, "readWifiApMacAclList"

    return-object v0

    .line 1460
    :pswitch_7c
    const-string v0, "manageWifiApMacAclList"

    return-object v0

    .line 1456
    :pswitch_7d
    const-string/jumbo v0, "updateHostapdMacList"

    return-object v0

    .line 1452
    :pswitch_7e
    const-string v0, "getWifiApIsolate"

    return-object v0

    .line 1448
    :pswitch_7f
    const-string/jumbo v0, "setWifiApIsolate"

    return-object v0

    .line 1444
    :pswitch_80
    const-string v0, "getWifiApWpsPbc"

    return-object v0

    .line 1440
    :pswitch_81
    const-string/jumbo v0, "setWifiApWpsPbc"

    return-object v0

    .line 1436
    :pswitch_82
    const-string v0, "getWifiApMaxClientFromFramework"

    return-object v0

    .line 1432
    :pswitch_83
    const-string/jumbo v0, "setWifiApMaxClientToFramework"

    return-object v0

    .line 1428
    :pswitch_84
    const-string/jumbo v0, "resetSoftAp"

    return-object v0

    .line 1424
    :pswitch_85
    const-string/jumbo v0, "setWifiApMaxClient"

    return-object v0

    .line 1420
    :pswitch_86
    const-string/jumbo v0, "wifiApDisassocSta"

    return-object v0

    .line 1416
    :pswitch_87
    const-string/jumbo v0, "setRVFmodeStatus"

    return-object v0

    .line 1412
    :pswitch_88
    const-string v0, "getRVFModeStatus"

    return-object v0

    .line 1408
    :pswitch_89
    const-string v0, "getIndoorStatus"

    return-object v0

    .line 1404
    :pswitch_8a
    const-string v0, "getWifiApLOHSState"

    return-object v0

    .line 1400
    :pswitch_8b
    const-string v0, "getWifiApConnectedStationCount"

    return-object v0

    .line 1396
    :pswitch_8c
    const-string v0, "isWifiApEnabled"

    return-object v0

    .line 1392
    :pswitch_8d
    const-string v0, "isWifiSharingEnabled"

    return-object v0

    .line 1388
    :pswitch_8e
    const-string v0, "getProvisionSuccess"

    return-object v0

    .line 1384
    :pswitch_8f
    const-string/jumbo v0, "setProvisionSuccess"

    return-object v0

    .line 1380
    :pswitch_90
    const-string/jumbo v0, "setWifiSharingEnabled"

    return-object v0

    .line 1376
    :pswitch_91
    const-string/jumbo v0, "runIptablesRulesCommand"

    return-object v0

    .line 1372
    :pswitch_92
    const-string v0, "getWifiApInterfaceName"

    return-object v0

    .line 1368
    :pswitch_93
    const-string/jumbo v0, "setWifiApConfigurationToDefault"

    return-object v0

    .line 1364
    :pswitch_94
    const-string v0, "getWifiApStaListDetail"

    return-object v0

    .line 1360
    :pswitch_95
    const-string v0, "isWifiSharingLiteSupported"

    return-object v0

    .line 1356
    :pswitch_96
    const-string v0, "isWifiSharingSupported"

    return-object v0

    .line 1352
    :pswitch_97
    const-string v0, "getWifiApStaList"

    return-object v0

    .line 1348
    :pswitch_98
    const-string/jumbo v0, "supportWifiAp6GBasedOnCountry"

    return-object v0

    .line 1344
    :pswitch_99
    const-string/jumbo v0, "supportWifiAp5GBasedOnCountry"

    return-object v0

    .line 1340
    :pswitch_9a
    const-string/jumbo v0, "supportWifiAp5G"

    return-object v0

    .line 1336
    :pswitch_9b
    const-string v0, "getWifiApMaxClient"

    return-object v0

    .line 1332
    :pswitch_9c
    const-string v0, "getWifiApChannel"

    return-object v0

    .line 1328
    :pswitch_9d
    const-string/jumbo v0, "setMHSConfig"

    return-object v0

    .line 1324
    :pswitch_9e
    const-string v0, "getMHSConfig"

    return-object v0

    .line 1320
    :pswitch_9f
    const-string/jumbo v0, "setPowerSavingTime"

    return-object v0

    .line 1316
    :pswitch_a0
    const-string/jumbo v0, "setAntMode"

    return-object v0

    .line 1312
    :pswitch_a1
    const-string v0, "getHotspotAntMode"

    return-object v0

    .line 1308
    :pswitch_a2
    const-string/jumbo v0, "setHotspotAntMode"

    return-object v0

    .line 1304
    :pswitch_a3
    const-string v0, "getWifiApFreq"

    return-object v0

    .line 1300
    :pswitch_a4
    const-string v0, "getStationInfo"

    return-object v0

    .line 1296
    :pswitch_a5
    const-string/jumbo v0, "setSoftApConfiguration"

    return-object v0

    .line 1292
    :pswitch_a6
    const-string v0, "getSoftApConfiguration"

    return-object v0

    .line 1288
    :pswitch_a7
    const-string/jumbo v0, "setLocalOnlyHotspotEnabled"

    return-object v0

    .line 1284
    :pswitch_a8
    const-string/jumbo v0, "setWifiApEnabled"

    return-object v0

    .line 1280
    :pswitch_a9
    const-string v0, "isWifiApWpa3Supported"

    return-object v0

    .line 1276
    :pswitch_aa
    const-string v0, "getSmartD2DClientConnectedStatus"

    return-object v0

    .line 1272
    :pswitch_ab
    const-string v0, "connectToSmartD2DClient"

    return-object v0

    .line 1268
    :pswitch_ac
    const-string/jumbo v0, "wifiApBleD2DMhsRole"

    return-object v0

    .line 1264
    :pswitch_ad
    const-string/jumbo v0, "wifiApBleD2DClientRole"

    return-object v0

    .line 1260
    :pswitch_ae
    const-string v0, "getWifiApBleD2DScanDetail"

    return-object v0

    .line 1256
    :pswitch_af
    const-string v0, "getSmartApConnectedStatusFromScanResult"

    return-object v0

    .line 1252
    :pswitch_b0
    const-string/jumbo v0, "unRegisterWifiApDataUsageCallback"

    return-object v0

    .line 1248
    :pswitch_b1
    const-string/jumbo v0, "registerWifiApDataUsageCallback"

    return-object v0

    .line 1244
    :pswitch_b2
    const-string/jumbo v0, "unregisterWifiApSmartCallback"

    return-object v0

    .line 1240
    :pswitch_b3
    const-string/jumbo v0, "registerWifiApSmartCallback"

    return-object v0

    .line 1236
    :pswitch_b4
    const-string v0, "getSmartApConnectedStatus"

    return-object v0

    .line 1232
    :pswitch_b5
    const-string/jumbo v0, "requestStopAutohotspotAdvertisement"

    return-object v0

    .line 1228
    :pswitch_b6
    const-string v0, "connectToSmartMHS"

    return-object v0

    .line 1224
    :pswitch_b7
    const-string/jumbo v0, "wifiApBleMhsRole"

    return-object v0

    .line 1220
    :pswitch_b8
    const-string/jumbo v0, "wifiApBleClientRole"

    return-object v0

    .line 1216
    :pswitch_b9
    const-string v0, "getWifiApBleScanDetail"

    return-object v0

    .line 1212
    :pswitch_ba
    const-string v0, "isClientAcceptedWifiProfileSharing"

    return-object v0

    .line 1208
    :pswitch_bb
    const-string/jumbo v0, "sendReassociationRequestFrame"

    return-object v0

    .line 1204
    :pswitch_bc
    const-string/jumbo v0, "sendVendorSpecificActionFrame"

    return-object v0

    .line 1200
    :pswitch_bd
    const-string/jumbo v0, "setWesModeEnabled"

    return-object v0

    .line 1196
    :pswitch_be
    const-string v0, "isWesModeEnabled"

    return-object v0

    .line 1192
    :pswitch_bf
    const-string/jumbo v0, "setRoamScanChannels"

    return-object v0

    .line 1188
    :pswitch_c0
    const-string/jumbo v0, "setRoamScanEnabled"

    return-object v0

    .line 1184
    :pswitch_c1
    const-string/jumbo v0, "setNCHOModeEnabled"

    return-object v0

    .line 1180
    :pswitch_c2
    const-string v0, "isNCHOModeEnabled"

    return-object v0

    .line 1176
    :pswitch_c3
    const-string v0, "getCountryCode"

    return-object v0

    .line 1172
    :pswitch_c4
    const-string v0, "getCountryRev"

    return-object v0

    .line 1168
    :pswitch_c5
    const-string/jumbo v0, "setCountryRev"

    return-object v0

    .line 1164
    :pswitch_c6
    const-string v0, "getRoamBand"

    return-object v0

    .line 1160
    :pswitch_c7
    const-string/jumbo v0, "setRoamBand"

    return-object v0

    .line 1156
    :pswitch_c8
    const-string v0, "getRoamScanPeriod"

    return-object v0

    .line 1152
    :pswitch_c9
    const-string/jumbo v0, "setRoamScanPeriod"

    return-object v0

    .line 1148
    :pswitch_ca
    const-string v0, "getRoamDelta"

    return-object v0

    .line 1144
    :pswitch_cb
    const-string/jumbo v0, "setRoamDelta"

    return-object v0

    .line 1140
    :pswitch_cc
    const-string v0, "getRoamTrigger"

    return-object v0

    .line 1136
    :pswitch_cd
    const-string/jumbo v0, "setRoamTrigger"

    return-object v0

    .line 1132
    :pswitch_ce
    const-string v0, "getChannelUtilization"

    return-object v0

    .line 1128
    :pswitch_cf
    const-string/jumbo v0, "setAdvancedAutohotspotLCDSettings"

    return-object v0

    .line 1124
    :pswitch_d0
    const-string v0, "clearAutoHotspotLists"

    return-object v0

    .line 1120
    :pswitch_d1
    const-string v0, "getWifiApWarningActivityRunningState"

    return-object v0

    .line 1116
    :pswitch_d2
    const-string/jumbo v0, "setWifiApWarningActivityRunning"

    return-object v0

    .line 1112
    :pswitch_d3
    const-string/jumbo v0, "setWifiSettingsForegroundState"

    return-object v0

    .line 1108
    :pswitch_d4
    const-string v0, "getAdvancedAutohotspotLCDSettings"

    return-object v0

    .line 1104
    :pswitch_d5
    const-string/jumbo v0, "setAdvancedAutohotspotConnectSettings"

    return-object v0

    .line 1100
    :pswitch_d6
    const-string v0, "getAdvancedAutohotspotConnectSettings"

    return-object v0

    .line 1096
    :pswitch_d7
    const-string v0, "isUploadModeEnabled"

    return-object v0

    .line 1092
    :pswitch_d8
    const-string/jumbo v0, "setUploadModeEnabled"

    return-object v0

    .line 1088
    :pswitch_d9
    const-string/jumbo v0, "set5GmmWaveSarBackoffEnabled"

    return-object v0

    .line 1084
    :pswitch_da
    const-string/jumbo v0, "triggerBackoffRoutine"

    return-object v0

    .line 1080
    :pswitch_db
    const-string v0, "isGripSensorMonitorEnabled"

    return-object v0

    .line 1076
    :pswitch_dc
    const-string/jumbo v0, "setGripSensorMonitorEnabled"

    return-object v0

    .line 1072
    :pswitch_dd
    const-string/jumbo v0, "setFrameburstInfo"

    return-object v0

    .line 1068
    :pswitch_de
    const-string/jumbo v0, "setAntInfo"

    return-object v0

    .line 1064
    :pswitch_df
    const-string/jumbo v0, "setPsmInfo"

    return-object v0

    .line 1060
    :pswitch_e0
    const-string/jumbo v0, "setFccChannelBackoffEnabled"

    return-object v0

    .line 1056
    :pswitch_e1
    const-string/jumbo v0, "setFactoryMacAddress"

    return-object v0

    .line 1052
    :pswitch_e2
    const-string/jumbo v0, "removeFactoryMacAddress"

    return-object v0

    .line 1048
    :pswitch_e3
    const-string/jumbo v0, "setVendorWlanDriverProp"

    return-object v0

    .line 1044
    :pswitch_e4
    const-string v0, "getVendorWlanDriverProp"

    return-object v0

    .line 1040
    :pswitch_e5
    const-string v0, "getWifiSupportedFeatureSet"

    return-object v0

    .line 1036
    :pswitch_e6
    const-string v0, "getPsmInfo"

    return-object v0

    .line 1032
    :pswitch_e7
    const-string v0, "getFrameburstInfo"

    return-object v0

    .line 1028
    :pswitch_e8
    const-string v0, "getAntInfo"

    return-object v0

    .line 1024
    :pswitch_e9
    const-string v0, "getFactoryMacAddress"

    return-object v0

    .line 1020
    :pswitch_ea
    const-string v0, "getWifiVersions"

    return-object v0

    .line 1016
    :pswitch_eb
    const-string v0, "getWifiCid"

    return-object v0

    .line 1012
    :pswitch_ec
    const-string v0, "getWifiFirmwareVersion"

    return-object v0

    .line 1008
    :pswitch_ed
    const-string v0, "isWifiDeveloperModeEnabled"

    return-object v0

    .line 1004
    :pswitch_ee
    const-string/jumbo v0, "setWifiDeveloperModeEnabled"

    return-object v0

    .line 1000
    :pswitch_ef
    const-string v0, "blockFccChannelBackoff"

    return-object v0

    .line 996
    :pswitch_f0
    const-string/jumbo v0, "setVerboseLoggingEnabled"

    return-object v0

    .line 992
    :pswitch_f1
    const-string/jumbo v0, "setDtimInSuspendMode"

    return-object v0

    .line 988
    :pswitch_f2
    const-string/jumbo v0, "setMaxDtimInSuspendMode"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;

    .line 3715
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3716
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3717
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 979
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 8498
    const/16 v0, 0xf2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 1967
    invoke-static {p1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1971
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "com.samsung.android.wifi.ISemWifiManager"

    .line 1972
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_0

    const v0, 0xffffff

    if-gt v10, v0, :cond_0

    .line 1973
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1975
    :cond_0
    packed-switch v10, :pswitch_data_0

    .line 1983
    packed-switch v10, :pswitch_data_1

    .line 4139
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1979
    :pswitch_0
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1980
    return v14

    .line 4132
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getNumOfTdlsSession()I

    move-result v0

    .line 4133
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4134
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4135
    goto/16 :goto_0

    .line 4125
    .end local v0    # "_result":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getMaxTdlsSession()I

    move-result v0

    .line 4126
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4127
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4128
    goto/16 :goto_0

    .line 4116
    .end local v0    # "_result":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 4117
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4118
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setTdlsEnabled(Z)Z

    move-result v1

    .line 4119
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4120
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4121
    goto/16 :goto_0

    .line 4108
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWiderBandwidthTdlsSupported()Z

    move-result v0

    .line 4109
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4110
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4111
    goto/16 :goto_0

    .line 4101
    .end local v0    # "_result":Z
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isAvailableTdls()Z

    move-result v0

    .line 4102
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4103
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4104
    goto/16 :goto_0

    .line 4092
    .end local v0    # "_result":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4093
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4094
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiUsabilityStatsEntry(I)Ljava/lang/String;

    move-result-object v1

    .line 4095
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4096
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4097
    goto/16 :goto_0

    .line 4084
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isIndividualAppSupported()Z

    move-result v0

    .line 4085
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4086
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4087
    goto/16 :goto_0

    .line 4075
    .end local v0    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4076
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4077
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getTcpMonitorDnsHistory(I)Ljava/lang/String;

    move-result-object v1

    .line 4078
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4079
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4080
    goto/16 :goto_0

    .line 4065
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4066
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4067
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getTcpMonitorAllSocketHistory(I)Ljava/lang/String;

    move-result-object v1

    .line 4068
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4069
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4070
    goto/16 :goto_0

    .line 4055
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4056
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4057
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getTcpMonitorSocketForegroundHistory(I)Ljava/lang/String;

    move-result-object v1

    .line 4058
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4059
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4060
    goto/16 :goto_0

    .line 4041
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 4043
    .local v7, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 4045
    .local v15, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 4046
    .local v17, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4047
    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v15

    move-wide/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->linkQosQuery(JJJ)Z

    move-result v0

    .line 4048
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4049
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4050
    goto/16 :goto_0

    .line 4033
    .end local v0    # "_result":Z
    .end local v7    # "_arg0":J
    .end local v15    # "_arg1":J
    .end local v17    # "_arg2":J
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getTWTParams()[I

    move-result-object v0

    .line 4034
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4035
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4036
    goto/16 :goto_0

    .line 4023
    .end local v0    # "_result":[I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4025
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4026
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4027
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->externalTwtInterface(ILjava/lang/String;)V

    .line 4028
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4029
    goto/16 :goto_0

    .line 4010
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 4012
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4014
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4015
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4016
    invoke-virtual {v9, v0, v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setTCRule(ZLjava/lang/String;I)V

    .line 4017
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4018
    goto/16 :goto_0

    .line 4001
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4002
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4003
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->checkAppForWiFiOffloading(Ljava/lang/String;)V

    .line 4004
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4005
    goto/16 :goto_0

    .line 3994
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->startTimerForWifiOffload()V

    .line 3995
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3996
    goto/16 :goto_0

    .line 3987
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getNumOfWifiAnt()I

    move-result v0

    .line 3988
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3989
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3990
    goto/16 :goto_0

    .line 3980
    .end local v0    # "_result":I
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiStaInfo()Ljava/lang/String;

    move-result-object v0

    .line 3981
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3982
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3983
    goto/16 :goto_0

    .line 3971
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3972
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3973
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getRssi(Ljava/lang/String;)I

    move-result v1

    .line 3974
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3975
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3976
    goto/16 :goto_0

    .line 3963
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->saveFwDump()Z

    move-result v0

    .line 3964
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3965
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3966
    goto/16 :goto_0

    .line 3952
    .end local v0    # "_result":Z
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3954
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3955
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3956
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->removePktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 3957
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3958
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3959
    goto/16 :goto_0

    .line 3940
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3942
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3943
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3944
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setPktlogFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 3945
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3946
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3947
    goto/16 :goto_0

    .line 3928
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3930
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3931
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3932
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setLatencyCritical(Ljava/lang/String;I)Z

    move-result v2

    .line 3933
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3934
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3935
    goto/16 :goto_0

    .line 3916
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3918
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3919
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3920
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiUwbCoexEnabled(IZ)I

    move-result v2

    .line 3921
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3922
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3923
    goto/16 :goto_0

    .line 3908
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getOptimizerMode()I

    move-result v0

    .line 3909
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3910
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3911
    goto/16 :goto_0

    .line 3899
    .end local v0    # "_result":I
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3900
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3901
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setOptimizerMode(I)Z

    move-result v1

    .line 3902
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3903
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3904
    goto/16 :goto_0

    .line 3889
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3890
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3891
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->disconnectApBlockAutojoin(Z)Z

    move-result v1

    .line 3892
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3893
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3894
    goto/16 :goto_0

    .line 3880
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3881
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3882
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setIWCMockAction(I)V

    .line 3883
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3884
    goto/16 :goto_0

    .line 3871
    .end local v0    # "_arg0":I
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 3872
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3873
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->updateIWCHintCard(J)V

    .line 3874
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3875
    goto/16 :goto_0

    .line 3862
    .end local v0    # "_arg0":J
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3863
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3864
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setIWCQTables(Ljava/lang/String;)V

    .line 3865
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3866
    goto/16 :goto_0

    .line 3854
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getIWCQTables()Ljava/lang/String;

    move-result-object v0

    .line 3855
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3856
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3857
    goto/16 :goto_0

    .line 3844
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3846
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3847
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3848
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->restoreIWCSettingsValue(II)V

    .line 3849
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3850
    goto/16 :goto_0

    .line 3831
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3833
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3835
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3836
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3837
    invoke-virtual {v9, v0, v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setConnectionAttemptInfo(IZLjava/lang/String;)V

    .line 3838
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3839
    goto/16 :goto_0

    .line 3822
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3823
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3824
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->restoreSemConfigurationsBackupData(Ljava/lang/String;)V

    .line 3825
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3826
    goto/16 :goto_0

    .line 3814
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_23
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->retrieveSemWifiConfigsBackupData()Ljava/lang/String;

    move-result-object v0

    .line 3815
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3816
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3817
    goto/16 :goto_0

    .line 3806
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3807
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3808
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->removeExcludedNetwork(I)V

    .line 3809
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3810
    goto/16 :goto_0

    .line 3798
    .end local v0    # "_arg0":I
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3799
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3800
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setKeepConnectionBigData(I)V

    .line 3801
    goto/16 :goto_0

    .line 3788
    .end local v0    # "_arg0":I
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3790
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3791
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3792
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setKeepConnection(ZZ)V

    .line 3793
    goto/16 :goto_0

    .line 3780
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3781
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3782
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setKeepConnectionAlways(Z)V

    .line 3783
    goto/16 :goto_0

    .line 3771
    .end local v0    # "_arg0":Z
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3772
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3773
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setConnectivityCheckDisabled(Z)V

    .line 3774
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3775
    goto/16 :goto_0

    .line 3764
    .end local v0    # "_arg0":Z
    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->notifyReachabilityLost()V

    .line 3765
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3766
    goto/16 :goto_0

    .line 3757
    :pswitch_2a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getValidState()I

    move-result v0

    .line 3758
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3759
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3760
    goto/16 :goto_0

    .line 3750
    .end local v0    # "_result":I
    :pswitch_2b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getCurrentStatusMode()I

    move-result v0

    .line 3751
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3752
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3753
    goto/16 :goto_0

    .line 3743
    .end local v0    # "_result":I
    :pswitch_2c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiIconVisibility()I

    move-result v0

    .line 3744
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3745
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3746
    goto/16 :goto_0

    .line 3736
    .end local v0    # "_result":I
    :pswitch_2d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWcmEverQualityTested()I

    move-result v0

    .line 3737
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3738
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3739
    goto/16 :goto_0

    .line 3729
    .end local v0    # "_result":I
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3730
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3731
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setImsCallEstablished(Z)V

    .line 3732
    goto/16 :goto_0

    .line 3723
    .end local v0    # "_arg0":Z
    :pswitch_2f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->disableRandomMac()V

    .line 3724
    goto/16 :goto_0

    .line 3708
    :pswitch_30
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getEasySetupScanSettings()Ljava/util/Map;

    move-result-object v0

    .line 3709
    .local v0, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3710
    if-nez v0, :cond_1

    .line 3711
    const/4 v1, -0x1

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 3713
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3714
    new-instance v1, Lcom/samsung/android/wifi/ISemWifiManager$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v1, v12}, Lcom/samsung/android/wifi/ISemWifiManager$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 3719
    goto/16 :goto_0

    .line 3699
    .end local v0    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;>;"
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3701
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;

    .line 3702
    .local v1, "_arg1":Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3703
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setEasySetupScanSettings(Ljava/lang/String;Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;)V

    .line 3704
    goto/16 :goto_0

    .line 3689
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3690
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3691
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->startScan(Ljava/lang/String;)Z

    move-result v1

    .line 3692
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3693
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3694
    goto/16 :goto_0

    .line 3681
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_33
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isScanningEnabled()Z

    move-result v0

    .line 3682
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3683
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3684
    goto/16 :goto_0

    .line 3672
    .end local v0    # "_result":Z
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3674
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3675
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3676
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setAllowWifiScan(ZLjava/lang/String;)V

    .line 3677
    goto/16 :goto_0

    .line 3662
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3664
    .local v0, "_arg0":I
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 3665
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3666
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setTestSettings(ILandroid/os/Bundle;)V

    .line 3667
    goto/16 :goto_0

    .line 3652
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3653
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3654
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->hasConfiguredNetworkLocations(Ljava/lang/String;)Z

    move-result v1

    .line 3655
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3656
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3657
    goto/16 :goto_0

    .line 3644
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_37
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getConfiguredNetworkLocations()Ljava/util/Map;

    move-result-object v0

    .line 3645
    .local v0, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3646
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 3647
    goto/16 :goto_0

    .line 3637
    .end local v0    # "_result":Ljava/util/Map;
    :pswitch_38
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getAutoWifiDump()Ljava/lang/String;

    move-result-object v0

    .line 3638
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3639
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3640
    goto/16 :goto_0

    .line 3630
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_39
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isAvailableAutoWifiScan()Z

    move-result v0

    .line 3631
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3632
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3633
    goto/16 :goto_0

    .line 3623
    .end local v0    # "_result":Z
    :pswitch_3a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isSupportedAutoWifi()Z

    move-result v0

    .line 3624
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3625
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3626
    goto/16 :goto_0

    .line 3616
    .end local v0    # "_result":Z
    :pswitch_3b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getAutoShareDump()Ljava/lang/String;

    move-result-object v0

    .line 3617
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3618
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3619
    goto/16 :goto_0

    .line 3609
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_3c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getProfileShareDump()Ljava/lang/String;

    move-result-object v0

    .line 3610
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3611
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3612
    goto/16 :goto_0

    .line 3602
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_3d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isSupportedProfileRequest()Z

    move-result v0

    .line 3603
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3604
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3605
    goto/16 :goto_0

    .line 3595
    .end local v0    # "_result":Z
    :pswitch_3e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isSupportedQoSProvider()Z

    move-result v0

    .line 3596
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3597
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3598
    goto/16 :goto_0

    .line 3586
    .end local v0    # "_result":Z
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3588
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3589
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3590
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setUserConfirmForSharingPassword(ZLjava/lang/String;)V

    .line 3591
    goto/16 :goto_0

    .line 3578
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3579
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3580
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->requestPassword(Z)V

    .line 3581
    goto/16 :goto_0

    .line 3570
    .end local v0    # "_arg0":Z
    :pswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/wifi/ISemSharedPasswordCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemSharedPasswordCallback;

    move-result-object v0

    .line 3571
    .local v0, "_arg0":Lcom/samsung/android/wifi/ISemSharedPasswordCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3572
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->unregisterPasswordCallback(Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V

    .line 3573
    goto/16 :goto_0

    .line 3560
    .end local v0    # "_arg0":Lcom/samsung/android/wifi/ISemSharedPasswordCallback;
    :pswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3562
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/wifi/ISemSharedPasswordCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemSharedPasswordCallback;

    move-result-object v1

    .line 3563
    .local v1, "_arg1":Lcom/samsung/android/wifi/ISemSharedPasswordCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3564
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->registerPasswordCallback(Ljava/lang/String;Lcom/samsung/android/wifi/ISemSharedPasswordCallback;)V

    .line 3565
    goto/16 :goto_0

    .line 3550
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/samsung/android/wifi/ISemSharedPasswordCallback;
    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 3551
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3552
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getQoSScores(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 3553
    .local v1, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3554
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 3555
    goto/16 :goto_0

    .line 3540
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_result":Ljava/util/Map;
    :pswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3541
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3542
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getConnectivityLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3543
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3544
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3545
    goto/16 :goto_0

    .line 3530
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3531
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3532
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getSilentRoamingDump(I)Ljava/lang/String;

    move-result-object v1

    .line 3533
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3534
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3535
    goto/16 :goto_0

    .line 3522
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_46
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 3523
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3524
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->startIssueMonitoring(Landroid/os/Bundle;)V

    .line 3525
    goto/16 :goto_0

    .line 3514
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_47
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getDiagnosisResults()Ljava/util/List;

    move-result-object v0

    .line 3515
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3516
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3517
    goto/16 :goto_0

    .line 3507
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_48
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 3508
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3509
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->updateGuiderFeature(Landroid/os/Bundle;)V

    .line 3510
    goto/16 :goto_0

    .line 3497
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3499
    .local v0, "_arg0":I
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 3500
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3501
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->reportIssue(ILandroid/os/Bundle;)V

    .line 3502
    goto/16 :goto_0

    .line 3487
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3488
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3489
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getIssueDetectorDump(I)Ljava/lang/String;

    move-result-object v1

    .line 3490
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3491
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3492
    goto/16 :goto_0

    .line 3479
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_4b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getConfiguredNetworks()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3480
    .local v0, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3481
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3482
    goto/16 :goto_0

    .line 3474
    .end local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_4c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->factoryReset()V

    .line 3475
    goto/16 :goto_0

    .line 3465
    :pswitch_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3466
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3467
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->removeNetwork(Ljava/lang/String;)Z

    move-result v1

    .line 3468
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3469
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3470
    goto/16 :goto_0

    .line 3455
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_4e
    sget-object v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 3456
    .local v0, "_arg0":Lcom/samsung/android/wifi/SemWifiConfiguration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3457
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    move-result v1

    .line 3458
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3459
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3460
    goto/16 :goto_0

    .line 3447
    .end local v0    # "_arg0":Lcom/samsung/android/wifi/SemWifiConfiguration;
    .end local v1    # "_result":Z
    :pswitch_4f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiEnableHistory()Ljava/lang/String;

    move-result-object v0

    .line 3448
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3449
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3450
    goto/16 :goto_0

    .line 3438
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3440
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3441
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3442
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->addOrUpdateWifiControlHistory(Ljava/lang/String;Z)V

    .line 3443
    goto/16 :goto_0

    .line 3428
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3430
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3431
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3432
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->reportBigData(Ljava/lang/String;Ljava/lang/String;)V

    .line 3433
    goto/16 :goto_0

    .line 3419
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3420
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3421
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApGuestModeIsolationEnabled(Z)V

    .line 3422
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3423
    goto/16 :goto_0

    .line 3411
    .end local v0    # "_arg0":Z
    :pswitch_53
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiApGuestModeIsolationEnabled()Z

    move-result v0

    .line 3412
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3413
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3414
    goto/16 :goto_0

    .line 3403
    .end local v0    # "_result":Z
    :pswitch_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3404
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3405
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApGuestModeEnabled(Z)V

    .line 3406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3407
    goto/16 :goto_0

    .line 3395
    .end local v0    # "_arg0":Z
    :pswitch_55
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiApGuestModeEnabled()Z

    move-result v0

    .line 3396
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3397
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3398
    goto/16 :goto_0

    .line 3388
    .end local v0    # "_result":Z
    :pswitch_56
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApGuestPassword()Ljava/lang/String;

    move-result-object v0

    .line 3389
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3390
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3391
    goto/16 :goto_0

    .line 3380
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3381
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3382
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApGuestPassword(Ljava/lang/String;)V

    .line 3383
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3384
    goto/16 :goto_0

    .line 3371
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3372
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3373
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->wifiApRestoreClientDataUsageSettingsInfo(Ljava/lang/String;)V

    .line 3374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3375
    goto/16 :goto_0

    .line 3363
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_59
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->wifiApBackUpClientDataUsageSettingsInfo()Ljava/lang/String;

    move-result-object v0

    .line 3364
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3365
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3366
    goto/16 :goto_0

    .line 3356
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_5a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isOverAllMhsDataLimitSet()Z

    move-result v0

    .line 3357
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3358
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3359
    goto/16 :goto_0

    .line 3349
    .end local v0    # "_result":Z
    :pswitch_5b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isOverAllMhsDataLimitReached()Z

    move-result v0

    .line 3350
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3351
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3352
    goto/16 :goto_0

    .line 3342
    .end local v0    # "_result":Z
    :pswitch_5c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getMonthlyDataUsage()Ljava/util/List;

    move-result-object v0

    .line 3343
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3344
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3345
    goto/16 :goto_0

    .line 3331
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 3333
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 3334
    .local v2, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3335
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getTotalAndTop3ClientsDataUsageBetweenGivenDates(JJ)Ljava/util/List;

    move-result-object v4

    .line 3336
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3337
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3338
    goto/16 :goto_0

    .line 3323
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":J
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApDailyDataLimit()J

    move-result-wide v0

    .line 3324
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3325
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3326
    goto/16 :goto_0

    .line 3316
    .end local v0    # "_result":J
    :pswitch_5f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApTodaysTotalDataUsage()J

    move-result-wide v0

    .line 3317
    .restart local v0    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3318
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3319
    goto/16 :goto_0

    .line 3305
    .end local v0    # "_result":J
    :pswitch_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3307
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3308
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3309
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getTopHotspotClientsTodayAsString(II)Ljava/lang/String;

    move-result-object v2

    .line 3310
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3311
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3312
    goto/16 :goto_0

    .line 3293
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3295
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3296
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3297
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getTopHotspotClientsToday(II)Ljava/util/List;

    move-result-object v2

    .line 3298
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/wifi/SemWifiApClientDetails;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3299
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3300
    goto/16 :goto_0

    .line 3283
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/wifi/SemWifiApClientDetails;>;"
    :pswitch_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3284
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3285
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApClientDetails(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    move-result-object v1

    .line 3286
    .local v1, "_result":Lcom/samsung/android/wifi/SemWifiApClientDetails;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3287
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3288
    goto/16 :goto_0

    .line 3274
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Lcom/samsung/android/wifi/SemWifiApClientDetails;
    :pswitch_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 3275
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3276
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApDailyDataLimit(J)V

    .line 3277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3278
    goto/16 :goto_0

    .line 3263
    .end local v0    # "_arg0":J
    :pswitch_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3265
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3266
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3267
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApClientDataPaused(Ljava/lang/String;Z)V

    .line 3268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3269
    goto/16 :goto_0

    .line 3252
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3254
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 3255
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3256
    invoke-virtual {v9, v0, v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApClientTimeLimit(Ljava/lang/String;J)V

    .line 3257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3258
    goto/16 :goto_0

    .line 3241
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    :pswitch_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3243
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 3244
    .restart local v1    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3245
    invoke-virtual {v9, v0, v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApClientMobileDataLimit(Ljava/lang/String;J)V

    .line 3246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3247
    goto/16 :goto_0

    .line 3231
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    :pswitch_67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3232
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3233
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getMcfConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result v1

    .line 3234
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3235
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3236
    goto/16 :goto_0

    .line 3221
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3222
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3223
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getMcfConnectedStatus(Ljava/lang/String;)I

    move-result v1

    .line 3224
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3225
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3226
    goto/16 :goto_0

    .line 3199
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3201
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 3203
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 3205
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 3207
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 3209
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 3211
    .local v19, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 3212
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3213
    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->connectToMcfMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 3214
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3215
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3216
    goto/16 :goto_0

    .line 3189
    .end local v0    # "_result":I
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":I
    :pswitch_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3190
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3191
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->startMcfMHSAdvertisement(Z)I

    move-result v1

    .line 3192
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3193
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3194
    goto/16 :goto_0

    .line 3179
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :pswitch_6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3180
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3181
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->startMcfClientMHSDiscovery(Z)I

    move-result v1

    .line 3182
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3183
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3184
    goto/16 :goto_0

    .line 3171
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :pswitch_6c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getMcfScanDetail()Ljava/util/List;

    move-result-object v0

    .line 3172
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/wifi/SemWifiApBleScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3173
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3174
    goto/16 :goto_0

    .line 3164
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/wifi/SemWifiApBleScanResult;>;"
    :pswitch_6d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isMCFClientAutohotspotSupported()Z

    move-result v0

    .line 3165
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3166
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3167
    goto/16 :goto_0

    .line 3156
    .end local v0    # "_result":Z
    :pswitch_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3157
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3158
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setAutohotspotToastMessage(I)V

    .line 3159
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3160
    goto/16 :goto_0

    .line 3148
    .end local v0    # "_arg0":I
    :pswitch_6f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isP2pConnected()Z

    move-result v0

    .line 3149
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3150
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3151
    goto/16 :goto_0

    .line 3141
    .end local v0    # "_result":Z
    :pswitch_70
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->canAutoHotspotBeEnabled()Z

    move-result v0

    .line 3142
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3143
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3144
    goto/16 :goto_0

    .line 3134
    .end local v0    # "_result":Z
    :pswitch_71
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getSoftApBands()[I

    move-result-object v0

    .line 3135
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3136
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3137
    goto/16 :goto_0

    .line 3124
    .end local v0    # "_result":[I
    :pswitch_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3126
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3127
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3128
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->notifyConnect(ILjava/lang/String;)V

    .line 3129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3130
    goto/16 :goto_0

    .line 3115
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3116
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3117
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->enableHotspotTsfInfo(Z)V

    .line 3118
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3119
    goto/16 :goto_0

    .line 3106
    .end local v0    # "_arg0":Z
    :pswitch_74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3107
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3108
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setArdkPowerSaveMode(Z)V

    .line 3109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3110
    goto/16 :goto_0

    .line 3098
    .end local v0    # "_arg0":Z
    :pswitch_75
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiApEnabledWithDualBand()Z

    move-result v0

    .line 3099
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3100
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3101
    goto/16 :goto_0

    .line 3091
    .end local v0    # "_result":Z
    :pswitch_76
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApState()I

    move-result v0

    .line 3092
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3093
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3094
    goto/16 :goto_0

    .line 3083
    .end local v0    # "_result":I
    :pswitch_77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3084
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3085
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->reportHotspotDumpLogs(Ljava/lang/String;)V

    .line 3086
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3087
    goto/16 :goto_0

    .line 3074
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3075
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3076
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApMacAclEnable(Z)V

    .line 3077
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3078
    goto/16 :goto_0

    .line 3066
    .end local v0    # "_arg0":Z
    :pswitch_79
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiApMacAclEnabled()Z

    move-result v0

    .line 3067
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3068
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3069
    goto/16 :goto_0

    .line 3058
    .end local v0    # "_result":Z
    :pswitch_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3059
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3060
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApMacAclMode(I)V

    .line 3061
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3062
    goto/16 :goto_0

    .line 3050
    .end local v0    # "_arg0":I
    :pswitch_7b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApMacAclMode()I

    move-result v0

    .line 3051
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3052
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3053
    goto/16 :goto_0

    .line 3041
    .end local v0    # "_result":I
    :pswitch_7c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3042
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3043
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->readWifiApMacAclList(I)Ljava/util/List;

    move-result-object v1

    .line 3044
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3045
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3046
    goto/16 :goto_0

    .line 3025
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3027
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3029
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3031
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3032
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3033
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->manageWifiApMacAclList(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4

    .line 3034
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3035
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3036
    goto/16 :goto_0

    .line 3016
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3017
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3018
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->updateHostapdMacList(I)V

    .line 3019
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3020
    goto/16 :goto_0

    .line 3008
    .end local v0    # "_arg0":I
    :pswitch_7f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApIsolate()Z

    move-result v0

    .line 3009
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3010
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3011
    goto/16 :goto_0

    .line 3000
    .end local v0    # "_result":Z
    :pswitch_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 3001
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3002
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApIsolate(Z)V

    .line 3003
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3004
    goto/16 :goto_0

    .line 2992
    .end local v0    # "_arg0":Z
    :pswitch_81
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApWpsPbc()Z

    move-result v0

    .line 2993
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2994
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2995
    goto/16 :goto_0

    .line 2984
    .end local v0    # "_result":Z
    :pswitch_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2985
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2986
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApWpsPbc(Z)V

    .line 2987
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2988
    goto/16 :goto_0

    .line 2976
    .end local v0    # "_arg0":Z
    :pswitch_83
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApMaxClientFromFramework()I

    move-result v0

    .line 2977
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2978
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2979
    goto/16 :goto_0

    .line 2968
    .end local v0    # "_result":I
    :pswitch_84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2969
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2970
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApMaxClientToFramework(I)V

    .line 2971
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2972
    goto/16 :goto_0

    .line 2959
    .end local v0    # "_arg0":I
    :pswitch_85
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 2960
    .local v0, "_arg0":Landroid/os/Message;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2961
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->resetSoftAp(Landroid/os/Message;)V

    .line 2962
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2963
    goto/16 :goto_0

    .line 2950
    .end local v0    # "_arg0":Landroid/os/Message;
    :pswitch_86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2951
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2952
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApMaxClient(I)V

    .line 2953
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2954
    goto/16 :goto_0

    .line 2941
    .end local v0    # "_arg0":I
    :pswitch_87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2942
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2943
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->wifiApDisassocSta(Ljava/lang/String;)V

    .line 2944
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2945
    goto/16 :goto_0

    .line 2932
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2933
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2934
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setRVFmodeStatus(I)V

    .line 2935
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2936
    goto/16 :goto_0

    .line 2924
    .end local v0    # "_arg0":I
    :pswitch_89
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getRVFModeStatus()I

    move-result v0

    .line 2925
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2926
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2927
    goto/16 :goto_0

    .line 2917
    .end local v0    # "_result":I
    :pswitch_8a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getIndoorStatus()I

    move-result v0

    .line 2918
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2919
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2920
    goto/16 :goto_0

    .line 2910
    .end local v0    # "_result":I
    :pswitch_8b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApLOHSState()I

    move-result v0

    .line 2911
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2912
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2913
    goto/16 :goto_0

    .line 2903
    .end local v0    # "_result":I
    :pswitch_8c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApConnectedStationCount()I

    move-result v0

    .line 2904
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2905
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2906
    goto/16 :goto_0

    .line 2896
    .end local v0    # "_result":I
    :pswitch_8d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiApEnabled()Z

    move-result v0

    .line 2897
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2898
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2899
    goto/16 :goto_0

    .line 2889
    .end local v0    # "_result":Z
    :pswitch_8e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiSharingEnabled()Z

    move-result v0

    .line 2890
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2891
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2892
    goto/16 :goto_0

    .line 2882
    .end local v0    # "_result":Z
    :pswitch_8f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getProvisionSuccess()I

    move-result v0

    .line 2883
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2884
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2885
    goto/16 :goto_0

    .line 2873
    .end local v0    # "_result":I
    :pswitch_90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2874
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2875
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setProvisionSuccess(Z)Z

    move-result v1

    .line 2876
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2877
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2878
    goto/16 :goto_0

    .line 2863
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2864
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2865
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiSharingEnabled(Z)Z

    move-result v1

    .line 2866
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2867
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2868
    goto/16 :goto_0

    .line 2853
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2854
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2855
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->runIptablesRulesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2856
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2857
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2858
    goto/16 :goto_0

    .line 2845
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_93
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2846
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2847
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2848
    goto/16 :goto_0

    .line 2839
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_94
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApConfigurationToDefault()V

    .line 2840
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2841
    goto/16 :goto_0

    .line 2832
    :pswitch_95
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApStaListDetail()Ljava/util/List;

    move-result-object v0

    .line 2833
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2834
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2835
    goto/16 :goto_0

    .line 2825
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_96
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiSharingLiteSupported()Z

    move-result v0

    .line 2826
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2827
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2828
    goto/16 :goto_0

    .line 2818
    .end local v0    # "_result":Z
    :pswitch_97
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiSharingSupported()Z

    move-result v0

    .line 2819
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2820
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2821
    goto/16 :goto_0

    .line 2811
    .end local v0    # "_result":Z
    :pswitch_98
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApStaList()Ljava/lang/String;

    move-result-object v0

    .line 2812
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2813
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2814
    goto/16 :goto_0

    .line 2804
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_99
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->supportWifiAp6GBasedOnCountry()Z

    move-result v0

    .line 2805
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2806
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2807
    goto/16 :goto_0

    .line 2797
    .end local v0    # "_result":Z
    :pswitch_9a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->supportWifiAp5GBasedOnCountry()Z

    move-result v0

    .line 2798
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2799
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2800
    goto/16 :goto_0

    .line 2790
    .end local v0    # "_result":Z
    :pswitch_9b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->supportWifiAp5G()Z

    move-result v0

    .line 2791
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2792
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2793
    goto/16 :goto_0

    .line 2783
    .end local v0    # "_result":Z
    :pswitch_9c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApMaxClient()I

    move-result v0

    .line 2784
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2785
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2786
    goto/16 :goto_0

    .line 2776
    .end local v0    # "_result":I
    :pswitch_9d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApChannel()I

    move-result v0

    .line 2777
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2778
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2779
    goto/16 :goto_0

    .line 2767
    .end local v0    # "_result":I
    :pswitch_9e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2768
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2769
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setMHSConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2770
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2771
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2772
    goto/16 :goto_0

    .line 2757
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_9f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2758
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2759
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getMHSConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2760
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2761
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2762
    goto/16 :goto_0

    .line 2748
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2749
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2750
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setPowerSavingTime(I)V

    .line 2751
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2752
    goto/16 :goto_0

    .line 2739
    .end local v0    # "_arg0":I
    :pswitch_a1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2740
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2741
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setAntMode(I)V

    .line 2742
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2743
    goto/16 :goto_0

    .line 2731
    .end local v0    # "_arg0":I
    :pswitch_a2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getHotspotAntMode()I

    move-result v0

    .line 2732
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2733
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2734
    goto/16 :goto_0

    .line 2723
    .end local v0    # "_result":I
    :pswitch_a3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2724
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2725
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setHotspotAntMode(I)V

    .line 2726
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2727
    goto/16 :goto_0

    .line 2715
    .end local v0    # "_arg0":I
    :pswitch_a4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApFreq()I

    move-result v0

    .line 2716
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2717
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2718
    goto/16 :goto_0

    .line 2706
    .end local v0    # "_result":I
    :pswitch_a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2707
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2708
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getStationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2709
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2710
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2711
    goto/16 :goto_0

    .line 2697
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_a6
    sget-object v0, Landroid/net/wifi/SoftApConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SoftApConfiguration;

    .line 2698
    .local v0, "_arg0":Landroid/net/wifi/SoftApConfiguration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2699
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    .line 2700
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2701
    goto/16 :goto_0

    .line 2689
    .end local v0    # "_arg0":Landroid/net/wifi/SoftApConfiguration;
    :pswitch_a7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 2690
    .local v0, "_result":Landroid/net/wifi/SoftApConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2691
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2692
    goto/16 :goto_0

    .line 2674
    .end local v0    # "_result":Landroid/net/wifi/SoftApConfiguration;
    :pswitch_a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2676
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2678
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2680
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2681
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2682
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setLocalOnlyHotspotEnabled(ZLjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 2683
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2684
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2685
    goto/16 :goto_0

    .line 2662
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_a9
    sget-object v0, Landroid/net/wifi/SoftApConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SoftApConfiguration;

    .line 2664
    .local v0, "_arg0":Landroid/net/wifi/SoftApConfiguration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2665
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2666
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    move-result v2

    .line 2667
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2668
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2669
    goto/16 :goto_0

    .line 2654
    .end local v0    # "_arg0":Landroid/net/wifi/SoftApConfiguration;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_aa
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiApWpa3Supported()Z

    move-result v0

    .line 2655
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2656
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2657
    goto/16 :goto_0

    .line 2645
    .end local v0    # "_result":Z
    :pswitch_ab
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2646
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2647
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getSmartD2DClientConnectedStatus(Ljava/lang/String;)I

    move-result v1

    .line 2648
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2649
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2650
    goto/16 :goto_0

    .line 2631
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2633
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2635
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/wifi/ISemWifiApSmartCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemWifiApSmartCallback;

    move-result-object v2

    .line 2636
    .local v2, "_arg2":Lcom/samsung/android/wifi/ISemWifiApSmartCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2637
    invoke-virtual {v9, v0, v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->connectToSmartD2DClient(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;)Z

    move-result v3

    .line 2638
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2639
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2640
    goto/16 :goto_0

    .line 2621
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/samsung/android/wifi/ISemWifiApSmartCallback;
    .end local v3    # "_result":Z
    :pswitch_ad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2622
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2623
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->wifiApBleD2DMhsRole(Z)Z

    move-result v1

    .line 2624
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2625
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2626
    goto/16 :goto_0

    .line 2611
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2612
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2613
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->wifiApBleD2DClientRole(Z)Z

    move-result v1

    .line 2614
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2615
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2616
    goto/16 :goto_0

    .line 2603
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_af
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApBleD2DScanDetail()Ljava/util/List;

    move-result-object v0

    .line 2604
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/wifi/SemWifiApBleScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2605
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2606
    goto/16 :goto_0

    .line 2594
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/wifi/SemWifiApBleScanResult;>;"
    :pswitch_b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2595
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2596
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result v1

    .line 2597
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2598
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2599
    goto/16 :goto_0

    .line 2585
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2586
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2587
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->unRegisterWifiApDataUsageCallback(I)V

    .line 2588
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2589
    goto/16 :goto_0

    .line 2572
    .end local v0    # "_arg0":I
    :pswitch_b2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2574
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;

    move-result-object v1

    .line 2576
    .local v1, "_arg1":Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2577
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2578
    invoke-virtual {v9, v0, v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->registerWifiApDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;I)V

    .line 2579
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2580
    goto/16 :goto_0

    .line 2563
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;
    .end local v2    # "_arg2":I
    :pswitch_b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2564
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2565
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->unregisterWifiApSmartCallback(I)V

    .line 2566
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2567
    goto/16 :goto_0

    .line 2550
    .end local v0    # "_arg0":I
    :pswitch_b4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2552
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/wifi/ISemWifiApSmartCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemWifiApSmartCallback;

    move-result-object v1

    .line 2554
    .local v1, "_arg1":Lcom/samsung/android/wifi/ISemWifiApSmartCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2555
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2556
    invoke-virtual {v9, v0, v1, v2}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->registerWifiApSmartCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApSmartCallback;I)V

    .line 2557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2558
    goto/16 :goto_0

    .line 2540
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/samsung/android/wifi/ISemWifiApSmartCallback;
    .end local v2    # "_arg2":I
    :pswitch_b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2541
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2542
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getSmartApConnectedStatus(Ljava/lang/String;)I

    move-result v1

    .line 2543
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2544
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2545
    goto/16 :goto_0

    .line 2531
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2532
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2533
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->requestStopAutohotspotAdvertisement(Z)V

    .line 2534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2535
    goto/16 :goto_0

    .line 2507
    .end local v0    # "_arg0":Z
    :pswitch_b7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 2509
    .local v15, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2511
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2513
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 2515
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 2517
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 2519
    .local v20, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 2521
    .local v21, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 2522
    .local v22, "_arg7":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2523
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    .line 2524
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2525
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2526
    goto/16 :goto_0

    .line 2497
    .end local v0    # "_result":Z
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Ljava/lang/String;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":Z
    :pswitch_b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2498
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2499
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->wifiApBleMhsRole(Z)Z

    move-result v1

    .line 2500
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2501
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2502
    goto/16 :goto_0

    .line 2487
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_b9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2488
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2489
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->wifiApBleClientRole(Z)Z

    move-result v1

    .line 2490
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2491
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2492
    goto/16 :goto_0

    .line 2479
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_ba
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApBleScanDetail()Ljava/util/List;

    move-result-object v0

    .line 2480
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/wifi/SemWifiApBleScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2481
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2482
    goto/16 :goto_0

    .line 2471
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/wifi/SemWifiApBleScanResult;>;"
    :pswitch_bb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2472
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2473
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isClientAcceptedWifiProfileSharing(Z)V

    .line 2474
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2475
    goto/16 :goto_0

    .line 2459
    .end local v0    # "_arg0":Z
    :pswitch_bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2461
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2462
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2463
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->sendReassociationRequestFrame(Ljava/lang/String;I)Z

    move-result v2

    .line 2464
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2465
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2466
    goto/16 :goto_0

    .line 2443
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2445
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2447
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2449
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2450
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2451
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->sendVendorSpecificActionFrame(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v4

    .line 2452
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2453
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2454
    goto/16 :goto_0

    .line 2433
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_be
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2434
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2435
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWesModeEnabled(Z)Z

    move-result v1

    .line 2436
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2437
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2438
    goto/16 :goto_0

    .line 2425
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_bf
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWesModeEnabled()Z

    move-result v0

    .line 2426
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2427
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2428
    goto/16 :goto_0

    .line 2416
    .end local v0    # "_result":Z
    :pswitch_c0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 2417
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2418
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setRoamScanChannels([Ljava/lang/String;)Z

    move-result v1

    .line 2419
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2420
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2421
    goto/16 :goto_0

    .line 2406
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_c1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2407
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2408
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setRoamScanEnabled(Z)Z

    move-result v1

    .line 2409
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2410
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2411
    goto/16 :goto_0

    .line 2396
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_c2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2397
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2398
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setNCHOModeEnabled(Z)Z

    move-result v1

    .line 2399
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2400
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2401
    goto/16 :goto_0

    .line 2388
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_c3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isNCHOModeEnabled()Z

    move-result v0

    .line 2389
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2390
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2391
    goto/16 :goto_0

    .line 2381
    .end local v0    # "_result":Z
    :pswitch_c4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 2382
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2383
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2384
    goto/16 :goto_0

    .line 2374
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_c5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getCountryRev()Ljava/lang/String;

    move-result-object v0

    .line 2375
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2376
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2377
    goto/16 :goto_0

    .line 2365
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2366
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2367
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setCountryRev(Ljava/lang/String;)Z

    move-result v1

    .line 2368
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2369
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2370
    goto/16 :goto_0

    .line 2357
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_c7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getRoamBand()I

    move-result v0

    .line 2358
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2359
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2360
    goto/16 :goto_0

    .line 2348
    .end local v0    # "_result":I
    :pswitch_c8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2349
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2350
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setRoamBand(I)Z

    move-result v1

    .line 2351
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2352
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2353
    goto/16 :goto_0

    .line 2340
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_c9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getRoamScanPeriod()I

    move-result v0

    .line 2341
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2342
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2343
    goto/16 :goto_0

    .line 2331
    .end local v0    # "_result":I
    :pswitch_ca
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2332
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2333
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setRoamScanPeriod(I)Z

    move-result v1

    .line 2334
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2335
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2336
    goto/16 :goto_0

    .line 2323
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_cb
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getRoamDelta()I

    move-result v0

    .line 2324
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2325
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2326
    goto/16 :goto_0

    .line 2314
    .end local v0    # "_result":I
    :pswitch_cc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2315
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2316
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setRoamDelta(I)Z

    move-result v1

    .line 2317
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2318
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2319
    goto/16 :goto_0

    .line 2306
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_cd
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getRoamTrigger()I

    move-result v0

    .line 2307
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2308
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2309
    goto/16 :goto_0

    .line 2297
    .end local v0    # "_result":I
    :pswitch_ce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2298
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2299
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setRoamTrigger(I)Z

    move-result v1

    .line 2300
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2301
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2302
    goto/16 :goto_0

    .line 2289
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_cf
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getChannelUtilization()I

    move-result v0

    .line 2290
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2291
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2292
    goto/16 :goto_0

    .line 2281
    .end local v0    # "_result":I
    :pswitch_d0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2282
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2283
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setAdvancedAutohotspotLCDSettings(I)V

    .line 2284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2285
    goto/16 :goto_0

    .line 2274
    .end local v0    # "_arg0":I
    :pswitch_d1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->clearAutoHotspotLists()V

    .line 2275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2276
    goto/16 :goto_0

    .line 2267
    :pswitch_d2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiApWarningActivityRunningState()I

    move-result v0

    .line 2268
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2269
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2270
    goto/16 :goto_0

    .line 2259
    .end local v0    # "_result":I
    :pswitch_d3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2260
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2261
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiApWarningActivityRunning(I)V

    .line 2262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2263
    goto/16 :goto_0

    .line 2250
    .end local v0    # "_arg0":I
    :pswitch_d4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2251
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2252
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiSettingsForegroundState(I)V

    .line 2253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2254
    goto/16 :goto_0

    .line 2242
    .end local v0    # "_arg0":I
    :pswitch_d5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getAdvancedAutohotspotLCDSettings()I

    move-result v0

    .line 2243
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2244
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2245
    goto/16 :goto_0

    .line 2234
    .end local v0    # "_result":I
    :pswitch_d6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2235
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2236
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setAdvancedAutohotspotConnectSettings(I)V

    .line 2237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2238
    goto/16 :goto_0

    .line 2226
    .end local v0    # "_arg0":I
    :pswitch_d7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getAdvancedAutohotspotConnectSettings()I

    move-result v0

    .line 2227
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2228
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2229
    goto/16 :goto_0

    .line 2219
    .end local v0    # "_result":I
    :pswitch_d8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isUploadModeEnabled()Z

    move-result v0

    .line 2220
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2221
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2222
    goto/16 :goto_0

    .line 2210
    .end local v0    # "_result":Z
    :pswitch_d9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2211
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2212
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setUploadModeEnabled(Z)Z

    move-result v1

    .line 2213
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2214
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2215
    goto/16 :goto_0

    .line 2201
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_da
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2202
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2203
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->set5GmmWaveSarBackoffEnabled(Z)V

    .line 2204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2205
    goto/16 :goto_0

    .line 2192
    .end local v0    # "_arg0":Z
    :pswitch_db
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2193
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2194
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->triggerBackoffRoutine(Z)V

    .line 2195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2196
    goto/16 :goto_0

    .line 2184
    .end local v0    # "_arg0":Z
    :pswitch_dc
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isGripSensorMonitorEnabled()Z

    move-result v0

    .line 2185
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2186
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2187
    goto/16 :goto_0

    .line 2176
    .end local v0    # "_result":Z
    :pswitch_dd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2177
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2178
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setGripSensorMonitorEnabled(Z)V

    .line 2179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2180
    goto/16 :goto_0

    .line 2166
    .end local v0    # "_arg0":Z
    :pswitch_de
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2167
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2168
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setFrameburstInfo(Ljava/lang/String;)Z

    move-result v1

    .line 2169
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2170
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2171
    goto/16 :goto_0

    .line 2156
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_df
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2157
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2158
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setAntInfo(Ljava/lang/String;)Z

    move-result v1

    .line 2159
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2160
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2161
    goto/16 :goto_0

    .line 2146
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_e0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2147
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2148
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setPsmInfo(Ljava/lang/String;)Z

    move-result v1

    .line 2149
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2150
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2151
    goto/16 :goto_0

    .line 2135
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_e1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2137
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2138
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2139
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setFccChannelBackoffEnabled(Ljava/lang/String;Z)V

    .line 2140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2141
    goto/16 :goto_0

    .line 2125
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_e2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2126
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2127
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setFactoryMacAddress(Ljava/lang/String;)Z

    move-result v1

    .line 2128
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2129
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2130
    goto/16 :goto_0

    .line 2117
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_e3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->removeFactoryMacAddress()Z

    move-result v0

    .line 2118
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2119
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2120
    goto/16 :goto_0

    .line 2106
    .end local v0    # "_result":Z
    :pswitch_e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2108
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2109
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2110
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setVendorWlanDriverProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 2111
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2112
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2113
    goto/16 :goto_0

    .line 2096
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_e5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2097
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2098
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getVendorWlanDriverProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2099
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2100
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2101
    goto/16 :goto_0

    .line 2088
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_e6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiSupportedFeatureSet()Ljava/lang/String;

    move-result-object v0

    .line 2089
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2090
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2091
    goto/16 :goto_0

    .line 2081
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_e7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getPsmInfo()Ljava/lang/String;

    move-result-object v0

    .line 2082
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2083
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2084
    goto/16 :goto_0

    .line 2074
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_e8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getFrameburstInfo()Ljava/lang/String;

    move-result-object v0

    .line 2075
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2076
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2077
    goto/16 :goto_0

    .line 2067
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_e9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getAntInfo()Ljava/lang/String;

    move-result-object v0

    .line 2068
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2069
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2070
    goto/16 :goto_0

    .line 2060
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_ea
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getFactoryMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 2061
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2062
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2063
    goto/16 :goto_0

    .line 2053
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_eb
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiVersions()Ljava/lang/String;

    move-result-object v0

    .line 2054
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2055
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2056
    goto :goto_0

    .line 2046
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_ec
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiCid()Ljava/lang/String;

    move-result-object v0

    .line 2047
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2048
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2049
    goto :goto_0

    .line 2039
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_ed
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->getWifiFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    .line 2040
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2041
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2042
    goto :goto_0

    .line 2032
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_ee
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->isWifiDeveloperModeEnabled()Z

    move-result v0

    .line 2033
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2034
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2035
    goto :goto_0

    .line 2024
    .end local v0    # "_result":Z
    :pswitch_ef
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2025
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2026
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setWifiDeveloperModeEnabled(Z)V

    .line 2027
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2028
    goto :goto_0

    .line 2015
    .end local v0    # "_arg0":Z
    :pswitch_f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2016
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2017
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->blockFccChannelBackoff(Z)V

    .line 2018
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2019
    goto :goto_0

    .line 2006
    .end local v0    # "_arg0":Z
    :pswitch_f1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2007
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2008
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setVerboseLoggingEnabled(Z)V

    .line 2009
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2010
    goto :goto_0

    .line 1997
    .end local v0    # "_arg0":Z
    :pswitch_f2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1998
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1999
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setDtimInSuspendMode(I)V

    .line 2000
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2001
    goto :goto_0

    .line 1988
    .end local v0    # "_arg0":I
    :pswitch_f3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1989
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1990
    invoke-virtual {v9, v0}, Lcom/samsung/android/wifi/ISemWifiManager$Stub;->setMaxDtimInSuspendMode(Z)V

    .line 1991
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1992
    nop

    .line 4142
    .end local v0    # "_arg0":Z
    :goto_0
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
