.class public abstract Landroid/os/ICustomFrequencyManager$Stub;
.super Landroid/os/Binder;
.source "ICustomFrequencyManager.java"

# interfaces
.implements Landroid/os/ICustomFrequencyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ICustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ICustomFrequencyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acquire:I = 0x65

.field static final blacklist TRANSACTION_addDvfsLockAllowedUid:I = 0x54

.field static final blacklist TRANSACTION_checkHintExist:I = 0x68

.field static final blacklist TRANSACTION_checkResourceExist:I = 0x69

.field static final blacklist TRANSACTION_checkSysfsIdExist:I = 0x6c

.field static final blacklist TRANSACTION_disableGpisHint:I = 0x6e

.field static final blacklist TRANSACTION_enableInteractionHint:I = 0x70

.field static final blacklist TRANSACTION_getBatteryRemainingUsageTime:I = 0x40

.field static final blacklist TRANSACTION_getGameThrottlingLevel:I = 0x4b

.field static final blacklist TRANSACTION_getProcessCpuUsage:I = 0x52

.field static final blacklist TRANSACTION_getSsrmStatus:I = 0x32

.field static final blacklist TRANSACTION_getSupportedFrequency:I = 0x67

.field static final blacklist TRANSACTION_mpdUpdate:I = 0xf

.field static final blacklist TRANSACTION_readSysfs:I = 0x6b

.field static final blacklist TRANSACTION_release:I = 0x66

.field static final blacklist TRANSACTION_removeDvfsLockAllowedUid:I = 0x55

.field static final blacklist TRANSACTION_requestCPUUpdate:I = 0xe

.field static final blacklist TRANSACTION_requestFreezeSlowdown:I = 0x58

.field static final blacklist TRANSACTION_requestGpis:I = 0x5c

.field static final blacklist TRANSACTION_requestMpParameterUpdate:I = 0xd

.field static final blacklist TRANSACTION_restrictApp:I = 0x6d

.field static final blacklist TRANSACTION_sendCommandToSSRM:I = 0x30

.field static final blacklist TRANSACTION_sendDrawingTid:I = 0x57

.field static final blacklist TRANSACTION_sendDrawingTime:I = 0x56

.field static final blacklist TRANSACTION_setFrozenTime:I = 0x59

.field static final blacklist TRANSACTION_setGameFps:I = 0x4a

.field static final blacklist TRANSACTION_setGamePowerSaving:I = 0x49

.field static final blacklist TRANSACTION_setGameTouchParam:I = 0x4d

.field static final blacklist TRANSACTION_setGameTurboMode:I = 0x4c

.field static final blacklist TRANSACTION_setGpisHint:I = 0x6f

.field static final blacklist TRANSACTION_supportVRTemperaturesInformation:I = 0x33

.field static final blacklist TRANSACTION_unsetGameTouchParam:I = 0x4e

.field static final blacklist TRANSACTION_writeSysfs:I = 0x6a


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 133
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 134
    const-string v0, "android.os.ICustomFrequencyManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/ICustomFrequencyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 142
    if-nez p0, :cond_0

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_0
    const-string v0, "android.os.ICustomFrequencyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 146
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_1

    .line 147
    move-object v1, v0

    check-cast v1, Landroid/os/ICustomFrequencyManager;

    return-object v1

    .line 149
    :cond_1
    new-instance v1, Landroid/os/ICustomFrequencyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/ICustomFrequencyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 158
    sparse-switch p0, :sswitch_data_0

    .line 294
    const/4 v0, 0x0

    return-object v0

    .line 286
    :sswitch_0
    const-string v0, "enableInteractionHint"

    return-object v0

    .line 290
    :sswitch_1
    const-string/jumbo v0, "setGpisHint"

    return-object v0

    .line 282
    :sswitch_2
    const-string v0, "disableGpisHint"

    return-object v0

    .line 278
    :sswitch_3
    const-string/jumbo v0, "restrictApp"

    return-object v0

    .line 274
    :sswitch_4
    const-string v0, "checkSysfsIdExist"

    return-object v0

    .line 270
    :sswitch_5
    const-string/jumbo v0, "readSysfs"

    return-object v0

    .line 266
    :sswitch_6
    const-string/jumbo v0, "writeSysfs"

    return-object v0

    .line 262
    :sswitch_7
    const-string v0, "checkResourceExist"

    return-object v0

    .line 258
    :sswitch_8
    const-string v0, "checkHintExist"

    return-object v0

    .line 254
    :sswitch_9
    const-string/jumbo v0, "getSupportedFrequency"

    return-object v0

    .line 250
    :sswitch_a
    const-string/jumbo v0, "release"

    return-object v0

    .line 246
    :sswitch_b
    const-string v0, "acquire"

    return-object v0

    .line 242
    :sswitch_c
    const-string/jumbo v0, "requestGpis"

    return-object v0

    .line 238
    :sswitch_d
    const-string/jumbo v0, "setFrozenTime"

    return-object v0

    .line 234
    :sswitch_e
    const-string/jumbo v0, "requestFreezeSlowdown"

    return-object v0

    .line 230
    :sswitch_f
    const-string/jumbo v0, "sendDrawingTid"

    return-object v0

    .line 226
    :sswitch_10
    const-string/jumbo v0, "sendDrawingTime"

    return-object v0

    .line 222
    :sswitch_11
    const-string/jumbo v0, "removeDvfsLockAllowedUid"

    return-object v0

    .line 218
    :sswitch_12
    const-string v0, "addDvfsLockAllowedUid"

    return-object v0

    .line 214
    :sswitch_13
    const-string/jumbo v0, "getProcessCpuUsage"

    return-object v0

    .line 210
    :sswitch_14
    const-string/jumbo v0, "unsetGameTouchParam"

    return-object v0

    .line 206
    :sswitch_15
    const-string/jumbo v0, "setGameTouchParam"

    return-object v0

    .line 202
    :sswitch_16
    const-string/jumbo v0, "setGameTurboMode"

    return-object v0

    .line 198
    :sswitch_17
    const-string v0, "getGameThrottlingLevel"

    return-object v0

    .line 194
    :sswitch_18
    const-string/jumbo v0, "setGameFps"

    return-object v0

    .line 190
    :sswitch_19
    const-string/jumbo v0, "setGamePowerSaving"

    return-object v0

    .line 186
    :sswitch_1a
    const-string v0, "getBatteryRemainingUsageTime"

    return-object v0

    .line 182
    :sswitch_1b
    const-string/jumbo v0, "supportVRTemperaturesInformation"

    return-object v0

    .line 178
    :sswitch_1c
    const-string/jumbo v0, "getSsrmStatus"

    return-object v0

    .line 174
    :sswitch_1d
    const-string/jumbo v0, "sendCommandToSSRM"

    return-object v0

    .line 170
    :sswitch_1e
    const-string/jumbo v0, "mpdUpdate"

    return-object v0

    .line 166
    :sswitch_1f
    const-string/jumbo v0, "requestCPUUpdate"

    return-object v0

    .line 162
    :sswitch_20
    const-string/jumbo v0, "requestMpParameterUpdate"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_20
        0xe -> :sswitch_1f
        0xf -> :sswitch_1e
        0x30 -> :sswitch_1d
        0x32 -> :sswitch_1c
        0x33 -> :sswitch_1b
        0x40 -> :sswitch_1a
        0x49 -> :sswitch_19
        0x4a -> :sswitch_18
        0x4b -> :sswitch_17
        0x4c -> :sswitch_16
        0x4d -> :sswitch_15
        0x4e -> :sswitch_14
        0x52 -> :sswitch_13
        0x54 -> :sswitch_12
        0x55 -> :sswitch_11
        0x56 -> :sswitch_10
        0x57 -> :sswitch_f
        0x58 -> :sswitch_e
        0x59 -> :sswitch_d
        0x5c -> :sswitch_c
        0x65 -> :sswitch_b
        0x66 -> :sswitch_a
        0x67 -> :sswitch_9
        0x68 -> :sswitch_8
        0x69 -> :sswitch_7
        0x6a -> :sswitch_6
        0x6b -> :sswitch_5
        0x6c -> :sswitch_4
        0x6d -> :sswitch_3
        0x6e -> :sswitch_2
        0x6f -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 153
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1251
    const/16 v0, 0x6f

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 301
    invoke-static {p1}, Landroid/os/ICustomFrequencyManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    const-string v9, "android.os.ICustomFrequencyManager"

    .line 306
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 307
    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_0
    move-object/from16 v11, p2

    .line 309
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 317
    sparse-switch v7, :sswitch_data_0

    .line 661
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 313
    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    return v10

    .line 644
    :sswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 645
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 646
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->enableInteractionHint(Z)V

    .line 647
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    goto/16 :goto_1

    .line 653
    .end local v0    # "_arg0":Z
    :sswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 654
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 655
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->setGpisHint(Z)V

    .line 656
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    goto/16 :goto_1

    .line 637
    .end local v0    # "_arg0":Z
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ICustomFrequencyManager$Stub;->disableGpisHint()V

    .line 638
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    goto/16 :goto_1

    .line 625
    :sswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 629
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 630
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 631
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->restrictApp(Ljava/lang/String;II)V

    .line 632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    goto/16 :goto_1

    .line 615
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 616
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 617
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->checkSysfsIdExist(I)Z

    move-result v1

    .line 618
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 620
    goto/16 :goto_1

    .line 605
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 606
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 607
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->readSysfs(I)Ljava/lang/String;

    move-result-object v1

    .line 608
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 610
    goto/16 :goto_1

    .line 595
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 597
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-virtual {v6, v0, v1}, Landroid/os/ICustomFrequencyManager$Stub;->writeSysfs(ILjava/lang/String;)V

    .line 600
    goto/16 :goto_1

    .line 585
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 586
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 587
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->checkResourceExist(I)Z

    move-result v1

    .line 588
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 590
    goto/16 :goto_1

    .line 575
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 576
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 577
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->checkHintExist(I)Z

    move-result v1

    .line 578
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 580
    goto/16 :goto_1

    .line 563
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 565
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 566
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 567
    invoke-virtual {v6, v0, v1}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedFrequency(II)[I

    move-result-object v2

    .line 568
    .local v2, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 570
    goto/16 :goto_1

    .line 553
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[I
    :sswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 555
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 556
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 557
    invoke-virtual {v6, v0, v1}, Landroid/os/ICustomFrequencyManager$Stub;->release(II)V

    .line 558
    goto/16 :goto_1

    .line 537
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 539
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 541
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 543
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 545
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v16

    .line 546
    .local v16, "_arg4":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 547
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/ICustomFrequencyManager$Stub;->acquire(IILjava/lang/String;I[I)V

    .line 548
    goto/16 :goto_1

    .line 525
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":[I
    :sswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 527
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 529
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 530
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 531
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->requestGpis(III)V

    .line 532
    goto/16 :goto_1

    .line 516
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 517
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->setFrozenTime(I)V

    .line 519
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    goto/16 :goto_1

    .line 502
    .end local v0    # "_arg0":I
    :sswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 504
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 506
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 507
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 508
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->requestFreezeSlowdown(IZLjava/lang/String;)I

    move-result v3

    .line 509
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    goto/16 :goto_1

    .line 490
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 492
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 494
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 495
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->sendDrawingTid(III)V

    .line 497
    goto/16 :goto_1

    .line 478
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 480
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 482
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 483
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 484
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/ICustomFrequencyManager$Stub;->sendDrawingTime(IIJ)V

    .line 485
    goto/16 :goto_1

    .line 468
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":J
    :sswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 469
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->removeDvfsLockAllowedUid(I)Z

    move-result v1

    .line 471
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 473
    goto/16 :goto_1

    .line 458
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 459
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->addDvfsLockAllowedUid(I)I

    move-result v1

    .line 461
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    goto/16 :goto_1

    .line 448
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 449
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->getProcessCpuUsage([I)Landroid/os/CpuTrackerInfo;

    move-result-object v1

    .line 451
    .local v1, "_result":Landroid/os/CpuTrackerInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {v8, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 453
    goto/16 :goto_1

    .line 441
    .end local v0    # "_arg0":[I
    .end local v1    # "_result":Landroid/os/CpuTrackerInfo;
    :sswitch_14
    invoke-virtual/range {p0 .. p0}, Landroid/os/ICustomFrequencyManager$Stub;->unsetGameTouchParam()V

    .line 442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    goto/16 :goto_1

    .line 429
    :sswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->setGameTouchParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    goto/16 :goto_1

    .line 420
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 421
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->setGameTurboMode(Z)V

    .line 423
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    goto/16 :goto_1

    .line 412
    .end local v0    # "_arg0":Z
    :sswitch_17
    invoke-virtual/range {p0 .. p0}, Landroid/os/ICustomFrequencyManager$Stub;->getGameThrottlingLevel()I

    move-result v0

    .line 413
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    goto/16 :goto_1

    .line 404
    .end local v0    # "_result":I
    :sswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 405
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->setGameFps(I)V

    .line 407
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    goto/16 :goto_1

    .line 395
    .end local v0    # "_arg0":I
    :sswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 396
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->setGamePowerSaving(Z)V

    .line 398
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    goto/16 :goto_1

    .line 385
    .end local v0    # "_arg0":Z
    :sswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 386
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->getBatteryRemainingUsageTime(I)I

    move-result v1

    .line 388
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    goto :goto_1

    .line 371
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 375
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 376
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 377
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->supportVRTemperaturesInformation(Ljava/lang/String;II)[F

    move-result-object v3

    .line 378
    .local v3, "_result":[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 380
    goto :goto_1

    .line 361
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":[F
    :sswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 362
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->getSsrmStatus(I)I

    move-result v1

    .line 364
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    goto :goto_1

    .line 351
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    invoke-virtual {v6, v0, v1}, Landroid/os/ICustomFrequencyManager$Stub;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    goto :goto_1

    .line 342
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 343
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->mpdUpdate(I)V

    .line 345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    goto :goto_1

    .line 331
    .end local v0    # "_arg0":I
    :sswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 333
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 334
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {v6, v0, v1}, Landroid/os/ICustomFrequencyManager$Stub;->requestCPUUpdate(II)V

    .line 336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    goto :goto_1

    .line 322
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->requestMpParameterUpdate(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    nop

    .line 664
    .end local v0    # "_arg0":Ljava/lang/String;
    :goto_1
    return v10

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_20
        0xe -> :sswitch_1f
        0xf -> :sswitch_1e
        0x30 -> :sswitch_1d
        0x32 -> :sswitch_1c
        0x33 -> :sswitch_1b
        0x40 -> :sswitch_1a
        0x49 -> :sswitch_19
        0x4a -> :sswitch_18
        0x4b -> :sswitch_17
        0x4c -> :sswitch_16
        0x4d -> :sswitch_15
        0x4e -> :sswitch_14
        0x52 -> :sswitch_13
        0x54 -> :sswitch_12
        0x55 -> :sswitch_11
        0x56 -> :sswitch_10
        0x57 -> :sswitch_f
        0x58 -> :sswitch_e
        0x59 -> :sswitch_d
        0x5c -> :sswitch_c
        0x65 -> :sswitch_b
        0x66 -> :sswitch_a
        0x67 -> :sswitch_9
        0x68 -> :sswitch_8
        0x69 -> :sswitch_7
        0x6a -> :sswitch_6
        0x6b -> :sswitch_5
        0x6c -> :sswitch_4
        0x6d -> :sswitch_3
        0x6e -> :sswitch_2
        0x6f -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch
.end method
