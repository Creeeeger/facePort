.class public abstract Lcom/android/ims/internal/IImsMMTelFeature$Stub;
.super Landroid/os/Binder;
.source "IImsMMTelFeature.java"

# interfaces
.implements Lcom/android/ims/internal/IImsMMTelFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsMMTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsMMTelFeature"

.field static final blacklist TRANSACTION_acknowledgeSms:I = 0x1d

.field static final blacklist TRANSACTION_acknowledgeSmsReport:I = 0x1e

.field static final blacklist TRANSACTION_acknowledgeSmsWithPdu:I = 0x22

.field static final greylist-max-o TRANSACTION_addRegistrationListener:I = 0x6

.field static final blacklist TRANSACTION_changeAudioPath:I = 0x12

.field static final greylist-max-o TRANSACTION_createCallProfile:I = 0x8

.field static final greylist-max-o TRANSACTION_createCallSession:I = 0x9

.field static final greylist-max-o TRANSACTION_endSession:I = 0x2

.field static final greylist-max-o TRANSACTION_getConfigInterface:I = 0xc

.field static final greylist-max-o TRANSACTION_getEcbmInterface:I = 0xf

.field static final greylist-max-o TRANSACTION_getFeatureStatus:I = 0x5

.field static final greylist-max-o TRANSACTION_getMultiEndpointInterface:I = 0x11

.field static final greylist-max-o TRANSACTION_getPendingCallSession:I = 0xa

.field static final blacklist TRANSACTION_getSmsFormat:I = 0x21

.field static final blacklist TRANSACTION_getTrn:I = 0x16

.field static final greylist-max-o TRANSACTION_getUtInterface:I = 0xb

.field static final blacklist TRANSACTION_isCmcEmergencyCallSupported:I = 0x18

.field static final greylist-max-o TRANSACTION_isConnected:I = 0x3

.field static final greylist-max-o TRANSACTION_isOpened:I = 0x4

.field static final blacklist TRANSACTION_onSmsReady:I = 0x1f

.field static final greylist-max-o TRANSACTION_removeRegistrationListener:I = 0x7

.field static final blacklist TRANSACTION_sendPublishDialog:I = 0x17

.field static final blacklist TRANSACTION_sendRpSmma:I = 0x20

.field static final blacklist TRANSACTION_sendSms:I = 0x1b

.field static final blacklist TRANSACTION_setRetryCount:I = 0x1c

.field static final blacklist TRANSACTION_setSecImsMmTelEventListener:I = 0x19

.field static final blacklist TRANSACTION_setSmsListener:I = 0x1a

.field static final greylist-max-o TRANSACTION_setUiTTYMode:I = 0x10

.field static final blacklist TRANSACTION_setVideoCrtAudio:I = 0x15

.field static final blacklist TRANSACTION_startLocalRingBackTone:I = 0x13

.field static final greylist-max-o TRANSACTION_startSession:I = 0x1

.field static final blacklist TRANSACTION_stopLocalRingBackTone:I = 0x14

.field static final greylist-max-o TRANSACTION_turnOffIms:I = 0xe

.field static final greylist-max-o TRANSACTION_turnOnIms:I = 0xd


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 147
    const-string v0, "com.android.ims.internal.IImsMMTelFeature"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsMMTelFeature;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 155
    if-nez p0, :cond_0

    .line 156
    const/4 v0, 0x0

    return-object v0

    .line 158
    :cond_0
    const-string v0, "com.android.ims.internal.IImsMMTelFeature"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 159
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsMMTelFeature;

    if-eqz v1, :cond_1

    .line 160
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsMMTelFeature;

    return-object v1

    .line 162
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 171
    packed-switch p0, :pswitch_data_0

    .line 311
    const/4 v0, 0x0

    return-object v0

    .line 307
    :pswitch_0
    const-string v0, "acknowledgeSmsWithPdu"

    return-object v0

    .line 303
    :pswitch_1
    const-string v0, "getSmsFormat"

    return-object v0

    .line 299
    :pswitch_2
    const-string/jumbo v0, "sendRpSmma"

    return-object v0

    .line 295
    :pswitch_3
    const-string/jumbo v0, "onSmsReady"

    return-object v0

    .line 291
    :pswitch_4
    const-string v0, "acknowledgeSmsReport"

    return-object v0

    .line 287
    :pswitch_5
    const-string v0, "acknowledgeSms"

    return-object v0

    .line 283
    :pswitch_6
    const-string/jumbo v0, "setRetryCount"

    return-object v0

    .line 279
    :pswitch_7
    const-string/jumbo v0, "sendSms"

    return-object v0

    .line 275
    :pswitch_8
    const-string/jumbo v0, "setSmsListener"

    return-object v0

    .line 271
    :pswitch_9
    const-string/jumbo v0, "setSecImsMmTelEventListener"

    return-object v0

    .line 267
    :pswitch_a
    const-string v0, "isCmcEmergencyCallSupported"

    return-object v0

    .line 263
    :pswitch_b
    const-string/jumbo v0, "sendPublishDialog"

    return-object v0

    .line 259
    :pswitch_c
    const-string v0, "getTrn"

    return-object v0

    .line 255
    :pswitch_d
    const-string/jumbo v0, "setVideoCrtAudio"

    return-object v0

    .line 251
    :pswitch_e
    const-string/jumbo v0, "stopLocalRingBackTone"

    return-object v0

    .line 247
    :pswitch_f
    const-string/jumbo v0, "startLocalRingBackTone"

    return-object v0

    .line 243
    :pswitch_10
    const-string v0, "changeAudioPath"

    return-object v0

    .line 239
    :pswitch_11
    const-string v0, "getMultiEndpointInterface"

    return-object v0

    .line 235
    :pswitch_12
    const-string/jumbo v0, "setUiTTYMode"

    return-object v0

    .line 231
    :pswitch_13
    const-string v0, "getEcbmInterface"

    return-object v0

    .line 227
    :pswitch_14
    const-string/jumbo v0, "turnOffIms"

    return-object v0

    .line 223
    :pswitch_15
    const-string/jumbo v0, "turnOnIms"

    return-object v0

    .line 219
    :pswitch_16
    const-string v0, "getConfigInterface"

    return-object v0

    .line 215
    :pswitch_17
    const-string v0, "getUtInterface"

    return-object v0

    .line 211
    :pswitch_18
    const-string v0, "getPendingCallSession"

    return-object v0

    .line 207
    :pswitch_19
    const-string v0, "createCallSession"

    return-object v0

    .line 203
    :pswitch_1a
    const-string v0, "createCallProfile"

    return-object v0

    .line 199
    :pswitch_1b
    const-string/jumbo v0, "removeRegistrationListener"

    return-object v0

    .line 195
    :pswitch_1c
    const-string v0, "addRegistrationListener"

    return-object v0

    .line 191
    :pswitch_1d
    const-string v0, "getFeatureStatus"

    return-object v0

    .line 187
    :pswitch_1e
    const-string v0, "isOpened"

    return-object v0

    .line 183
    :pswitch_1f
    const-string v0, "isConnected"

    return-object v0

    .line 179
    :pswitch_20
    const-string v0, "endSession"

    return-object v0

    .line 175
    :pswitch_21
    const-string/jumbo v0, "startSession"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 166
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1344
    const/16 v0, 0x21

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 318
    invoke-static {p1}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 322
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "com.android.ims.internal.IImsMMTelFeature"

    .line 323
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 324
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 334
    packed-switch v9, :pswitch_data_1

    .line 699
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 330
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    return v13

    .line 685
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 687
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 689
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 691
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 692
    .local v3, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 693
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->acknowledgeSmsWithPdu(III[B)V

    .line 694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    goto/16 :goto_0

    .line 675
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":[B
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 676
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 677
    invoke-virtual {v8, v0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->getSmsFormat(I)Ljava/lang/String;

    move-result-object v1

    .line 678
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 680
    goto/16 :goto_0

    .line 664
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 666
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 667
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 668
    invoke-virtual {v8, v0, v1}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->sendRpSmma(ILjava/lang/String;)V

    .line 669
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    goto/16 :goto_0

    .line 655
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 656
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 657
    invoke-virtual {v8, v0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->onSmsReady(I)V

    .line 658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    goto/16 :goto_0

    .line 640
    .end local v0    # "_arg0":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 642
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 644
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 646
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 647
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 648
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->acknowledgeSmsReport(IIII)V

    .line 649
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    goto/16 :goto_0

    .line 625
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 627
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 629
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 631
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 632
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 633
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->acknowledgeSms(IIII)V

    .line 634
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    goto/16 :goto_0

    .line 612
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 614
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 616
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 617
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->setRetryCount(III)V

    .line 619
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    goto/16 :goto_0

    .line 591
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 593
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 595
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 597
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 599
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 601
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 603
    .local v19, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v20

    .line 604
    .local v20, "_arg6":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 606
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    goto/16 :goto_0

    .line 580
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Z
    .end local v20    # "_arg6":[B
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 582
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsSmsListener;

    move-result-object v1

    .line 583
    .local v1, "_arg1":Landroid/telephony/ims/aidl/IImsSmsListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    invoke-virtual {v8, v0, v1}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->setSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 585
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    goto/16 :goto_0

    .line 569
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/ims/aidl/IImsSmsListener;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 571
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/ISecImsMmTelEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/ISecImsMmTelEventListener;

    move-result-object v1

    .line 572
    .local v1, "_arg1":Lcom/android/ims/internal/ISecImsMmTelEventListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 573
    invoke-virtual {v8, v0, v1}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->setSecImsMmTelEventListener(ILcom/android/ims/internal/ISecImsMmTelEventListener;)V

    .line 574
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    goto/16 :goto_0

    .line 559
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/ims/internal/ISecImsMmTelEventListener;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 560
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 561
    invoke-virtual {v8, v0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->isCmcEmergencyCallSupported(I)Z

    move-result v1

    .line 562
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 564
    goto/16 :goto_0

    .line 548
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 550
    .restart local v0    # "_arg0":I
    sget-object v1, Lcom/android/internal/telephony/PublishDialog;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PublishDialog;

    .line 551
    .local v1, "_arg1":Lcom/android/internal/telephony/PublishDialog;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 552
    invoke-virtual {v8, v0, v1}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V

    .line 553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    goto/16 :goto_0

    .line 536
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/telephony/PublishDialog;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 540
    invoke-virtual {v8, v0, v1}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 543
    goto/16 :goto_0

    .line 525
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 527
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 528
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    invoke-virtual {v8, v0, v1}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->setVideoCrtAudio(IZ)V

    .line 530
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    goto/16 :goto_0

    .line 517
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->stopLocalRingBackTone()I

    move-result v0

    .line 518
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    goto/16 :goto_0

    .line 504
    .end local v0    # "_result":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 506
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 508
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 509
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->startLocalRingBackTone(III)I

    move-result v3

    .line 511
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    goto/16 :goto_0

    .line 493
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 495
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 496
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 497
    invoke-virtual {v8, v0, v1}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->changeAudioPath(II)V

    .line 498
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    goto/16 :goto_0

    .line 485
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v0

    .line 486
    .local v0, "_result":Lcom/android/ims/internal/IImsMultiEndpoint;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 488
    goto/16 :goto_0

    .line 475
    .end local v0    # "_result":Lcom/android/ims/internal/IImsMultiEndpoint;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 477
    .local v0, "_arg0":I
    sget-object v1, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 478
    .local v1, "_arg1":Landroid/os/Message;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    invoke-virtual {v8, v0, v1}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->setUiTTYMode(ILandroid/os/Message;)V

    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    goto/16 :goto_0

    .line 467
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Message;
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v0

    .line 468
    .local v0, "_result":Lcom/android/ims/internal/IImsEcbm;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 470
    goto/16 :goto_0

    .line 461
    .end local v0    # "_result":Lcom/android/ims/internal/IImsEcbm;
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->turnOffIms()V

    .line 462
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    goto/16 :goto_0

    .line 455
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->turnOnIms()V

    .line 456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    goto/16 :goto_0

    .line 448
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object v0

    .line 449
    .local v0, "_result":Lcom/android/ims/internal/IImsConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 451
    goto/16 :goto_0

    .line 441
    .end local v0    # "_result":Lcom/android/ims/internal/IImsConfig;
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->getUtInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v0

    .line 442
    .local v0, "_result":Lcom/android/ims/internal/IImsUt;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 444
    goto/16 :goto_0

    .line 430
    .end local v0    # "_result":Lcom/android/ims/internal/IImsUt;
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 432
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    invoke-virtual {v8, v0, v1}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 435
    .local v2, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 437
    goto/16 :goto_0

    .line 418
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 420
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    .line 421
    .local v1, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {v8, v0, v1}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    .line 423
    .restart local v2    # "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 425
    goto/16 :goto_0

    .line 404
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    .end local v2    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 406
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 408
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 409
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 410
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    .line 411
    .local v3, "_result":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 413
    goto/16 :goto_0

    .line 395
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v0

    .line 396
    .local v0, "_arg0":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 397
    invoke-virtual {v8, v0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 398
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    goto :goto_0

    .line 386
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsRegistrationListener;
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v0

    .line 387
    .restart local v0    # "_arg0":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-virtual {v8, v0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 389
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    goto :goto_0

    .line 378
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsRegistrationListener;
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->getFeatureStatus()I

    move-result v0

    .line 379
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    goto :goto_0

    .line 371
    .end local v0    # "_result":I
    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->isOpened()Z

    move-result v0

    .line 372
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 374
    goto :goto_0

    .line 360
    .end local v0    # "_result":Z
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 362
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 363
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {v8, v0, v1}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->isConnected(II)Z

    move-result v2

    .line 365
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 367
    goto :goto_0

    .line 351
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 352
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {v8, v0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->endSession(I)V

    .line 354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    goto :goto_0

    .line 339
    .end local v0    # "_arg0":I
    :pswitch_22
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 341
    .local v0, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v1

    .line 342
    .local v1, "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {v8, v0, v1}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v2

    .line 344
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    nop

    .line 702
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v1    # "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    .end local v2    # "_result":I
    :goto_0
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
