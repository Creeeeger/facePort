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

.method public static blacklist getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;
    .locals 1

    .line 1606
    sget-object v0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/bio/face/IFaceService;

    return-object v0
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
    const-string v0, "prepareForAuthentication"

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
    const-string v0, "requestEnrollResume"

    return-object v0

    .line 285
    :pswitch_9
    const-string v0, "requestEnrollPause"

    return-object v0

    .line 281
    :pswitch_a
    const-string v0, "resetAuthenticationTimeout"

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
    const-string v0, "requestSessionClose"

    return-object v0

    .line 261
    :pswitch_f
    const-string v0, "requestSessionOpen"

    return-object v0

    .line 257
    :pswitch_10
    const-string v0, "setActiveUser"

    return-object v0

    .line 253
    :pswitch_11
    const-string v0, "resetTimeout"

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
    const-string v0, "postEnroll"

    return-object v0

    .line 229
    :pswitch_17
    const-string v0, "preEnroll"

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
    const-string v0, "rename"

    return-object v0

    .line 213
    :pswitch_1b
    const-string v0, "remove"

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

.method public static blacklist setDefaultImpl(Lcom/samsung/android/bio/face/IFaceService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/samsung/android/bio/face/IFaceService;

    .line 1596
    sget-object v0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/bio/face/IFaceService;

    if-nez v0, :cond_1

    .line 1599
    if-eqz p0, :cond_0

    .line 1600
    sput-object p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/bio/face/IFaceService;

    .line 1601
    const/4 v0, 0x1

    return v0

    .line 1603
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1597
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 188
    return-object p0
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

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    const-string v12, "com.samsung.android.bio.face.IFaceService"

    .line 337
    .local v12, "descriptor":Ljava/lang/String;
    const/16 v16, 0x1

    packed-switch p1, :pswitch_data_0

    .line 345
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_1

    .line 746
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 341
    :pswitch_0
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    return v16

    .line 736
    :pswitch_1
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 739
    .local v0, "_arg0":I
    invoke-virtual {v15, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getRemainingLockoutTime(I)I

    move-result v1

    .line 740
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    return v16

    .line 726
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_2
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 729
    .restart local v0    # "_arg0":I
    invoke-virtual {v15, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getLockoutModeForUser(I)I

    move-result v1

    .line 730
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    return v16

    .line 713
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_3
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 717
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 719
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move/from16 v0, v16

    .line 720
    .local v0, "_arg2":Z
    :cond_0
    invoke-virtual {v15, v1, v2, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 721
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    return v16

    .line 704
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 707
    .local v0, "_arg0":I
    invoke-virtual {v15, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->startPreparedClient(I)V

    .line 708
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    return v16

    .line 676
    .end local v0    # "_arg0":I
    :pswitch_5
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move/from16 v1, v16

    goto :goto_0

    :cond_1
    move v1, v0

    .line 680
    .local v1, "_arg0":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 682
    .local v10, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 684
    .local v17, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 686
    .local v11, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v19

    .line 688
    .local v19, "_arg4":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 690
    .local v20, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 692
    .local v21, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 693
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object/from16 v22, v0

    .local v0, "_arg7":Landroid/os/Bundle;
    goto :goto_1

    .line 696
    .end local v0    # "_arg7":Landroid/os/Bundle;
    :cond_2
    const/4 v0, 0x0

    move-object/from16 v22, v0

    .line 698
    .local v22, "_arg7":Landroid/os/Bundle;
    :goto_1
    move-object/from16 v0, p0

    move-object v2, v10

    move-wide/from16 v3, v17

    move v5, v11

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move/from16 v8, v21

    move-object/from16 v9, v22

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/bio/face/IFaceService$Stub;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 699
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    return v16

    .line 666
    .end local v1    # "_arg0":Z
    .end local v10    # "_arg1":Landroid/os/IBinder;
    .end local v11    # "_arg3":I
    .end local v17    # "_arg2":J
    .end local v19    # "_arg4":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .end local v20    # "_arg5":Ljava/lang/String;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":Landroid/os/Bundle;
    :pswitch_6
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move/from16 v0, v16

    .line 669
    .local v0, "_arg0":Z
    :cond_3
    invoke-virtual {v15, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getSecurityLevel(Z)I

    move-result v1

    .line 670
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    return v16

    .line 649
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :pswitch_7
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 653
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 655
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 657
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v9

    .line 659
    .local v9, "_arg3":Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 660
    .local v10, "_arg4":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/IFaceService$Stub;->updateTrustApp(Landroid/os/IBinder;Ljava/lang/String;ILcom/samsung/android/bio/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    return v16

    .line 641
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    .end local v10    # "_arg4":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getTrustAppVersion()Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 645
    return v16

    .line 634
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->requestEnrollResume()V

    .line 636
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    return v16

    .line 627
    :pswitch_a
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->requestEnrollPause()V

    .line 629
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    return v16

    .line 619
    :pswitch_b
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->resetAuthenticationTimeout()Z

    move-result v0

    .line 621
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    return v16

    .line 609
    .end local v0    # "_result":Z
    :pswitch_c
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 612
    .local v0, "_arg0":[B
    invoke-virtual {v15, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->updateSecureID([B)Z

    move-result v1

    .line 613
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    return v16

    .line 599
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":Z
    :pswitch_d
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 602
    .restart local v0    # "_arg0":[B
    invoke-virtual {v15, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->updateSecureUserID([B)Z

    move-result v1

    .line 603
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    return v16

    .line 591
    .end local v0    # "_arg0":[B
    .end local v1    # "_result":Z
    :pswitch_e
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->isSessionClosed()Z

    move-result v0

    .line 593
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    return v16

    .line 584
    .end local v0    # "_result":Z
    :pswitch_f
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->requestSessionClose()V

    .line 586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    return v16

    .line 577
    :pswitch_10
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->requestSessionOpen()V

    .line 579
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    return v16

    .line 568
    :pswitch_11
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 571
    .local v0, "_arg0":I
    invoke-virtual {v15, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->setActiveUser(I)V

    .line 572
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    return v16

    .line 559
    .end local v0    # "_arg0":I
    :pswitch_12
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 562
    .local v0, "_arg0":[B
    invoke-virtual {v15, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->resetTimeout([B)V

    .line 563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    return v16

    .line 551
    .end local v0    # "_arg0":[B
    :pswitch_13
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->isEnrollSession()Z

    move-result v0

    .line 553
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    return v16

    .line 541
    .end local v0    # "_result":Z
    :pswitch_14
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getAuthenticatorId(Ljava/lang/String;)J

    move-result-wide v1

    .line 545
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    invoke-virtual {v13, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 547
    return v16

    .line 529
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":J
    :pswitch_15
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 533
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/bio/face/IFaceService$Stub;->hasDisabledFaces(ILjava/lang/String;)Z

    move-result v2

    .line 535
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    return v16

    .line 517
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_16
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 521
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 522
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/bio/face/IFaceService$Stub;->hasEnrolledFaces(ILjava/lang/String;)Z

    move-result v2

    .line 523
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    return v16

    .line 507
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_17
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 510
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v15, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->postEnroll(Landroid/os/IBinder;)I

    move-result v1

    .line 511
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    return v16

    .line 497
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :pswitch_18
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 500
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v15, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->preEnroll(Landroid/os/IBinder;)J

    move-result-wide v1

    .line 501
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    invoke-virtual {v13, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 503
    return v16

    .line 485
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":J
    :pswitch_19
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 489
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 490
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v15, v0, v1, v2}, Lcom/samsung/android/bio/face/IFaceService$Stub;->isHardwareDetected(JLjava/lang/String;)Z

    move-result v3

    .line 491
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    return v16

    .line 473
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_1a
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 477
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getEnrolledFaces(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 479
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/bio/face/SemBioFace;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 481
    return v16

    .line 460
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/bio/face/SemBioFace;>;"
    :pswitch_1b
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 464
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 466
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v15, v0, v1, v2}, Lcom/samsung/android/bio/face/IFaceService$Stub;->rename(IILjava/lang/String;)V

    .line 468
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    return v16

    .line 443
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_1c
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 447
    .restart local v6    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 449
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 451
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 453
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v10

    .line 454
    .local v10, "_arg4":Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/IFaceService$Stub;->remove(Landroid/os/IBinder;IIILcom/samsung/android/bio/face/IFaceServiceReceiver;)V

    .line 455
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    return v16

    .line 434
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    :pswitch_1d
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 437
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v15, v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->cancelEnrollment(Landroid/os/IBinder;)V

    .line 438
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    return v16

    .line 398
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_1e
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 402
    .local v17, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 404
    .local v18, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 406
    .local v19, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 408
    .local v20, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 410
    .local v21, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 412
    .local v22, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v23

    .line 414
    .local v23, "_arg6":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 416
    .local v24, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v25

    .line 418
    .local v25, "_arg8":Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 420
    .local v26, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 422
    .local v27, "_arg10":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 423
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object/from16 v28, v0

    .local v0, "_arg11":Landroid/os/Bundle;
    goto :goto_2

    .line 426
    .end local v0    # "_arg11":Landroid/os/Bundle;
    :cond_4
    const/4 v0, 0x0

    move-object/from16 v28, v0

    .line 428
    .local v28, "_arg11":Landroid/os/Bundle;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, v21

    move/from16 v6, v22

    move-object/from16 v7, v23

    move/from16 v8, v24

    move-object/from16 v9, v25

    move/from16 v10, v26

    move-object/from16 v11, v27

    move-object v13, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .local v13, "descriptor":Ljava/lang/String;
    move-object/from16 v12, v28

    invoke-virtual/range {v0 .. v12}, Lcom/samsung/android/bio/face/IFaceService$Stub;->enroll(Landroid/os/IBinder;Landroid/os/IBinder;IIII[BILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    return v16

    .line 387
    .end local v13    # "descriptor":Ljava/lang/String;
    .end local v17    # "_arg0":Landroid/os/IBinder;
    .end local v18    # "_arg1":Landroid/os/IBinder;
    .end local v19    # "_arg2":I
    .end local v20    # "_arg3":I
    .end local v21    # "_arg4":I
    .end local v22    # "_arg5":I
    .end local v23    # "_arg6":[B
    .end local v24    # "_arg7":I
    .end local v25    # "_arg8":Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    .end local v26    # "_arg9":I
    .end local v27    # "_arg10":Ljava/lang/String;
    .end local v28    # "_arg11":Landroid/os/Bundle;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_1f
    move-object v13, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 391
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/bio/face/IFaceService$Stub;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    return v16

    .line 349
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v13    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_20
    move-object v13, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v13    # "descriptor":Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 353
    .restart local v17    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 355
    .restart local v18    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 357
    .restart local v19    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 359
    .restart local v20    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 361
    .restart local v21    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 363
    .restart local v22    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 365
    .local v23, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 367
    .local v25, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move-result-object v26

    .line 369
    .local v26, "_arg8":Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 371
    .local v27, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 373
    .local v28, "_arg10":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 374
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object/from16 v29, v0

    .local v0, "_arg11":Landroid/os/Bundle;
    goto :goto_3

    .line 377
    .end local v0    # "_arg11":Landroid/os/Bundle;
    :cond_5
    const/4 v0, 0x0

    move-object/from16 v29, v0

    .line 380
    .local v29, "_arg11":Landroid/os/Bundle;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v30

    .line 381
    .local v30, "_arg12":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v5, v21

    move/from16 v6, v22

    move-wide/from16 v7, v23

    move/from16 v9, v25

    move-object/from16 v10, v26

    move/from16 v11, v27

    move-object/from16 v12, v28

    move-object/from16 v31, v13

    .end local v13    # "descriptor":Ljava/lang/String;
    .local v31, "descriptor":Ljava/lang/String;
    move-object/from16 v13, v29

    move-object/from16 v14, v30

    invoke-virtual/range {v0 .. v14}, Lcom/samsung/android/bio/face/IFaceService$Stub;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V

    .line 382
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    return v16

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
