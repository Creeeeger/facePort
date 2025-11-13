.class public abstract Landroid/hardware/face/IFaceService$Stub;
.super Landroid/os/Binder;
.source "IFaceService.java"

# interfaces
.implements Landroid/hardware/face/IFaceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/IFaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/IFaceService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addLockoutResetCallback:I = 0x1a

.field static final blacklist TRANSACTION_authenticate:I = 0x5

.field static final blacklist TRANSACTION_cancelAuthentication:I = 0x9

.field static final blacklist TRANSACTION_cancelAuthenticationFromService:I = 0xb

.field static final blacklist TRANSACTION_cancelEnrollment:I = 0xe

.field static final blacklist TRANSACTION_cancelFaceDetect:I = 0xa

.field static final blacklist TRANSACTION_createTestSession:I = 0x1

.field static final blacklist TRANSACTION_detectFace:I = 0x6

.field static final blacklist TRANSACTION_dumpSensorServiceStateProto:I = 0x2

.field static final blacklist TRANSACTION_enroll:I = 0xc

.field static final blacklist TRANSACTION_enrollRemotely:I = 0xd

.field static final blacklist TRANSACTION_generateChallenge:I = 0x13

.field static final blacklist TRANSACTION_getAuthenticatorId:I = 0x18

.field static final blacklist TRANSACTION_getEnrolledFaces:I = 0x11

.field static final blacklist TRANSACTION_getFeature:I = 0x1c

.field static final blacklist TRANSACTION_getLockoutModeForUser:I = 0x16

.field static final blacklist TRANSACTION_getSensorProperties:I = 0x4

.field static final blacklist TRANSACTION_getSensorPropertiesInternal:I = 0x3

.field static final blacklist TRANSACTION_hasEnrolledFaces:I = 0x15

.field static final blacklist TRANSACTION_invalidateAuthenticatorId:I = 0x17

.field static final blacklist TRANSACTION_isHardwareDetected:I = 0x12

.field static final blacklist TRANSACTION_prepareForAuthentication:I = 0x7

.field static final blacklist TRANSACTION_registerAuthenticators:I = 0x1d

.field static final blacklist TRANSACTION_remove:I = 0xf

.field static final blacklist TRANSACTION_removeAll:I = 0x10

.field static final blacklist TRANSACTION_resetLockout:I = 0x19

.field static final blacklist TRANSACTION_revokeChallenge:I = 0x14

.field static final blacklist TRANSACTION_semAuthenticate:I = 0x1f

.field static final blacklist TRANSACTION_semEnroll:I = 0x20

.field static final blacklist TRANSACTION_semGetRemainingLockoutTime:I = 0x2e

.field static final blacklist TRANSACTION_semGetSecurityLevel:I = 0x2c

.field static final blacklist TRANSACTION_semGetTrustAppVersion:I = 0x27

.field static final blacklist TRANSACTION_semIsEnrollSession:I = 0x21

.field static final blacklist TRANSACTION_semIsFrameworkHandleLockout:I = 0x2d

.field static final blacklist TRANSACTION_semIsSessionClose:I = 0x2b

.field static final blacklist TRANSACTION_semPauseAuth:I = 0x24

.field static final blacklist TRANSACTION_semPauseEnroll:I = 0x22

.field static final blacklist TRANSACTION_semPrepareForAuthentication:I = 0x1e

.field static final blacklist TRANSACTION_semResetAuthenticationTimeout:I = 0x26

.field static final blacklist TRANSACTION_semResumeAuth:I = 0x25

.field static final blacklist TRANSACTION_semResumeEnroll:I = 0x23

.field static final blacklist TRANSACTION_semSessionClose:I = 0x2a

.field static final blacklist TRANSACTION_semSessionOpen:I = 0x29

.field static final blacklist TRANSACTION_semUpdateTrustApp:I = 0x28

.field static final blacklist TRANSACTION_setFeature:I = 0x1b

.field static final blacklist TRANSACTION_startPreparedClient:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 229
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 230
    const-string v0, "android.hardware.face.IFaceService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/face/IFaceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 238
    if-nez p0, :cond_0

    .line 239
    const/4 v0, 0x0

    return-object v0

    .line 241
    :cond_0
    const-string v0, "android.hardware.face.IFaceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 242
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_1

    .line 243
    move-object v1, v0

    check-cast v1, Landroid/hardware/face/IFaceService;

    return-object v1

    .line 245
    :cond_1
    new-instance v1, Landroid/hardware/face/IFaceService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/face/IFaceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 254
    packed-switch p0, :pswitch_data_0

    .line 442
    const/4 v0, 0x0

    return-object v0

    .line 438
    :pswitch_0
    const-string/jumbo v0, "semGetRemainingLockoutTime"

    return-object v0

    .line 434
    :pswitch_1
    const-string/jumbo v0, "semIsFrameworkHandleLockout"

    return-object v0

    .line 430
    :pswitch_2
    const-string/jumbo v0, "semGetSecurityLevel"

    return-object v0

    .line 426
    :pswitch_3
    const-string/jumbo v0, "semIsSessionClose"

    return-object v0

    .line 422
    :pswitch_4
    const-string/jumbo v0, "semSessionClose"

    return-object v0

    .line 418
    :pswitch_5
    const-string/jumbo v0, "semSessionOpen"

    return-object v0

    .line 414
    :pswitch_6
    const-string/jumbo v0, "semUpdateTrustApp"

    return-object v0

    .line 410
    :pswitch_7
    const-string/jumbo v0, "semGetTrustAppVersion"

    return-object v0

    .line 406
    :pswitch_8
    const-string/jumbo v0, "semResetAuthenticationTimeout"

    return-object v0

    .line 402
    :pswitch_9
    const-string/jumbo v0, "semResumeAuth"

    return-object v0

    .line 398
    :pswitch_a
    const-string/jumbo v0, "semPauseAuth"

    return-object v0

    .line 394
    :pswitch_b
    const-string/jumbo v0, "semResumeEnroll"

    return-object v0

    .line 390
    :pswitch_c
    const-string/jumbo v0, "semPauseEnroll"

    return-object v0

    .line 386
    :pswitch_d
    const-string/jumbo v0, "semIsEnrollSession"

    return-object v0

    .line 382
    :pswitch_e
    const-string/jumbo v0, "semEnroll"

    return-object v0

    .line 378
    :pswitch_f
    const-string/jumbo v0, "semAuthenticate"

    return-object v0

    .line 374
    :pswitch_10
    const-string/jumbo v0, "semPrepareForAuthentication"

    return-object v0

    .line 370
    :pswitch_11
    const-string/jumbo v0, "registerAuthenticators"

    return-object v0

    .line 366
    :pswitch_12
    const-string v0, "getFeature"

    return-object v0

    .line 362
    :pswitch_13
    const-string/jumbo v0, "setFeature"

    return-object v0

    .line 358
    :pswitch_14
    const-string v0, "addLockoutResetCallback"

    return-object v0

    .line 354
    :pswitch_15
    const-string/jumbo v0, "resetLockout"

    return-object v0

    .line 350
    :pswitch_16
    const-string v0, "getAuthenticatorId"

    return-object v0

    .line 346
    :pswitch_17
    const-string v0, "invalidateAuthenticatorId"

    return-object v0

    .line 342
    :pswitch_18
    const-string v0, "getLockoutModeForUser"

    return-object v0

    .line 338
    :pswitch_19
    const-string v0, "hasEnrolledFaces"

    return-object v0

    .line 334
    :pswitch_1a
    const-string/jumbo v0, "revokeChallenge"

    return-object v0

    .line 330
    :pswitch_1b
    const-string v0, "generateChallenge"

    return-object v0

    .line 326
    :pswitch_1c
    const-string v0, "isHardwareDetected"

    return-object v0

    .line 322
    :pswitch_1d
    const-string v0, "getEnrolledFaces"

    return-object v0

    .line 318
    :pswitch_1e
    const-string/jumbo v0, "removeAll"

    return-object v0

    .line 314
    :pswitch_1f
    const-string/jumbo v0, "remove"

    return-object v0

    .line 310
    :pswitch_20
    const-string v0, "cancelEnrollment"

    return-object v0

    .line 306
    :pswitch_21
    const-string v0, "enrollRemotely"

    return-object v0

    .line 302
    :pswitch_22
    const-string v0, "enroll"

    return-object v0

    .line 298
    :pswitch_23
    const-string v0, "cancelAuthenticationFromService"

    return-object v0

    .line 294
    :pswitch_24
    const-string v0, "cancelFaceDetect"

    return-object v0

    .line 290
    :pswitch_25
    const-string v0, "cancelAuthentication"

    return-object v0

    .line 286
    :pswitch_26
    const-string/jumbo v0, "startPreparedClient"

    return-object v0

    .line 282
    :pswitch_27
    const-string/jumbo v0, "prepareForAuthentication"

    return-object v0

    .line 278
    :pswitch_28
    const-string v0, "detectFace"

    return-object v0

    .line 274
    :pswitch_29
    const-string v0, "authenticate"

    return-object v0

    .line 270
    :pswitch_2a
    const-string v0, "getSensorProperties"

    return-object v0

    .line 266
    :pswitch_2b
    const-string v0, "getSensorPropertiesInternal"

    return-object v0

    .line 262
    :pswitch_2c
    const-string v0, "dumpSensorServiceStateProto"

    return-object v0

    .line 258
    :pswitch_2d
    const-string v0, "createTestSession"

    return-object v0

    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 249
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2054
    const/16 v0, 0x2d

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 449
    invoke-static {p1}, Landroid/hardware/face/IFaceService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 29
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    const-string v11, "android.hardware.face.IFaceService"

    .line 454
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v14, v10, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    .line 455
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 465
    packed-switch v14, :pswitch_data_1

    .line 1088
    move-object v14, v12

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 461
    :pswitch_0
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 462
    return v10

    .line 1079
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1080
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1081
    invoke-virtual {v13, v0}, Landroid/hardware/face/IFaceService$Stub;->semGetRemainingLockoutTime(I)I

    move-result v1

    .line 1082
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1084
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1071
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->semIsFrameworkHandleLockout()Z

    move-result v0

    .line 1072
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1074
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1062
    .end local v0    # "_result":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1063
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1064
    invoke-virtual {v13, v0}, Landroid/hardware/face/IFaceService$Stub;->semGetSecurityLevel(Z)I

    move-result v1

    .line 1065
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1067
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1054
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->semIsSessionClose()Z

    move-result v0

    .line 1055
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1057
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1048
    .end local v0    # "_result":Z
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->semSessionClose()V

    .line 1049
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1050
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1042
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->semSessionOpen()V

    .line 1043
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1044
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1026
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1028
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1030
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1032
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v9

    .line 1034
    .local v9, "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1035
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1036
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->semUpdateTrustApp(Landroid/os/IBinder;Ljava/lang/String;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 1037
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1018
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->semGetTrustAppVersion()Ljava/lang/String;

    move-result-object v0

    .line 1019
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1021
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1011
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->semResetAuthenticationTimeout()Z

    move-result v0

    .line 1012
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1014
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1005
    .end local v0    # "_result":Z
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->semResumeAuth()V

    .line 1006
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 999
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->semPauseAuth()V

    .line 1000
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 993
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->semResumeEnroll()V

    .line 994
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 995
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 987
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->semPauseEnroll()V

    .line 988
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 980
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/face/IFaceService$Stub;->semIsEnrollSession()Z

    move-result v0

    .line 981
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 983
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 955
    .end local v0    # "_result":Z
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 957
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 959
    .local v17, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 961
    .local v18, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v19

    .line 963
    .local v19, "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 965
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v21

    .line 967
    .local v21, "_arg5":[I
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/view/Surface;

    .line 969
    .local v22, "_arg6":Landroid/view/Surface;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v23

    .line 971
    .local v23, "_arg7":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Bundle;

    .line 972
    .local v24, "_arg8":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 973
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/face/IFaceService$Stub;->semEnroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;ZLandroid/os/Bundle;)J

    move-result-wide v0

    .line 974
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 976
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 933
    .end local v0    # "_result":J
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Landroid/os/IBinder;
    .end local v18    # "_arg2":[B
    .end local v19    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":[I
    .end local v22    # "_arg6":Landroid/view/Surface;
    .end local v23    # "_arg7":Z
    .end local v24    # "_arg8":Landroid/os/Bundle;
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 935
    .local v9, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 937
    .local v16, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 939
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v19

    .line 941
    .restart local v19    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 943
    .restart local v20    # "_arg4":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Bundle;

    .line 945
    .local v21, "_arg5":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v22

    .line 946
    .local v22, "_arg6":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 947
    move-object/from16 v0, p0

    move-object v1, v9

    move-wide/from16 v2, v16

    move/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/face/IFaceService$Stub;->semAuthenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;[B)J

    move-result-wide v0

    .line 948
    .restart local v0    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 950
    move-object/from16 v27, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 906
    .end local v0    # "_result":J
    .end local v9    # "_arg0":Landroid/os/IBinder;
    .end local v16    # "_arg1":J
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Landroid/os/Bundle;
    .end local v22    # "_arg6":[B
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 908
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 910
    .local v17, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 912
    .local v18, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 914
    .local v19, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 916
    .local v21, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v22

    .line 918
    .local v22, "_arg5":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 920
    .local v23, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 922
    .local v24, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v25

    .line 924
    .local v25, "_arg8":Z
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    .line 925
    .local v26, "_arg9":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 926
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-wide/from16 v4, v19

    move/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move/from16 v9, v24

    move v14, v10

    move/from16 v10, v25

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v27, "descriptor":Ljava/lang/String;
    move-object/from16 v11, v26

    invoke-virtual/range {v0 .. v11}, Landroid/hardware/face/IFaceService$Stub;->semPrepareForAuthentication(IZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;IZLandroid/os/Bundle;)V

    .line 927
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    move-object v14, v12

    goto/16 :goto_0

    .line 897
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Z
    .end local v18    # "_arg2":Landroid/os/IBinder;
    .end local v19    # "_arg3":J
    .end local v21    # "_arg4":I
    .end local v22    # "_arg5":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .end local v23    # "_arg6":Ljava/lang/String;
    .end local v24    # "_arg7":I
    .end local v25    # "_arg8":Z
    .end local v26    # "_arg9":Landroid/os/Bundle;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_12
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 898
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 899
    invoke-virtual {v13, v0}, Landroid/hardware/face/IFaceService$Stub;->registerAuthenticators(Ljava/util/List;)V

    .line 900
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    move-object v14, v12

    goto/16 :goto_0

    .line 880
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_13
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 882
    .restart local v6    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 884
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 886
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v9

    .line 888
    .local v9, "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 889
    .local v10, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 890
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->getFeature(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 891
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    move-object v14, v12

    goto/16 :goto_0

    .line 859
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v10    # "_arg4":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_14
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 861
    .local v8, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 863
    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 865
    .local v10, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 867
    .local v11, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 869
    .local v16, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v17

    .line 871
    .local v17, "_arg5":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 872
    .local v18, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 873
    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/face/IFaceService$Stub;->setFeature(Landroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 874
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    move-object v14, v12

    goto/16 :goto_0

    .line 848
    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v9    # "_arg1":I
    .end local v10    # "_arg2":I
    .end local v16    # "_arg4":[B
    .end local v17    # "_arg5":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v18    # "_arg6":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_15
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    move-result-object v0

    .line 850
    .local v0, "_arg0":Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 851
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    invoke-virtual {v13, v0, v1}, Landroid/hardware/face/IFaceService$Stub;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V

    .line 853
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    move-object v14, v12

    goto/16 :goto_0

    .line 831
    .end local v0    # "_arg0":Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_16
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 833
    .restart local v6    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 835
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 837
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 839
    .local v9, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 840
    .local v10, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 841
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V

    .line 842
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    move-object v14, v12

    goto/16 :goto_0

    .line 819
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":[B
    .end local v10    # "_arg4":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_17
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 821
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 822
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 823
    invoke-virtual {v13, v0, v1}, Landroid/hardware/face/IFaceService$Stub;->getAuthenticatorId(II)J

    move-result-wide v2

    .line 824
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    invoke-virtual {v12, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 826
    move-object v14, v12

    goto/16 :goto_0

    .line 806
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_18
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 808
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 810
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IInvalidationCallback;

    move-result-object v2

    .line 811
    .local v2, "_arg2":Landroid/hardware/biometrics/IInvalidationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 812
    invoke-virtual {v13, v0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 813
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    move-object v14, v12

    goto/16 :goto_0

    .line 794
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/hardware/biometrics/IInvalidationCallback;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_19
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 796
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 797
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    invoke-virtual {v13, v0, v1}, Landroid/hardware/face/IFaceService$Stub;->getLockoutModeForUser(II)I

    move-result v2

    .line 799
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    move-object v14, v12

    goto/16 :goto_0

    .line 780
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1a
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 782
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 784
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 785
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 786
    invoke-virtual {v13, v0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->hasEnrolledFaces(IILjava/lang/String;)Z

    move-result v3

    .line 787
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 789
    move-object v14, v12

    goto/16 :goto_0

    .line 763
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1b
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 765
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 767
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 769
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 771
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 772
    .local v16, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 773
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v10

    move-wide/from16 v5, v16

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/face/IFaceService$Stub;->revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V

    .line 774
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    move-object v14, v12

    goto/16 :goto_0

    .line 746
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1c
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 748
    .restart local v6    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 750
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 752
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v9

    .line 754
    .local v9, "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 755
    .local v10, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 756
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->generateChallenge(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 757
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    move-object v14, v12

    goto/16 :goto_0

    .line 734
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v10    # "_arg4":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1d
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 736
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 737
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    invoke-virtual {v13, v0, v1}, Landroid/hardware/face/IFaceService$Stub;->isHardwareDetected(ILjava/lang/String;)Z

    move-result v2

    .line 739
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 741
    move-object v14, v12

    goto/16 :goto_0

    .line 720
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1e
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 722
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 724
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 725
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 726
    invoke-virtual {v13, v0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->getEnrolledFaces(IILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 727
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 729
    move-object v14, v12

    goto/16 :goto_0

    .line 705
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1f
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 707
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 709
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v2

    .line 711
    .local v2, "_arg2":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 712
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 713
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->removeAll(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 714
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    move-object v14, v12

    goto/16 :goto_0

    .line 688
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_20
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 690
    .restart local v6    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 692
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 694
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v9

    .line 696
    .restart local v9    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 697
    .restart local v10    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 698
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->remove(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    .line 699
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    move-object v14, v12

    goto/16 :goto_0

    .line 677
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v10    # "_arg4":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_21
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 679
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 680
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 681
    invoke-virtual {v13, v0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->cancelEnrollment(Landroid/os/IBinder;J)V

    .line 682
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    move-object v14, v12

    goto/16 :goto_0

    .line 657
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_22
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 659
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 661
    .local v8, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 663
    .local v9, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v10

    .line 665
    .local v10, "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 667
    .local v11, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v16

    .line 668
    .local v16, "_arg5":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/face/IFaceService$Stub;->enrollRemotely(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[I)J

    move-result-wide v0

    .line 670
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 672
    move-object v14, v12

    goto/16 :goto_0

    .line 633
    .end local v0    # "_result":J
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Landroid/os/IBinder;
    .end local v9    # "_arg2":[B
    .end local v10    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v16    # "_arg5":[I
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_23
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 635
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 637
    .local v10, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .line 639
    .local v11, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v16

    .line 641
    .local v16, "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 643
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v18

    .line 645
    .local v18, "_arg5":[I
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/Surface;

    .line 647
    .local v19, "_arg6":Landroid/view/Surface;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 648
    .local v20, "_arg7":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 649
    move-object/from16 v0, p0

    move v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/face/IFaceService$Stub;->enroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J

    move-result-wide v0

    .line 650
    .restart local v0    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 652
    move-object v14, v12

    goto/16 :goto_0

    .line 618
    .end local v0    # "_result":J
    .end local v9    # "_arg0":I
    .end local v10    # "_arg1":Landroid/os/IBinder;
    .end local v16    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":[I
    .end local v19    # "_arg6":Landroid/view/Surface;
    .end local v20    # "_arg7":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_24
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 620
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 622
    .local v7, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 624
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 625
    .local v9, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 626
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/face/IFaceService$Stub;->cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V

    .line 627
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    move-object v14, v12

    goto/16 :goto_0

    .line 605
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/os/IBinder;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_25
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 607
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 610
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 611
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->cancelFaceDetect(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    move-object v14, v12

    goto/16 :goto_0

    .line 592
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_26
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 594
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 596
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 597
    .restart local v2    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 598
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    move-object v14, v12

    goto/16 :goto_0

    .line 581
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_27
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 583
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 584
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 585
    invoke-virtual {v13, v0, v1}, Landroid/hardware/face/IFaceService$Stub;->startPreparedClient(II)V

    .line 586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    move-object v14, v12

    goto/16 :goto_0

    .line 554
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_28
    move v14, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 556
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 558
    .local v17, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 560
    .local v18, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 562
    .local v19, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 564
    .restart local v21    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v22

    .line 566
    .restart local v22    # "_arg5":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 568
    .restart local v23    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 570
    .local v24, "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 572
    .local v26, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v28

    .line 573
    .local v28, "_arg9":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-wide/from16 v4, v19

    move/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-wide/from16 v9, v24

    move/from16 v11, v26

    move-object v14, v12

    move/from16 v12, v28

    invoke-virtual/range {v0 .. v12}, Landroid/hardware/face/IFaceService$Stub;->prepareForAuthentication(IZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V

    .line 575
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    goto/16 :goto_0

    .line 538
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Z
    .end local v18    # "_arg2":Landroid/os/IBinder;
    .end local v19    # "_arg3":J
    .end local v21    # "_arg4":I
    .end local v22    # "_arg5":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .end local v23    # "_arg6":Ljava/lang/String;
    .end local v24    # "_arg7":J
    .end local v26    # "_arg8":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .end local v28    # "_arg9":Z
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_29
    move-object/from16 v27, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 540
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 542
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v2

    .line 544
    .local v2, "_arg2":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 545
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 546
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/hardware/face/IFaceService$Stub;->detectFace(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)J

    move-result-wide v4

    .line 547
    .local v4, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    invoke-virtual {v14, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 549
    goto/16 :goto_0

    .line 518
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2a
    move-object/from16 v27, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 520
    .local v8, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 522
    .local v9, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 524
    .local v11, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceServiceReceiver;

    move-result-object v12

    .line 526
    .local v12, "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 528
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 529
    .local v17, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 530
    move-object/from16 v0, p0

    move-object v1, v8

    move-wide v2, v9

    move v4, v11

    move-object v5, v12

    move-object/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/face/IFaceService$Stub;->authenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;Z)J

    move-result-wide v0

    .line 531
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 533
    goto :goto_0

    .line 506
    .end local v0    # "_result":J
    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v9    # "_arg1":J
    .end local v12    # "_arg3":Landroid/hardware/face/IFaceServiceReceiver;
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v17    # "_arg5":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_2b
    move-object/from16 v27, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 508
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    invoke-virtual {v13, v0, v1}, Landroid/hardware/face/IFaceService$Stub;->getSensorProperties(ILjava/lang/String;)Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object v2

    .line 511
    .local v2, "_result":Landroid/hardware/face/FaceSensorPropertiesInternal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 513
    goto :goto_0

    .line 496
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/hardware/face/FaceSensorPropertiesInternal;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2c
    move-object/from16 v27, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 498
    invoke-virtual {v13, v0}, Landroid/hardware/face/IFaceService$Stub;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 499
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 501
    goto :goto_0

    .line 484
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2d
    move-object/from16 v27, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 486
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 487
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    invoke-virtual {v13, v0, v1}, Landroid/hardware/face/IFaceService$Stub;->dumpSensorServiceStateProto(IZ)[B

    move-result-object v2

    .line 489
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 491
    goto :goto_0

    .line 470
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":[B
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2e
    move-object/from16 v27, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 472
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/ITestSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object v1

    .line 474
    .local v1, "_arg1":Landroid/hardware/biometrics/ITestSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-virtual {v13, v0, v1, v2}, Landroid/hardware/face/IFaceService$Stub;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v3

    .line 477
    .local v3, "_result":Landroid/hardware/biometrics/ITestSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 479
    nop

    .line 1091
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/biometrics/ITestSessionCallback;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/hardware/biometrics/ITestSession;
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2e
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
