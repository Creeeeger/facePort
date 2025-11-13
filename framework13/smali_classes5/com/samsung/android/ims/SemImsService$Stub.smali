.class public abstract Lcom/samsung/android/ims/SemImsService$Stub;
.super Landroid/os/Binder;
.source "SemImsService.java"

# interfaces
.implements Lcom/samsung/android/ims/SemImsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/SemImsService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_enableRcsByPhoneId:I = 0x13

.field static final blacklist TRANSACTION_getBooleanConfig:I = 0x1b

.field static final blacklist TRANSACTION_getConfigValues:I = 0x1a

.field static final blacklist TRANSACTION_getCurrentProfileForSlot:I = 0x15

.field static final blacklist TRANSACTION_getRcsProfileType:I = 0xe

.field static final blacklist TRANSACTION_getRegistrationInfoByPhoneId:I = 0xc

.field static final blacklist TRANSACTION_getRegistrationInfoByServiceType:I = 0xb

.field static final blacklist TRANSACTION_hasCrossSimCallingSupport:I = 0x24

.field static final blacklist TRANSACTION_isCmcEmergencyCallSupported:I = 0x20

.field static final blacklist TRANSACTION_isCmcEmergencyNumber:I = 0x21

.field static final blacklist TRANSACTION_isCmcPotentialEmergencyNumber:I = 0x22

.field static final blacklist TRANSACTION_isCrossSimCallingRegistered:I = 0x23

.field static final blacklist TRANSACTION_isForbiddenByPhoneId:I = 0x16

.field static final blacklist TRANSACTION_isRcsEnabled:I = 0x14

.field static final blacklist TRANSACTION_isServiceAvailable:I = 0xd

.field static final blacklist TRANSACTION_isSimMobilityActivated:I = 0x10

.field static final blacklist TRANSACTION_isVoLteAvailable:I = 0xf

.field static final blacklist TRANSACTION_registerAutoConfigurationListener:I = 0x7

.field static final blacklist TRANSACTION_registerDmValueListener:I = 0x5

.field static final blacklist TRANSACTION_registerEpdgListener:I = 0x1e

.field static final blacklist TRANSACTION_registerImsOngoingFtEventListener:I = 0x9

.field static final blacklist TRANSACTION_registerImsRegistrationListenerForSlot:I = 0x1

.field static final blacklist TRANSACTION_registerSemCmcRecordingListener:I = 0x1d

.field static final blacklist TRANSACTION_registerSimMobilityStatusListener:I = 0x3

.field static final blacklist TRANSACTION_sendIidToken:I = 0x19

.field static final blacklist TRANSACTION_sendMsisdnNumber:I = 0x18

.field static final blacklist TRANSACTION_sendSemCmcRecordingEvent:I = 0x1c

.field static final blacklist TRANSACTION_sendTryRegisterByPhoneId:I = 0x12

.field static final blacklist TRANSACTION_sendVerificationCode:I = 0x17

.field static final blacklist TRANSACTION_setRttMode:I = 0x11

.field static final blacklist TRANSACTION_unRegisterEpdgListener:I = 0x1f

.field static final blacklist TRANSACTION_unregisterAutoConfigurationListener:I = 0x8

.field static final blacklist TRANSACTION_unregisterDmValueListener:I = 0x6

.field static final blacklist TRANSACTION_unregisterImsOngoingFtEventListener:I = 0xa

.field static final blacklist TRANSACTION_unregisterImsRegistrationListenerForSlot:I = 0x2

.field static final blacklist TRANSACTION_unregisterSimMobilityStatusListener:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 154
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 155
    const-string v0, "com.samsung.android.ims.SemImsService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/ims/SemImsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/SemImsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 163
    if-nez p0, :cond_0

    .line 164
    const/4 v0, 0x0

    return-object v0

    .line 166
    :cond_0
    const-string v0, "com.samsung.android.ims.SemImsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 167
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/ims/SemImsService;

    if-eqz v1, :cond_1

    .line 168
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/ims/SemImsService;

    return-object v1

    .line 170
    :cond_1
    new-instance v1, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/ims/SemImsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 179
    packed-switch p0, :pswitch_data_0

    .line 327
    const/4 v0, 0x0

    return-object v0

    .line 323
    :pswitch_0
    const-string v0, "hasCrossSimCallingSupport"

    return-object v0

    .line 319
    :pswitch_1
    const-string v0, "isCrossSimCallingRegistered"

    return-object v0

    .line 315
    :pswitch_2
    const-string v0, "isCmcPotentialEmergencyNumber"

    return-object v0

    .line 311
    :pswitch_3
    const-string v0, "isCmcEmergencyNumber"

    return-object v0

    .line 307
    :pswitch_4
    const-string v0, "isCmcEmergencyCallSupported"

    return-object v0

    .line 303
    :pswitch_5
    const-string/jumbo v0, "unRegisterEpdgListener"

    return-object v0

    .line 299
    :pswitch_6
    const-string/jumbo v0, "registerEpdgListener"

    return-object v0

    .line 295
    :pswitch_7
    const-string/jumbo v0, "registerSemCmcRecordingListener"

    return-object v0

    .line 291
    :pswitch_8
    const-string/jumbo v0, "sendSemCmcRecordingEvent"

    return-object v0

    .line 287
    :pswitch_9
    const-string v0, "getBooleanConfig"

    return-object v0

    .line 283
    :pswitch_a
    const-string v0, "getConfigValues"

    return-object v0

    .line 279
    :pswitch_b
    const-string/jumbo v0, "sendIidToken"

    return-object v0

    .line 275
    :pswitch_c
    const-string/jumbo v0, "sendMsisdnNumber"

    return-object v0

    .line 271
    :pswitch_d
    const-string/jumbo v0, "sendVerificationCode"

    return-object v0

    .line 267
    :pswitch_e
    const-string v0, "isForbiddenByPhoneId"

    return-object v0

    .line 263
    :pswitch_f
    const-string v0, "getCurrentProfileForSlot"

    return-object v0

    .line 259
    :pswitch_10
    const-string v0, "isRcsEnabled"

    return-object v0

    .line 255
    :pswitch_11
    const-string v0, "enableRcsByPhoneId"

    return-object v0

    .line 251
    :pswitch_12
    const-string/jumbo v0, "sendTryRegisterByPhoneId"

    return-object v0

    .line 247
    :pswitch_13
    const-string/jumbo v0, "setRttMode"

    return-object v0

    .line 243
    :pswitch_14
    const-string v0, "isSimMobilityActivated"

    return-object v0

    .line 239
    :pswitch_15
    const-string v0, "isVoLteAvailable"

    return-object v0

    .line 235
    :pswitch_16
    const-string v0, "getRcsProfileType"

    return-object v0

    .line 231
    :pswitch_17
    const-string v0, "isServiceAvailable"

    return-object v0

    .line 227
    :pswitch_18
    const-string v0, "getRegistrationInfoByPhoneId"

    return-object v0

    .line 223
    :pswitch_19
    const-string v0, "getRegistrationInfoByServiceType"

    return-object v0

    .line 219
    :pswitch_1a
    const-string/jumbo v0, "unregisterImsOngoingFtEventListener"

    return-object v0

    .line 215
    :pswitch_1b
    const-string/jumbo v0, "registerImsOngoingFtEventListener"

    return-object v0

    .line 211
    :pswitch_1c
    const-string/jumbo v0, "unregisterAutoConfigurationListener"

    return-object v0

    .line 207
    :pswitch_1d
    const-string/jumbo v0, "registerAutoConfigurationListener"

    return-object v0

    .line 203
    :pswitch_1e
    const-string/jumbo v0, "unregisterDmValueListener"

    return-object v0

    .line 199
    :pswitch_1f
    const-string/jumbo v0, "registerDmValueListener"

    return-object v0

    .line 195
    :pswitch_20
    const-string/jumbo v0, "unregisterSimMobilityStatusListener"

    return-object v0

    .line 191
    :pswitch_21
    const-string/jumbo v0, "registerSimMobilityStatusListener"

    return-object v0

    .line 187
    :pswitch_22
    const-string/jumbo v0, "unregisterImsRegistrationListenerForSlot"

    return-object v0

    .line 183
    :pswitch_23
    const-string/jumbo v0, "registerImsRegistrationListenerForSlot"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 174
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1428
    const/16 v0, 0x23

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 334
    invoke-static {p1}, Lcom/samsung/android/ims/SemImsService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    const-string v0, "com.samsung.android.ims.SemImsService"

    .line 339
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 340
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 350
    packed-switch p1, :pswitch_data_1

    .line 740
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 346
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 347
    return v1

    .line 731
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 732
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 733
    invoke-virtual {p0, v2}, Lcom/samsung/android/ims/SemImsService$Stub;->hasCrossSimCallingSupport(I)Z

    move-result v3

    .line 734
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 736
    goto/16 :goto_0

    .line 721
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 722
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 723
    invoke-virtual {p0, v2}, Lcom/samsung/android/ims/SemImsService$Stub;->isCrossSimCallingRegistered(I)Z

    move-result v3

    .line 724
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 726
    goto/16 :goto_0

    .line 709
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 711
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 712
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 713
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->isCmcPotentialEmergencyNumber(Ljava/lang/String;I)Z

    move-result v4

    .line 714
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 716
    goto/16 :goto_0

    .line 697
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 699
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 700
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 701
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->isCmcEmergencyNumber(Ljava/lang/String;I)Z

    move-result v4

    .line 702
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 704
    goto/16 :goto_0

    .line 689
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/ims/SemImsService$Stub;->isCmcEmergencyCallSupported()Z

    move-result v2

    .line 690
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 692
    goto/16 :goto_0

    .line 681
    .end local v2    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 682
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    invoke-virtual {p0, v2}, Lcom/samsung/android/ims/SemImsService$Stub;->unRegisterEpdgListener(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    goto/16 :goto_0

    .line 671
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/ims/ISemEpdgListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/ISemEpdgListener;

    move-result-object v2

    .line 672
    .local v2, "_arg0":Lcom/samsung/android/ims/ISemEpdgListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 673
    invoke-virtual {p0, v2}, Lcom/samsung/android/ims/SemImsService$Stub;->registerEpdgListener(Lcom/samsung/android/ims/ISemEpdgListener;)Ljava/lang/String;

    move-result-object v3

    .line 674
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 676
    goto/16 :goto_0

    .line 660
    .end local v2    # "_arg0":Lcom/samsung/android/ims/ISemEpdgListener;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;

    move-result-object v2

    .line 662
    .local v2, "_arg0":Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 663
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 664
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->registerSemCmcRecordingListener(Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;I)V

    .line 665
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    goto/16 :goto_0

    .line 647
    .end local v2    # "_arg0":Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;
    .end local v3    # "_arg1":I
    :pswitch_9
    sget-object v2, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    .line 649
    .local v2, "_arg0":Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 651
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 652
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 653
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/ims/SemImsService$Stub;->sendSemCmcRecordingEvent(Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;II)V

    .line 654
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    goto/16 :goto_0

    .line 635
    .end local v2    # "_arg0":Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 637
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 638
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 639
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->getBooleanConfig(Ljava/lang/String;I)Z

    move-result v4

    .line 640
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 642
    goto/16 :goto_0

    .line 623
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 625
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 626
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 627
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v4

    .line 628
    .local v4, "_result":Landroid/content/ContentValues;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 630
    goto/16 :goto_0

    .line 612
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/content/ContentValues;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 615
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->sendIidToken(Ljava/lang/String;I)V

    .line 617
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    goto/16 :goto_0

    .line 601
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 603
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 604
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->sendMsisdnNumber(Ljava/lang/String;I)V

    .line 606
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    goto/16 :goto_0

    .line 590
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 592
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 593
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 594
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->sendVerificationCode(Ljava/lang/String;I)V

    .line 595
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    goto/16 :goto_0

    .line 580
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 581
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    invoke-virtual {p0, v2}, Lcom/samsung/android/ims/SemImsService$Stub;->isForbiddenByPhoneId(I)Z

    move-result v3

    .line 583
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 585
    goto/16 :goto_0

    .line 570
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 571
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    invoke-virtual {p0, v2}, Lcom/samsung/android/ims/SemImsService$Stub;->getCurrentProfileForSlot(I)[Lcom/samsung/android/ims/settings/SemImsProfile;

    move-result-object v3

    .line 573
    .local v3, "_result":[Lcom/samsung/android/ims/settings/SemImsProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 575
    goto/16 :goto_0

    .line 558
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Lcom/samsung/android/ims/settings/SemImsProfile;
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 560
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 561
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 562
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->isRcsEnabled(ZI)Z

    move-result v4

    .line 563
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 565
    goto/16 :goto_0

    .line 547
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 549
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 550
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 551
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->enableRcsByPhoneId(ZI)V

    .line 552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    goto/16 :goto_0

    .line 538
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 539
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 540
    invoke-virtual {p0, v2}, Lcom/samsung/android/ims/SemImsService$Stub;->sendTryRegisterByPhoneId(I)V

    .line 541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    goto/16 :goto_0

    .line 527
    .end local v2    # "_arg0":I
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 529
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 530
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 531
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->setRttMode(II)V

    .line 532
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    goto/16 :goto_0

    .line 517
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 518
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {p0, v2}, Lcom/samsung/android/ims/SemImsService$Stub;->isSimMobilityActivated(I)Z

    move-result v3

    .line 520
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 522
    goto/16 :goto_0

    .line 507
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 508
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {p0, v2}, Lcom/samsung/android/ims/SemImsService$Stub;->isVoLteAvailable(I)Z

    move-result v3

    .line 510
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 512
    goto/16 :goto_0

    .line 497
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 498
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 499
    invoke-virtual {p0, v2}, Lcom/samsung/android/ims/SemImsService$Stub;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 502
    goto/16 :goto_0

    .line 483
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 485
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 487
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 488
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 489
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/ims/SemImsService$Stub;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v5

    .line 490
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 492
    goto/16 :goto_0

    .line 473
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 474
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 475
    invoke-virtual {p0, v2}, Lcom/samsung/android/ims/SemImsService$Stub;->getRegistrationInfoByPhoneId(I)[Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object v3

    .line 476
    .local v3, "_result":[Lcom/samsung/android/ims/SemImsRegistration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 478
    goto/16 :goto_0

    .line 461
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Lcom/samsung/android/ims/SemImsRegistration;
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 464
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 465
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object v4

    .line 466
    .local v4, "_result":Lcom/samsung/android/ims/SemImsRegistration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 468
    goto/16 :goto_0

    .line 452
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Lcom/samsung/android/ims/SemImsRegistration;
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 453
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {p0, v2}, Lcom/samsung/android/ims/SemImsService$Stub;->unregisterImsOngoingFtEventListener(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    goto/16 :goto_0

    .line 442
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/ims/ft/SemImsFtListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/ft/SemImsFtListener;

    move-result-object v2

    .line 443
    .local v2, "_arg0":Lcom/samsung/android/ims/ft/SemImsFtListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {p0, v2}, Lcom/samsung/android/ims/SemImsService$Stub;->registerImsOngoingFtEventListener(Lcom/samsung/android/ims/ft/SemImsFtListener;)Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 447
    goto/16 :goto_0

    .line 431
    .end local v2    # "_arg0":Lcom/samsung/android/ims/ft/SemImsFtListener;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 434
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->unregisterAutoConfigurationListener(Ljava/lang/String;I)V

    .line 436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    goto/16 :goto_0

    .line 419
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/ims/SemAutoConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/SemAutoConfigListener;

    move-result-object v2

    .line 421
    .local v2, "_arg0":Lcom/samsung/android/ims/SemAutoConfigListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 422
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 423
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->registerAutoConfigurationListener(Lcom/samsung/android/ims/SemAutoConfigListener;I)Ljava/lang/String;

    move-result-object v4

    .line 424
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 426
    goto/16 :goto_0

    .line 410
    .end local v2    # "_arg0":Lcom/samsung/android/ims/SemAutoConfigListener;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/ims/SemImsDmConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/SemImsDmConfigListener;

    move-result-object v2

    .line 411
    .local v2, "_arg0":Lcom/samsung/android/ims/SemImsDmConfigListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {p0, v2}, Lcom/samsung/android/ims/SemImsService$Stub;->unregisterDmValueListener(Lcom/samsung/android/ims/SemImsDmConfigListener;)V

    .line 413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    goto :goto_0

    .line 401
    .end local v2    # "_arg0":Lcom/samsung/android/ims/SemImsDmConfigListener;
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/ims/SemImsDmConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/SemImsDmConfigListener;

    move-result-object v2

    .line 402
    .restart local v2    # "_arg0":Lcom/samsung/android/ims/SemImsDmConfigListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    invoke-virtual {p0, v2}, Lcom/samsung/android/ims/SemImsService$Stub;->registerDmValueListener(Lcom/samsung/android/ims/SemImsDmConfigListener;)V

    .line 404
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    goto :goto_0

    .line 390
    .end local v2    # "_arg0":Lcom/samsung/android/ims/SemImsDmConfigListener;
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 393
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 394
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->unregisterSimMobilityStatusListener(Ljava/lang/String;I)V

    .line 395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    goto :goto_0

    .line 378
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/ims/SemSimMobStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/SemSimMobStatusListener;

    move-result-object v2

    .line 380
    .local v2, "_arg0":Lcom/samsung/android/ims/SemSimMobStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 381
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->registerSimMobilityStatusListener(Lcom/samsung/android/ims/SemSimMobStatusListener;I)Ljava/lang/String;

    move-result-object v4

    .line 383
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 385
    goto :goto_0

    .line 367
    .end local v2    # "_arg0":Lcom/samsung/android/ims/SemSimMobStatusListener;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 370
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->unregisterImsRegistrationListenerForSlot(Ljava/lang/String;I)V

    .line 372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    goto :goto_0

    .line 355
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/ims/SemImsRegiListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/SemImsRegiListener;

    move-result-object v2

    .line 357
    .local v2, "_arg0":Lcom/samsung/android/ims/SemImsRegiListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 358
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/ims/SemImsService$Stub;->registerImsRegistrationListenerForSlot(Lcom/samsung/android/ims/SemImsRegiListener;I)Ljava/lang/String;

    move-result-object v4

    .line 360
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 362
    nop

    .line 743
    .end local v2    # "_arg0":Lcom/samsung/android/ims/SemImsRegiListener;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
