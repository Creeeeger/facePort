.class public abstract Landroid/os/IPowerManager$Stub;
.super Landroid/os/Binder;
.source "IPowerManager.java"

# interfaces
.implements Landroid/os/IPowerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPowerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IPowerManager"

.field static final greylist-max-r TRANSACTION_acquireWakeLock:I = 0x1

.field static final blacklist TRANSACTION_acquireWakeLockAsync:I = 0x2d

.field static final greylist-max-o TRANSACTION_acquireWakeLockWithUid:I = 0x2

.field static final greylist-max-o TRANSACTION_boostScreenBrightness:I = 0x2c

.field static final greylist-max-o TRANSACTION_crash:I = 0x28

.field static final blacklist TRANSACTION_forceLowPowerStandbyActive:I = 0x24

.field static final blacklist TRANSACTION_forceSuspend:I = 0x39

.field static final blacklist TRANSACTION_getBatteryDischargePrediction:I = 0x1c

.field static final blacklist TRANSACTION_getBrightnessConstraint:I = 0xf

.field static final blacklist TRANSACTION_getCurrentBrightness:I = 0x3c

.field static final blacklist TRANSACTION_getFullPowerSavePolicy:I = 0x15

.field static final greylist-max-o TRANSACTION_getLastShutdownReason:I = 0x29

.field static final blacklist TRANSACTION_getLastSleepReason:I = 0x2a

.field static final blacklist TRANSACTION_getLastUserActivityTime:I = 0x38

.field static final blacklist TRANSACTION_getPowerSaveModeTrigger:I = 0x1a

.field static final greylist-max-o TRANSACTION_getPowerSaveState:I = 0x13

.field static final blacklist TRANSACTION_getWakeLockPackageList:I = 0x47

.field static final greylist-max-r TRANSACTION_goToSleep:I = 0xd

.field static final blacklist TRANSACTION_isAmbientDisplayAvailable:I = 0x33

.field static final blacklist TRANSACTION_isAmbientDisplaySuppressed:I = 0x36

.field static final blacklist TRANSACTION_isAmbientDisplaySuppressedForToken:I = 0x35

.field static final blacklist TRANSACTION_isAmbientDisplaySuppressedForTokenByApp:I = 0x37

.field static final blacklist TRANSACTION_isBatteryDischargePredictionPersonalized:I = 0x1d

.field static final greylist-max-o TRANSACTION_isDeviceIdleMode:I = 0x1e

.field static final greylist-max-o TRANSACTION_isInteractive:I = 0x10

.field static final blacklist TRANSACTION_isInteractiveForDisplay:I = 0x43

.field static final greylist-max-o TRANSACTION_isLightDeviceIdleMode:I = 0x1f

.field static final blacklist TRANSACTION_isLowPowerStandbyEnabled:I = 0x21

.field static final blacklist TRANSACTION_isLowPowerStandbySupported:I = 0x20

.field static final greylist-max-o TRANSACTION_isPowerSaveMode:I = 0x11

.field static final greylist-max-o TRANSACTION_isScreenBrightnessBoosted:I = 0x30

.field static final greylist-max-o TRANSACTION_isWakeLockLevelSupported:I = 0xa

.field static final greylist-max-o TRANSACTION_nap:I = 0xe

.field static final greylist-max-o TRANSACTION_reboot:I = 0x25

.field static final greylist-max-o TRANSACTION_rebootSafeMode:I = 0x26

.field static final greylist-max-o TRANSACTION_releaseWakeLock:I = 0x3

.field static final blacklist TRANSACTION_releaseWakeLockAsync:I = 0x2e

.field static final blacklist TRANSACTION_semWakeUp:I = 0x46

.field static final blacklist TRANSACTION_setAdaptivePowerSaveEnabled:I = 0x19

.field static final blacklist TRANSACTION_setAdaptivePowerSavePolicy:I = 0x18

.field static final greylist-max-o TRANSACTION_setAttentionLight:I = 0x31

.field static final blacklist TRANSACTION_setAutoBrightnessLimit:I = 0x3a

.field static final blacklist TRANSACTION_setBatteryDischargePrediction:I = 0x1b

.field static final blacklist TRANSACTION_setCoverType:I = 0x3f

.field static final greylist-max-o TRANSACTION_setDozeAfterScreenOff:I = 0x32

.field static final blacklist TRANSACTION_setDynamicPowerSaveHint:I = 0x17

.field static final blacklist TRANSACTION_setEarlyWakeUp:I = 0x44

.field static final blacklist TRANSACTION_setFreezingScreenBrightness:I = 0x45

.field static final blacklist TRANSACTION_setFullPowerSavePolicy:I = 0x16

.field static final blacklist TRANSACTION_setLCDFlashMode:I = 0x41

.field static final blacklist TRANSACTION_setLowPowerStandbyActiveDuringMaintenance:I = 0x23

.field static final blacklist TRANSACTION_setLowPowerStandbyEnabled:I = 0x22

.field static final blacklist TRANSACTION_setMasterBrightnessLimit:I = 0x3b

.field static final blacklist TRANSACTION_setPowerBoost:I = 0x5

.field static final blacklist TRANSACTION_setPowerMode:I = 0x6

.field static final blacklist TRANSACTION_setPowerModeChecked:I = 0x7

.field static final blacklist TRANSACTION_setPowerSaveModeEnabled:I = 0x14

.field static final blacklist TRANSACTION_setProximityDebounceTime:I = 0x42

.field static final blacklist TRANSACTION_setScreenBrightnessScaleFactor:I = 0x40

.field static final greylist-max-o TRANSACTION_setStayOnSetting:I = 0x2b

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x27

.field static final blacklist TRANSACTION_suppressAmbientDisplay:I = 0x34

.field static final blacklist TRANSACTION_switchForceLcdBacklightOffState:I = 0x3e

.field static final blacklist TRANSACTION_systemReboot:I = 0x12

.field static final blacklist TRANSACTION_updateCoverState:I = 0x3d

.field static final blacklist TRANSACTION_updateWakeLockCallback:I = 0x9

.field static final greylist-max-o TRANSACTION_updateWakeLockUids:I = 0x4

.field static final blacklist TRANSACTION_updateWakeLockUidsAsync:I = 0x2f

.field static final greylist-max-o TRANSACTION_updateWakeLockWorkSource:I = 0x8

.field static final greylist-max-o TRANSACTION_userActivity:I = 0xb

.field static final greylist-max-o TRANSACTION_wakeUp:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 291
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 292
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IPowerManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 300
    if-nez p0, :cond_0

    .line 301
    const/4 v0, 0x0

    return-object v0

    .line 303
    :cond_0
    const-string v0, "android.os.IPowerManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 304
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IPowerManager;

    if-eqz v1, :cond_1

    .line 305
    move-object v1, v0

    check-cast v1, Landroid/os/IPowerManager;

    return-object v1

    .line 307
    :cond_1
    new-instance v1, Landroid/os/IPowerManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IPowerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 316
    packed-switch p0, :pswitch_data_0

    .line 604
    const/4 v0, 0x0

    return-object v0

    .line 600
    :pswitch_0
    const-string/jumbo v0, "getWakeLockPackageList"

    return-object v0

    .line 596
    :pswitch_1
    const-string/jumbo v0, "semWakeUp"

    return-object v0

    .line 592
    :pswitch_2
    const-string/jumbo v0, "setFreezingScreenBrightness"

    return-object v0

    .line 588
    :pswitch_3
    const-string/jumbo v0, "setEarlyWakeUp"

    return-object v0

    .line 584
    :pswitch_4
    const-string/jumbo v0, "isInteractiveForDisplay"

    return-object v0

    .line 580
    :pswitch_5
    const-string/jumbo v0, "setProximityDebounceTime"

    return-object v0

    .line 576
    :pswitch_6
    const-string/jumbo v0, "setLCDFlashMode"

    return-object v0

    .line 572
    :pswitch_7
    const-string/jumbo v0, "setScreenBrightnessScaleFactor"

    return-object v0

    .line 568
    :pswitch_8
    const-string/jumbo v0, "setCoverType"

    return-object v0

    .line 564
    :pswitch_9
    const-string/jumbo v0, "switchForceLcdBacklightOffState"

    return-object v0

    .line 560
    :pswitch_a
    const-string/jumbo v0, "updateCoverState"

    return-object v0

    .line 556
    :pswitch_b
    const-string v0, "getCurrentBrightness"

    return-object v0

    .line 552
    :pswitch_c
    const-string/jumbo v0, "setMasterBrightnessLimit"

    return-object v0

    .line 548
    :pswitch_d
    const-string/jumbo v0, "setAutoBrightnessLimit"

    return-object v0

    .line 544
    :pswitch_e
    const-string v0, "forceSuspend"

    return-object v0

    .line 540
    :pswitch_f
    const-string/jumbo v0, "getLastUserActivityTime"

    return-object v0

    .line 536
    :pswitch_10
    const-string/jumbo v0, "isAmbientDisplaySuppressedForTokenByApp"

    return-object v0

    .line 532
    :pswitch_11
    const-string/jumbo v0, "isAmbientDisplaySuppressed"

    return-object v0

    .line 528
    :pswitch_12
    const-string/jumbo v0, "isAmbientDisplaySuppressedForToken"

    return-object v0

    .line 524
    :pswitch_13
    const-string/jumbo v0, "suppressAmbientDisplay"

    return-object v0

    .line 520
    :pswitch_14
    const-string/jumbo v0, "isAmbientDisplayAvailable"

    return-object v0

    .line 516
    :pswitch_15
    const-string/jumbo v0, "setDozeAfterScreenOff"

    return-object v0

    .line 512
    :pswitch_16
    const-string/jumbo v0, "setAttentionLight"

    return-object v0

    .line 508
    :pswitch_17
    const-string/jumbo v0, "isScreenBrightnessBoosted"

    return-object v0

    .line 504
    :pswitch_18
    const-string/jumbo v0, "updateWakeLockUidsAsync"

    return-object v0

    .line 500
    :pswitch_19
    const-string/jumbo v0, "releaseWakeLockAsync"

    return-object v0

    .line 496
    :pswitch_1a
    const-string v0, "acquireWakeLockAsync"

    return-object v0

    .line 492
    :pswitch_1b
    const-string v0, "boostScreenBrightness"

    return-object v0

    .line 488
    :pswitch_1c
    const-string/jumbo v0, "setStayOnSetting"

    return-object v0

    .line 484
    :pswitch_1d
    const-string/jumbo v0, "getLastSleepReason"

    return-object v0

    .line 480
    :pswitch_1e
    const-string/jumbo v0, "getLastShutdownReason"

    return-object v0

    .line 476
    :pswitch_1f
    const-string v0, "crash"

    return-object v0

    .line 472
    :pswitch_20
    const-string/jumbo v0, "shutdown"

    return-object v0

    .line 468
    :pswitch_21
    const-string/jumbo v0, "rebootSafeMode"

    return-object v0

    .line 464
    :pswitch_22
    const-string/jumbo v0, "reboot"

    return-object v0

    .line 460
    :pswitch_23
    const-string v0, "forceLowPowerStandbyActive"

    return-object v0

    .line 456
    :pswitch_24
    const-string/jumbo v0, "setLowPowerStandbyActiveDuringMaintenance"

    return-object v0

    .line 452
    :pswitch_25
    const-string/jumbo v0, "setLowPowerStandbyEnabled"

    return-object v0

    .line 448
    :pswitch_26
    const-string/jumbo v0, "isLowPowerStandbyEnabled"

    return-object v0

    .line 444
    :pswitch_27
    const-string/jumbo v0, "isLowPowerStandbySupported"

    return-object v0

    .line 440
    :pswitch_28
    const-string/jumbo v0, "isLightDeviceIdleMode"

    return-object v0

    .line 436
    :pswitch_29
    const-string/jumbo v0, "isDeviceIdleMode"

    return-object v0

    .line 432
    :pswitch_2a
    const-string/jumbo v0, "isBatteryDischargePredictionPersonalized"

    return-object v0

    .line 428
    :pswitch_2b
    const-string v0, "getBatteryDischargePrediction"

    return-object v0

    .line 424
    :pswitch_2c
    const-string/jumbo v0, "setBatteryDischargePrediction"

    return-object v0

    .line 420
    :pswitch_2d
    const-string/jumbo v0, "getPowerSaveModeTrigger"

    return-object v0

    .line 416
    :pswitch_2e
    const-string/jumbo v0, "setAdaptivePowerSaveEnabled"

    return-object v0

    .line 412
    :pswitch_2f
    const-string/jumbo v0, "setAdaptivePowerSavePolicy"

    return-object v0

    .line 408
    :pswitch_30
    const-string/jumbo v0, "setDynamicPowerSaveHint"

    return-object v0

    .line 404
    :pswitch_31
    const-string/jumbo v0, "setFullPowerSavePolicy"

    return-object v0

    .line 400
    :pswitch_32
    const-string v0, "getFullPowerSavePolicy"

    return-object v0

    .line 396
    :pswitch_33
    const-string/jumbo v0, "setPowerSaveModeEnabled"

    return-object v0

    .line 392
    :pswitch_34
    const-string/jumbo v0, "getPowerSaveState"

    return-object v0

    .line 388
    :pswitch_35
    const-string/jumbo v0, "systemReboot"

    return-object v0

    .line 384
    :pswitch_36
    const-string/jumbo v0, "isPowerSaveMode"

    return-object v0

    .line 380
    :pswitch_37
    const-string/jumbo v0, "isInteractive"

    return-object v0

    .line 376
    :pswitch_38
    const-string v0, "getBrightnessConstraint"

    return-object v0

    .line 372
    :pswitch_39
    const-string/jumbo v0, "nap"

    return-object v0

    .line 368
    :pswitch_3a
    const-string/jumbo v0, "goToSleep"

    return-object v0

    .line 364
    :pswitch_3b
    const-string/jumbo v0, "wakeUp"

    return-object v0

    .line 360
    :pswitch_3c
    const-string/jumbo v0, "userActivity"

    return-object v0

    .line 356
    :pswitch_3d
    const-string/jumbo v0, "isWakeLockLevelSupported"

    return-object v0

    .line 352
    :pswitch_3e
    const-string/jumbo v0, "updateWakeLockCallback"

    return-object v0

    .line 348
    :pswitch_3f
    const-string/jumbo v0, "updateWakeLockWorkSource"

    return-object v0

    .line 344
    :pswitch_40
    const-string/jumbo v0, "setPowerModeChecked"

    return-object v0

    .line 340
    :pswitch_41
    const-string/jumbo v0, "setPowerMode"

    return-object v0

    .line 336
    :pswitch_42
    const-string/jumbo v0, "setPowerBoost"

    return-object v0

    .line 332
    :pswitch_43
    const-string/jumbo v0, "updateWakeLockUids"

    return-object v0

    .line 328
    :pswitch_44
    const-string/jumbo v0, "releaseWakeLock"

    return-object v0

    .line 324
    :pswitch_45
    const-string v0, "acquireWakeLockWithUid"

    return-object v0

    .line 320
    :pswitch_46
    const-string v0, "acquireWakeLock"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 311
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2663
    const/16 v0, 0x46

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 611
    invoke-static {p1}, Landroid/os/IPowerManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 615
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "android.os.IPowerManager"

    .line 616
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_0

    const v0, 0xffffff

    if-gt v10, v0, :cond_0

    .line 617
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    :cond_0
    packed-switch v10, :pswitch_data_0

    .line 627
    packed-switch v10, :pswitch_data_1

    .line 1358
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 623
    :pswitch_0
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 624
    return v14

    .line 1351
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->getWakeLockPackageList()[Ljava/lang/String;

    move-result-object v0

    .line 1352
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1353
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1354
    goto/16 :goto_0

    .line 1335
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 1337
    .local v7, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1339
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1341
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1343
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1344
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1345
    move-object/from16 v0, p0

    move-wide v1, v7

    move v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IPowerManager$Stub;->semWakeUp(JILjava/lang/String;ILjava/lang/String;)V

    .line 1346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1347
    goto/16 :goto_0

    .line 1326
    .end local v7    # "_arg0":J
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1327
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1328
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setFreezingScreenBrightness(Z)V

    .line 1329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1330
    goto/16 :goto_0

    .line 1317
    .end local v0    # "_arg0":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1318
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1319
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setEarlyWakeUp(Z)V

    .line 1320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1321
    goto/16 :goto_0

    .line 1307
    .end local v0    # "_arg0":Z
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1308
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1309
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->isInteractiveForDisplay(I)Z

    move-result v1

    .line 1310
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1311
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1312
    goto/16 :goto_0

    .line 1294
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1296
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1298
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1299
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1300
    invoke-virtual {v9, v0, v1, v2}, Landroid/os/IPowerManager$Stub;->setProximityDebounceTime(Landroid/os/IBinder;II)V

    .line 1301
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1302
    goto/16 :goto_0

    .line 1283
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1285
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1286
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1287
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setLCDFlashMode(ZLandroid/os/IBinder;)V

    .line 1288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1289
    goto/16 :goto_0

    .line 1272
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 1274
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1275
    .restart local v1    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1276
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setScreenBrightnessScaleFactor(FLandroid/os/IBinder;)V

    .line 1277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1278
    goto/16 :goto_0

    .line 1263
    .end local v0    # "_arg0":F
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1264
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1265
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setCoverType(I)V

    .line 1266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    goto/16 :goto_0

    .line 1256
    .end local v0    # "_arg0":I
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->switchForceLcdBacklightOffState()V

    .line 1257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    goto/16 :goto_0

    .line 1248
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1249
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1250
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->updateCoverState(Z)V

    .line 1251
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1252
    goto/16 :goto_0

    .line 1238
    .end local v0    # "_arg0":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1239
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1240
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->getCurrentBrightness(Z)F

    move-result v1

    .line 1241
    .local v1, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1242
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1243
    goto/16 :goto_0

    .line 1225
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":F
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1227
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1229
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1230
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1231
    invoke-virtual {v9, v0, v1, v2}, Landroid/os/IPowerManager$Stub;->setMasterBrightnessLimit(III)V

    .line 1232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    goto/16 :goto_0

    .line 1212
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1214
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1216
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1217
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1218
    invoke-virtual {v9, v0, v1, v2}, Landroid/os/IPowerManager$Stub;->setAutoBrightnessLimit(IIZ)V

    .line 1219
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1220
    goto/16 :goto_0

    .line 1204
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->forceSuspend()Z

    move-result v0

    .line 1205
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1207
    goto/16 :goto_0

    .line 1195
    .end local v0    # "_result":Z
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1196
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1197
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->getLastUserActivityTime(I)J

    move-result-wide v1

    .line 1198
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1199
    invoke-virtual {v12, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1200
    goto/16 :goto_0

    .line 1183
    .end local v0    # "_arg0":I
    .end local v1    # "_result":J
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1185
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1186
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1187
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->isAmbientDisplaySuppressedForTokenByApp(Ljava/lang/String;I)Z

    move-result v2

    .line 1188
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1190
    goto/16 :goto_0

    .line 1175
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isAmbientDisplaySuppressed()Z

    move-result v0

    .line 1176
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1177
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1178
    goto/16 :goto_0

    .line 1166
    .end local v0    # "_result":Z
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1167
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1168
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->isAmbientDisplaySuppressedForToken(Ljava/lang/String;)Z

    move-result v1

    .line 1169
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1171
    goto/16 :goto_0

    .line 1155
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1157
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1158
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1159
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->suppressAmbientDisplay(Ljava/lang/String;Z)V

    .line 1160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    goto/16 :goto_0

    .line 1147
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isAmbientDisplayAvailable()Z

    move-result v0

    .line 1148
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1149
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1150
    goto/16 :goto_0

    .line 1139
    .end local v0    # "_result":Z
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1140
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1141
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setDozeAfterScreenOff(Z)V

    .line 1142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    goto/16 :goto_0

    .line 1128
    .end local v0    # "_arg0":Z
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1130
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1131
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1132
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setAttentionLight(ZI)V

    .line 1133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1134
    goto/16 :goto_0

    .line 1120
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isScreenBrightnessBoosted()Z

    move-result v0

    .line 1121
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1123
    goto/16 :goto_0

    .line 1111
    .end local v0    # "_result":Z
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1113
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1114
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1115
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->updateWakeLockUidsAsync(Landroid/os/IBinder;[I)V

    .line 1116
    goto/16 :goto_0

    .line 1101
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":[I
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1103
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1104
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1105
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->releaseWakeLockAsync(Landroid/os/IBinder;I)V

    .line 1106
    goto/16 :goto_0

    .line 1083
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1085
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1087
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1089
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1091
    .local v16, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/WorkSource;

    .line 1093
    .local v17, "_arg4":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1094
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1095
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IPowerManager$Stub;->acquireWakeLockAsync(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 1096
    goto/16 :goto_0

    .line 1074
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Landroid/os/WorkSource;
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1075
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1076
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->boostScreenBrightness(J)V

    .line 1077
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1078
    goto/16 :goto_0

    .line 1065
    .end local v0    # "_arg0":J
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1066
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1067
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setStayOnSetting(I)V

    .line 1068
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1069
    goto/16 :goto_0

    .line 1057
    .end local v0    # "_arg0":I
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->getLastSleepReason()I

    move-result v0

    .line 1058
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1060
    goto/16 :goto_0

    .line 1050
    .end local v0    # "_result":I
    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->getLastShutdownReason()I

    move-result v0

    .line 1051
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1053
    goto/16 :goto_0

    .line 1042
    .end local v0    # "_result":I
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1043
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1044
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->crash(Ljava/lang/String;)V

    .line 1045
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    goto/16 :goto_0

    .line 1029
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1031
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1033
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1034
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1035
    invoke-virtual {v9, v0, v1, v2}, Landroid/os/IPowerManager$Stub;->shutdown(ZLjava/lang/String;Z)V

    .line 1036
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    goto/16 :goto_0

    .line 1018
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1020
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1021
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1022
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->rebootSafeMode(ZZ)V

    .line 1023
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    goto/16 :goto_0

    .line 1005
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1007
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1009
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1010
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1011
    invoke-virtual {v9, v0, v1, v2}, Landroid/os/IPowerManager$Stub;->reboot(ZLjava/lang/String;Z)V

    .line 1012
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    goto/16 :goto_0

    .line 996
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 997
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 998
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->forceLowPowerStandbyActive(Z)V

    .line 999
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1000
    goto/16 :goto_0

    .line 987
    .end local v0    # "_arg0":Z
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 988
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 989
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setLowPowerStandbyActiveDuringMaintenance(Z)V

    .line 990
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    goto/16 :goto_0

    .line 978
    .end local v0    # "_arg0":Z
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 979
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 980
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setLowPowerStandbyEnabled(Z)V

    .line 981
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    goto/16 :goto_0

    .line 970
    .end local v0    # "_arg0":Z
    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isLowPowerStandbyEnabled()Z

    move-result v0

    .line 971
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 973
    goto/16 :goto_0

    .line 963
    .end local v0    # "_result":Z
    :pswitch_28
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isLowPowerStandbySupported()Z

    move-result v0

    .line 964
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 966
    goto/16 :goto_0

    .line 956
    .end local v0    # "_result":Z
    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isLightDeviceIdleMode()Z

    move-result v0

    .line 957
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 959
    goto/16 :goto_0

    .line 949
    .end local v0    # "_result":Z
    :pswitch_2a
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isDeviceIdleMode()Z

    move-result v0

    .line 950
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 952
    goto/16 :goto_0

    .line 942
    .end local v0    # "_result":Z
    :pswitch_2b
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isBatteryDischargePredictionPersonalized()Z

    move-result v0

    .line 943
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 945
    goto/16 :goto_0

    .line 935
    .end local v0    # "_result":Z
    :pswitch_2c
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->getBatteryDischargePrediction()Landroid/os/ParcelDuration;

    move-result-object v0

    .line 936
    .local v0, "_result":Landroid/os/ParcelDuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 938
    goto/16 :goto_0

    .line 925
    .end local v0    # "_result":Landroid/os/ParcelDuration;
    :pswitch_2d
    sget-object v0, Landroid/os/ParcelDuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelDuration;

    .line 927
    .local v0, "_arg0":Landroid/os/ParcelDuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 928
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 929
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setBatteryDischargePrediction(Landroid/os/ParcelDuration;Z)V

    .line 930
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    goto/16 :goto_0

    .line 917
    .end local v0    # "_arg0":Landroid/os/ParcelDuration;
    .end local v1    # "_arg1":Z
    :pswitch_2e
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->getPowerSaveModeTrigger()I

    move-result v0

    .line 918
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 920
    goto/16 :goto_0

    .line 908
    .end local v0    # "_result":I
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 909
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 910
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setAdaptivePowerSaveEnabled(Z)Z

    move-result v1

    .line 911
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 913
    goto/16 :goto_0

    .line 898
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_30
    sget-object v0, Landroid/os/BatterySaverPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatterySaverPolicyConfig;

    .line 899
    .local v0, "_arg0":Landroid/os/BatterySaverPolicyConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 900
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setAdaptivePowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result v1

    .line 901
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 903
    goto/16 :goto_0

    .line 886
    .end local v0    # "_arg0":Landroid/os/BatterySaverPolicyConfig;
    .end local v1    # "_result":Z
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 888
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 889
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 890
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setDynamicPowerSaveHint(ZI)Z

    move-result v2

    .line 891
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 893
    goto/16 :goto_0

    .line 876
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_32
    sget-object v0, Landroid/os/BatterySaverPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatterySaverPolicyConfig;

    .line 877
    .local v0, "_arg0":Landroid/os/BatterySaverPolicyConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 878
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setFullPowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result v1

    .line 879
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 881
    goto/16 :goto_0

    .line 868
    .end local v0    # "_arg0":Landroid/os/BatterySaverPolicyConfig;
    .end local v1    # "_result":Z
    :pswitch_33
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->getFullPowerSavePolicy()Landroid/os/BatterySaverPolicyConfig;

    move-result-object v0

    .line 869
    .local v0, "_result":Landroid/os/BatterySaverPolicyConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 871
    goto/16 :goto_0

    .line 859
    .end local v0    # "_result":Landroid/os/BatterySaverPolicyConfig;
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 860
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 861
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->setPowerSaveModeEnabled(Z)Z

    move-result v1

    .line 862
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 864
    goto/16 :goto_0

    .line 849
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 850
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 851
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v1

    .line 852
    .local v1, "_result":Landroid/os/PowerSaveState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 854
    goto/16 :goto_0

    .line 840
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/PowerSaveState;
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 841
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 842
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->systemReboot(Ljava/lang/String;)V

    .line 843
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    goto/16 :goto_0

    .line 832
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_37
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isPowerSaveMode()Z

    move-result v0

    .line 833
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 835
    goto/16 :goto_0

    .line 825
    .end local v0    # "_result":Z
    :pswitch_38
    invoke-virtual/range {p0 .. p0}, Landroid/os/IPowerManager$Stub;->isInteractive()Z

    move-result v0

    .line 826
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 828
    goto/16 :goto_0

    .line 816
    .end local v0    # "_result":Z
    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 817
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 818
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->getBrightnessConstraint(I)F

    move-result v1

    .line 819
    .local v1, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 821
    goto/16 :goto_0

    .line 807
    .end local v0    # "_arg0":I
    .end local v1    # "_result":F
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 808
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 809
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->nap(J)V

    .line 810
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    goto/16 :goto_0

    .line 794
    .end local v0    # "_arg0":J
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 796
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 798
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 799
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->goToSleep(JII)V

    .line 801
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    goto/16 :goto_0

    .line 779
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 781
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 783
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 785
    .restart local v15    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 786
    .restart local v16    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    move-object/from16 v0, p0

    move-wide v1, v6

    move v3, v8

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IPowerManager$Stub;->wakeUp(JILjava/lang/String;Ljava/lang/String;)V

    .line 788
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    goto/16 :goto_0

    .line 764
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 766
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 768
    .local v7, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 770
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 771
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 772
    move-object/from16 v0, p0

    move v1, v6

    move-wide v2, v7

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IPowerManager$Stub;->userActivity(IJII)V

    .line 773
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    goto/16 :goto_0

    .line 754
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":J
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 755
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 756
    invoke-virtual {v9, v0}, Landroid/os/IPowerManager$Stub;->isWakeLockLevelSupported(I)Z

    move-result v1

    .line 757
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 759
    goto/16 :goto_0

    .line 743
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 745
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IWakeLockCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IWakeLockCallback;

    move-result-object v1

    .line 746
    .local v1, "_arg1":Landroid/os/IWakeLockCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 747
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->updateWakeLockCallback(Landroid/os/IBinder;Landroid/os/IWakeLockCallback;)V

    .line 748
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    goto/16 :goto_0

    .line 730
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/IWakeLockCallback;
    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 732
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 734
    .local v1, "_arg1":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 735
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 736
    invoke-virtual {v9, v0, v1, v2}, Landroid/os/IPowerManager$Stub;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 737
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    goto/16 :goto_0

    .line 718
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 720
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 721
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 722
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setPowerModeChecked(IZ)Z

    move-result v2

    .line 723
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 725
    goto/16 :goto_0

    .line 708
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 710
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 711
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 712
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setPowerMode(IZ)V

    .line 713
    goto/16 :goto_0

    .line 698
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 700
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 701
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 702
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->setPowerBoost(II)V

    .line 703
    goto/16 :goto_0

    .line 687
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 689
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 690
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 691
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->updateWakeLockUids(Landroid/os/IBinder;[I)V

    .line 692
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    goto/16 :goto_0

    .line 676
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":[I
    :pswitch_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 678
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 679
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    invoke-virtual {v9, v0, v1}, Landroid/os/IPowerManager$Stub;->releaseWakeLock(Landroid/os/IBinder;I)V

    .line 681
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    goto/16 :goto_0

    .line 655
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 657
    .local v8, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 659
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 661
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 663
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 665
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 667
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IWakeLockCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IWakeLockCallback;

    move-result-object v20

    .line 668
    .local v20, "_arg6":Landroid/os/IWakeLockCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/os/IPowerManager$Stub;->acquireWakeLockWithUid(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/IWakeLockCallback;)V

    .line 670
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    goto :goto_0

    .line 632
    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":Landroid/os/IWakeLockCallback;
    :pswitch_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 634
    .local v15, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 636
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 638
    .local v17, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 640
    .local v18, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/WorkSource;

    .line 642
    .local v19, "_arg4":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 644
    .local v20, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 646
    .local v21, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IWakeLockCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IWakeLockCallback;

    move-result-object v22

    .line 647
    .local v22, "_arg7":Landroid/os/IWakeLockCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 648
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/os/IPowerManager$Stub;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;ILandroid/os/IWakeLockCallback;)V

    .line 649
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    nop

    .line 1361
    .end local v15    # "_arg0":Landroid/os/IBinder;
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":Landroid/os/WorkSource;
    .end local v20    # "_arg5":Ljava/lang/String;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":Landroid/os/IWakeLockCallback;
    :goto_0
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
