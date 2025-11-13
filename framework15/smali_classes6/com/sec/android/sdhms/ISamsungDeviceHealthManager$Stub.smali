.class public abstract Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;
.super Landroid/os/Binder;
.source "ISamsungDeviceHealthManager.java"

# interfaces
.implements Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acquireGameSdkMaxlock:I = 0xb

.field static final blacklist TRANSACTION_addHeavyLoadApps:I = 0x28

.field static final blacklist TRANSACTION_addLowModeApps:I = 0x2a

.field static final blacklist TRANSACTION_addLowRefreshRateApps:I = 0x2c

.field static final blacklist TRANSACTION_destroyGameSdkMaxlock:I = 0xd

.field static final blacklist TRANSACTION_getActiveSensorList:I = 0x25

.field static final blacklist TRANSACTION_getAllTemperatures:I = 0x2e

.field static final blacklist TRANSACTION_getBatteryEventHistory:I = 0x17

.field static final blacklist TRANSACTION_getBatteryStats:I = 0xf

.field static final blacklist TRANSACTION_getCoolingDevices:I = 0x13

.field static final blacklist TRANSACTION_getGameSiopInfo:I = 0x22

.field static final blacklist TRANSACTION_getHeavyLoadApps:I = 0x29

.field static final blacklist TRANSACTION_getHighBrightnessMode:I = 0x33

.field static final blacklist TRANSACTION_getLRTemperature:I = 0xe

.field static final blacklist TRANSACTION_getLowModeApps:I = 0x2b

.field static final blacklist TRANSACTION_getLowRefreshRateApps:I = 0x2d

.field static final blacklist TRANSACTION_getNetworkUsageStats:I = 0x1b

.field static final blacklist TRANSACTION_getOverheatReason:I = 0x24

.field static final blacklist TRANSACTION_getProcessUsageStats:I = 0x1a

.field static final blacklist TRANSACTION_getRUT:I = 0x12

.field static final blacklist TRANSACTION_getRemainingUsageTime:I = 0x6

.field static final blacklist TRANSACTION_getRemainingUsageTimeWithSettings:I = 0x7

.field static final blacklist TRANSACTION_getSsrmStatus:I = 0x9

.field static final blacklist TRANSACTION_getSupportedHistoryTypes:I = 0x18

.field static final blacklist TRANSACTION_getSupportedThermalThrottlingDelta:I = 0x1f

.field static final blacklist TRANSACTION_getTemperature:I = 0x16

.field static final blacklist TRANSACTION_getTemperatures:I = 0x14

.field static final blacklist TRANSACTION_getThermalControlFlag:I = 0x27

.field static final blacklist TRANSACTION_getThermalStats:I = 0x19

.field static final blacklist TRANSACTION_getThermalThrottlingDelta:I = 0x1e

.field static final blacklist TRANSACTION_initGameSdkMaxlock:I = 0xa

.field static final blacklist TRANSACTION_isDownLoadingForUid:I = 0x10

.field static final blacklist TRANSACTION_isGameByGraphic:I = 0x34

.field static final blacklist TRANSACTION_isGameSupportLRP:I = 0x11

.field static final blacklist TRANSACTION_logAction:I = 0x1

.field static final blacklist TRANSACTION_logActionWithPkg:I = 0x2

.field static final blacklist TRANSACTION_logActionWithSource:I = 0x3

.field static final blacklist TRANSACTION_logAnomaly:I = 0x4

.field static final blacklist TRANSACTION_registerCallback:I = 0x15

.field static final blacklist TRANSACTION_releaseGameSdkMaxlock:I = 0xc

.field static final blacklist TRANSACTION_removeConfigPart:I = 0x31

.field static final blacklist TRANSACTION_sendCommand:I = 0x5

.field static final blacklist TRANSACTION_setAnomalyConfig:I = 0x23

.field static final blacklist TRANSACTION_setHighBrightnessMode:I = 0x32

.field static final blacklist TRANSACTION_setThermalControlFlag:I = 0x26

.field static final blacklist TRANSACTION_setThermalThrottlingDelta:I = 0x1c

.field static final blacklist TRANSACTION_setThermalThrottlingDeltaWithPackageName:I = 0x1d

.field static final blacklist TRANSACTION_supportVRTemperaturesInformation:I = 0x8

.field static final blacklist TRANSACTION_updateBatteryStatsInfo:I = 0x2f

.field static final blacklist TRANSACTION_updateConfigPart:I = 0x30

.field static final blacklist TRANSACTION_updateGameSdkOperation:I = 0x21

.field static final blacklist TRANSACTION_updateSpaOperation:I = 0x20


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
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

    invoke-direct {p0, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sec.android.sdhms.ISamsungDeviceHealthManager"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.sec.android.sdhms.ISamsungDeviceHealthManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    return-object v1

    :cond_1
    new-instance v1, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "isGameByGraphic"

    return-object v0

    :pswitch_1
    const-string v0, "getHighBrightnessMode"

    return-object v0

    :pswitch_2
    const-string v0, "setHighBrightnessMode"

    return-object v0

    :pswitch_3
    const-string v0, "removeConfigPart"

    return-object v0

    :pswitch_4
    const-string v0, "updateConfigPart"

    return-object v0

    :pswitch_5
    const-string v0, "updateBatteryStatsInfo"

    return-object v0

    :pswitch_6
    const-string v0, "getAllTemperatures"

    return-object v0

    :pswitch_7
    const-string v0, "getLowRefreshRateApps"

    return-object v0

    :pswitch_8
    const-string v0, "addLowRefreshRateApps"

    return-object v0

    :pswitch_9
    const-string v0, "getLowModeApps"

    return-object v0

    :pswitch_a
    const-string v0, "addLowModeApps"

    return-object v0

    :pswitch_b
    const-string v0, "getHeavyLoadApps"

    return-object v0

    :pswitch_c
    const-string v0, "addHeavyLoadApps"

    return-object v0

    :pswitch_d
    const-string v0, "getThermalControlFlag"

    return-object v0

    :pswitch_e
    const-string v0, "setThermalControlFlag"

    return-object v0

    :pswitch_f
    const-string v0, "getActiveSensorList"

    return-object v0

    :pswitch_10
    const-string v0, "getOverheatReason"

    return-object v0

    :pswitch_11
    const-string v0, "setAnomalyConfig"

    return-object v0

    :pswitch_12
    const-string v0, "getGameSiopInfo"

    return-object v0

    :pswitch_13
    const-string v0, "updateGameSdkOperation"

    return-object v0

    :pswitch_14
    const-string v0, "updateSpaOperation"

    return-object v0

    :pswitch_15
    const-string v0, "getSupportedThermalThrottlingDelta"

    return-object v0

    :pswitch_16
    const-string v0, "getThermalThrottlingDelta"

    return-object v0

    :pswitch_17
    const-string v0, "setThermalThrottlingDeltaWithPackageName"

    return-object v0

    :pswitch_18
    const-string v0, "setThermalThrottlingDelta"

    return-object v0

    :pswitch_19
    const-string v0, "getNetworkUsageStats"

    return-object v0

    :pswitch_1a
    const-string v0, "getProcessUsageStats"

    return-object v0

    :pswitch_1b
    const-string v0, "getThermalStats"

    return-object v0

    :pswitch_1c
    const-string v0, "getSupportedHistoryTypes"

    return-object v0

    :pswitch_1d
    const-string v0, "getBatteryEventHistory"

    return-object v0

    :pswitch_1e
    const-string v0, "getTemperature"

    return-object v0

    :pswitch_1f
    const-string v0, "registerCallback"

    return-object v0

    :pswitch_20
    const-string v0, "getTemperatures"

    return-object v0

    :pswitch_21
    const-string v0, "getCoolingDevices"

    return-object v0

    :pswitch_22
    const-string v0, "getRUT"

    return-object v0

    :pswitch_23
    const-string v0, "isGameSupportLRP"

    return-object v0

    :pswitch_24
    const-string v0, "isDownLoadingForUid"

    return-object v0

    :pswitch_25
    const-string v0, "getBatteryStats"

    return-object v0

    :pswitch_26
    const-string v0, "getLRTemperature"

    return-object v0

    :pswitch_27
    const-string v0, "destroyGameSdkMaxlock"

    return-object v0

    :pswitch_28
    const-string v0, "releaseGameSdkMaxlock"

    return-object v0

    :pswitch_29
    const-string v0, "acquireGameSdkMaxlock"

    return-object v0

    :pswitch_2a
    const-string v0, "initGameSdkMaxlock"

    return-object v0

    :pswitch_2b
    const-string v0, "getSsrmStatus"

    return-object v0

    :pswitch_2c
    const-string v0, "supportVRTemperaturesInformation"

    return-object v0

    :pswitch_2d
    const-string v0, "getRemainingUsageTimeWithSettings"

    return-object v0

    :pswitch_2e
    const-string v0, "getRemainingUsageTime"

    return-object v0

    :pswitch_2f
    const-string v0, "sendCommand"

    return-object v0

    :pswitch_30
    const-string v0, "logAnomaly"

    return-object v0

    :pswitch_31
    const-string v0, "logActionWithSource"

    return-object v0

    :pswitch_32
    const-string v0, "logActionWithPkg"

    return-object v0

    :pswitch_33
    const-string v0, "logAction"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method protected blacklist getBatteryEventHistory_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist getBatteryStats_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x33

    return v0
.end method

.method protected blacklist getSupportedHistoryTypes_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "com.sec.android.sdhms.ISamsungDeviceHealthManager"

    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v0, 0x5f4e5446

    if-ne v8, v0, :cond_1

    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :cond_1
    packed-switch v8, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->isGameByGraphic(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getHighBrightnessMode()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->setHighBrightnessMode(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->removeConfigPart(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->updateConfigPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->updateBatteryStatsInfo(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getAllTemperatures(I)[I

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getLowRefreshRateApps()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->addLowRefreshRateApps(Ljava/util/List;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getLowModeApps()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->addLowModeApps(Ljava/util/List;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getHeavyLoadApps()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->addHeavyLoadApps(Ljava/util/List;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getThermalControlFlag()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->setThermalControlFlag(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getActiveSensorList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getOverheatReason(JJ)Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v4, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_11
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->setAnomalyConfig(Landroid/app/PendingIntent;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getGameSiopInfo()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->updateGameSdkOperation(ZLandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->updateSpaOperation(ZLandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getSupportedThermalThrottlingDelta()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getThermalThrottlingDelta()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->setThermalThrottlingDeltaWithPackageName(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->setThermalThrottlingDelta(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getNetworkUsageStats(JJ)Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v4, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getProcessUsageStats(JJ)Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v4, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getThermalStats(JJ)Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v4, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getSupportedHistoryTypes()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-wide v1, v13

    move-wide v3, v15

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getBatteryEventHistory(JJI)Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getTemperature(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IThermalEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalEventListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->registerCallback(Landroid/os/IThermalEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getTemperatures()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getCoolingDevices()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getRUT(ILjava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_23
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->isGameSupportLRP()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->isDownLoadingForUid(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v13

    move-wide v2, v14

    move-wide/from16 v4, v16

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getBatteryStats(IJJZ)Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getLRTemperature()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->destroyGameSdkMaxlock()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_28
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->releaseGameSdkMaxlock()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->acquireGameSdkMaxlock(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->initGameSdkMaxlock(Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getSsrmStatus(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->supportVRTemperaturesInformation(Ljava/lang/String;II)[F

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto/16 :goto_0

    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getRemainingUsageTimeWithSettings(II)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getRemainingUsageTime(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_30
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->logAnomaly(Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->logActionWithSource(Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->logActionWithPkg(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->logAction(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_0
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method protected blacklist removeConfigPart_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist updateBatteryStatsInfo_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected blacklist updateConfigPart_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method
