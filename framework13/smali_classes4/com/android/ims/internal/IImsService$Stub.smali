.class public abstract Lcom/android/ims/internal/IImsService$Stub;
.super Landroid/os/Binder;
.source "IImsService.java"

# interfaces
.implements Lcom/android/ims/internal/IImsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsService"

.field static final blacklist TRANSACTION_acknowledgeSms:I = 0x1f

.field static final blacklist TRANSACTION_acknowledgeSmsReport:I = 0x20

.field static final blacklist TRANSACTION_acknowledgeSmsWithPdu:I = 0x25

.field static final greylist-max-o TRANSACTION_addRegistrationListener:I = 0x6

.field static final blacklist TRANSACTION_changeAudioPath:I = 0x12

.field static final greylist-max-o TRANSACTION_close:I = 0x2

.field static final greylist-max-o TRANSACTION_createCallProfile:I = 0x7

.field static final greylist-max-o TRANSACTION_createCallSession:I = 0x8

.field static final blacklist TRANSACTION_createRcsFeature:I = 0x27

.field static final blacklist TRANSACTION_getConfig:I = 0xb

.field static final blacklist TRANSACTION_getE911CallCount:I = 0x1b

.field static final greylist-max-o TRANSACTION_getEcbmInterface:I = 0xe

.field static final greylist-max-o TRANSACTION_getMultiEndpointInterface:I = 0x10

.field static final greylist-max-o TRANSACTION_getPendingCallSession:I = 0x9

.field static final blacklist TRANSACTION_getRegistration:I = 0x11

.field static final blacklist TRANSACTION_getSipTransport:I = 0x29

.field static final blacklist TRANSACTION_getSmsFormat:I = 0x23

.field static final blacklist TRANSACTION_getTrn:I = 0x16

.field static final greylist-max-o TRANSACTION_getUtInterface:I = 0xa

.field static final blacklist TRANSACTION_isCmcEmergencyCallSupported:I = 0x18

.field static final greylist-max-o TRANSACTION_isConnected:I = 0x3

.field static final greylist-max-o TRANSACTION_isOpened:I = 0x4

.field static final blacklist TRANSACTION_onSmsReady:I = 0x22

.field static final greylist-max-o TRANSACTION_open:I = 0x1

.field static final blacklist TRANSACTION_queryCapabilityConfiguration:I = 0x26

.field static final blacklist TRANSACTION_removeImsFeature:I = 0x28

.field static final blacklist TRANSACTION_sendPublishDialog:I = 0x17

.field static final blacklist TRANSACTION_sendRpSmma:I = 0x24

.field static final blacklist TRANSACTION_sendSms:I = 0x1d

.field static final greylist-max-o TRANSACTION_setRegistrationListener:I = 0x5

.field static final blacklist TRANSACTION_setRetryCount:I = 0x1e

.field static final blacklist TRANSACTION_setSecImsMmTelEventListener:I = 0x1c

.field static final blacklist TRANSACTION_setSmsListener:I = 0x21

.field static final blacklist TRANSACTION_setTtyMode:I = 0x1a

.field static final greylist-max-o TRANSACTION_setUiTTYMode:I = 0xf

.field static final blacklist TRANSACTION_setVideoCrtAudio:I = 0x15

.field static final blacklist TRANSACTION_startLocalRingBackTone:I = 0x13

.field static final blacklist TRANSACTION_stopLocalRingBackTone:I = 0x14

.field static final blacklist TRANSACTION_triggerAutoConfigurationForApp:I = 0x19

.field static final greylist-max-o TRANSACTION_turnOffIms:I = 0xd

.field static final greylist-max-o TRANSACTION_turnOnIms:I = 0xc


# direct methods
.method public constructor greylist-max-r <init>()V
    .locals 1

    .line 192
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 193
    const-string v0, "com.android.ims.internal.IImsService"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 201
    if-nez p0, :cond_0

    .line 202
    const/4 v0, 0x0

    return-object v0

    .line 204
    :cond_0
    const-string v0, "com.android.ims.internal.IImsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 205
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsService;

    if-eqz v1, :cond_1

    .line 206
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsService;

    return-object v1

    .line 208
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 217
    packed-switch p0, :pswitch_data_0

    .line 385
    const/4 v0, 0x0

    return-object v0

    .line 381
    :pswitch_0
    const-string v0, "getSipTransport"

    return-object v0

    .line 377
    :pswitch_1
    const-string/jumbo v0, "removeImsFeature"

    return-object v0

    .line 373
    :pswitch_2
    const-string v0, "createRcsFeature"

    return-object v0

    .line 369
    :pswitch_3
    const-string/jumbo v0, "queryCapabilityConfiguration"

    return-object v0

    .line 365
    :pswitch_4
    const-string v0, "acknowledgeSmsWithPdu"

    return-object v0

    .line 361
    :pswitch_5
    const-string/jumbo v0, "sendRpSmma"

    return-object v0

    .line 357
    :pswitch_6
    const-string v0, "getSmsFormat"

    return-object v0

    .line 353
    :pswitch_7
    const-string/jumbo v0, "onSmsReady"

    return-object v0

    .line 349
    :pswitch_8
    const-string/jumbo v0, "setSmsListener"

    return-object v0

    .line 345
    :pswitch_9
    const-string v0, "acknowledgeSmsReport"

    return-object v0

    .line 341
    :pswitch_a
    const-string v0, "acknowledgeSms"

    return-object v0

    .line 337
    :pswitch_b
    const-string/jumbo v0, "setRetryCount"

    return-object v0

    .line 333
    :pswitch_c
    const-string/jumbo v0, "sendSms"

    return-object v0

    .line 329
    :pswitch_d
    const-string/jumbo v0, "setSecImsMmTelEventListener"

    return-object v0

    .line 325
    :pswitch_e
    const-string v0, "getE911CallCount"

    return-object v0

    .line 321
    :pswitch_f
    const-string/jumbo v0, "setTtyMode"

    return-object v0

    .line 317
    :pswitch_10
    const-string/jumbo v0, "triggerAutoConfigurationForApp"

    return-object v0

    .line 313
    :pswitch_11
    const-string v0, "isCmcEmergencyCallSupported"

    return-object v0

    .line 309
    :pswitch_12
    const-string/jumbo v0, "sendPublishDialog"

    return-object v0

    .line 305
    :pswitch_13
    const-string v0, "getTrn"

    return-object v0

    .line 301
    :pswitch_14
    const-string/jumbo v0, "setVideoCrtAudio"

    return-object v0

    .line 297
    :pswitch_15
    const-string/jumbo v0, "stopLocalRingBackTone"

    return-object v0

    .line 293
    :pswitch_16
    const-string/jumbo v0, "startLocalRingBackTone"

    return-object v0

    .line 289
    :pswitch_17
    const-string v0, "changeAudioPath"

    return-object v0

    .line 285
    :pswitch_18
    const-string v0, "getRegistration"

    return-object v0

    .line 281
    :pswitch_19
    const-string v0, "getMultiEndpointInterface"

    return-object v0

    .line 277
    :pswitch_1a
    const-string/jumbo v0, "setUiTTYMode"

    return-object v0

    .line 273
    :pswitch_1b
    const-string v0, "getEcbmInterface"

    return-object v0

    .line 269
    :pswitch_1c
    const-string/jumbo v0, "turnOffIms"

    return-object v0

    .line 265
    :pswitch_1d
    const-string/jumbo v0, "turnOnIms"

    return-object v0

    .line 261
    :pswitch_1e
    const-string v0, "getConfig"

    return-object v0

    .line 257
    :pswitch_1f
    const-string v0, "getUtInterface"

    return-object v0

    .line 253
    :pswitch_20
    const-string v0, "getPendingCallSession"

    return-object v0

    .line 249
    :pswitch_21
    const-string v0, "createCallSession"

    return-object v0

    .line 245
    :pswitch_22
    const-string v0, "createCallProfile"

    return-object v0

    .line 241
    :pswitch_23
    const-string v0, "addRegistrationListener"

    return-object v0

    .line 237
    :pswitch_24
    const-string/jumbo v0, "setRegistrationListener"

    return-object v0

    .line 233
    :pswitch_25
    const-string v0, "isOpened"

    return-object v0

    .line 229
    :pswitch_26
    const-string v0, "isConnected"

    return-object v0

    .line 225
    :pswitch_27
    const-string v0, "close"

    return-object v0

    .line 221
    :pswitch_28
    const-string/jumbo v0, "open"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 212
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1701
    const/16 v0, 0x28

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 392
    invoke-static {p1}, Lcom/android/ims/internal/IImsService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 396
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "com.android.ims.internal.IImsService"

    .line 397
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 398
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 408
    packed-switch v9, :pswitch_data_1

    .line 888
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 404
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 405
    return v13

    .line 879
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 880
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 881
    invoke-virtual {v8, v0}, Lcom/android/ims/internal/IImsService$Stub;->getSipTransport(I)Landroid/telephony/ims/aidl/ISipTransport;

    move-result-object v1

    .line 882
    .local v1, "_result":Landroid/telephony/ims/aidl/ISipTransport;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 884
    goto/16 :goto_0

    .line 868
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/telephony/ims/aidl/ISipTransport;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 870
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 871
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 872
    invoke-virtual {v8, v0, v1}, Lcom/android/ims/internal/IImsService$Stub;->removeImsFeature(II)V

    .line 873
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    goto/16 :goto_0

    .line 858
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 859
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 860
    invoke-virtual {v8, v0}, Lcom/android/ims/internal/IImsService$Stub;->createRcsFeature(I)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    .line 861
    .local v1, "_result":Landroid/telephony/ims/aidl/IImsRcsFeature;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 863
    goto/16 :goto_0

    .line 844
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/telephony/ims/aidl/IImsRcsFeature;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 846
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 848
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 849
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 850
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/ims/internal/IImsService$Stub;->queryCapabilityConfiguration(III)Z

    move-result v3

    .line 851
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 853
    goto/16 :goto_0

    .line 829
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 831
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 833
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 835
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 836
    .local v3, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 837
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/ims/internal/IImsService$Stub;->acknowledgeSmsWithPdu(III[B)V

    .line 838
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    goto/16 :goto_0

    .line 818
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":[B
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 820
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 821
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 822
    invoke-virtual {v8, v0, v1}, Lcom/android/ims/internal/IImsService$Stub;->sendRpSmma(ILjava/lang/String;)V

    .line 823
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    goto/16 :goto_0

    .line 808
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 809
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 810
    invoke-virtual {v8, v0}, Lcom/android/ims/internal/IImsService$Stub;->getSmsFormat(I)Ljava/lang/String;

    move-result-object v1

    .line 811
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 813
    goto/16 :goto_0

    .line 799
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 800
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 801
    invoke-virtual {v8, v0}, Lcom/android/ims/internal/IImsService$Stub;->onSmsReady(I)V

    .line 802
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    goto/16 :goto_0

    .line 788
    .end local v0    # "_arg0":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 790
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsSmsListener;

    move-result-object v1

    .line 791
    .local v1, "_arg1":Landroid/telephony/ims/aidl/IImsSmsListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 792
    invoke-virtual {v8, v0, v1}, Lcom/android/ims/internal/IImsService$Stub;->setSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 793
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    goto/16 :goto_0

    .line 773
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/ims/aidl/IImsSmsListener;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 775
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 777
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 779
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 780
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 781
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/ims/internal/IImsService$Stub;->acknowledgeSmsReport(IIII)V

    .line 782
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    goto/16 :goto_0

    .line 758
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 760
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 762
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 764
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 765
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 766
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/ims/internal/IImsService$Stub;->acknowledgeSms(IIII)V

    .line 767
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    goto/16 :goto_0

    .line 745
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 747
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 749
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 750
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 751
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/ims/internal/IImsService$Stub;->setRetryCount(III)V

    .line 752
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    goto/16 :goto_0

    .line 724
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 726
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 728
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 730
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 732
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 734
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 736
    .local v19, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v20

    .line 737
    .local v20, "_arg6":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/android/ims/internal/IImsService$Stub;->sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 739
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    goto/16 :goto_0

    .line 713
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Z
    .end local v20    # "_arg6":[B
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 715
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/ISecImsMmTelEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/ISecImsMmTelEventListener;

    move-result-object v1

    .line 716
    .local v1, "_arg1":Lcom/android/ims/internal/ISecImsMmTelEventListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 717
    invoke-virtual {v8, v0, v1}, Lcom/android/ims/internal/IImsService$Stub;->setSecImsMmTelEventListener(ILcom/android/ims/internal/ISecImsMmTelEventListener;)V

    .line 718
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    goto/16 :goto_0

    .line 703
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/ims/internal/ISecImsMmTelEventListener;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 704
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 705
    invoke-virtual {v8, v0}, Lcom/android/ims/internal/IImsService$Stub;->getE911CallCount(I)I

    move-result v1

    .line 706
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    goto/16 :goto_0

    .line 692
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 694
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 695
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    invoke-virtual {v8, v0, v1}, Lcom/android/ims/internal/IImsService$Stub;->setTtyMode(II)V

    .line 697
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    goto/16 :goto_0

    .line 683
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 684
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 685
    invoke-virtual {v8, v0}, Lcom/android/ims/internal/IImsService$Stub;->triggerAutoConfigurationForApp(I)V

    .line 686
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    goto/16 :goto_0

    .line 673
    .end local v0    # "_arg0":I
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 674
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {v8, v0}, Lcom/android/ims/internal/IImsService$Stub;->isCmcEmergencyCallSupported(I)Z

    move-result v1

    .line 676
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 678
    goto/16 :goto_0

    .line 662
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 664
    .restart local v0    # "_arg0":I
    sget-object v1, Lcom/android/internal/telephony/PublishDialog;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PublishDialog;

    .line 665
    .local v1, "_arg1":Lcom/android/internal/telephony/PublishDialog;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    invoke-virtual {v8, v0, v1}, Lcom/android/ims/internal/IImsService$Stub;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V

    .line 667
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    goto/16 :goto_0

    .line 650
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/telephony/PublishDialog;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 654
    invoke-virtual {v8, v0, v1}, Lcom/android/ims/internal/IImsService$Stub;->getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 655
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 657
    goto/16 :goto_0

    .line 639
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 641
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 642
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 643
    invoke-virtual {v8, v0, v1}, Lcom/android/ims/internal/IImsService$Stub;->setVideoCrtAudio(IZ)V

    .line 644
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    goto/16 :goto_0

    .line 631
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsService$Stub;->stopLocalRingBackTone()I

    move-result v0

    .line 632
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    goto/16 :goto_0

    .line 618
    .end local v0    # "_result":I
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 620
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 622
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 623
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 624
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/ims/internal/IImsService$Stub;->startLocalRingBackTone(III)I

    move-result v3

    .line 625
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    goto/16 :goto_0

    .line 607
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 609
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 610
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 611
    invoke-virtual {v8, v0, v1}, Lcom/android/ims/internal/IImsService$Stub;->changeAudioPath(II)V

    .line 612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    goto/16 :goto_0

    .line 597
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 598
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-virtual {v8, v0}, Lcom/android/ims/internal/IImsService$Stub;->getRegistration(I)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v1

    .line 600
    .local v1, "_result":Landroid/telephony/ims/aidl/IImsRegistration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 602
    goto/16 :goto_0

    .line 587
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/telephony/ims/aidl/IImsRegistration;
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 588
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    invoke-virtual {v8, v0}, Lcom/android/ims/internal/IImsService$Stub;->getMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v1

    .line 590
    .local v1, "_result":Lcom/android/ims/internal/IImsMultiEndpoint;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 592
    goto/16 :goto_0

    .line 574
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Lcom/android/ims/internal/IImsMultiEndpoint;
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 576
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 578
    .local v1, "_arg1":I
    sget-object v2, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 579
    .local v2, "_arg2":Landroid/os/Message;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 580
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/ims/internal/IImsService$Stub;->setUiTTYMode(IILandroid/os/Message;)V

    .line 581
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    goto/16 :goto_0

    .line 564
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Message;
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 565
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 566
    invoke-virtual {v8, v0}, Lcom/android/ims/internal/IImsService$Stub;->getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;

    move-result-object v1

    .line 567
    .local v1, "_result":Lcom/android/ims/internal/IImsEcbm;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 569
    goto/16 :goto_0

    .line 555
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Lcom/android/ims/internal/IImsEcbm;
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 556
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 557
    invoke-virtual {v8, v0}, Lcom/android/ims/internal/IImsService$Stub;->turnOffIms(I)V

    .line 558
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    goto/16 :goto_0

    .line 546
    .end local v0    # "_arg0":I
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 547
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    invoke-virtual {v8, v0}, Lcom/android/ims/internal/IImsService$Stub;->turnOnIms(I)V

    .line 549
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    goto/16 :goto_0

    .line 536
    .end local v0    # "_arg0":I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 537
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-virtual {v8, v0}, Lcom/android/ims/internal/IImsService$Stub;->getConfig(I)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v1

    .line 539
    .local v1, "_result":Landroid/telephony/ims/aidl/IImsConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 541
    goto/16 :goto_0

    .line 526
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/telephony/ims/aidl/IImsConfig;
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 527
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {v8, v0}, Lcom/android/ims/internal/IImsService$Stub;->getUtInterface(I)Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    .line 529
    .local v1, "_result":Lcom/android/ims/internal/IImsUt;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 531
    goto/16 :goto_0

    .line 514
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Lcom/android/ims/internal/IImsUt;
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 516
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    invoke-virtual {v8, v0, v1}, Lcom/android/ims/internal/IImsService$Stub;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 519
    .local v2, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 521
    goto/16 :goto_0

    .line 500
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 502
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    .line 504
    .local v1, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v2

    .line 505
    .local v2, "_arg2":Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 506
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/ims/internal/IImsService$Stub;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 507
    .local v3, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 509
    goto/16 :goto_0

    .line 486
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    .end local v2    # "_arg2":Lcom/android/ims/internal/IImsCallSessionListener;
    .end local v3    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 488
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 490
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 491
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/ims/internal/IImsService$Stub;->createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    .line 493
    .local v3, "_result":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 495
    goto/16 :goto_0

    .line 473
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 475
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 477
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v2

    .line 478
    .local v2, "_arg2":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/ims/internal/IImsService$Stub;->addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    goto/16 :goto_0

    .line 462
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/android/ims/internal/IImsRegistrationListener;
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 464
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v1

    .line 465
    .local v1, "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    invoke-virtual {v8, v0, v1}, Lcom/android/ims/internal/IImsService$Stub;->setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    goto :goto_0

    .line 452
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 453
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {v8, v0}, Lcom/android/ims/internal/IImsService$Stub;->isOpened(I)Z

    move-result v1

    .line 455
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 457
    goto :goto_0

    .line 438
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 440
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 442
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 443
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/ims/internal/IImsService$Stub;->isConnected(III)Z

    move-result v3

    .line 445
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 447
    goto :goto_0

    .line 429
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 430
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 431
    invoke-virtual {v8, v0}, Lcom/android/ims/internal/IImsService$Stub;->close(I)V

    .line 432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    goto :goto_0

    .line 413
    .end local v0    # "_arg0":I
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 415
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 417
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 419
    .local v2, "_arg2":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v3

    .line 420
    .local v3, "_arg3":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/ims/internal/IImsService$Stub;->open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v4

    .line 422
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    nop

    .line 891
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/app/PendingIntent;
    .end local v3    # "_arg3":Lcom/android/ims/internal/IImsRegistrationListener;
    .end local v4    # "_result":I
    :goto_0
    return v13

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
