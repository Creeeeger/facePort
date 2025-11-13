.class public abstract Lcom/samsung/android/bio/face/IFaceService$Stub;
.super Landroid/os/Binder;
.source "IFaceService.java"

# interfaces
.implements Lcom/samsung/android/bio/face/IFaceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/IFaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_authenticate:I = 0x1

.field static final blacklist TRANSACTION_cancelAuthentication:I = 0x2

.field static final blacklist TRANSACTION_cancelAuthenticationFromService:I = 0x1e

.field static final blacklist TRANSACTION_cancelEnrollment:I = 0x4

.field static final blacklist TRANSACTION_enroll:I = 0x3

.field static final blacklist TRANSACTION_getAuthenticatorId:I = 0xd

.field static final blacklist TRANSACTION_getEnrolledFaces:I = 0x7

.field static final blacklist TRANSACTION_getLockoutModeForUser:I = 0x1f

.field static final blacklist TRANSACTION_getRemainingLockoutTime:I = 0x20

.field static final blacklist TRANSACTION_getSecurityLevel:I = 0x1b

.field static final blacklist TRANSACTION_getTrustAppVersion:I = 0x19

.field static final blacklist TRANSACTION_hasDisabledFaces:I = 0xc

.field static final blacklist TRANSACTION_hasEnrolledFaces:I = 0xb

.field static final blacklist TRANSACTION_isEnrollSession:I = 0xe

.field static final blacklist TRANSACTION_isHardwareDetected:I = 0x8

.field static final blacklist TRANSACTION_isSessionClosed:I = 0x13

.field static final blacklist TRANSACTION_postEnroll:I = 0xa

.field static final blacklist TRANSACTION_preEnroll:I = 0x9

.field static final blacklist TRANSACTION_prepareForAuthentication:I = 0x1c

.field static final blacklist TRANSACTION_remove:I = 0x5

.field static final blacklist TRANSACTION_rename:I = 0x6

.field static final blacklist TRANSACTION_requestEnrollPause:I = 0x17

.field static final blacklist TRANSACTION_requestEnrollResume:I = 0x18

.field static final blacklist TRANSACTION_requestSessionClose:I = 0x12

.field static final blacklist TRANSACTION_requestSessionOpen:I = 0x11

.field static final blacklist TRANSACTION_resetAuthenticationTimeout:I = 0x16

.field static final blacklist TRANSACTION_resetTimeout:I = 0xf

.field static final blacklist TRANSACTION_setActiveUser:I = 0x10

.field static final blacklist TRANSACTION_startPreparedClient:I = 0x1d

.field static final blacklist TRANSACTION_updateSecureID:I = 0x15

.field static final blacklist TRANSACTION_updateSecureUserID:I = 0x14

.field static final blacklist TRANSACTION_updateTrustApp:I = 0x1a


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 168
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 169
    const-string v0, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/face/IFaceService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 177
    if-nez p0, :cond_0

    .line 178
    const/4 v0, 0x0

    return-object v0

    .line 180
    :cond_0
    const-string v0, "com.samsung.android.bio.face.IFaceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 181
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_1

    .line 182
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/bio/face/IFaceService;

    return-object v1

    .line 184
    :cond_1
    new-instance v1, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 193
    packed-switch p0, :pswitch_data_0

    .line 325
    const/4 v0, 0x0

    return-object v0

    .line 321
    :pswitch_0
    const-string v0, "getRemainingLockoutTime"

    return-object v0

    .line 317
    :pswitch_1
    const-string v0, "getLockoutModeForUser"

    return-object v0

    .line 313
    :pswitch_2
    const-string v0, "cancelAuthenticationFromService"

    return-object v0

    .line 309
    :pswitch_3
    const-string/jumbo v0, "startPreparedClient"

    return-object v0

    .line 305
    :pswitch_4
    const-string/jumbo v0, "prepareForAuthentication"

    return-object v0

    .line 301
    :pswitch_5
    const-string v0, "getSecurityLevel"

    return-object v0

    .line 297
    :pswitch_6
    const-string/jumbo v0, "updateTrustApp"

    return-object v0

    .line 293
    :pswitch_7
    const-string v0, "getTrustAppVersion"

    return-object v0

    .line 289
    :pswitch_8
    const-string/jumbo v0, "requestEnrollResume"

    return-object v0

    .line 285
    :pswitch_9
    const-string/jumbo v0, "requestEnrollPause"

    return-object v0

    .line 281
    :pswitch_a
    const-string/jumbo v0, "resetAuthenticationTimeout"

    return-object v0

    .line 277
    :pswitch_b
    const-string/jumbo v0, "updateSecureID"

    return-object v0

    .line 273
    :pswitch_c
    const-string/jumbo v0, "updateSecureUserID"

    return-object v0

    .line 269
    :pswitch_d
    const-string v0, "isSessionClosed"

    return-object v0

    .line 265
    :pswitch_e
    const-string/jumbo v0, "requestSessionClose"

    return-object v0

    .line 261
    :pswitch_f
    const-string/jumbo v0, "requestSessionOpen"

    return-object v0

    .line 257
    :pswitch_10
    const-string/jumbo v0, "setActiveUser"

    return-object v0

    .line 253
    :pswitch_11
    const-string/jumbo v0, "resetTimeout"

    return-object v0

    .line 249
    :pswitch_12
    const-string v0, "isEnrollSession"

    return-object v0

    .line 245
    :pswitch_13
    const-string v0, "getAuthenticatorId"

    return-object v0

    .line 241
    :pswitch_14
    const-string v0, "hasDisabledFaces"

    return-object v0

    .line 237
    :pswitch_15
    const-string v0, "hasEnrolledFaces"

    return-object v0

    .line 233
    :pswitch_16
    const-string/jumbo v0, "postEnroll"

    return-object v0

    .line 229
    :pswitch_17
    const-string/jumbo v0, "preEnroll"

    return-object v0

    .line 225
    :pswitch_18
    const-string v0, "isHardwareDetected"

    return-object v0

    .line 221
    :pswitch_19
    const-string v0, "getEnrolledFaces"

    return-object v0

    .line 217
    :pswitch_1a
    const-string/jumbo v0, "rename"

    return-object v0

    .line 213
    :pswitch_1b
    const-string/jumbo v0, "remove"

    return-object v0

    .line 209
    :pswitch_1c
    const-string v0, "cancelEnrollment"

    return-object v0

    .line 205
    :pswitch_1d
    const-string v0, "enroll"

    return-object v0

    .line 201
    :pswitch_1e
    const-string v0, "cancelAuthentication"

    return-object v0

    .line 197
    :pswitch_1f
    const-string v0, "authenticate"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 188
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1381
    const/16 v0, 0x1f

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 332
    invoke-static {p1}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 32
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    const-string v11, "com.samsung.android.bio.face.IFaceService"

    .line 337
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v14, v10, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    .line 338
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 348
    packed-switch v14, :pswitch_data_1

    .line 726
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 344
    :pswitch_0
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    return v10

    .line 717
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 718
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 719
    invoke-virtual {v15, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getRemainingLockoutTime(I)I

    move-result v1

    .line 720
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 707
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 708
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 709
    invoke-virtual {v15, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getLockoutModeForUser(I)I

    move-result v1

    .line 710
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 694
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 696
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 698
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 699
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 700
    invoke-virtual {v15, v0, v1, v2}, Lcom/samsung/android/bio/face/IFaceService$Stub;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 701
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 685
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 686
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 687
    invoke-virtual {v15, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->startPreparedClient(I)V

    .line 688
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 662
    .end local v0    # "_arg0":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 664
    .local v16, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 666
    .local v17, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 668
    .local v18, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 670
    .local v20, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v21

    .line 672
    .local v21, "_arg4":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 674
    .local v22, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 676
    .local v23, "_arg6":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Bundle;

    .line 677
    .local v24, "_arg7":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 678
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-wide/from16 v3, v18

    move/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/bio/face/IFaceService$Stub;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 679
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 652
    .end local v16    # "_arg0":Z
    .end local v17    # "_arg1":Landroid/os/IBinder;
    .end local v18    # "_arg2":J
    .end local v20    # "_arg3":I
    .end local v21    # "_arg4":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .end local v22    # "_arg5":Ljava/lang/String;
    .end local v23    # "_arg6":I
    .end local v24    # "_arg7":Landroid/os/Bundle;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 653
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 654
    invoke-virtual {v15, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getSecurityLevel(Z)I

    move-result v1

    .line 655
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 635
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 637
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 639
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 641
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v9

    .line 643
    .local v9, "_arg3":Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 644
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/IFaceService$Stub;->updateTrustApp(Landroid/os/IBinder;Ljava/lang/String;ILcom/samsung/android/bio/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 646
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 627
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getTrustAppVersion()Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 630
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 621
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->requestEnrollResume()V

    .line 622
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 615
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->requestEnrollPause()V

    .line 616
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 608
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->resetAuthenticationTimeout()Z

    move-result v0

    .line 609
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 611
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 599
    .end local v0    # "_result":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 600
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 601
    invoke-virtual {v15, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->updateSecureID([B)Z

    move-result v1

    .line 602
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 604
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 589
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":Z
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 590
    .restart local v0    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 591
    invoke-virtual {v15, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->updateSecureUserID([B)Z

    move-result v1

    .line 592
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 594
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 581
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":Z
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->isSessionClosed()Z

    move-result v0

    .line 582
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 584
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 575
    .end local v0    # "_result":Z
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->requestSessionClose()V

    .line 576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 569
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->requestSessionOpen()V

    .line 570
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 561
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 562
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 563
    invoke-virtual {v15, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->setActiveUser(I)V

    .line 564
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 552
    .end local v0    # "_arg0":I
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 553
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-virtual {v15, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->resetTimeout([B)V

    .line 555
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 544
    .end local v0    # "_arg0":[B
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->isEnrollSession()Z

    move-result v0

    .line 545
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 547
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 535
    .end local v0    # "_result":Z
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 537
    invoke-virtual {v15, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getAuthenticatorId(Ljava/lang/String;)J

    move-result-wide v1

    .line 538
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    invoke-virtual {v12, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 540
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 523
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":J
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 525
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/bio/face/IFaceService$Stub;->hasDisabledFaces(ILjava/lang/String;)Z

    move-result v2

    .line 528
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 530
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 511
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 513
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 514
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 515
    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/bio/face/IFaceService$Stub;->hasEnrolledFaces(ILjava/lang/String;)Z

    move-result v2

    .line 516
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 518
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 501
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 502
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-virtual {v15, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->postEnroll(Landroid/os/IBinder;)I

    move-result v1

    .line 504
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 491
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 492
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 493
    invoke-virtual {v15, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->preEnroll(Landroid/os/IBinder;)J

    move-result-wide v1

    .line 494
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    invoke-virtual {v12, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 496
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 479
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":J
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 481
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 483
    invoke-virtual {v15, v0, v1, v2}, Lcom/samsung/android/bio/face/IFaceService$Stub;->isHardwareDetected(JLjava/lang/String;)Z

    move-result v3

    .line 484
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 486
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 467
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 469
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getEnrolledFaces(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 472
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/bio/face/SemBioFace;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 474
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 454
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/bio/face/SemBioFace;>;"
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 456
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 458
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {v15, v0, v1, v2}, Lcom/samsung/android/bio/face/IFaceService$Stub;->rename(IILjava/lang/String;)V

    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 437
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 439
    .restart local v6    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 441
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 443
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 445
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v16

    .line 446
    .local v16, "_arg4":Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 447
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/IFaceService$Stub;->remove(Landroid/os/IBinder;IIILcom/samsung/android/bio/face/IFaceServiceReceiver;)V

    .line 448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 428
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 429
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    invoke-virtual {v15, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->cancelEnrollment(Landroid/os/IBinder;)V

    .line 431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    move/from16 v28, v10

    move-object/from16 v29, v11

    goto/16 :goto_0

    .line 397
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 399
    .local v16, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 401
    .restart local v17    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 403
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 405
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 407
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 409
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v22

    .line 411
    .local v22, "_arg6":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 413
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v24

    .line 415
    .local v24, "_arg8":Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 417
    .local v25, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 419
    .local v26, "_arg10":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/Bundle;

    .line 420
    .local v27, "_arg11":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move/from16 v28, v10

    move/from16 v10, v25

    move-object/from16 v29, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v29, "descriptor":Ljava/lang/String;
    move-object/from16 v11, v26

    move-object/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Lcom/samsung/android/bio/face/IFaceService$Stub;->enroll(Landroid/os/IBinder;Landroid/os/IBinder;IIII[BILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 422
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    goto/16 :goto_0

    .line 386
    .end local v16    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg1":Landroid/os/IBinder;
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":[B
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    .end local v25    # "_arg9":I
    .end local v26    # "_arg10":Ljava/lang/String;
    .end local v27    # "_arg11":Landroid/os/Bundle;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1f
    move/from16 v28, v10

    move-object/from16 v29, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 388
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/bio/face/IFaceService$Stub;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    goto :goto_0

    .line 353
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_20
    move/from16 v28, v10

    move-object/from16 v29, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 355
    .restart local v16    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 357
    .restart local v17    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 359
    .restart local v18    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 361
    .restart local v19    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 363
    .restart local v20    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 365
    .restart local v21    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 367
    .local v22, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 369
    .local v24, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v25

    .line 371
    .local v25, "_arg8":Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 373
    .local v26, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 375
    .local v27, "_arg10":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    check-cast v30, Landroid/os/Bundle;

    .line 377
    .local v30, "_arg11":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v31

    .line 378
    .local v31, "_arg12":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move-wide/from16 v7, v22

    move/from16 v9, v24

    move-object/from16 v10, v25

    move/from16 v11, v26

    move-object/from16 v12, v27

    move-object/from16 v13, v30

    move-object/from16 v14, v31

    invoke-virtual/range {v0 .. v14}, Lcom/samsung/android/bio/face/IFaceService$Stub;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V

    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    nop

    .line 729
    .end local v16    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg1":Landroid/os/IBinder;
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":J
    .end local v24    # "_arg7":I
    .end local v25    # "_arg8":Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    .end local v26    # "_arg9":I
    .end local v27    # "_arg10":Ljava/lang/String;
    .end local v30    # "_arg11":Landroid/os/Bundle;
    .end local v31    # "_arg12":[B
    :goto_0
    return v28

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
