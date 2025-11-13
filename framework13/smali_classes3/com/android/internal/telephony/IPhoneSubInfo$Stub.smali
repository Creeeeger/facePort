.class public abstract Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.super Landroid/os/Binder;
.source "IPhoneSubInfo.java"

# interfaces
.implements Lcom/android/internal/telephony/IPhoneSubInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IPhoneSubInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IPhoneSubInfo"

.field static final blacklist TRANSACTION_clearMwiNotificationAndVoicemailCount:I = 0x2c

.field static final blacklist TRANSACTION_getBtid:I = 0x29

.field static final greylist-max-o TRANSACTION_getCarrierInfoForImsiEncryption:I = 0x17

.field static final greylist TRANSACTION_getDeviceId:I = 0x1

.field static final greylist-max-o TRANSACTION_getDeviceIdForPhone:I = 0x4

.field static final blacklist TRANSACTION_getDeviceIdWithFeature:I = 0x2

.field static final greylist-max-o TRANSACTION_getDeviceSvn:I = 0x6

.field static final greylist-max-o TRANSACTION_getDeviceSvnUsingSubId:I = 0x7

.field static final greylist-max-o TRANSACTION_getGroupIdLevel1ForSubscriber:I = 0xb

.field static final blacklist TRANSACTION_getGroupIdLevel2ForSubscriber:I = 0x2b

.field static final blacklist TRANSACTION_getHomePlmns:I = 0x22

.field static final greylist-max-o TRANSACTION_getIccSerialNumber:I = 0xc

.field static final greylist-max-o TRANSACTION_getIccSerialNumberForSubscriber:I = 0xe

.field static final blacklist TRANSACTION_getIccSerialNumberWithFeature:I = 0xd

.field static final greylist-max-o TRANSACTION_getIccSimChallengeResponse:I = 0x21

.field static final greylist-max-o TRANSACTION_getImeiForSubscriber:I = 0x5

.field static final greylist-max-o TRANSACTION_getIsimDomain:I = 0x1d

.field static final greylist-max-o TRANSACTION_getIsimImpi:I = 0x1c

.field static final greylist-max-o TRANSACTION_getIsimImpu:I = 0x1e

.field static final greylist-max-o TRANSACTION_getIsimIst:I = 0x1f

.field static final greylist-max-o TRANSACTION_getIsimPcscf:I = 0x20

.field static final blacklist TRANSACTION_getKeyLifetime:I = 0x2a

.field static final greylist-max-o TRANSACTION_getLine1AlphaTag:I = 0x11

.field static final greylist-max-o TRANSACTION_getLine1AlphaTagForSubscriber:I = 0x12

.field static final greylist-max-o TRANSACTION_getLine1Number:I = 0xf

.field static final greylist-max-o TRANSACTION_getLine1NumberForSubscriber:I = 0x10

.field static final greylist-max-o TRANSACTION_getMsisdn:I = 0x13

.field static final greylist-max-o TRANSACTION_getMsisdnForSubscriber:I = 0x14

.field static final greylist-max-o TRANSACTION_getNaiForSubscriber:I = 0x3

.field static final blacklist TRANSACTION_getPsismsc:I = 0x24

.field static final blacklist TRANSACTION_getPsismscWithPhoneId:I = 0x25

.field static final blacklist TRANSACTION_getRand:I = 0x28

.field static final greylist-max-o TRANSACTION_getSubscriberId:I = 0x8

.field static final greylist-max-o TRANSACTION_getSubscriberIdForSubscriber:I = 0xa

.field static final blacklist TRANSACTION_getSubscriberIdForUiccAppType:I = 0x23

.field static final blacklist TRANSACTION_getSubscriberIdWithFeature:I = 0x9

.field static final greylist-max-o TRANSACTION_getVoiceMailAlphaTag:I = 0x1a

.field static final greylist-max-o TRANSACTION_getVoiceMailAlphaTagForSubscriber:I = 0x1b

.field static final greylist-max-o TRANSACTION_getVoiceMailNumber:I = 0x15

.field static final greylist-max-o TRANSACTION_getVoiceMailNumberForSubscriber:I = 0x16

.field static final blacklist TRANSACTION_isGbaSupported:I = 0x26

.field static final blacklist TRANSACTION_isGbaSupportedForSubscriber:I = 0x27

.field static final greylist-max-o TRANSACTION_resetCarrierKeysForImsiEncryption:I = 0x19

.field static final greylist-max-o TRANSACTION_setCarrierInfoForImsiEncryption:I = 0x18

.field static final blacklist TRANSACTION_setPcoValue:I = 0x2d


# direct methods
.method public constructor greylist-max-p <init>()V
    .locals 1

    .line 303
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 304
    const-string v0, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 312
    if-nez p0, :cond_0

    .line 313
    const/4 v0, 0x0

    return-object v0

    .line 315
    :cond_0
    const-string v0, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 316
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IPhoneSubInfo;

    if-eqz v1, :cond_1

    .line 317
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/IPhoneSubInfo;

    return-object v1

    .line 319
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 328
    packed-switch p0, :pswitch_data_0

    .line 512
    const/4 v0, 0x0

    return-object v0

    .line 508
    :pswitch_0
    const-string/jumbo v0, "setPcoValue"

    return-object v0

    .line 504
    :pswitch_1
    const-string v0, "clearMwiNotificationAndVoicemailCount"

    return-object v0

    .line 500
    :pswitch_2
    const-string v0, "getGroupIdLevel2ForSubscriber"

    return-object v0

    .line 496
    :pswitch_3
    const-string/jumbo v0, "getKeyLifetime"

    return-object v0

    .line 492
    :pswitch_4
    const-string v0, "getBtid"

    return-object v0

    .line 488
    :pswitch_5
    const-string/jumbo v0, "getRand"

    return-object v0

    .line 484
    :pswitch_6
    const-string/jumbo v0, "isGbaSupportedForSubscriber"

    return-object v0

    .line 480
    :pswitch_7
    const-string/jumbo v0, "isGbaSupported"

    return-object v0

    .line 476
    :pswitch_8
    const-string/jumbo v0, "getPsismscWithPhoneId"

    return-object v0

    .line 472
    :pswitch_9
    const-string/jumbo v0, "getPsismsc"

    return-object v0

    .line 468
    :pswitch_a
    const-string/jumbo v0, "getSubscriberIdForUiccAppType"

    return-object v0

    .line 464
    :pswitch_b
    const-string v0, "getHomePlmns"

    return-object v0

    .line 460
    :pswitch_c
    const-string v0, "getIccSimChallengeResponse"

    return-object v0

    .line 456
    :pswitch_d
    const-string/jumbo v0, "getIsimPcscf"

    return-object v0

    .line 452
    :pswitch_e
    const-string/jumbo v0, "getIsimIst"

    return-object v0

    .line 448
    :pswitch_f
    const-string/jumbo v0, "getIsimImpu"

    return-object v0

    .line 444
    :pswitch_10
    const-string/jumbo v0, "getIsimDomain"

    return-object v0

    .line 440
    :pswitch_11
    const-string/jumbo v0, "getIsimImpi"

    return-object v0

    .line 436
    :pswitch_12
    const-string/jumbo v0, "getVoiceMailAlphaTagForSubscriber"

    return-object v0

    .line 432
    :pswitch_13
    const-string/jumbo v0, "getVoiceMailAlphaTag"

    return-object v0

    .line 428
    :pswitch_14
    const-string/jumbo v0, "resetCarrierKeysForImsiEncryption"

    return-object v0

    .line 424
    :pswitch_15
    const-string/jumbo v0, "setCarrierInfoForImsiEncryption"

    return-object v0

    .line 420
    :pswitch_16
    const-string v0, "getCarrierInfoForImsiEncryption"

    return-object v0

    .line 416
    :pswitch_17
    const-string/jumbo v0, "getVoiceMailNumberForSubscriber"

    return-object v0

    .line 412
    :pswitch_18
    const-string/jumbo v0, "getVoiceMailNumber"

    return-object v0

    .line 408
    :pswitch_19
    const-string/jumbo v0, "getMsisdnForSubscriber"

    return-object v0

    .line 404
    :pswitch_1a
    const-string/jumbo v0, "getMsisdn"

    return-object v0

    .line 400
    :pswitch_1b
    const-string/jumbo v0, "getLine1AlphaTagForSubscriber"

    return-object v0

    .line 396
    :pswitch_1c
    const-string/jumbo v0, "getLine1AlphaTag"

    return-object v0

    .line 392
    :pswitch_1d
    const-string/jumbo v0, "getLine1NumberForSubscriber"

    return-object v0

    .line 388
    :pswitch_1e
    const-string/jumbo v0, "getLine1Number"

    return-object v0

    .line 384
    :pswitch_1f
    const-string v0, "getIccSerialNumberForSubscriber"

    return-object v0

    .line 380
    :pswitch_20
    const-string v0, "getIccSerialNumberWithFeature"

    return-object v0

    .line 376
    :pswitch_21
    const-string v0, "getIccSerialNumber"

    return-object v0

    .line 372
    :pswitch_22
    const-string v0, "getGroupIdLevel1ForSubscriber"

    return-object v0

    .line 368
    :pswitch_23
    const-string/jumbo v0, "getSubscriberIdForSubscriber"

    return-object v0

    .line 364
    :pswitch_24
    const-string/jumbo v0, "getSubscriberIdWithFeature"

    return-object v0

    .line 360
    :pswitch_25
    const-string/jumbo v0, "getSubscriberId"

    return-object v0

    .line 356
    :pswitch_26
    const-string v0, "getDeviceSvnUsingSubId"

    return-object v0

    .line 352
    :pswitch_27
    const-string v0, "getDeviceSvn"

    return-object v0

    .line 348
    :pswitch_28
    const-string/jumbo v0, "getImeiForSubscriber"

    return-object v0

    .line 344
    :pswitch_29
    const-string v0, "getDeviceIdForPhone"

    return-object v0

    .line 340
    :pswitch_2a
    const-string/jumbo v0, "getNaiForSubscriber"

    return-object v0

    .line 336
    :pswitch_2b
    const-string v0, "getDeviceIdWithFeature"

    return-object v0

    .line 332
    :pswitch_2c
    const-string v0, "getDeviceId"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 323
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2108
    const/16 v0, 0x2c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 519
    invoke-static {p1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 523
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "com.android.internal.telephony.IPhoneSubInfo"

    .line 524
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 525
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 535
    packed-switch v8, :pswitch_data_1

    .line 1084
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 531
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 532
    return v12

    .line 1072
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1074
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1076
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1077
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1078
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->setPcoValue(IILjava/lang/String;)V

    .line 1079
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1080
    goto/16 :goto_0

    .line 1061
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1063
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1064
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1065
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->clearMwiNotificationAndVoicemailCount(ILjava/lang/String;)V

    .line 1066
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    goto/16 :goto_0

    .line 1047
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1049
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1051
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1052
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1053
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getGroupIdLevel2ForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1054
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1055
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1056
    goto/16 :goto_0

    .line 1037
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1038
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1039
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getKeyLifetime(I)Ljava/lang/String;

    move-result-object v1

    .line 1040
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1042
    goto/16 :goto_0

    .line 1027
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1028
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1029
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getBtid(I)Ljava/lang/String;

    move-result-object v1

    .line 1030
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1032
    goto/16 :goto_0

    .line 1017
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1018
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1019
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getRand(I)[B

    move-result-object v1

    .line 1020
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1022
    goto/16 :goto_0

    .line 1007
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[B
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1008
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1009
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->isGbaSupportedForSubscriber(I)Z

    move-result v1

    .line 1010
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1012
    goto/16 :goto_0

    .line 999
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->isGbaSupported()Z

    move-result v0

    .line 1000
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1002
    goto/16 :goto_0

    .line 988
    .end local v0    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 990
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 991
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 992
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getPsismscWithPhoneId(ILjava/lang/String;)[B

    move-result-object v2

    .line 993
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 995
    goto/16 :goto_0

    .line 978
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":[B
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 979
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 980
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getPsismsc(Ljava/lang/String;)[B

    move-result-object v1

    .line 981
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 983
    goto/16 :goto_0

    .line 964
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[B
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 966
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 968
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 969
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 970
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberIdForUiccAppType(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 971
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 973
    goto/16 :goto_0

    .line 954
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 955
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 956
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getHomePlmns(I)[Ljava/lang/String;

    move-result-object v1

    .line 957
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 959
    goto/16 :goto_0

    .line 934
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 936
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 938
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 940
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 942
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 944
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 945
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 946
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSimChallengeResponse(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 947
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 949
    goto/16 :goto_0

    .line 924
    .end local v0    # "_result":Ljava/lang/String;
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 925
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 926
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimPcscf(I)[Ljava/lang/String;

    move-result-object v1

    .line 927
    .restart local v1    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 929
    goto/16 :goto_0

    .line 914
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 915
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 916
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimIst(I)Ljava/lang/String;

    move-result-object v1

    .line 917
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 919
    goto/16 :goto_0

    .line 904
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 905
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 906
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object v1

    .line 907
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 909
    goto/16 :goto_0

    .line 894
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 895
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 896
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v1

    .line 897
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 899
    goto/16 :goto_0

    .line 884
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 885
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 886
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v1

    .line 887
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 889
    goto/16 :goto_0

    .line 870
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 872
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 874
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 875
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 876
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 877
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 879
    goto/16 :goto_0

    .line 858
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 861
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 862
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailAlphaTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 863
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 865
    goto/16 :goto_0

    .line 847
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 849
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 850
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 851
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->resetCarrierKeysForImsiEncryption(ILjava/lang/String;)V

    .line 852
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    goto/16 :goto_0

    .line 834
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 836
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 838
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/telephony/ImsiEncryptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ImsiEncryptionInfo;

    .line 839
    .local v2, "_arg2":Landroid/telephony/ImsiEncryptionInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 840
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->setCarrierInfoForImsiEncryption(ILjava/lang/String;Landroid/telephony/ImsiEncryptionInfo;)V

    .line 841
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    goto/16 :goto_0

    .line 820
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/telephony/ImsiEncryptionInfo;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 822
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 824
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 825
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 826
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getCarrierInfoForImsiEncryption(IILjava/lang/String;)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object v3

    .line 827
    .local v3, "_result":Landroid/telephony/ImsiEncryptionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    invoke-virtual {v10, v3, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 829
    goto/16 :goto_0

    .line 806
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/telephony/ImsiEncryptionInfo;
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 808
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 810
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 811
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 812
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 813
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 815
    goto/16 :goto_0

    .line 794
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 797
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 799
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 801
    goto/16 :goto_0

    .line 780
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 782
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 784
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 785
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 786
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getMsisdnForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 787
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 789
    goto/16 :goto_0

    .line 768
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 771
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 772
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getMsisdn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 773
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 775
    goto/16 :goto_0

    .line 754
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 756
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 758
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 759
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1AlphaTagForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 761
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 763
    goto/16 :goto_0

    .line 742
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 745
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 746
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1AlphaTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 747
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 749
    goto/16 :goto_0

    .line 728
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 730
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 732
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 733
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 734
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1NumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 735
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 737
    goto/16 :goto_0

    .line 716
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 718
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 719
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 720
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1Number(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 721
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 723
    goto/16 :goto_0

    .line 702
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 704
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 706
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 707
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 708
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSerialNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 709
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 711
    goto/16 :goto_0

    .line 690
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 693
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 694
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSerialNumberWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 695
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 697
    goto/16 :goto_0

    .line 680
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 681
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 682
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 683
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 685
    goto/16 :goto_0

    .line 666
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 668
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 671
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 672
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getGroupIdLevel1ForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 673
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 675
    goto/16 :goto_0

    .line 652
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 654
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 656
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 657
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 658
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberIdForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 659
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 661
    goto/16 :goto_0

    .line 640
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 643
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 644
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberIdWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 645
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 647
    goto/16 :goto_0

    .line 630
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 631
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 632
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 633
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 635
    goto/16 :goto_0

    .line 616
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 618
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 621
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 622
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceSvnUsingSubId(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 623
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 625
    goto/16 :goto_0

    .line 604
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 607
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 608
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceSvn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 609
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 611
    goto/16 :goto_0

    .line 590
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 592
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 594
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 595
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 596
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getImeiForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 597
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 599
    goto :goto_0

    .line 576
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 578
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 580
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 581
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceIdForPhone(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 583
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 585
    goto :goto_0

    .line 562
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 564
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 566
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 567
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 568
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getNaiForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 569
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 571
    goto :goto_0

    .line 550
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 553
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceIdWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 557
    goto :goto_0

    .line 540
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 541
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 545
    nop

    .line 1087
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :goto_0
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
