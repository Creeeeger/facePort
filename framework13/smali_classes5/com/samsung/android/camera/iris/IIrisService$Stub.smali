.class public abstract Lcom/samsung/android/camera/iris/IIrisService$Stub;
.super Landroid/os/Binder;
.source "IIrisService.java"

# interfaces
.implements Lcom/samsung/android/camera/iris/IIrisService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/IIrisService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/iris/IIrisService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addLockoutResetCallback:I = 0x11

.field static final blacklist TRANSACTION_authenticate:I = 0x1

.field static final blacklist TRANSACTION_cancelAuthentication:I = 0x3

.field static final blacklist TRANSACTION_cancelAuthenticationFromService:I = 0x17

.field static final blacklist TRANSACTION_cancelEnrollment:I = 0x5

.field static final blacklist TRANSACTION_enableIRImageCallback:I = 0x13

.field static final blacklist TRANSACTION_enroll:I = 0x4

.field static final blacklist TRANSACTION_getAuthenticatorId:I = 0xe

.field static final blacklist TRANSACTION_getEnrolledIrises:I = 0x8

.field static final blacklist TRANSACTION_hasDisabledIris:I = 0xd

.field static final blacklist TRANSACTION_hasEnrolledIrises:I = 0xc

.field static final blacklist TRANSACTION_isHardwareDetected:I = 0x9

.field static final blacklist TRANSACTION_postEnroll:I = 0xb

.field static final blacklist TRANSACTION_preEnroll:I = 0xa

.field static final blacklist TRANSACTION_prepareForAuthentication:I = 0x15

.field static final blacklist TRANSACTION_prompt_authenticate:I = 0x2

.field static final blacklist TRANSACTION_remove:I = 0x6

.field static final blacklist TRANSACTION_rename:I = 0x7

.field static final blacklist TRANSACTION_request:I = 0xf

.field static final blacklist TRANSACTION_resetTimeout:I = 0x10

.field static final blacklist TRANSACTION_setActiveUser:I = 0x14

.field static final blacklist TRANSACTION_setIrisViewType:I = 0x12

.field static final blacklist TRANSACTION_startPreparedClient:I = 0x16


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 131
    const-string v0, "com.samsung.android.camera.iris.IIrisService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 139
    if-nez p0, :cond_0

    .line 140
    const/4 v0, 0x0

    return-object v0

    .line 142
    :cond_0
    const-string v0, "com.samsung.android.camera.iris.IIrisService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 143
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_1

    .line 144
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/camera/iris/IIrisService;

    return-object v1

    .line 146
    :cond_1
    new-instance v1, Lcom/samsung/android/camera/iris/IIrisService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/iris/IIrisService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 155
    packed-switch p0, :pswitch_data_0

    .line 251
    const/4 v0, 0x0

    return-object v0

    .line 247
    :pswitch_0
    const-string v0, "cancelAuthenticationFromService"

    return-object v0

    .line 243
    :pswitch_1
    const-string/jumbo v0, "startPreparedClient"

    return-object v0

    .line 239
    :pswitch_2
    const-string/jumbo v0, "prepareForAuthentication"

    return-object v0

    .line 235
    :pswitch_3
    const-string/jumbo v0, "setActiveUser"

    return-object v0

    .line 231
    :pswitch_4
    const-string v0, "enableIRImageCallback"

    return-object v0

    .line 227
    :pswitch_5
    const-string/jumbo v0, "setIrisViewType"

    return-object v0

    .line 223
    :pswitch_6
    const-string v0, "addLockoutResetCallback"

    return-object v0

    .line 219
    :pswitch_7
    const-string/jumbo v0, "resetTimeout"

    return-object v0

    .line 215
    :pswitch_8
    const-string/jumbo v0, "request"

    return-object v0

    .line 211
    :pswitch_9
    const-string v0, "getAuthenticatorId"

    return-object v0

    .line 207
    :pswitch_a
    const-string v0, "hasDisabledIris"

    return-object v0

    .line 203
    :pswitch_b
    const-string v0, "hasEnrolledIrises"

    return-object v0

    .line 199
    :pswitch_c
    const-string/jumbo v0, "postEnroll"

    return-object v0

    .line 195
    :pswitch_d
    const-string/jumbo v0, "preEnroll"

    return-object v0

    .line 191
    :pswitch_e
    const-string v0, "isHardwareDetected"

    return-object v0

    .line 187
    :pswitch_f
    const-string v0, "getEnrolledIrises"

    return-object v0

    .line 183
    :pswitch_10
    const-string/jumbo v0, "rename"

    return-object v0

    .line 179
    :pswitch_11
    const-string/jumbo v0, "remove"

    return-object v0

    .line 175
    :pswitch_12
    const-string v0, "cancelEnrollment"

    return-object v0

    .line 171
    :pswitch_13
    const-string v0, "enroll"

    return-object v0

    .line 167
    :pswitch_14
    const-string v0, "cancelAuthentication"

    return-object v0

    .line 163
    :pswitch_15
    const-string/jumbo v0, "prompt_authenticate"

    return-object v0

    .line 159
    :pswitch_16
    const-string v0, "authenticate"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 150
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1163
    const/16 v0, 0x16

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 258
    invoke-static {p1}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 262
    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    const-string v11, "com.samsung.android.camera.iris.IIrisService"

    .line 263
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v14, v10, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    .line 264
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 274
    packed-switch v14, :pswitch_data_1

    .line 641
    move-object v15, v13

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 270
    :pswitch_0
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    return v10

    .line 623
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 625
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 627
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 629
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 631
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 633
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 634
    .local v18, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 635
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 636
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v15, v13

    goto/16 :goto_1

    .line 614
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 615
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    invoke-virtual {v15, v0}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->startPreparedClient(I)V

    .line 617
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v15, v13

    goto/16 :goto_1

    .line 585
    .end local v0    # "_arg0":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 587
    .local v16, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 589
    .local v17, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 591
    .local v18, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 593
    .local v20, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v21

    .line 595
    .local v21, "_arg4":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 597
    .local v22, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 599
    .local v23, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 601
    .local v24, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 603
    .local v25, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 605
    .local v26, "_arg9":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/Bundle;

    .line 606
    .local v27, "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 607
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-wide/from16 v3, v18

    move/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v28, v10

    move/from16 v10, v25

    move-object/from16 v29, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v29, "descriptor":Ljava/lang/String;
    move/from16 v11, v26

    move-object v14, v12

    move-object/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;IIIILandroid/os/Bundle;)V

    .line 608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    move-object v15, v13

    goto/16 :goto_1

    .line 576
    .end local v16    # "_arg0":Z
    .end local v17    # "_arg1":Landroid/os/IBinder;
    .end local v18    # "_arg2":J
    .end local v20    # "_arg3":I
    .end local v21    # "_arg4":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .end local v22    # "_arg5":Ljava/lang/String;
    .end local v23    # "_arg6":I
    .end local v24    # "_arg7":I
    .end local v25    # "_arg8":I
    .end local v26    # "_arg9":I
    .end local v27    # "_arg10":Landroid/os/Bundle;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 577
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 578
    invoke-virtual {v15, v0}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->setActiveUser(I)V

    .line 579
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    move-object v15, v13

    goto/16 :goto_1

    .line 563
    .end local v0    # "_arg0":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 565
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 568
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 569
    invoke-virtual {v15, v0, v1, v2}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->enableIRImageCallback(ILjava/lang/String;I)V

    .line 570
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    move-object v15, v13

    goto/16 :goto_1

    .line 550
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_6
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 552
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 554
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 555
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 556
    invoke-virtual {v15, v0, v1, v2}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->setIrisViewType(ILjava/lang/String;I)V

    .line 557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    move-object v15, v13

    goto/16 :goto_1

    .line 541
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_7
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;

    move-result-object v0

    .line 542
    .local v0, "_arg0":Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 543
    invoke-virtual {v15, v0}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->addLockoutResetCallback(Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;)V

    .line 544
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    move-object v15, v13

    goto/16 :goto_1

    .line 532
    .end local v0    # "_arg0":Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_8
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 533
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 534
    invoke-virtual {v15, v0}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->resetTimeout([B)V

    .line 535
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    move-object v15, v13

    goto/16 :goto_1

    .line 504
    .end local v0    # "_arg0":[B
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_9
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 506
    .local v8, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 508
    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 510
    .local v10, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 511
    .local v11, "_arg3_length":I
    if-gez v11, :cond_1

    .line 512
    const/4 v0, 0x0

    move-object v12, v0

    .local v0, "_arg3":[B
    goto :goto_0

    .line 514
    .end local v0    # "_arg3":[B
    :cond_1
    new-array v0, v11, [B

    move-object v12, v0

    .line 517
    .local v12, "_arg3":[B
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 519
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 521
    .local v17, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-result-object v18

    .line 522
    .local v18, "_arg6":Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 523
    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v9

    move-object v3, v10

    move-object v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->request(Landroid/os/IBinder;I[B[BIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)I

    move-result v0

    .line 524
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 527
    move-object v15, v13

    goto/16 :goto_1

    .line 494
    .end local v0    # "_result":I
    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v9    # "_arg1":I
    .end local v10    # "_arg2":[B
    .end local v12    # "_arg3":[B
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":I
    .end local v18    # "_arg6":Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .end local v29    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_a
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    invoke-virtual {v15, v0}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->getAuthenticatorId(Ljava/lang/String;)J

    move-result-wide v1

    .line 497
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 499
    move-object v15, v13

    goto/16 :goto_1

    .line 482
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":J
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 484
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->hasDisabledIris(ILjava/lang/String;)Z

    move-result v2

    .line 487
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 489
    move-object v15, v13

    goto/16 :goto_1

    .line 470
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 472
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 473
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->hasEnrolledIrises(ILjava/lang/String;)Z

    move-result v2

    .line 475
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 477
    move-object v15, v13

    goto/16 :goto_1

    .line 460
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 461
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {v15, v0}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->postEnroll(Landroid/os/IBinder;)I

    move-result v1

    .line 463
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    move-object v15, v13

    goto/16 :goto_1

    .line 450
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 451
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {v15, v0}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->preEnroll(Landroid/os/IBinder;)J

    move-result-wide v1

    .line 453
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 455
    move-object v15, v13

    goto/16 :goto_1

    .line 438
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":J
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_f
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 440
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 442
    invoke-virtual {v15, v0, v1, v2}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->isHardwareDetected(JLjava/lang/String;)Z

    move-result v3

    .line 443
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 445
    move-object v15, v13

    goto/16 :goto_1

    .line 426
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_10
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 428
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->getEnrolledIrises(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 431
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/iris/Iris;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 433
    move-object v15, v13

    goto/16 :goto_1

    .line 413
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/iris/Iris;>;"
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_11
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 415
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 417
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {v15, v0, v1, v2}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->rename(IILjava/lang/String;)V

    .line 420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    move-object v15, v13

    goto/16 :goto_1

    .line 396
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_12
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 398
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 400
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 402
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 404
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-result-object v10

    .line 405
    .local v10, "_arg4":Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->remove(Landroid/os/IBinder;IIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)V

    .line 407
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    move-object v15, v13

    goto/16 :goto_1

    .line 387
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_13
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 388
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    invoke-virtual {v15, v0}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->cancelEnrollment(Landroid/os/IBinder;)V

    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    move-object v15, v13

    goto/16 :goto_1

    .line 356
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_14
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 358
    .local v16, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 360
    .local v17, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 362
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 364
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 366
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 368
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v22

    .line 370
    .local v22, "_arg6":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 372
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-result-object v24

    .line 374
    .local v24, "_arg8":Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 376
    .local v25, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 378
    .local v26, "_arg10":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/Bundle;

    .line 379
    .local v27, "_arg11":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
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

    move/from16 v10, v25

    move-object/from16 v11, v26

    move-object/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->enroll(Landroid/os/IBinder;Landroid/os/IBinder;IIII[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    move-object v15, v13

    goto/16 :goto_1

    .line 345
    .end local v16    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg1":Landroid/os/IBinder;
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":[B
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .end local v25    # "_arg9":I
    .end local v26    # "_arg10":Ljava/lang/String;
    .end local v27    # "_arg11":Landroid/os/Bundle;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_15
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 347
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    move-object v15, v13

    goto/16 :goto_1

    .line 312
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v29    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_16
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 314
    .restart local v16    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 316
    .restart local v17    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 318
    .restart local v18    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 320
    .restart local v19    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 322
    .restart local v20    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 324
    .restart local v21    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 326
    .local v22, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 328
    .local v24, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-result-object v25

    .line 330
    .local v25, "_arg8":Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 332
    .local v26, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 334
    .local v27, "_arg10":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    check-cast v30, Landroid/os/Bundle;

    .line 336
    .local v30, "_arg11":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v31

    .line 337
    .local v31, "_arg12":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
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

    move-object v15, v13

    move-object/from16 v13, v30

    move-object/from16 v14, v31

    invoke-virtual/range {v0 .. v14}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->prompt_authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V

    .line 339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    goto :goto_1

    .line 279
    .end local v16    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg1":Landroid/os/IBinder;
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":J
    .end local v24    # "_arg7":I
    .end local v25    # "_arg8":Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .end local v26    # "_arg9":I
    .end local v27    # "_arg10":Ljava/lang/String;
    .end local v29    # "descriptor":Ljava/lang/String;
    .end local v30    # "_arg11":Landroid/os/Bundle;
    .end local v31    # "_arg12":[B
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_17
    move/from16 v28, v10

    move-object/from16 v29, v11

    move-object v15, v13

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v29    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 281
    .restart local v16    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 283
    .restart local v17    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 285
    .restart local v18    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 287
    .restart local v19    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 289
    .restart local v20    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 291
    .restart local v21    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 293
    .restart local v22    # "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 295
    .restart local v24    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-result-object v25

    .line 297
    .restart local v25    # "_arg8":Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 299
    .restart local v26    # "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 301
    .restart local v27    # "_arg10":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    check-cast v30, Landroid/os/Bundle;

    .line 303
    .restart local v30    # "_arg11":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v31

    .line 304
    .restart local v31    # "_arg12":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
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

    invoke-virtual/range {v0 .. v14}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V

    .line 306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    nop

    .line 644
    .end local v16    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg1":Landroid/os/IBinder;
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":J
    .end local v24    # "_arg7":I
    .end local v25    # "_arg8":Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .end local v26    # "_arg9":I
    .end local v27    # "_arg10":Ljava/lang/String;
    .end local v30    # "_arg11":Landroid/os/Bundle;
    .end local v31    # "_arg12":[B
    :goto_1
    return v28

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
