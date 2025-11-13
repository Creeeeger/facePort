.class public abstract Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;
.super Landroid/os/Binder;
.source "IFmReceiverService.java"

# interfaces
.implements Lcom/broadcom/fm/fmreceiver/IFmReceiverService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/fm/fmreceiver/IFmReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cleanupFmService:I = 0x21

.field static final blacklist TRANSACTION_estimateNoiseFloorLevel:I = 0x1a

.field static final blacklist TRANSACTION_getCurrentRssi:I = 0x7

.field static final blacklist TRANSACTION_getCurrentSNR:I = 0x8

.field static final blacklist TRANSACTION_getIsMute:I = 0x9

.field static final blacklist TRANSACTION_getMonoStereoMode:I = 0x5

.field static final blacklist TRANSACTION_getRadioIsOn:I = 0x4

.field static final blacklist TRANSACTION_getStatus:I = 0xd

.field static final blacklist TRANSACTION_getTunedFrequency:I = 0x6

.field static final blacklist TRANSACTION_init:I = 0x1

.field static final blacklist TRANSACTION_muteAudio:I = 0xe

.field static final blacklist TRANSACTION_offFMService:I = 0x25

.field static final blacklist TRANSACTION_registerCallback:I = 0x2

.field static final blacklist TRANSACTION_seekRdsStation:I = 0x11

.field static final blacklist TRANSACTION_seekStation:I = 0xf

.field static final blacklist TRANSACTION_seekStationAbort:I = 0x12

.field static final blacklist TRANSACTION_seekStationCombo:I = 0x10

.field static final blacklist TRANSACTION_setAudioMode:I = 0x15

.field static final blacklist TRANSACTION_setAudioPath:I = 0x16

.field static final blacklist TRANSACTION_setCOS:I = 0x1e

.field static final blacklist TRANSACTION_setDeemPhasis:I = 0x19

.field static final blacklist TRANSACTION_setFMIntenna:I = 0x20

.field static final blacklist TRANSACTION_setFMVolume:I = 0x1c

.field static final blacklist TRANSACTION_setFrequencyOffsetThreshold:I = 0x22

.field static final blacklist TRANSACTION_setLiveAudioPolling:I = 0x1b

.field static final blacklist TRANSACTION_setNoisePowerThreshold:I = 0x24

.field static final blacklist TRANSACTION_setPiEccMode:I = 0x14

.field static final blacklist TRANSACTION_setPilotPowerThreshold:I = 0x23

.field static final blacklist TRANSACTION_setRdsMode:I = 0x13

.field static final blacklist TRANSACTION_setRfMute:I = 0x1f

.field static final blacklist TRANSACTION_setSnrThreshold:I = 0x1d

.field static final blacklist TRANSACTION_setStepSize:I = 0x17

.field static final blacklist TRANSACTION_setWorldRegion:I = 0x18

.field static final blacklist TRANSACTION_tuneRadio:I = 0xc

.field static final blacklist TRANSACTION_turnOffRadio:I = 0xa

.field static final blacklist TRANSACTION_turnOnRadio:I = 0xb

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 167
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 168
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/broadcom/fm/fmreceiver/IFmReceiverService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 176
    if-nez p0, :cond_0

    .line 177
    const/4 v0, 0x0

    return-object v0

    .line 179
    :cond_0
    const-string v0, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 180
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    if-eqz v1, :cond_1

    .line 181
    move-object v1, v0

    check-cast v1, Lcom/broadcom/fm/fmreceiver/IFmReceiverService;

    return-object v1

    .line 183
    :cond_1
    new-instance v1, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 192
    packed-switch p0, :pswitch_data_0

    .line 344
    const/4 v0, 0x0

    return-object v0

    .line 340
    :pswitch_0
    const-string v0, "offFMService"

    return-object v0

    .line 336
    :pswitch_1
    const-string/jumbo v0, "setNoisePowerThreshold"

    return-object v0

    .line 332
    :pswitch_2
    const-string/jumbo v0, "setPilotPowerThreshold"

    return-object v0

    .line 328
    :pswitch_3
    const-string/jumbo v0, "setFrequencyOffsetThreshold"

    return-object v0

    .line 324
    :pswitch_4
    const-string v0, "cleanupFmService"

    return-object v0

    .line 320
    :pswitch_5
    const-string/jumbo v0, "setFMIntenna"

    return-object v0

    .line 316
    :pswitch_6
    const-string/jumbo v0, "setRfMute"

    return-object v0

    .line 312
    :pswitch_7
    const-string/jumbo v0, "setCOS"

    return-object v0

    .line 308
    :pswitch_8
    const-string/jumbo v0, "setSnrThreshold"

    return-object v0

    .line 304
    :pswitch_9
    const-string/jumbo v0, "setFMVolume"

    return-object v0

    .line 300
    :pswitch_a
    const-string/jumbo v0, "setLiveAudioPolling"

    return-object v0

    .line 296
    :pswitch_b
    const-string v0, "estimateNoiseFloorLevel"

    return-object v0

    .line 292
    :pswitch_c
    const-string/jumbo v0, "setDeemPhasis"

    return-object v0

    .line 288
    :pswitch_d
    const-string/jumbo v0, "setWorldRegion"

    return-object v0

    .line 284
    :pswitch_e
    const-string/jumbo v0, "setStepSize"

    return-object v0

    .line 280
    :pswitch_f
    const-string/jumbo v0, "setAudioPath"

    return-object v0

    .line 276
    :pswitch_10
    const-string/jumbo v0, "setAudioMode"

    return-object v0

    .line 272
    :pswitch_11
    const-string/jumbo v0, "setPiEccMode"

    return-object v0

    .line 268
    :pswitch_12
    const-string/jumbo v0, "setRdsMode"

    return-object v0

    .line 264
    :pswitch_13
    const-string/jumbo v0, "seekStationAbort"

    return-object v0

    .line 260
    :pswitch_14
    const-string/jumbo v0, "seekRdsStation"

    return-object v0

    .line 256
    :pswitch_15
    const-string/jumbo v0, "seekStationCombo"

    return-object v0

    .line 252
    :pswitch_16
    const-string/jumbo v0, "seekStation"

    return-object v0

    .line 248
    :pswitch_17
    const-string v0, "muteAudio"

    return-object v0

    .line 244
    :pswitch_18
    const-string v0, "getStatus"

    return-object v0

    .line 240
    :pswitch_19
    const-string/jumbo v0, "tuneRadio"

    return-object v0

    .line 236
    :pswitch_1a
    const-string/jumbo v0, "turnOnRadio"

    return-object v0

    .line 232
    :pswitch_1b
    const-string/jumbo v0, "turnOffRadio"

    return-object v0

    .line 228
    :pswitch_1c
    const-string v0, "getIsMute"

    return-object v0

    .line 224
    :pswitch_1d
    const-string v0, "getCurrentSNR"

    return-object v0

    .line 220
    :pswitch_1e
    const-string v0, "getCurrentRssi"

    return-object v0

    .line 216
    :pswitch_1f
    const-string v0, "getTunedFrequency"

    return-object v0

    .line 212
    :pswitch_20
    const-string v0, "getMonoStereoMode"

    return-object v0

    .line 208
    :pswitch_21
    const-string v0, "getRadioIsOn"

    return-object v0

    .line 204
    :pswitch_22
    const-string/jumbo v0, "unregisterCallback"

    return-object v0

    .line 200
    :pswitch_23
    const-string/jumbo v0, "registerCallback"

    return-object v0

    .line 196
    :pswitch_24
    const-string v0, "init"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 187
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1463
    const/16 v0, 0x24

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 351
    invoke-static {p1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 355
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p3

    const-string v12, "com.broadcom.fm.fmreceiver.IFmReceiverService"

    .line 356
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v10, v13, :cond_0

    const v0, 0xffffff

    if-gt v10, v0, :cond_0

    .line 357
    move-object/from16 v14, p2

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :cond_0
    move-object/from16 v14, p2

    .line 359
    :goto_0
    packed-switch v10, :pswitch_data_0

    .line 367
    packed-switch v10, :pswitch_data_1

    .line 738
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 363
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 364
    return v13

    .line 731
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->offFMService()I

    move-result v0

    .line 732
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    goto/16 :goto_1

    .line 722
    .end local v0    # "_result":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 723
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 724
    invoke-virtual {v9, v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setNoisePowerThreshold(I)I

    move-result v1

    .line 725
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    goto/16 :goto_1

    .line 712
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 713
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 714
    invoke-virtual {v9, v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setPilotPowerThreshold(I)I

    move-result v1

    .line 715
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    goto/16 :goto_1

    .line 702
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 703
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    invoke-virtual {v9, v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setFrequencyOffsetThreshold(I)I

    move-result v1

    .line 705
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    goto/16 :goto_1

    .line 694
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->cleanupFmService()I

    move-result v0

    .line 695
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    goto/16 :goto_1

    .line 685
    .end local v0    # "_result":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 686
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 687
    invoke-virtual {v9, v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setFMIntenna(Z)I

    move-result v1

    .line 688
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    goto/16 :goto_1

    .line 675
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 676
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 677
    invoke-virtual {v9, v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setRfMute(Z)I

    move-result v1

    .line 678
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    goto/16 :goto_1

    .line 665
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 666
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 667
    invoke-virtual {v9, v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setCOS(I)I

    move-result v1

    .line 668
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    goto/16 :goto_1

    .line 655
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 656
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 657
    invoke-virtual {v9, v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setSnrThreshold(I)I

    move-result v1

    .line 658
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    goto/16 :goto_1

    .line 645
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 646
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    invoke-virtual {v9, v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setFMVolume(I)I

    move-result v1

    .line 648
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    goto/16 :goto_1

    .line 633
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 635
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 636
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 637
    invoke-virtual {v9, v0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setLiveAudioPolling(ZI)I

    move-result v2

    .line 638
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    goto/16 :goto_1

    .line 623
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 624
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 625
    invoke-virtual {v9, v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->estimateNoiseFloorLevel(I)I

    move-result v1

    .line 626
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    goto/16 :goto_1

    .line 613
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 614
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 615
    invoke-virtual {v9, v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setDeemPhasis(I)I

    move-result v1

    .line 616
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    goto/16 :goto_1

    .line 603
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 604
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    invoke-virtual {v9, v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setWorldRegion(I)I

    move-result v1

    .line 606
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    goto/16 :goto_1

    .line 593
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 594
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 595
    invoke-virtual {v9, v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setStepSize(I)I

    move-result v1

    .line 596
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    goto/16 :goto_1

    .line 583
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 584
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 585
    invoke-virtual {v9, v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setAudioPath(I)I

    move-result v1

    .line 586
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    goto/16 :goto_1

    .line 573
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 574
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 575
    invoke-virtual {v9, v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setAudioMode(I)I

    move-result v1

    .line 576
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    goto/16 :goto_1

    .line 563
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 564
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 565
    invoke-virtual {v9, v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setPiEccMode(I)I

    move-result v1

    .line 566
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    goto/16 :goto_1

    .line 547
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 549
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 551
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 553
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 554
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->setRdsMode(IIII)I

    move-result v4

    .line 556
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    goto/16 :goto_1

    .line 539
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->seekStationAbort()I

    move-result v0

    .line 540
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    goto/16 :goto_1

    .line 524
    .end local v0    # "_result":I
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 526
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 528
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 530
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 531
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->seekRdsStation(IIII)J

    move-result-wide v4

    .line 533
    .local v4, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    invoke-virtual {v11, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 535
    goto/16 :goto_1

    .line 500
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":J
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 502
    .local v15, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 504
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 506
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 508
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 510
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 512
    .local v20, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 514
    .local v21, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 515
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 516
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->seekStationCombo(IIIIIZII)J

    move-result-wide v0

    .line 517
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 519
    goto/16 :goto_1

    .line 488
    .end local v0    # "_result":J
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":Z
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":I
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 490
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 491
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {v9, v0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->seekStation(II)J

    move-result-wide v2

    .line 493
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    invoke-virtual {v11, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 495
    goto/16 :goto_1

    .line 478
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":J
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 479
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {v9, v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->muteAudio(Z)I

    move-result v1

    .line 481
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    goto/16 :goto_1

    .line 470
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->getStatus()I

    move-result v0

    .line 471
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    goto/16 :goto_1

    .line 461
    .end local v0    # "_result":I
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 462
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 463
    invoke-virtual {v9, v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->tuneRadio(I)I

    move-result v1

    .line 464
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    goto/16 :goto_1

    .line 448
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 450
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v1

    .line 451
    .local v1, "_arg1":[C
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {v9, v0, v1}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->turnOnRadio(I[C)I

    move-result v2

    .line 453
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeCharArray([C)V

    .line 456
    goto/16 :goto_1

    .line 438
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[C
    .end local v2    # "_result":I
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 439
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {v9, v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->turnOffRadio(Z)I

    move-result v1

    .line 441
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    goto/16 :goto_1

    .line 430
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->getIsMute()Z

    move-result v0

    .line 431
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 433
    goto :goto_1

    .line 423
    .end local v0    # "_result":Z
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->getCurrentSNR()J

    move-result-wide v0

    .line 424
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 426
    goto :goto_1

    .line 416
    .end local v0    # "_result":J
    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->getCurrentRssi()J

    move-result-wide v0

    .line 417
    .restart local v0    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 419
    goto :goto_1

    .line 409
    .end local v0    # "_result":J
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->getTunedFrequency()I

    move-result v0

    .line 410
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    goto :goto_1

    .line 402
    .end local v0    # "_result":I
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->getMonoStereoMode()I

    move-result v0

    .line 403
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    goto :goto_1

    .line 395
    .end local v0    # "_result":I
    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->getRadioIsOn()Z

    move-result v0

    .line 396
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 398
    goto :goto_1

    .line 387
    .end local v0    # "_result":Z
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    move-result-object v0

    .line 388
    .local v0, "_arg0":Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    invoke-virtual {v9, v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->unregisterCallback(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)V

    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    goto :goto_1

    .line 378
    .end local v0    # "_arg0":Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;

    move-result-object v0

    .line 379
    .restart local v0    # "_arg0":Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {v9, v0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->registerCallback(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)V

    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    goto :goto_1

    .line 371
    .end local v0    # "_arg0":Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;->init()V

    .line 372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    nop

    .line 741
    :goto_1
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
