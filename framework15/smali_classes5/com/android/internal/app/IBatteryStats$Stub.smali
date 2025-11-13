.class public abstract Lcom/android/internal/app/IBatteryStats$Stub;
.super Landroid/os/Binder;
.source "IBatteryStats.java"

# interfaces
.implements Lcom/android/internal/app/IBatteryStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IBatteryStats$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IBatteryStats"

.field static final blacklist PERMISSIONS_getCellularBatteryStats:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getWifiBatteryStats:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_noteNetworkInterfaceForTransports:[Ljava/lang/String;

.field static final blacklist TRANSACTION_computeBatteryScreenOffRealtimeMs:I = 0x18

.field static final greylist-max-o TRANSACTION_computeBatteryTimeRemaining:I = 0x16

.field static final greylist-max-o TRANSACTION_computeChargeTimeRemaining:I = 0x17

.field static final greylist-max-o TRANSACTION_getAwakeTimeBattery:I = 0x51

.field static final greylist-max-o TRANSACTION_getAwakeTimePlugged:I = 0x52

.field static final blacklist TRANSACTION_getBatteryUsageStats:I = 0x13

.field static final blacklist TRANSACTION_getBluetoothBatteryStats:I = 0x5b

.field static final greylist-max-o TRANSACTION_getCellularBatteryStats:I = 0x57

.field static final blacklist TRANSACTION_getDeviceBatteryInfo:I = 0x76

.field static final blacklist TRANSACTION_getDeviceBatteryInfos:I = 0x75

.field static final greylist-max-o TRANSACTION_getGpsBatteryStats:I = 0x59

.field static final blacklist TRANSACTION_getLatestNetworkStatsCount:I = 0x74

.field static final blacklist TRANSACTION_getScreenOffDischargeMah:I = 0x19

.field static final blacklist TRANSACTION_getSemBatteryUsageStats:I = 0x14

.field static final blacklist TRANSACTION_getWakeLockStats:I = 0x5a

.field static final greylist-max-o TRANSACTION_getWifiBatteryStats:I = 0x58

.field static final greylist-max-o TRANSACTION_isCharging:I = 0x15

.field static final blacklist TRANSACTION_noteBleDutyScanStarted:I = 0x6f

.field static final blacklist TRANSACTION_noteBleDutyScanStopped:I = 0x70

.field static final blacklist TRANSACTION_noteBleScanReset:I = 0x55

.field static final greylist-max-o TRANSACTION_noteBleScanResults:I = 0x56

.field static final greylist-max-o TRANSACTION_noteBleScanStarted:I = 0x53

.field static final greylist-max-o TRANSACTION_noteBleScanStopped:I = 0x54

.field static final greylist-max-o TRANSACTION_noteBluetoothControllerActivity:I = 0x5f

.field static final greylist-max-o TRANSACTION_noteChangeWakelockFromSource:I = 0x22

.field static final greylist-max-o TRANSACTION_noteConnectivityChanged:I = 0x31

.field static final greylist-max-o TRANSACTION_noteDeviceIdleMode:I = 0x4f

.field static final blacklist TRANSACTION_noteDualScreenBrightness:I = 0x72

.field static final blacklist TRANSACTION_noteDualScreenState:I = 0x71

.field static final greylist-max-o TRANSACTION_noteEvent:I = 0x1a

.field static final greylist-max-o TRANSACTION_noteFlashlightOff:I = 0xa

.field static final greylist-max-o TRANSACTION_noteFlashlightOn:I = 0x9

.field static final greylist-max-o TRANSACTION_noteFullWifiLockAcquired:I = 0x40

.field static final greylist-max-o TRANSACTION_noteFullWifiLockAcquiredFromSource:I = 0x46

.field static final greylist-max-o TRANSACTION_noteFullWifiLockReleased:I = 0x41

.field static final greylist-max-o TRANSACTION_noteFullWifiLockReleasedFromSource:I = 0x47

.field static final greylist-max-o TRANSACTION_noteGpsChanged:I = 0x2a

.field static final greylist-max-o TRANSACTION_noteGpsSignalQuality:I = 0x2b

.field static final greylist-max-o TRANSACTION_noteInteractive:I = 0x30

.field static final greylist-max-o TRANSACTION_noteJobFinish:I = 0x1e

.field static final greylist-max-o TRANSACTION_noteJobStart:I = 0x1d

.field static final greylist-max-o TRANSACTION_noteLongPartialWakelockFinish:I = 0x26

.field static final greylist-max-o TRANSACTION_noteLongPartialWakelockFinishFromSource:I = 0x27

.field static final greylist-max-o TRANSACTION_noteLongPartialWakelockStart:I = 0x24

.field static final greylist-max-o TRANSACTION_noteLongPartialWakelockStartFromSource:I = 0x25

.field static final greylist-max-o TRANSACTION_noteMobileRadioPowerState:I = 0x32

.field static final greylist-max-o TRANSACTION_noteModemControllerActivity:I = 0x60

.field static final blacklist TRANSACTION_noteNetworkInterfaceForTransports:I = 0x4d

.field static final greylist-max-o TRANSACTION_noteNetworkStatsEnabled:I = 0x4e

.field static final greylist-max-o TRANSACTION_notePhoneDataConnectionState:I = 0x36

.field static final greylist-max-o TRANSACTION_notePhoneOff:I = 0x34

.field static final greylist-max-o TRANSACTION_notePhoneOn:I = 0x33

.field static final greylist-max-o TRANSACTION_notePhoneSignalStrength:I = 0x35

.field static final greylist-max-o TRANSACTION_notePhoneState:I = 0x37

.field static final greylist-max-o TRANSACTION_noteResetAudio:I = 0x8

.field static final greylist-max-o TRANSACTION_noteResetCamera:I = 0xd

.field static final greylist-max-o TRANSACTION_noteResetFlashlight:I = 0xe

.field static final blacklist TRANSACTION_noteResetGps:I = 0x12

.field static final greylist-max-o TRANSACTION_noteResetVideo:I = 0x7

.field static final greylist-max-o TRANSACTION_noteScreenBrightness:I = 0x2d

.field static final greylist-max-o TRANSACTION_noteScreenState:I = 0x2c

.field static final greylist-max-o TRANSACTION_noteStartAudio:I = 0x5

.field static final greylist-max-o TRANSACTION_noteStartCamera:I = 0xb

.field static final blacklist TRANSACTION_noteStartGps:I = 0x10

.field static final greylist-max-o TRANSACTION_noteStartSensor:I = 0x1

.field static final blacklist TRANSACTION_noteStartTxPowerSharing:I = 0x6d

.field static final greylist-max-o TRANSACTION_noteStartVideo:I = 0x3

.field static final greylist-max-o TRANSACTION_noteStartWakelock:I = 0x1f

.field static final greylist-max-o TRANSACTION_noteStartWakelockFromSource:I = 0x21

.field static final greylist-max-o TRANSACTION_noteStopAudio:I = 0x6

.field static final greylist-max-o TRANSACTION_noteStopCamera:I = 0xc

.field static final blacklist TRANSACTION_noteStopGps:I = 0x11

.field static final greylist-max-o TRANSACTION_noteStopSensor:I = 0x2

.field static final blacklist TRANSACTION_noteStopTxPowerSharing:I = 0x6e

.field static final greylist-max-o TRANSACTION_noteStopVideo:I = 0x4

.field static final greylist-max-o TRANSACTION_noteStopWakelock:I = 0x20

.field static final greylist-max-o TRANSACTION_noteStopWakelockFromSource:I = 0x23

.field static final greylist-max-o TRANSACTION_noteSyncFinish:I = 0x1c

.field static final greylist-max-o TRANSACTION_noteSyncStart:I = 0x1b

.field static final blacklist TRANSACTION_noteUpdateNetworkStats:I = 0x6c

.field static final greylist-max-o TRANSACTION_noteUserActivity:I = 0x2e

.field static final greylist-max-o TRANSACTION_noteVibratorOff:I = 0x29

.field static final greylist-max-o TRANSACTION_noteVibratorOn:I = 0x28

.field static final greylist-max-o TRANSACTION_noteWakeUp:I = 0x2f

.field static final blacklist TRANSACTION_noteWakeupSensorEvent:I = 0xf

.field static final greylist-max-o TRANSACTION_noteWifiBatchedScanStartedFromSource:I = 0x4a

.field static final greylist-max-o TRANSACTION_noteWifiBatchedScanStoppedFromSource:I = 0x4b

.field static final greylist-max-o TRANSACTION_noteWifiControllerActivity:I = 0x61

.field static final greylist-max-o TRANSACTION_noteWifiMulticastDisabled:I = 0x45

.field static final greylist-max-o TRANSACTION_noteWifiMulticastEnabled:I = 0x44

.field static final greylist-max-o TRANSACTION_noteWifiOff:I = 0x39

.field static final greylist-max-o TRANSACTION_noteWifiOn:I = 0x38

.field static final greylist-max-o TRANSACTION_noteWifiRadioPowerState:I = 0x4c

.field static final greylist-max-o TRANSACTION_noteWifiRssiChanged:I = 0x3f

.field static final greylist-max-o TRANSACTION_noteWifiRunning:I = 0x3a

.field static final greylist-max-o TRANSACTION_noteWifiRunningChanged:I = 0x3b

.field static final greylist-max-o TRANSACTION_noteWifiScanStarted:I = 0x42

.field static final greylist-max-o TRANSACTION_noteWifiScanStartedFromSource:I = 0x48

.field static final greylist-max-o TRANSACTION_noteWifiScanStopped:I = 0x43

.field static final greylist-max-o TRANSACTION_noteWifiScanStoppedFromSource:I = 0x49

.field static final greylist-max-o TRANSACTION_noteWifiState:I = 0x3d

.field static final greylist-max-o TRANSACTION_noteWifiStopped:I = 0x3c

.field static final greylist-max-o TRANSACTION_noteWifiSupplicantStateChanged:I = 0x3e

.field static final blacklist TRANSACTION_registerBatteryStatsCallback:I = 0x6a

.field static final blacklist TRANSACTION_registerDeviceBatteryInfoChanged:I = 0x77

.field static final blacklist TRANSACTION_resetBattery:I = 0x66

.field static final blacklist TRANSACTION_setBatteryLevel:I = 0x64

.field static final greylist-max-o TRANSACTION_setBatteryState:I = 0x50

.field static final blacklist TRANSACTION_setChargerAcOnline:I = 0x63

.field static final blacklist TRANSACTION_setChargingStateUpdateDelayMillis:I = 0x62

.field static final blacklist TRANSACTION_setDeviceBatteryInfo:I = 0x79

.field static final blacklist TRANSACTION_setTemperatureNCurrent:I = 0x68

.field static final blacklist TRANSACTION_suspendBatteryInput:I = 0x67

.field static final greylist-max-o TRANSACTION_takeUidSnapshot:I = 0x5c

.field static final greylist-max-o TRANSACTION_takeUidSnapshots:I = 0x5d

.field static final blacklist TRANSACTION_takeUidSnapshotsAsync:I = 0x5e

.field static final blacklist TRANSACTION_unRegisterDeviceBatteryInfoChanged:I = 0x78

.field static final blacklist TRANSACTION_unplugBattery:I = 0x65

.field static final blacklist TRANSACTION_unregisterBatteryStatsCallback:I = 0x6b

.field static final blacklist TRANSACTION_unsetDeviceBatteryInfo:I = 0x7a

.field static final blacklist TRANSACTION_updateSemModemActivityInfo:I = 0x73

.field static final blacklist TRANSACTION_updateSpeakerOutEnergyInfo:I = 0x69


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const-string v0, "android.permission.NETWORK_STACK"

    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/IBatteryStats$Stub;->PERMISSIONS_noteNetworkInterfaceForTransports:[Ljava/lang/String;

    const-string v0, "android.permission.UPDATE_DEVICE_STATS"

    const-string v1, "android.permission.BATTERY_STATS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/app/IBatteryStats$Stub;->PERMISSIONS_getCellularBatteryStats:[Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/IBatteryStats$Stub;->PERMISSIONS_getWifiBatteryStats:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
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

    invoke-direct {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/IBatteryStats;

    return-object v1

    :cond_1
    new-instance v1, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "unsetDeviceBatteryInfo"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "setDeviceBatteryInfo"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "unRegisterDeviceBatteryInfoChanged"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "registerDeviceBatteryInfoChanged"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "getDeviceBatteryInfo"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "getDeviceBatteryInfos"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "getLatestNetworkStatsCount"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "updateSemModemActivityInfo"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "noteDualScreenBrightness"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "noteDualScreenState"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "noteBleDutyScanStopped"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "noteBleDutyScanStarted"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "noteStopTxPowerSharing"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "noteStartTxPowerSharing"

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "noteUpdateNetworkStats"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "unregisterBatteryStatsCallback"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "registerBatteryStatsCallback"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "updateSpeakerOutEnergyInfo"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "setTemperatureNCurrent"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "suspendBatteryInput"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "resetBattery"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "unplugBattery"

    return-object v0

    :pswitch_16
    const-string/jumbo v0, "setBatteryLevel"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "setChargerAcOnline"

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "setChargingStateUpdateDelayMillis"

    return-object v0

    :pswitch_19
    const-string/jumbo v0, "noteWifiControllerActivity"

    return-object v0

    :pswitch_1a
    const-string/jumbo v0, "noteModemControllerActivity"

    return-object v0

    :pswitch_1b
    const-string/jumbo v0, "noteBluetoothControllerActivity"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "takeUidSnapshotsAsync"

    return-object v0

    :pswitch_1d
    const-string/jumbo v0, "takeUidSnapshots"

    return-object v0

    :pswitch_1e
    const-string/jumbo v0, "takeUidSnapshot"

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "getBluetoothBatteryStats"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "getWakeLockStats"

    return-object v0

    :pswitch_21
    const-string/jumbo v0, "getGpsBatteryStats"

    return-object v0

    :pswitch_22
    const-string/jumbo v0, "getWifiBatteryStats"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "getCellularBatteryStats"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "noteBleScanResults"

    return-object v0

    :pswitch_25
    const-string/jumbo v0, "noteBleScanReset"

    return-object v0

    :pswitch_26
    const-string/jumbo v0, "noteBleScanStopped"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "noteBleScanStarted"

    return-object v0

    :pswitch_28
    const-string/jumbo v0, "getAwakeTimePlugged"

    return-object v0

    :pswitch_29
    const-string/jumbo v0, "getAwakeTimeBattery"

    return-object v0

    :pswitch_2a
    const-string/jumbo v0, "setBatteryState"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "noteDeviceIdleMode"

    return-object v0

    :pswitch_2c
    const-string/jumbo v0, "noteNetworkStatsEnabled"

    return-object v0

    :pswitch_2d
    const-string/jumbo v0, "noteNetworkInterfaceForTransports"

    return-object v0

    :pswitch_2e
    const-string/jumbo v0, "noteWifiRadioPowerState"

    return-object v0

    :pswitch_2f
    const-string/jumbo v0, "noteWifiBatchedScanStoppedFromSource"

    return-object v0

    :pswitch_30
    const-string/jumbo v0, "noteWifiBatchedScanStartedFromSource"

    return-object v0

    :pswitch_31
    const-string/jumbo v0, "noteWifiScanStoppedFromSource"

    return-object v0

    :pswitch_32
    const-string/jumbo v0, "noteWifiScanStartedFromSource"

    return-object v0

    :pswitch_33
    const-string/jumbo v0, "noteFullWifiLockReleasedFromSource"

    return-object v0

    :pswitch_34
    const-string/jumbo v0, "noteFullWifiLockAcquiredFromSource"

    return-object v0

    :pswitch_35
    const-string/jumbo v0, "noteWifiMulticastDisabled"

    return-object v0

    :pswitch_36
    const-string/jumbo v0, "noteWifiMulticastEnabled"

    return-object v0

    :pswitch_37
    const-string/jumbo v0, "noteWifiScanStopped"

    return-object v0

    :pswitch_38
    const-string/jumbo v0, "noteWifiScanStarted"

    return-object v0

    :pswitch_39
    const-string/jumbo v0, "noteFullWifiLockReleased"

    return-object v0

    :pswitch_3a
    const-string/jumbo v0, "noteFullWifiLockAcquired"

    return-object v0

    :pswitch_3b
    const-string/jumbo v0, "noteWifiRssiChanged"

    return-object v0

    :pswitch_3c
    const-string/jumbo v0, "noteWifiSupplicantStateChanged"

    return-object v0

    :pswitch_3d
    const-string/jumbo v0, "noteWifiState"

    return-object v0

    :pswitch_3e
    const-string/jumbo v0, "noteWifiStopped"

    return-object v0

    :pswitch_3f
    const-string/jumbo v0, "noteWifiRunningChanged"

    return-object v0

    :pswitch_40
    const-string/jumbo v0, "noteWifiRunning"

    return-object v0

    :pswitch_41
    const-string/jumbo v0, "noteWifiOff"

    return-object v0

    :pswitch_42
    const-string/jumbo v0, "noteWifiOn"

    return-object v0

    :pswitch_43
    const-string/jumbo v0, "notePhoneState"

    return-object v0

    :pswitch_44
    const-string/jumbo v0, "notePhoneDataConnectionState"

    return-object v0

    :pswitch_45
    const-string/jumbo v0, "notePhoneSignalStrength"

    return-object v0

    :pswitch_46
    const-string/jumbo v0, "notePhoneOff"

    return-object v0

    :pswitch_47
    const-string/jumbo v0, "notePhoneOn"

    return-object v0

    :pswitch_48
    const-string/jumbo v0, "noteMobileRadioPowerState"

    return-object v0

    :pswitch_49
    const-string/jumbo v0, "noteConnectivityChanged"

    return-object v0

    :pswitch_4a
    const-string/jumbo v0, "noteInteractive"

    return-object v0

    :pswitch_4b
    const-string/jumbo v0, "noteWakeUp"

    return-object v0

    :pswitch_4c
    const-string/jumbo v0, "noteUserActivity"

    return-object v0

    :pswitch_4d
    const-string/jumbo v0, "noteScreenBrightness"

    return-object v0

    :pswitch_4e
    const-string/jumbo v0, "noteScreenState"

    return-object v0

    :pswitch_4f
    const-string/jumbo v0, "noteGpsSignalQuality"

    return-object v0

    :pswitch_50
    const-string/jumbo v0, "noteGpsChanged"

    return-object v0

    :pswitch_51
    const-string/jumbo v0, "noteVibratorOff"

    return-object v0

    :pswitch_52
    const-string/jumbo v0, "noteVibratorOn"

    return-object v0

    :pswitch_53
    const-string/jumbo v0, "noteLongPartialWakelockFinishFromSource"

    return-object v0

    :pswitch_54
    const-string/jumbo v0, "noteLongPartialWakelockFinish"

    return-object v0

    :pswitch_55
    const-string/jumbo v0, "noteLongPartialWakelockStartFromSource"

    return-object v0

    :pswitch_56
    const-string/jumbo v0, "noteLongPartialWakelockStart"

    return-object v0

    :pswitch_57
    const-string/jumbo v0, "noteStopWakelockFromSource"

    return-object v0

    :pswitch_58
    const-string/jumbo v0, "noteChangeWakelockFromSource"

    return-object v0

    :pswitch_59
    const-string/jumbo v0, "noteStartWakelockFromSource"

    return-object v0

    :pswitch_5a
    const-string/jumbo v0, "noteStopWakelock"

    return-object v0

    :pswitch_5b
    const-string/jumbo v0, "noteStartWakelock"

    return-object v0

    :pswitch_5c
    const-string/jumbo v0, "noteJobFinish"

    return-object v0

    :pswitch_5d
    const-string/jumbo v0, "noteJobStart"

    return-object v0

    :pswitch_5e
    const-string/jumbo v0, "noteSyncFinish"

    return-object v0

    :pswitch_5f
    const-string/jumbo v0, "noteSyncStart"

    return-object v0

    :pswitch_60
    const-string/jumbo v0, "noteEvent"

    return-object v0

    :pswitch_61
    const-string/jumbo v0, "getScreenOffDischargeMah"

    return-object v0

    :pswitch_62
    const-string v0, "computeBatteryScreenOffRealtimeMs"

    return-object v0

    :pswitch_63
    const-string v0, "computeChargeTimeRemaining"

    return-object v0

    :pswitch_64
    const-string v0, "computeBatteryTimeRemaining"

    return-object v0

    :pswitch_65
    const-string/jumbo v0, "isCharging"

    return-object v0

    :pswitch_66
    const-string/jumbo v0, "getSemBatteryUsageStats"

    return-object v0

    :pswitch_67
    const-string/jumbo v0, "getBatteryUsageStats"

    return-object v0

    :pswitch_68
    const-string/jumbo v0, "noteResetGps"

    return-object v0

    :pswitch_69
    const-string/jumbo v0, "noteStopGps"

    return-object v0

    :pswitch_6a
    const-string/jumbo v0, "noteStartGps"

    return-object v0

    :pswitch_6b
    const-string/jumbo v0, "noteWakeupSensorEvent"

    return-object v0

    :pswitch_6c
    const-string/jumbo v0, "noteResetFlashlight"

    return-object v0

    :pswitch_6d
    const-string/jumbo v0, "noteResetCamera"

    return-object v0

    :pswitch_6e
    const-string/jumbo v0, "noteStopCamera"

    return-object v0

    :pswitch_6f
    const-string/jumbo v0, "noteStartCamera"

    return-object v0

    :pswitch_70
    const-string/jumbo v0, "noteFlashlightOff"

    return-object v0

    :pswitch_71
    const-string/jumbo v0, "noteFlashlightOn"

    return-object v0

    :pswitch_72
    const-string/jumbo v0, "noteResetAudio"

    return-object v0

    :pswitch_73
    const-string/jumbo v0, "noteResetVideo"

    return-object v0

    :pswitch_74
    const-string/jumbo v0, "noteStopAudio"

    return-object v0

    :pswitch_75
    const-string/jumbo v0, "noteStartAudio"

    return-object v0

    :pswitch_76
    const-string/jumbo v0, "noteStopVideo"

    return-object v0

    :pswitch_77
    const-string/jumbo v0, "noteStartVideo"

    return-object v0

    :pswitch_78
    const-string/jumbo v0, "noteStopSensor"

    return-object v0

    :pswitch_79
    const-string/jumbo v0, "noteStartSensor"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    return-object p0
.end method

.method protected blacklist computeBatteryScreenOffRealtimeMs_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getAwakeTimeBattery_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getAwakeTimePlugged_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getBatteryUsageStats_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getBluetoothBatteryStats_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getCellularBatteryStats_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/app/IBatteryStats$Stub;->PERMISSIONS_getCellularBatteryStats:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getGpsBatteryStats_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getLatestNetworkStatsCount_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x79

    return v0
.end method

.method protected blacklist getScreenOffDischargeMah_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getSemBatteryUsageStats_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/app/IBatteryStats$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getWakeLockStats_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getWifiBatteryStats_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/app/IBatteryStats$Stub;->PERMISSIONS_getWifiBatteryStats:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteBleDutyScanStarted_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteBleDutyScanStopped_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteBleScanReset_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteBleScanResults_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteBleScanStarted_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteBleScanStopped_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteBluetoothControllerActivity_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteChangeWakelockFromSource_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteConnectivityChanged_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteDeviceIdleMode_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteDualScreenBrightness_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteDualScreenState_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteEvent_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteFlashlightOff_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteFlashlightOn_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteFullWifiLockAcquiredFromSource_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteFullWifiLockAcquired_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteFullWifiLockReleasedFromSource_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteFullWifiLockReleased_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteGpsChanged_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteGpsSignalQuality_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteInteractive_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteJobFinish_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteJobStart_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteLongPartialWakelockFinishFromSource_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteLongPartialWakelockFinish_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteLongPartialWakelockStartFromSource_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteLongPartialWakelockStart_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteMobileRadioPowerState_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteModemControllerActivity_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteNetworkInterfaceForTransports_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Lcom/android/internal/app/IBatteryStats$Stub;->PERMISSIONS_noteNetworkInterfaceForTransports:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteNetworkStatsEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist notePhoneDataConnectionState_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist notePhoneOff_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist notePhoneOn_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist notePhoneSignalStrength_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist notePhoneState_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteResetAudio_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteResetCamera_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteResetFlashlight_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteResetGps_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteResetVideo_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteScreenBrightness_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteScreenState_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteStartAudio_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteStartCamera_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteStartGps_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteStartSensor_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteStartTxPowerSharing_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteStartVideo_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteStartWakelockFromSource_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteStartWakelock_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteStopAudio_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteStopCamera_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteStopGps_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteStopSensor_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteStopTxPowerSharing_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteStopVideo_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteStopWakelockFromSource_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteStopWakelock_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteSyncFinish_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteSyncStart_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteUpdateNetworkStats_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteUserActivity_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteVibratorOff_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteVibratorOn_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteWakeUp_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteWifiBatchedScanStartedFromSource_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteWifiBatchedScanStoppedFromSource_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteWifiControllerActivity_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteWifiMulticastDisabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteWifiMulticastEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteWifiOff_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteWifiOn_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteWifiRadioPowerState_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteWifiRssiChanged_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteWifiRunningChanged_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteWifiRunning_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteWifiScanStartedFromSource_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteWifiScanStarted_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteWifiScanStoppedFromSource_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteWifiScanStopped_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteWifiState_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteWifiStopped_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist noteWifiSupplicantStateChanged_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    const-string v11, "com.android.internal.app.IBatteryStats"

    const/4 v9, 0x1

    if-lt v14, v9, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v0, 0x5f4e5446

    if-ne v14, v0, :cond_1

    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :cond_1
    packed-switch v14, :pswitch_data_0

    move-object v2, v12

    move-object v12, v15

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->unsetDeviceBatteryInfo(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->setDeviceBatteryInfo(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->unRegisterDeviceBatteryInfoChanged(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->registerDeviceBatteryInfoChanged(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getDeviceBatteryInfos()[Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getLatestNetworkStatsCount()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_7
    sget-object v0, Landroid/os/SemModemActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemModemActivityInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->updateSemModemActivityInfo(Landroid/os/SemModemActivityInfo;)V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteDualScreenBrightness(III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteDualScreenState(III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_a
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleDutyScanStopped(Landroid/os/WorkSource;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_b
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleDutyScanStarted(Landroid/os/WorkSource;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopTxPowerSharing()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartTxPowerSharing()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteUpdateNetworkStats(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStatsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStatsCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->unregisterBatteryStatsCallback(Lcom/android/internal/app/IBatteryStatsCallback;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStatsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStatsCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->registerBatteryStatsCallback(Lcom/android/internal/app/IBatteryStatsCallback;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_11
    sget-object v0, Landroid/os/SpeakerOutEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SpeakerOutEnergyInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->updateSpeakerOutEnergyInfo(Landroid/os/SpeakerOutEnergyInfo;)V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v10

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats$Stub;->setTemperatureNCurrent(IIIII)V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->suspendBatteryInput()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->resetBattery(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->unplugBattery(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryLevel(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->setChargerAcOnline(ZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->setChargingStateUpdateDelayMillis(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_19
    sget-object v0, Landroid/os/connectivity/WifiActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiControllerActivity(Landroid/os/connectivity/WifiActivityEnergyInfo;)V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_1a
    sget-object v0, Landroid/telephony/ModemActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ModemActivityInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;)V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_1b
    sget-object v0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothControllerActivity(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->takeUidSnapshotsAsync([ILandroid/os/ResultReceiver;)V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getWakeLockStats()Landroid/os/WakeLockStats;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_24
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanResults(Landroid/os/WorkSource;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanReset()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_26
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStopped(Landroid/os/WorkSource;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_27
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStarted(Landroid/os/WorkSource;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimePlugged()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimeBattery()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    goto/16 :goto_0

    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move-wide/from16 v9, v24

    move-object/from16 v31, v11

    move/from16 v11, v26

    move/from16 v12, v27

    move/from16 v13, v28

    move/from16 v14, v29

    move/from16 v15, v30

    invoke-virtual/range {v0 .. v15}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryState(IIIIIIIIJIIIIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_2b
    move-object/from16 v31, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v12, p0

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteDeviceIdleMode(ILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v13, p2

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_2c
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkStatsEnabled()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v13, p2

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_2d
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkInterfaceForTransports(Ljava/lang/String;[I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v13, p2

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_2e
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRadioPowerState(IJI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v13, p2

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_2f
    move-object/from16 v31, v11

    move-object v12, v15

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v13, p2

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_30
    move-object/from16 v31, v11

    move-object v12, v15

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_31
    move-object/from16 v31, v11

    move-object v12, v15

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_32
    move-object/from16 v31, v11

    move-object v12, v15

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_33
    move-object/from16 v31, v11

    move-object v12, v15

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_34
    move-object/from16 v31, v11

    move-object v12, v15

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_35
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabled(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_36
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabled(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_37
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStopped(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_38
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStarted(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_39
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleased(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_3a
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquired(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_3b
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRssiChanged(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_3c
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiSupplicantStateChanged(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_3d
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiState(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_3e
    move-object/from16 v31, v11

    move-object v12, v15

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiStopped(Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_3f
    move-object/from16 v31, v11

    move-object v12, v15

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_40
    move-object/from16 v31, v11

    move-object v12, v15

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunning(Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_41
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOff()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_42
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOn()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_43
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneState(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_44
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneDataConnectionState(IZIII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_45
    move-object/from16 v31, v11

    move-object v12, v15

    sget-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SignalStrength;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_46
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOff()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_47
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOn()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_48
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteMobileRadioPowerState(IJI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_49
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteConnectivityChanged(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_4a
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteInteractive(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_4b
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWakeUp(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_4c
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteUserActivity(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_4d
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenBrightness(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_4e
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenState(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_4f
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteGpsSignalQuality(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_50
    move-object/from16 v31, v11

    move-object v12, v15

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_51
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOff(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_52
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOn(IJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_53
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_54
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_55
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_56
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_57
    move-object/from16 v31, v11

    move-object v12, v15

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_58
    move-object/from16 v31, v11

    move-object v12, v15

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move/from16 v10, v23

    move/from16 v11, v24

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/app/IBatteryStats$Stub;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_59
    move-object/from16 v31, v11

    move-object v12, v15

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v9

    move-object v4, v10

    move v5, v11

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_5a
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_5b
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move-object v3, v9

    move-object v4, v10

    move v5, v11

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_5c
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobFinish(Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_5d
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobStart(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_5e
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncFinish(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_5f
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncStart(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_60
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteEvent(ILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_61
    move-object/from16 v31, v11

    move-object v12, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getScreenOffDischargeMah()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v2, p3

    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_62
    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeBatteryScreenOffRealtimeMs()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_63
    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeChargeTimeRemaining()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_64
    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeBatteryTimeRemaining()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_65
    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->isCharging()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :pswitch_66
    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getSemBatteryUsageStats()Landroid/os/SemBatterySipper;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_67
    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    sget-object v0, Landroid/os/BatteryUsageStatsQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_68
    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetGps()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_69
    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopGps(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6a
    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartGps(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6b
    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v3, v4, v0, v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWakeupSensorEvent(JII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6c
    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetFlashlight()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6d
    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetCamera()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6e
    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopCamera(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6f
    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartCamera(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_70
    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOff(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_71
    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOn(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_72
    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetAudio()V

    goto/16 :goto_0

    :pswitch_73
    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetVideo()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_74
    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopAudio(I)V

    goto/16 :goto_0

    :pswitch_75
    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartAudio(I)V

    goto :goto_0

    :pswitch_76
    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopVideo(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_77
    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartVideo(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_78
    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopSensor(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_79
    move v1, v9

    move-object/from16 v31, v11

    move-object v2, v12

    move-object v12, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartSensor(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method protected blacklist registerBatteryStatsCallback_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist resetBattery_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setBatteryLevel_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setBatteryState_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setChargerAcOnline_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setChargingStateUpdateDelayMillis_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.POWER_SAVER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist setTemperatureNCurrent_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist suspendBatteryInput_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist unplugBattery_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist unregisterBatteryStatsCallback_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist updateSemModemActivityInfo_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist updateSpeakerOutEnergyInfo_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/IBatteryStats$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/android/internal/app/IBatteryStats$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method
