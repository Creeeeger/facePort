.class public abstract Landroid/hardware/fingerprint/IFingerprintService$Stub;
.super Landroid/os/Binder;
.source "IFingerprintService.java"

# interfaces
.implements Landroid/hardware/fingerprint/IFingerprintService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IFingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.fingerprint.IFingerprintService"

.field static final blacklist TRANSACTION_addAuthenticatorsRegisteredCallback:I = 0x21

.field static final greylist-max-o TRANSACTION_addClientActiveCallback:I = 0x1e

.field static final greylist-max-o TRANSACTION_addLockoutResetCallback:I = 0x1c

.field static final greylist-max-o TRANSACTION_authenticate:I = 0x5

.field static final greylist-max-o TRANSACTION_cancelAuthentication:I = 0x9

.field static final blacklist TRANSACTION_cancelAuthenticationFromService:I = 0xb

.field static final greylist-max-o TRANSACTION_cancelEnrollment:I = 0xd

.field static final blacklist TRANSACTION_cancelFingerprintDetect:I = 0xa

.field static final blacklist TRANSACTION_createTestSession:I = 0x1

.field static final blacklist TRANSACTION_detectFingerprint:I = 0x6

.field static final blacklist TRANSACTION_dumpSensorServiceStateProto:I = 0x2

.field static final greylist-max-o TRANSACTION_enroll:I = 0xc

.field static final blacklist TRANSACTION_generateChallenge:I = 0x14

.field static final greylist-max-o TRANSACTION_getAuthenticatorId:I = 0x1a

.field static final greylist-max-o TRANSACTION_getEnrolledFingerprints:I = 0x11

.field static final blacklist TRANSACTION_getLockoutModeForUser:I = 0x18

.field static final blacklist TRANSACTION_getSensorProperties:I = 0x4

.field static final blacklist TRANSACTION_getSensorPropertiesInternal:I = 0x3

.field static final greylist-max-o TRANSACTION_hasEnrolledFingerprints:I = 0x17

.field static final blacklist TRANSACTION_hasEnrolledFingerprintsDeprecated:I = 0x16

.field static final blacklist TRANSACTION_invalidateAuthenticatorId:I = 0x19

.field static final greylist-max-o TRANSACTION_isClientActive:I = 0x1d

.field static final greylist-max-o TRANSACTION_isHardwareDetected:I = 0x13

.field static final blacklist TRANSACTION_isHardwareDetectedDeprecated:I = 0x12

.field static final blacklist TRANSACTION_onPointerDown:I = 0x22

.field static final blacklist TRANSACTION_onPointerUp:I = 0x23

.field static final blacklist TRANSACTION_onUiReady:I = 0x24

.field static final blacklist TRANSACTION_prepareForAuthentication:I = 0x7

.field static final blacklist TRANSACTION_registerAuthenticators:I = 0x20

.field static final blacklist TRANSACTION_registerBiometricStateListener:I = 0x27

.field static final greylist-max-o TRANSACTION_remove:I = 0xe

.field static final blacklist TRANSACTION_removeAll:I = 0xf

.field static final greylist-max-o TRANSACTION_removeClientActiveCallback:I = 0x1f

.field static final greylist-max-o TRANSACTION_rename:I = 0x10

.field static final blacklist TRANSACTION_resetLockout:I = 0x1b

.field static final blacklist TRANSACTION_revokeChallenge:I = 0x15

.field static final blacklist TRANSACTION_semAddMaskView:I = 0x39

.field static final blacklist TRANSACTION_semAuthenticate:I = 0x28

.field static final blacklist TRANSACTION_semBioSysUiRequest:I = 0x43

.field static final blacklist TRANSACTION_semForceCBGE:I = 0x2b

.field static final blacklist TRANSACTION_semGetDaemonVersion:I = 0x34

.field static final blacklist TRANSACTION_semGetIconBottomMargin:I = 0x3e

.field static final blacklist TRANSACTION_semGetInDisplaySensorInfo:I = 0x46

.field static final blacklist TRANSACTION_semGetMaxEnrollmentNumber:I = 0x29

.field static final blacklist TRANSACTION_semGetRemainingLockoutTime:I = 0x4a

.field static final blacklist TRANSACTION_semGetSecurityLevel:I = 0x40

.field static final blacklist TRANSACTION_semGetSensorAreaInDisplay:I = 0x3d

.field static final blacklist TRANSACTION_semGetSensorInfo:I = 0x32

.field static final blacklist TRANSACTION_semGetSensorStatus:I = 0x2e

.field static final blacklist TRANSACTION_semGetSensorTestResult:I = 0x36

.field static final blacklist TRANSACTION_semGetTrustAppVersion:I = 0x41

.field static final blacklist TRANSACTION_semGetUserIdList:I = 0x33

.field static final blacklist TRANSACTION_semHasFeature:I = 0x2a

.field static final blacklist TRANSACTION_semIsEnrollSession:I = 0x2c

.field static final blacklist TRANSACTION_semIsTemplateDbCorrupted:I = 0x2d

.field static final blacklist TRANSACTION_semMoveSensorIconInDisplay:I = 0x3f

.field static final blacklist TRANSACTION_semOpenSession:I = 0x31

.field static final blacklist TRANSACTION_semPauseEnroll:I = 0x2f

.field static final blacklist TRANSACTION_semProcessFido:I = 0x49

.field static final blacklist TRANSACTION_semRegisterAodController:I = 0x3b

.field static final blacklist TRANSACTION_semRegisterDisplayStateCallback:I = 0x44

.field static final blacklist TRANSACTION_semRemoveMaskView:I = 0x3a

.field static final blacklist TRANSACTION_semRequest:I = 0x4c

.field static final blacklist TRANSACTION_semResumeEnroll:I = 0x30

.field static final blacklist TRANSACTION_semRunSensorTest:I = 0x35

.field static final blacklist TRANSACTION_semSetCalibrationMode:I = 0x48

.field static final blacklist TRANSACTION_semSetFlagForIFAA:I = 0x4b

.field static final blacklist TRANSACTION_semSetFodStrictMode:I = 0x47

.field static final blacklist TRANSACTION_semSetScreenStatus:I = 0x37

.field static final blacklist TRANSACTION_semShowBouncerScreen:I = 0x38

.field static final blacklist TRANSACTION_semUnregisterAodController:I = 0x3c

.field static final blacklist TRANSACTION_semUnregisterDisplayStateCallback:I = 0x45

.field static final blacklist TRANSACTION_semUpdateTrustApp:I = 0x42

.field static final blacklist TRANSACTION_setSidefpsController:I = 0x26

.field static final blacklist TRANSACTION_setUdfpsOverlayController:I = 0x25

.field static final blacklist TRANSACTION_startPreparedClient:I = 0x8


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 351
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 352
    const-string v0, "android.hardware.fingerprint.IFingerprintService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 360
    if-nez p0, :cond_0

    .line 361
    const/4 v0, 0x0

    return-object v0

    .line 363
    :cond_0
    const-string v0, "android.hardware.fingerprint.IFingerprintService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 364
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_1

    .line 365
    move-object v1, v0

    check-cast v1, Landroid/hardware/fingerprint/IFingerprintService;

    return-object v1

    .line 367
    :cond_1
    new-instance v1, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 376
    packed-switch p0, :pswitch_data_0

    .line 684
    const/4 v0, 0x0

    return-object v0

    .line 680
    :pswitch_0
    const-string/jumbo v0, "semRequest"

    return-object v0

    .line 676
    :pswitch_1
    const-string/jumbo v0, "semSetFlagForIFAA"

    return-object v0

    .line 672
    :pswitch_2
    const-string/jumbo v0, "semGetRemainingLockoutTime"

    return-object v0

    .line 668
    :pswitch_3
    const-string/jumbo v0, "semProcessFido"

    return-object v0

    .line 664
    :pswitch_4
    const-string/jumbo v0, "semSetCalibrationMode"

    return-object v0

    .line 660
    :pswitch_5
    const-string/jumbo v0, "semSetFodStrictMode"

    return-object v0

    .line 656
    :pswitch_6
    const-string/jumbo v0, "semGetInDisplaySensorInfo"

    return-object v0

    .line 652
    :pswitch_7
    const-string/jumbo v0, "semUnregisterDisplayStateCallback"

    return-object v0

    .line 648
    :pswitch_8
    const-string/jumbo v0, "semRegisterDisplayStateCallback"

    return-object v0

    .line 644
    :pswitch_9
    const-string/jumbo v0, "semBioSysUiRequest"

    return-object v0

    .line 640
    :pswitch_a
    const-string/jumbo v0, "semUpdateTrustApp"

    return-object v0

    .line 636
    :pswitch_b
    const-string/jumbo v0, "semGetTrustAppVersion"

    return-object v0

    .line 632
    :pswitch_c
    const-string/jumbo v0, "semGetSecurityLevel"

    return-object v0

    .line 628
    :pswitch_d
    const-string/jumbo v0, "semMoveSensorIconInDisplay"

    return-object v0

    .line 624
    :pswitch_e
    const-string/jumbo v0, "semGetIconBottomMargin"

    return-object v0

    .line 620
    :pswitch_f
    const-string/jumbo v0, "semGetSensorAreaInDisplay"

    return-object v0

    .line 616
    :pswitch_10
    const-string/jumbo v0, "semUnregisterAodController"

    return-object v0

    .line 612
    :pswitch_11
    const-string/jumbo v0, "semRegisterAodController"

    return-object v0

    .line 608
    :pswitch_12
    const-string/jumbo v0, "semRemoveMaskView"

    return-object v0

    .line 604
    :pswitch_13
    const-string/jumbo v0, "semAddMaskView"

    return-object v0

    .line 600
    :pswitch_14
    const-string/jumbo v0, "semShowBouncerScreen"

    return-object v0

    .line 596
    :pswitch_15
    const-string/jumbo v0, "semSetScreenStatus"

    return-object v0

    .line 592
    :pswitch_16
    const-string/jumbo v0, "semGetSensorTestResult"

    return-object v0

    .line 588
    :pswitch_17
    const-string/jumbo v0, "semRunSensorTest"

    return-object v0

    .line 584
    :pswitch_18
    const-string/jumbo v0, "semGetDaemonVersion"

    return-object v0

    .line 580
    :pswitch_19
    const-string/jumbo v0, "semGetUserIdList"

    return-object v0

    .line 576
    :pswitch_1a
    const-string/jumbo v0, "semGetSensorInfo"

    return-object v0

    .line 572
    :pswitch_1b
    const-string/jumbo v0, "semOpenSession"

    return-object v0

    .line 568
    :pswitch_1c
    const-string/jumbo v0, "semResumeEnroll"

    return-object v0

    .line 564
    :pswitch_1d
    const-string/jumbo v0, "semPauseEnroll"

    return-object v0

    .line 560
    :pswitch_1e
    const-string/jumbo v0, "semGetSensorStatus"

    return-object v0

    .line 556
    :pswitch_1f
    const-string/jumbo v0, "semIsTemplateDbCorrupted"

    return-object v0

    .line 552
    :pswitch_20
    const-string/jumbo v0, "semIsEnrollSession"

    return-object v0

    .line 548
    :pswitch_21
    const-string/jumbo v0, "semForceCBGE"

    return-object v0

    .line 544
    :pswitch_22
    const-string/jumbo v0, "semHasFeature"

    return-object v0

    .line 540
    :pswitch_23
    const-string/jumbo v0, "semGetMaxEnrollmentNumber"

    return-object v0

    .line 536
    :pswitch_24
    const-string/jumbo v0, "semAuthenticate"

    return-object v0

    .line 532
    :pswitch_25
    const-string/jumbo v0, "registerBiometricStateListener"

    return-object v0

    .line 528
    :pswitch_26
    const-string/jumbo v0, "setSidefpsController"

    return-object v0

    .line 524
    :pswitch_27
    const-string/jumbo v0, "setUdfpsOverlayController"

    return-object v0

    .line 520
    :pswitch_28
    const-string/jumbo v0, "onUiReady"

    return-object v0

    .line 516
    :pswitch_29
    const-string/jumbo v0, "onPointerUp"

    return-object v0

    .line 512
    :pswitch_2a
    const-string/jumbo v0, "onPointerDown"

    return-object v0

    .line 508
    :pswitch_2b
    const-string v0, "addAuthenticatorsRegisteredCallback"

    return-object v0

    .line 504
    :pswitch_2c
    const-string/jumbo v0, "registerAuthenticators"

    return-object v0

    .line 500
    :pswitch_2d
    const-string/jumbo v0, "removeClientActiveCallback"

    return-object v0

    .line 496
    :pswitch_2e
    const-string v0, "addClientActiveCallback"

    return-object v0

    .line 492
    :pswitch_2f
    const-string v0, "isClientActive"

    return-object v0

    .line 488
    :pswitch_30
    const-string v0, "addLockoutResetCallback"

    return-object v0

    .line 484
    :pswitch_31
    const-string/jumbo v0, "resetLockout"

    return-object v0

    .line 480
    :pswitch_32
    const-string v0, "getAuthenticatorId"

    return-object v0

    .line 476
    :pswitch_33
    const-string v0, "invalidateAuthenticatorId"

    return-object v0

    .line 472
    :pswitch_34
    const-string v0, "getLockoutModeForUser"

    return-object v0

    .line 468
    :pswitch_35
    const-string v0, "hasEnrolledFingerprints"

    return-object v0

    .line 464
    :pswitch_36
    const-string v0, "hasEnrolledFingerprintsDeprecated"

    return-object v0

    .line 460
    :pswitch_37
    const-string/jumbo v0, "revokeChallenge"

    return-object v0

    .line 456
    :pswitch_38
    const-string v0, "generateChallenge"

    return-object v0

    .line 452
    :pswitch_39
    const-string v0, "isHardwareDetected"

    return-object v0

    .line 448
    :pswitch_3a
    const-string v0, "isHardwareDetectedDeprecated"

    return-object v0

    .line 444
    :pswitch_3b
    const-string v0, "getEnrolledFingerprints"

    return-object v0

    .line 440
    :pswitch_3c
    const-string/jumbo v0, "rename"

    return-object v0

    .line 436
    :pswitch_3d
    const-string/jumbo v0, "removeAll"

    return-object v0

    .line 432
    :pswitch_3e
    const-string/jumbo v0, "remove"

    return-object v0

    .line 428
    :pswitch_3f
    const-string v0, "cancelEnrollment"

    return-object v0

    .line 424
    :pswitch_40
    const-string v0, "enroll"

    return-object v0

    .line 420
    :pswitch_41
    const-string v0, "cancelAuthenticationFromService"

    return-object v0

    .line 416
    :pswitch_42
    const-string v0, "cancelFingerprintDetect"

    return-object v0

    .line 412
    :pswitch_43
    const-string v0, "cancelAuthentication"

    return-object v0

    .line 408
    :pswitch_44
    const-string/jumbo v0, "startPreparedClient"

    return-object v0

    .line 404
    :pswitch_45
    const-string/jumbo v0, "prepareForAuthentication"

    return-object v0

    .line 400
    :pswitch_46
    const-string v0, "detectFingerprint"

    return-object v0

    .line 396
    :pswitch_47
    const-string v0, "authenticate"

    return-object v0

    .line 392
    :pswitch_48
    const-string v0, "getSensorProperties"

    return-object v0

    .line 388
    :pswitch_49
    const-string v0, "getSensorPropertiesInternal"

    return-object v0

    .line 384
    :pswitch_4a
    const-string v0, "dumpSensorServiceStateProto"

    return-object v0

    .line 380
    :pswitch_4b
    const-string v0, "createTestSession"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 371
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 3177
    const/16 v0, 0x4b

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 691
    invoke-static {p1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 28
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 695
    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v11, "android.hardware.fingerprint.IFingerprintService"

    .line 696
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v13, v10, :cond_0

    const v0, 0xffffff

    if-gt v13, v0, :cond_0

    .line 697
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    :cond_0
    packed-switch v13, :pswitch_data_0

    .line 707
    packed-switch v13, :pswitch_data_1

    .line 1635
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 703
    :pswitch_0
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 704
    return v10

    .line 1606
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 1608
    .local v9, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1610
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 1612
    .local v17, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1613
    .local v8, "_arg3_length":I
    if-gez v8, :cond_1

    .line 1614
    const/4 v0, 0x0

    move-object v7, v0

    .local v0, "_arg3":[B
    goto :goto_0

    .line 1616
    .end local v0    # "_arg3":[B
    :cond_1
    new-array v0, v8, [B

    move-object v7, v0

    .line 1619
    .local v7, "_arg3":[B
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1621
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1623
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1625
    .local v20, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;

    move-result-object v21

    .line 1626
    .local v21, "_arg7":Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1627
    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object v4, v7

    move/from16 v5, v18

    move/from16 v6, v19

    move-object v10, v7

    .end local v7    # "_arg3":[B
    .local v10, "_arg3":[B
    move-object/from16 v7, v20

    move/from16 v23, v8

    .end local v8    # "_arg3_length":I
    .local v23, "_arg3_length":I
    move-object/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semRequest(Landroid/os/IBinder;I[B[BIILjava/lang/String;Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;)I

    move-result v0

    .line 1628
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1629
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1630
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1631
    move-object/from16 v27, v11

    const/4 v13, 0x1

    goto/16 :goto_3

    .line 1595
    .end local v0    # "_result":I
    .end local v9    # "_arg0":Landroid/os/IBinder;
    .end local v10    # "_arg3":[B
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":[B
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":Ljava/lang/String;
    .end local v21    # "_arg7":Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;
    .end local v23    # "_arg3_length":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1597
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1598
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1599
    invoke-virtual {v12, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semSetFlagForIFAA(ILjava/lang/String;)V

    .line 1600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1601
    move-object/from16 v27, v11

    const/4 v13, 0x1

    goto/16 :goto_3

    .line 1585
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1586
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1587
    invoke-virtual {v12, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetRemainingLockoutTime(I)I

    move-result v1

    .line 1588
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1589
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1590
    move-object/from16 v27, v11

    const/4 v13, 0x1

    goto/16 :goto_3

    .line 1563
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1565
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1567
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1568
    .local v2, "_arg2_length":I
    if-gez v2, :cond_2

    .line 1569
    const/4 v3, 0x0

    .local v3, "_arg2":[B
    goto :goto_1

    .line 1571
    .end local v3    # "_arg2":[B
    :cond_2
    new-array v3, v2, [B

    .line 1574
    .restart local v3    # "_arg2":[B
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1575
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1576
    invoke-virtual {v12, v0, v1, v3, v4}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semProcessFido(I[B[BLjava/lang/String;)I

    move-result v5

    .line 1577
    .local v5, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1578
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1579
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1580
    move-object/from16 v27, v11

    const/4 v13, 0x1

    goto/16 :goto_3

    .line 1549
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2_length":I
    .end local v3    # "_arg2":[B
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1551
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1553
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1554
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1555
    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semSetCalibrationMode(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v3

    .line 1556
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1557
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1558
    move-object/from16 v27, v11

    const/4 v13, 0x1

    goto/16 :goto_3

    .line 1540
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1541
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1542
    invoke-virtual {v12, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semSetFodStrictMode(Z)V

    .line 1543
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1544
    move-object/from16 v27, v11

    const/4 v13, 0x1

    goto/16 :goto_3

    .line 1530
    .end local v0    # "_arg0":Z
    :pswitch_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1531
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1532
    invoke-virtual {v12, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetInDisplaySensorInfo(Landroid/os/Bundle;)V

    .line 1533
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1534
    const/4 v1, 0x1

    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1535
    move-object/from16 v27, v11

    const/4 v13, 0x1

    goto/16 :goto_3

    .line 1523
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semUnregisterDisplayStateCallback()V

    .line 1524
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1525
    move-object/from16 v27, v11

    const/4 v13, 0x1

    goto/16 :goto_3

    .line 1514
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;

    move-result-object v0

    .line 1515
    .local v0, "_arg0":Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1516
    invoke-virtual {v12, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semRegisterDisplayStateCallback(Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;)I

    move-result v1

    .line 1517
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1518
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1519
    move-object/from16 v27, v11

    const/4 v13, 0x1

    goto/16 :goto_3

    .line 1498
    .end local v0    # "_arg0":Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;
    .end local v1    # "_result":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1500
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1502
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 1504
    .local v8, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1505
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1506
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-wide v3, v8

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semBioSysUiRequest(IIJLjava/lang/String;)I

    move-result v0

    .line 1507
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1508
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1509
    move-object/from16 v27, v11

    const/4 v13, 0x1

    goto/16 :goto_3

    .line 1485
    .end local v0    # "_result":I
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":J
    .end local v10    # "_arg3":Ljava/lang/String;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1487
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;

    move-result-object v1

    .line 1489
    .local v1, "_arg1":Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1490
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1491
    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semUpdateTrustApp(Ljava/lang/String;Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;Ljava/lang/String;)V

    .line 1492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1493
    move-object/from16 v27, v11

    const/4 v13, 0x1

    goto/16 :goto_3

    .line 1477
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetTrustAppVersion()Ljava/lang/String;

    move-result-object v0

    .line 1478
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1479
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1480
    move-object/from16 v27, v11

    const/4 v13, 0x1

    goto/16 :goto_3

    .line 1470
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetSecurityLevel()I

    move-result v0

    .line 1471
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1472
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1473
    move-object/from16 v27, v11

    const/4 v13, 0x1

    goto/16 :goto_3

    .line 1460
    .end local v0    # "_result":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1462
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1463
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1464
    invoke-virtual {v12, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semMoveSensorIconInDisplay(II)V

    .line 1465
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1466
    move-object/from16 v27, v11

    const/4 v13, 0x1

    goto/16 :goto_3

    .line 1452
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetIconBottomMargin()I

    move-result v0

    .line 1453
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1454
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1455
    move-object/from16 v27, v11

    const/4 v13, 0x1

    goto/16 :goto_3

    .line 1439
    .end local v0    # "_result":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1441
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1443
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 1444
    .local v2, "_arg2":Landroid/graphics/Point;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1445
    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetSensorAreaInDisplay(IILandroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1446
    .local v3, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1447
    const/4 v10, 0x1

    invoke-virtual {v15, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1448
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1430
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/graphics/Point;
    .end local v3    # "_result":Landroid/graphics/Rect;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1431
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1432
    invoke-virtual {v12, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semUnregisterAodController(Landroid/os/IBinder;)V

    .line 1433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1434
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1419
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1421
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    move-result-object v1

    .line 1422
    .local v1, "_arg1":Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1423
    invoke-virtual {v12, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semRegisterAodController(Landroid/os/IBinder;Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;)V

    .line 1424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1425
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1407
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1409
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1410
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1411
    invoke-virtual {v12, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semRemoveMaskView(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v2

    .line 1412
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1413
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1414
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1395
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1397
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1398
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1399
    invoke-virtual {v12, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semAddMaskView(Landroid/os/IBinder;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1400
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1401
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1402
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1385
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/os/IBinder;
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1386
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1387
    invoke-virtual {v12, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semShowBouncerScreen(I)I

    move-result v1

    .line 1388
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1389
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1390
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1375
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1376
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1377
    invoke-virtual {v12, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semSetScreenStatus(I)I

    move-result v1

    .line 1378
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1379
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1380
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1359
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1360
    .local v0, "_arg0_length":I
    if-gez v0, :cond_3

    .line 1361
    const/4 v1, 0x0

    .local v1, "_arg0":[B
    goto :goto_2

    .line 1363
    .end local v1    # "_arg0":[B
    :cond_3
    new-array v1, v0, [B

    .line 1365
    .restart local v1    # "_arg0":[B
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1366
    invoke-virtual {v12, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetSensorTestResult([B)I

    move-result v2

    .line 1367
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1368
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1369
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1370
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1343
    .end local v0    # "_arg0_length":I
    .end local v1    # "_arg0":[B
    .end local v2    # "_result":I
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1345
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1347
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1349
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;

    move-result-object v3

    .line 1350
    .local v3, "_arg3":Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1351
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semRunSensorTest(Landroid/os/IBinder;IILcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;)I

    move-result v4

    .line 1352
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1353
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1354
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1335
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;
    .end local v4    # "_result":I
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetDaemonVersion()Ljava/lang/String;

    move-result-object v0

    .line 1336
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1337
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1338
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1328
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetUserIdList()[Ljava/lang/String;

    move-result-object v0

    .line 1329
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1330
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1331
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1321
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetSensorInfo()Ljava/lang/String;

    move-result-object v0

    .line 1322
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1323
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1324
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1314
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semOpenSession()Z

    move-result v0

    .line 1315
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1316
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1317
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1307
    .end local v0    # "_result":Z
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semResumeEnroll()Z

    move-result v0

    .line 1308
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1310
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1300
    .end local v0    # "_result":Z
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semPauseEnroll()Z

    move-result v0

    .line 1301
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1302
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1303
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1293
    .end local v0    # "_result":Z
    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetSensorStatus()I

    move-result v0

    .line 1294
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1295
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1296
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1286
    .end local v0    # "_result":I
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semIsTemplateDbCorrupted()Z

    move-result v0

    .line 1287
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1288
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1289
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1279
    .end local v0    # "_result":Z
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semIsEnrollSession()Z

    move-result v0

    .line 1280
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1281
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1282
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1273
    .end local v0    # "_result":Z
    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semForceCBGE()V

    .line 1274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1275
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1264
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1265
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1266
    invoke-virtual {v12, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semHasFeature(I)Z

    move-result v1

    .line 1267
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1268
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1269
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1256
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semGetMaxEnrollmentNumber()I

    move-result v0

    .line 1257
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1259
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1231
    .end local v0    # "_result":I
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 1233
    .local v16, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 1235
    .local v17, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1237
    .local v19, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1239
    .local v20, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v21

    .line 1241
    .local v21, "_arg4":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1243
    .local v22, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1245
    .local v23, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1247
    .local v24, "_arg7":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Bundle;

    .line 1248
    .local v25, "_arg8":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1249
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v17

    move/from16 v4, v19

    move/from16 v5, v20

    move-object/from16 v6, v21

    move/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move v13, v10

    move-object/from16 v10, v25

    invoke-virtual/range {v0 .. v10}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->semAuthenticate(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)J

    move-result-wide v0

    .line 1250
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1251
    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1252
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1222
    .end local v0    # "_result":J
    .end local v16    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg1":J
    .end local v19    # "_arg2":I
    .end local v20    # "_arg3":I
    .end local v21    # "_arg4":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v22    # "_arg5":I
    .end local v23    # "_arg6":Ljava/lang/String;
    .end local v24    # "_arg7":Ljava/lang/String;
    .end local v25    # "_arg8":Landroid/os/Bundle;
    :pswitch_26
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricStateListener;

    move-result-object v0

    .line 1223
    .local v0, "_arg0":Landroid/hardware/biometrics/IBiometricStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1224
    invoke-virtual {v12, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V

    .line 1225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1226
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1213
    .end local v0    # "_arg0":Landroid/hardware/biometrics/IBiometricStateListener;
    :pswitch_27
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/ISidefpsController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/ISidefpsController;

    move-result-object v0

    .line 1214
    .local v0, "_arg0":Landroid/hardware/fingerprint/ISidefpsController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1215
    invoke-virtual {v12, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->setSidefpsController(Landroid/hardware/fingerprint/ISidefpsController;)V

    .line 1216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1204
    .end local v0    # "_arg0":Landroid/hardware/fingerprint/ISidefpsController;
    :pswitch_28
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IUdfpsOverlayController;

    move-result-object v0

    .line 1205
    .local v0, "_arg0":Landroid/hardware/fingerprint/IUdfpsOverlayController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1206
    invoke-virtual {v12, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V

    .line 1207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1208
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1193
    .end local v0    # "_arg0":Landroid/hardware/fingerprint/IUdfpsOverlayController;
    :pswitch_29
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1195
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1196
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1197
    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->onUiReady(JI)V

    .line 1198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1199
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1182
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :pswitch_2a
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1184
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1185
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1186
    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->onPointerUp(JI)V

    .line 1187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1188
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1163
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :pswitch_2b
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 1165
    .local v8, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1167
    .local v10, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1169
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1171
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v18

    .line 1173
    .local v18, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v19

    .line 1174
    .local v19, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1175
    move-object/from16 v0, p0

    move-wide v1, v8

    move v3, v10

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->onPointerDown(JIIIFF)V

    .line 1176
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1177
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1154
    .end local v8    # "_arg0":J
    .end local v10    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":F
    .end local v19    # "_arg5":F
    :pswitch_2c
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;

    move-result-object v0

    .line 1155
    .local v0, "_arg0":Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1156
    invoke-virtual {v12, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    .line 1157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1158
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1145
    .end local v0    # "_arg0":Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;
    :pswitch_2d
    move v13, v10

    sget-object v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1146
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1147
    invoke-virtual {v12, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->registerAuthenticators(Ljava/util/List;)V

    .line 1148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1149
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1136
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    :pswitch_2e
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    move-result-object v0

    .line 1137
    .local v0, "_arg0":Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1138
    invoke-virtual {v12, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->removeClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V

    .line 1139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1140
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1127
    .end local v0    # "_arg0":Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;
    :pswitch_2f
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    move-result-object v0

    .line 1128
    .restart local v0    # "_arg0":Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1129
    invoke-virtual {v12, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->addClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V

    .line 1130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1119
    .end local v0    # "_arg0":Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;
    :pswitch_30
    move v13, v10

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->isClientActive()Z

    move-result v0

    .line 1120
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1122
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1109
    .end local v0    # "_result":Z
    :pswitch_31
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    move-result-object v0

    .line 1111
    .local v0, "_arg0":Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1112
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1113
    invoke-virtual {v12, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V

    .line 1114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1115
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1092
    .end local v0    # "_arg0":Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_32
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1094
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1096
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1098
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 1100
    .local v9, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1101
    .local v10, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1102
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V

    .line 1103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1080
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":[B
    .end local v10    # "_arg4":Ljava/lang/String;
    :pswitch_33
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1082
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1083
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1084
    invoke-virtual {v12, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getAuthenticatorId(II)J

    move-result-wide v2

    .line 1085
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    invoke-virtual {v15, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1087
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1067
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":J
    :pswitch_34
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1069
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1071
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IInvalidationCallback;

    move-result-object v2

    .line 1072
    .local v2, "_arg2":Landroid/hardware/biometrics/IInvalidationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1073
    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    .line 1074
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1075
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1055
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/hardware/biometrics/IInvalidationCallback;
    :pswitch_35
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1057
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1058
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1059
    invoke-virtual {v12, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getLockoutModeForUser(II)I

    move-result v2

    .line 1060
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1062
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1041
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_36
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1043
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1045
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1046
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1047
    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->hasEnrolledFingerprints(IILjava/lang/String;)Z

    move-result v3

    .line 1048
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1050
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1027
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_37
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1029
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1031
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1032
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1033
    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->hasEnrolledFingerprintsDeprecated(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1034
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1036
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 1010
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_38
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1012
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1014
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1016
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1018
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 1019
    .local v16, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1020
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v10

    move-wide/from16 v5, v16

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V

    .line 1021
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 993
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":J
    :pswitch_39
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 995
    .restart local v6    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 997
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 999
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v9

    .line 1001
    .local v9, "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1002
    .local v10, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1003
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->generateChallenge(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V

    .line 1004
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 981
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v10    # "_arg4":Ljava/lang/String;
    :pswitch_3a
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 983
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 984
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 985
    invoke-virtual {v12, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->isHardwareDetected(ILjava/lang/String;)Z

    move-result v2

    .line 986
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 987
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 988
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 969
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_3b
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 971
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 972
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 973
    invoke-virtual {v12, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->isHardwareDetectedDeprecated(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 974
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 976
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 955
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_3c
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 957
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 959
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 960
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 961
    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getEnrolledFingerprints(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 962
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 964
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 942
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :pswitch_3d
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 944
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 946
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 947
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 948
    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->rename(IILjava/lang/String;)V

    .line 949
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 927
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_3e
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 929
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 931
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v2

    .line 933
    .local v2, "_arg2":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 934
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 935
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->removeAll(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V

    .line 936
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 910
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_3f
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 912
    .restart local v6    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 914
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 916
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v9

    .line 918
    .restart local v9    # "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 919
    .restart local v10    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 920
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->remove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V

    .line 921
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 899
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v10    # "_arg4":Ljava/lang/String;
    :pswitch_40
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 901
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 902
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 903
    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelEnrollment(Landroid/os/IBinder;J)V

    .line 904
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 879
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":J
    :pswitch_41
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 881
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 883
    .local v8, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 885
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v10

    .line 887
    .local v10, "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 889
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 890
    .local v17, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 891
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move-object/from16 v5, v16

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;I)J

    move-result-wide v0

    .line 892
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 894
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 864
    .end local v0    # "_result":J
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":[B
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v17    # "_arg5":I
    :pswitch_42
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 866
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 868
    .local v7, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 870
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 871
    .local v9, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 872
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V

    .line 873
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 851
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/os/IBinder;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":J
    :pswitch_43
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 853
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 855
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 856
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 857
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelFingerprintDetect(Landroid/os/IBinder;Ljava/lang/String;J)V

    .line 858
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 859
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 836
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":J
    :pswitch_44
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 838
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 840
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 842
    .restart local v8    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 843
    .restart local v9    # "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 844
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;J)V

    .line 845
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 825
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":J
    :pswitch_45
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 827
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 828
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 829
    invoke-virtual {v12, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->startPreparedClient(II)V

    .line 830
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 831
    move-object/from16 v27, v11

    goto/16 :goto_3

    .line 800
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_46
    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 802
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 804
    .local v17, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 806
    .local v18, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 808
    .restart local v20    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-result-object v21

    .line 810
    .local v21, "_arg4":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 812
    .local v22, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 814
    .local v23, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 816
    .local v25, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    .line 817
    .local v26, "_arg8":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 818
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-wide/from16 v3, v18

    move/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-wide/from16 v8, v23

    move/from16 v10, v25

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v27, "descriptor":Ljava/lang/String;
    move/from16 v11, v26

    invoke-virtual/range {v0 .. v11}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->prepareForAuthentication(ILandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V

    .line 819
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    goto/16 :goto_3

    .line 784
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Landroid/os/IBinder;
    .end local v18    # "_arg2":J
    .end local v20    # "_arg3":I
    .end local v21    # "_arg4":Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .end local v22    # "_arg5":Ljava/lang/String;
    .end local v23    # "_arg6":J
    .end local v25    # "_arg7":I
    .end local v26    # "_arg8":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_47
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 786
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 788
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v2

    .line 790
    .local v2, "_arg2":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 791
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 792
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->detectFingerprint(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)J

    move-result-wide v4

    .line 793
    .local v4, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    invoke-virtual {v15, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 795
    goto/16 :goto_3

    .line 760
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_48
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 762
    .local v10, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 764
    .local v16, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 766
    .local v11, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 768
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v19

    .line 770
    .local v19, "_arg4":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 772
    .local v20, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 774
    .local v21, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 775
    .local v22, "_arg7":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 776
    move-object/from16 v0, p0

    move-object v1, v10

    move-wide/from16 v2, v16

    move v4, v11

    move/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move/from16 v9, v22

    invoke-virtual/range {v0 .. v9}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->authenticate(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v0

    .line 777
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 779
    goto :goto_3

    .line 748
    .end local v0    # "_result":J
    .end local v10    # "_arg0":Landroid/os/IBinder;
    .end local v16    # "_arg1":J
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local v20    # "_arg5":Ljava/lang/String;
    .end local v21    # "_arg6":Ljava/lang/String;
    .end local v22    # "_arg7":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_49
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 750
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 751
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 752
    invoke-virtual {v12, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getSensorProperties(ILjava/lang/String;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v2

    .line 753
    .local v2, "_result":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    invoke-virtual {v15, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 755
    goto :goto_3

    .line 738
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4a
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 739
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 740
    invoke-virtual {v12, v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 741
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 743
    goto :goto_3

    .line 726
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4b
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 728
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 729
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-virtual {v12, v0, v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->dumpSensorServiceStateProto(IZ)[B

    move-result-object v2

    .line 731
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 733
    goto :goto_3

    .line 712
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":[B
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4c
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 714
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/ITestSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSessionCallback;

    move-result-object v1

    .line 716
    .local v1, "_arg1":Landroid/hardware/biometrics/ITestSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 717
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 718
    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v3

    .line 719
    .local v3, "_result":Landroid/hardware/biometrics/ITestSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 721
    nop

    .line 1638
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/biometrics/ITestSessionCallback;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/hardware/biometrics/ITestSession;
    :goto_3
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
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
