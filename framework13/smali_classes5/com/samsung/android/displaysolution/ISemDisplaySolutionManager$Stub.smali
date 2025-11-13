.class public abstract Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;
.super Landroid/os/Binder;
.source "ISemDisplaySolutionManager.java"

# interfaces
.implements Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getAlphaMaskLevel:I = 0x8

.field static final blacklist TRANSACTION_getAutoCurrentLimitOffModeEnabled:I = 0x4

.field static final blacklist TRANSACTION_getDouAppModeEnable:I = 0x3

.field static final blacklist TRANSACTION_getFingerPrintBacklightValue:I = 0x7

.field static final blacklist TRANSACTION_getGalleryModeEnable:I = 0x2

.field static final blacklist TRANSACTION_getOnPixelRatioValueForPMS:I = 0x5

.field static final blacklist TRANSACTION_getVideoEnhancerSettingState:I = 0x6

.field static final blacklist TRANSACTION_getVideoModeEnable:I = 0x1

.field static final blacklist TRANSACTION_isMdnieScenarioControlServiceEnabled:I = 0x9

.field static final blacklist TRANSACTION_onAutoCurrentLimitOffMode:I = 0x10

.field static final blacklist TRANSACTION_onAutoCurrentLimitStateChanged:I = 0xd

.field static final blacklist TRANSACTION_onAutoCurrentLimitStateChangedInt:I = 0xf

.field static final blacklist TRANSACTION_onAutoCurrentLimitStateChangedWithBrightness:I = 0xe

.field static final blacklist TRANSACTION_onBurnInPreventionDisabled:I = 0x11

.field static final blacklist TRANSACTION_onDetailVeiwStateChanged:I = 0xc

.field static final blacklist TRANSACTION_setAutoCurrentLimitOffModeEnabled:I = 0x15

.field static final blacklist TRANSACTION_setDouAppModeEnable:I = 0x14

.field static final blacklist TRANSACTION_setEyeComfortWeightingFactor:I = 0x1b

.field static final blacklist TRANSACTION_setGalleryModeEnable:I = 0x13

.field static final blacklist TRANSACTION_setHighDynamicRangeMode:I = 0xa

.field static final blacklist TRANSACTION_setIRCompensationMode:I = 0xb

.field static final blacklist TRANSACTION_setMdnieScenarioControlServiceEnable:I = 0x16

.field static final blacklist TRANSACTION_setMultipleScreenBrightness:I = 0x18

.field static final blacklist TRANSACTION_setMultipleScreenBrightnessValueForHDR:I = 0x1a

.field static final blacklist TRANSACTION_setOnPixelRatioValueForPMS:I = 0x19

.field static final blacklist TRANSACTION_setScreenBrightnessForPreview:I = 0x17

.field static final blacklist TRANSACTION_setSleepPatternBLF:I = 0x1d

.field static final blacklist TRANSACTION_setVideoEnhancerSettingState:I = 0x1c

.field static final blacklist TRANSACTION_setVideoModeEnable:I = 0x12


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 118
    const-string v0, "com.samsung.android.displaysolution.ISemDisplaySolutionManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 126
    if-nez p0, :cond_0

    .line 127
    const/4 v0, 0x0

    return-object v0

    .line 129
    :cond_0
    const-string v0, "com.samsung.android.displaysolution.ISemDisplaySolutionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 130
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v1, :cond_1

    .line 131
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    return-object v1

    .line 133
    :cond_1
    new-instance v1, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 142
    packed-switch p0, :pswitch_data_0

    .line 262
    const/4 v0, 0x0

    return-object v0

    .line 258
    :pswitch_0
    const-string/jumbo v0, "setSleepPatternBLF"

    return-object v0

    .line 254
    :pswitch_1
    const-string/jumbo v0, "setVideoEnhancerSettingState"

    return-object v0

    .line 250
    :pswitch_2
    const-string/jumbo v0, "setEyeComfortWeightingFactor"

    return-object v0

    .line 246
    :pswitch_3
    const-string/jumbo v0, "setMultipleScreenBrightnessValueForHDR"

    return-object v0

    .line 242
    :pswitch_4
    const-string/jumbo v0, "setOnPixelRatioValueForPMS"

    return-object v0

    .line 238
    :pswitch_5
    const-string/jumbo v0, "setMultipleScreenBrightness"

    return-object v0

    .line 234
    :pswitch_6
    const-string/jumbo v0, "setScreenBrightnessForPreview"

    return-object v0

    .line 230
    :pswitch_7
    const-string/jumbo v0, "setMdnieScenarioControlServiceEnable"

    return-object v0

    .line 226
    :pswitch_8
    const-string/jumbo v0, "setAutoCurrentLimitOffModeEnabled"

    return-object v0

    .line 222
    :pswitch_9
    const-string/jumbo v0, "setDouAppModeEnable"

    return-object v0

    .line 218
    :pswitch_a
    const-string/jumbo v0, "setGalleryModeEnable"

    return-object v0

    .line 214
    :pswitch_b
    const-string/jumbo v0, "setVideoModeEnable"

    return-object v0

    .line 210
    :pswitch_c
    const-string v0, "onBurnInPreventionDisabled"

    return-object v0

    .line 206
    :pswitch_d
    const-string v0, "onAutoCurrentLimitOffMode"

    return-object v0

    .line 202
    :pswitch_e
    const-string v0, "onAutoCurrentLimitStateChangedInt"

    return-object v0

    .line 198
    :pswitch_f
    const-string v0, "onAutoCurrentLimitStateChangedWithBrightness"

    return-object v0

    .line 194
    :pswitch_10
    const-string v0, "onAutoCurrentLimitStateChanged"

    return-object v0

    .line 190
    :pswitch_11
    const-string v0, "onDetailVeiwStateChanged"

    return-object v0

    .line 186
    :pswitch_12
    const-string/jumbo v0, "setIRCompensationMode"

    return-object v0

    .line 182
    :pswitch_13
    const-string/jumbo v0, "setHighDynamicRangeMode"

    return-object v0

    .line 178
    :pswitch_14
    const-string v0, "isMdnieScenarioControlServiceEnabled"

    return-object v0

    .line 174
    :pswitch_15
    const-string v0, "getAlphaMaskLevel"

    return-object v0

    .line 170
    :pswitch_16
    const-string v0, "getFingerPrintBacklightValue"

    return-object v0

    .line 166
    :pswitch_17
    const-string v0, "getVideoEnhancerSettingState"

    return-object v0

    .line 162
    :pswitch_18
    const-string v0, "getOnPixelRatioValueForPMS"

    return-object v0

    .line 158
    :pswitch_19
    const-string v0, "getAutoCurrentLimitOffModeEnabled"

    return-object v0

    .line 154
    :pswitch_1a
    const-string v0, "getDouAppModeEnable"

    return-object v0

    .line 150
    :pswitch_1b
    const-string v0, "getGalleryModeEnable"

    return-object v0

    .line 146
    :pswitch_1c
    const-string v0, "getVideoModeEnable"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 137
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1068
    const/16 v0, 0x1c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 269
    invoke-static {p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p3

    const-string v10, "com.samsung.android.displaysolution.ISemDisplaySolutionManager"

    .line 274
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 275
    move-object/from16 v12, p2

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_0
    move-object/from16 v12, p2

    .line 277
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 285
    packed-switch v8, :pswitch_data_1

    .line 553
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 281
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    return v11

    .line 539
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 541
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 543
    .local v14, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 545
    .local v16, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v18

    .line 546
    .local v18, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 547
    move-object/from16 v0, p0

    move-object v1, v13

    move-wide v2, v14

    move-wide/from16 v4, v16

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setSleepPatternBLF(Ljava/lang/String;JJF)V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    goto/16 :goto_1

    .line 528
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":J
    .end local v16    # "_arg2":J
    .end local v18    # "_arg3":F
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 531
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setVideoEnhancerSettingState(Ljava/lang/String;I)V

    .line 533
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    goto/16 :goto_1

    .line 519
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 520
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setEyeComfortWeightingFactor(F)V

    .line 522
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    goto/16 :goto_1

    .line 510
    .end local v0    # "_arg0":F
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 511
    .restart local v0    # "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 512
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setMultipleScreenBrightnessValueForHDR(F)V

    .line 513
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    goto/16 :goto_1

    .line 501
    .end local v0    # "_arg0":F
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setOnPixelRatioValueForPMS(Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    goto/16 :goto_1

    .line 492
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 493
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 494
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    goto/16 :goto_1

    .line 483
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 484
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 485
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setScreenBrightnessForPreview(I)V

    .line 486
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    goto/16 :goto_1

    .line 474
    .end local v0    # "_arg0":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 475
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setMdnieScenarioControlServiceEnable(Z)V

    .line 477
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    goto/16 :goto_1

    .line 465
    .end local v0    # "_arg0":Z
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 466
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 467
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setAutoCurrentLimitOffModeEnabled(Z)V

    .line 468
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    goto/16 :goto_1

    .line 456
    .end local v0    # "_arg0":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 457
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setDouAppModeEnable(Z)V

    .line 459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    goto/16 :goto_1

    .line 447
    .end local v0    # "_arg0":Z
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 448
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setGalleryModeEnable(Z)V

    .line 450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    goto/16 :goto_1

    .line 438
    .end local v0    # "_arg0":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 439
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setVideoModeEnable(Z)V

    .line 441
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    goto/16 :goto_1

    .line 429
    .end local v0    # "_arg0":Z
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 430
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 431
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onBurnInPreventionDisabled(Z)V

    .line 432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    goto/16 :goto_1

    .line 420
    .end local v0    # "_arg0":Z
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 421
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onAutoCurrentLimitOffMode(Z)V

    .line 423
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    goto/16 :goto_1

    .line 411
    .end local v0    # "_arg0":Z
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 412
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 413
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onAutoCurrentLimitStateChangedInt(I)V

    .line 414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    goto/16 :goto_1

    .line 402
    .end local v0    # "_arg0":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 403
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onAutoCurrentLimitStateChangedWithBrightness(Z)V

    .line 405
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    goto/16 :goto_1

    .line 393
    .end local v0    # "_arg0":Z
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 394
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onAutoCurrentLimitStateChanged(Z)V

    .line 396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    goto/16 :goto_1

    .line 384
    .end local v0    # "_arg0":Z
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 385
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onDetailVeiwStateChanged(Z)V

    .line 387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    goto/16 :goto_1

    .line 375
    .end local v0    # "_arg0":Z
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 376
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setIRCompensationMode(Z)V

    .line 378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    goto/16 :goto_1

    .line 366
    .end local v0    # "_arg0":Z
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 367
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setHighDynamicRangeMode(Z)V

    .line 369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    goto/16 :goto_1

    .line 358
    .end local v0    # "_arg0":Z
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    .line 359
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 361
    goto/16 :goto_1

    .line 345
    .end local v0    # "_result":Z
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 347
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 349
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 350
    .local v2, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getAlphaMaskLevel(FFF)F

    move-result v3

    .line 352
    .local v3, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 354
    goto :goto_1

    .line 335
    .end local v0    # "_arg0":F
    .end local v1    # "_arg1":F
    .end local v2    # "_arg2":F
    .end local v3    # "_result":F
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 336
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getFingerPrintBacklightValue(I)F

    move-result v1

    .line 338
    .local v1, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 340
    goto :goto_1

    .line 325
    .end local v0    # "_arg0":I
    .end local v1    # "_result":F
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getVideoEnhancerSettingState(Ljava/lang/String;)I

    move-result v1

    .line 328
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    goto :goto_1

    .line 317
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getOnPixelRatioValueForPMS()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    goto :goto_1

    .line 310
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getAutoCurrentLimitOffModeEnabled()Z

    move-result v0

    .line 311
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 313
    goto :goto_1

    .line 303
    .end local v0    # "_result":Z
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getDouAppModeEnable()Z

    move-result v0

    .line 304
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 306
    goto :goto_1

    .line 296
    .end local v0    # "_result":Z
    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getGalleryModeEnable()Z

    move-result v0

    .line 297
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 299
    goto :goto_1

    .line 289
    .end local v0    # "_result":Z
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getVideoModeEnable()Z

    move-result v0

    .line 290
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 292
    nop

    .line 556
    .end local v0    # "_result":Z
    :goto_1
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
