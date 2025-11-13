.class public abstract Lcom/android/internal/widget/ILockSettings$Stub;
.super Landroid/os/Binder;
.source "ILockSettings.java"

# interfaces
.implements Lcom/android/internal/widget/ILockSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ILockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ILockSettings$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.ILockSettings"

.field static final blacklist TRANSACTION_addLog:I = 0x46

.field static final blacklist TRANSACTION_addWeakEscrowToken:I = 0x31

.field static final blacklist TRANSACTION_changeToken:I = 0x59

.field static final blacklist TRANSACTION_checkAppLockBackupPin:I = 0x51

.field static final blacklist TRANSACTION_checkAppLockFingerprintPassword:I = 0x52

.field static final blacklist TRANSACTION_checkAppLockPassword:I = 0x4f

.field static final blacklist TRANSACTION_checkAppLockPatternWithHash:I = 0x50

.field static final blacklist TRANSACTION_checkAppLockPin:I = 0x4e

.field static final blacklist TRANSACTION_checkCarrierPassword:I = 0x42

.field static final greylist-max-o TRANSACTION_checkCredential:I = 0x9

.field static final blacklist TRANSACTION_checkCredentialForDualDarDo:I = 0x5a

.field static final blacklist TRANSACTION_checkFMMPassword:I = 0x3c

.field static final blacklist TRANSACTION_checkRemoteLockPassword:I = 0x38

.field static final greylist-max-o TRANSACTION_closeSession:I = 0x2b

.field static final greylist-max-o TRANSACTION_generateKey:I = 0x1d

.field static final blacklist TRANSACTION_generateKeyWithMetadata:I = 0x1e

.field static final greylist-max-o TRANSACTION_getBoolean:I = 0x4

.field static final blacklist TRANSACTION_getCarrierLock:I = 0x3d

.field static final blacklist TRANSACTION_getCredentialType:I = 0xe

.field static final greylist-max-o TRANSACTION_getHashFactor:I = 0xf

.field static final greylist-max-o TRANSACTION_getKey:I = 0x21

.field static final greylist-max-o TRANSACTION_getKeyChainSnapshot:I = 0x1c

.field static final greylist-max-o TRANSACTION_getLong:I = 0x5

.field static final greylist-max-o TRANSACTION_getRecoverySecretTypes:I = 0x28

.field static final greylist-max-o TRANSACTION_getRecoveryStatus:I = 0x26

.field static final greylist-max-o TRANSACTION_getSeparateProfileChallengeEnabled:I = 0x11

.field static final greylist-max-o TRANSACTION_getString:I = 0x6

.field static final greylist-max-o TRANSACTION_getStrongAuthForUser:I = 0x19

.field static final blacklist TRANSACTION_hasPendingEscrowToken:I = 0x1a

.field static final blacklist TRANSACTION_hasSecureLockScreen:I = 0x2c

.field static final blacklist TRANSACTION_haveAppLockBackupPin:I = 0x56

.field static final blacklist TRANSACTION_haveAppLockFingerprintPassword:I = 0x57

.field static final blacklist TRANSACTION_haveAppLockPassword:I = 0x54

.field static final blacklist TRANSACTION_haveAppLockPattern:I = 0x55

.field static final blacklist TRANSACTION_haveAppLockPin:I = 0x53

.field static final blacklist TRANSACTION_haveCarrierPassword:I = 0x41

.field static final blacklist TRANSACTION_haveFMMPassword:I = 0x3b

.field static final greylist-max-o TRANSACTION_importKey:I = 0x1f

.field static final blacklist TRANSACTION_importKeyWithMetadata:I = 0x20

.field static final greylist-max-o TRANSACTION_initRecoveryServiceWithSigFile:I = 0x1b

.field static final blacklist TRANSACTION_isLockPasswordValid:I = 0x45

.field static final blacklist TRANSACTION_isWeakEscrowTokenActive:I = 0x33

.field static final blacklist TRANSACTION_isWeakEscrowTokenValid:I = 0x34

.field static final blacklist TRANSACTION_notifyPasswordChangedForEnterpriseUser:I = 0x5c

.field static final greylist-max-o TRANSACTION_recoverKeyChainSnapshot:I = 0x2a

.field static final blacklist TRANSACTION_registerRemoteLockCallback:I = 0x35

.field static final greylist-max-o TRANSACTION_registerStrongAuthTracker:I = 0x12

.field static final blacklist TRANSACTION_registerWeakEscrowTokenRemovedListener:I = 0x2f

.field static final blacklist TRANSACTION_removeCachedUnifiedChallenge:I = 0x2e

.field static final blacklist TRANSACTION_removeGatekeeperPasswordHandle:I = 0xd

.field static final greylist-max-o TRANSACTION_removeKey:I = 0x22

.field static final blacklist TRANSACTION_removeWeakEscrowToken:I = 0x32

.field static final blacklist TRANSACTION_reportSuccessfulBiometricUnlock:I = 0x15

.field static final blacklist TRANSACTION_requestRemoteLockInfo:I = 0x39

.field static final greylist-max-o TRANSACTION_requireStrongAuth:I = 0x14

.field static final greylist-max-o TRANSACTION_resetKeyStore:I = 0x8

.field static final blacklist TRANSACTION_scheduleNonStrongBiometricIdleTimeout:I = 0x16

.field static final blacklist TRANSACTION_sendLockTypeChangedInfo:I = 0x44

.field static final blacklist TRANSACTION_setAppLockBackupPin:I = 0x4c

.field static final blacklist TRANSACTION_setAppLockFingerprintPassword:I = 0x4d

.field static final blacklist TRANSACTION_setAppLockPassword:I = 0x4a

.field static final blacklist TRANSACTION_setAppLockPattern:I = 0x4b

.field static final blacklist TRANSACTION_setAppLockPin:I = 0x49

.field static final greylist-max-o TRANSACTION_setBoolean:I = 0x1

.field static final blacklist TRANSACTION_setCarrierLockEnabled:I = 0x3f

.field static final blacklist TRANSACTION_setLockCarrierPassword:I = 0x40

.field static final greylist-max-o TRANSACTION_setLockCredential:I = 0x7

.field static final blacklist TRANSACTION_setLockCredentialWithIgnoreNotifyIfNeeded:I = 0x5b

.field static final blacklist TRANSACTION_setLockFMMPassword:I = 0x3a

.field static final blacklist TRANSACTION_setLockModeChangedCallback:I = 0x43

.field static final greylist-max-o TRANSACTION_setLong:I = 0x2

.field static final greylist-max-o TRANSACTION_setRecoverySecretTypes:I = 0x27

.field static final greylist-max-o TRANSACTION_setRecoveryStatus:I = 0x25

.field static final blacklist TRANSACTION_setRemoteLock:I = 0x37

.field static final blacklist TRANSACTION_setSecurityDebugLevel:I = 0x47

.field static final greylist-max-o TRANSACTION_setSeparateProfileChallengeEnabled:I = 0x10

.field static final greylist-max-o TRANSACTION_setServerParams:I = 0x24

.field static final blacklist TRANSACTION_setShellCommandCallback:I = 0x48

.field static final greylist-max-o TRANSACTION_setSnapshotCreatedPendingIntent:I = 0x23

.field static final greylist-max-o TRANSACTION_setString:I = 0x3

.field static final greylist-max-o TRANSACTION_startRecoverySessionWithCertPath:I = 0x29

.field static final greylist-max-o TRANSACTION_systemReady:I = 0x17

.field static final blacklist TRANSACTION_tryUnlockWithCachedUnifiedChallenge:I = 0x2d

.field static final blacklist TRANSACTION_unregisterRemoteLockCallback:I = 0x36

.field static final greylist-max-o TRANSACTION_unregisterStrongAuthTracker:I = 0x13

.field static final blacklist TRANSACTION_unregisterWeakEscrowTokenRemovedListener:I = 0x30

.field static final blacklist TRANSACTION_updateCarrierLock:I = 0x3e

.field static final greylist-max-o TRANSACTION_userPresent:I = 0x18

.field static final greylist-max-o TRANSACTION_verifyCredential:I = 0xa

.field static final blacklist TRANSACTION_verifyGatekeeperPasswordHandle:I = 0xc

.field static final greylist-max-o TRANSACTION_verifyTiedProfileChallenge:I = 0xb

.field static final blacklist TRANSACTION_verifyToken:I = 0x58


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 375
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 376
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 384
    if-nez p0, :cond_0

    .line 385
    const/4 v0, 0x0

    return-object v0

    .line 387
    :cond_0
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 388
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/widget/ILockSettings;

    if-eqz v1, :cond_1

    .line 389
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/ILockSettings;

    return-object v1

    .line 391
    :cond_1
    new-instance v1, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 400
    packed-switch p0, :pswitch_data_0

    .line 772
    const/4 v0, 0x0

    return-object v0

    .line 768
    :pswitch_0
    const-string v0, "notifyPasswordChangedForEnterpriseUser"

    return-object v0

    .line 764
    :pswitch_1
    const-string/jumbo v0, "setLockCredentialWithIgnoreNotifyIfNeeded"

    return-object v0

    .line 760
    :pswitch_2
    const-string v0, "checkCredentialForDualDarDo"

    return-object v0

    .line 756
    :pswitch_3
    const-string v0, "changeToken"

    return-object v0

    .line 752
    :pswitch_4
    const-string/jumbo v0, "verifyToken"

    return-object v0

    .line 748
    :pswitch_5
    const-string v0, "haveAppLockFingerprintPassword"

    return-object v0

    .line 744
    :pswitch_6
    const-string v0, "haveAppLockBackupPin"

    return-object v0

    .line 740
    :pswitch_7
    const-string v0, "haveAppLockPattern"

    return-object v0

    .line 736
    :pswitch_8
    const-string v0, "haveAppLockPassword"

    return-object v0

    .line 732
    :pswitch_9
    const-string v0, "haveAppLockPin"

    return-object v0

    .line 728
    :pswitch_a
    const-string v0, "checkAppLockFingerprintPassword"

    return-object v0

    .line 724
    :pswitch_b
    const-string v0, "checkAppLockBackupPin"

    return-object v0

    .line 720
    :pswitch_c
    const-string v0, "checkAppLockPatternWithHash"

    return-object v0

    .line 716
    :pswitch_d
    const-string v0, "checkAppLockPassword"

    return-object v0

    .line 712
    :pswitch_e
    const-string v0, "checkAppLockPin"

    return-object v0

    .line 708
    :pswitch_f
    const-string/jumbo v0, "setAppLockFingerprintPassword"

    return-object v0

    .line 704
    :pswitch_10
    const-string/jumbo v0, "setAppLockBackupPin"

    return-object v0

    .line 700
    :pswitch_11
    const-string/jumbo v0, "setAppLockPattern"

    return-object v0

    .line 696
    :pswitch_12
    const-string/jumbo v0, "setAppLockPassword"

    return-object v0

    .line 692
    :pswitch_13
    const-string/jumbo v0, "setAppLockPin"

    return-object v0

    .line 688
    :pswitch_14
    const-string/jumbo v0, "setShellCommandCallback"

    return-object v0

    .line 684
    :pswitch_15
    const-string/jumbo v0, "setSecurityDebugLevel"

    return-object v0

    .line 680
    :pswitch_16
    const-string v0, "addLog"

    return-object v0

    .line 676
    :pswitch_17
    const-string v0, "isLockPasswordValid"

    return-object v0

    .line 672
    :pswitch_18
    const-string/jumbo v0, "sendLockTypeChangedInfo"

    return-object v0

    .line 668
    :pswitch_19
    const-string/jumbo v0, "setLockModeChangedCallback"

    return-object v0

    .line 664
    :pswitch_1a
    const-string v0, "checkCarrierPassword"

    return-object v0

    .line 660
    :pswitch_1b
    const-string v0, "haveCarrierPassword"

    return-object v0

    .line 656
    :pswitch_1c
    const-string/jumbo v0, "setLockCarrierPassword"

    return-object v0

    .line 652
    :pswitch_1d
    const-string/jumbo v0, "setCarrierLockEnabled"

    return-object v0

    .line 648
    :pswitch_1e
    const-string/jumbo v0, "updateCarrierLock"

    return-object v0

    .line 644
    :pswitch_1f
    const-string v0, "getCarrierLock"

    return-object v0

    .line 640
    :pswitch_20
    const-string v0, "checkFMMPassword"

    return-object v0

    .line 636
    :pswitch_21
    const-string v0, "haveFMMPassword"

    return-object v0

    .line 632
    :pswitch_22
    const-string/jumbo v0, "setLockFMMPassword"

    return-object v0

    .line 628
    :pswitch_23
    const-string/jumbo v0, "requestRemoteLockInfo"

    return-object v0

    .line 624
    :pswitch_24
    const-string v0, "checkRemoteLockPassword"

    return-object v0

    .line 620
    :pswitch_25
    const-string/jumbo v0, "setRemoteLock"

    return-object v0

    .line 616
    :pswitch_26
    const-string/jumbo v0, "unregisterRemoteLockCallback"

    return-object v0

    .line 612
    :pswitch_27
    const-string/jumbo v0, "registerRemoteLockCallback"

    return-object v0

    .line 608
    :pswitch_28
    const-string v0, "isWeakEscrowTokenValid"

    return-object v0

    .line 604
    :pswitch_29
    const-string v0, "isWeakEscrowTokenActive"

    return-object v0

    .line 600
    :pswitch_2a
    const-string/jumbo v0, "removeWeakEscrowToken"

    return-object v0

    .line 596
    :pswitch_2b
    const-string v0, "addWeakEscrowToken"

    return-object v0

    .line 592
    :pswitch_2c
    const-string/jumbo v0, "unregisterWeakEscrowTokenRemovedListener"

    return-object v0

    .line 588
    :pswitch_2d
    const-string/jumbo v0, "registerWeakEscrowTokenRemovedListener"

    return-object v0

    .line 584
    :pswitch_2e
    const-string/jumbo v0, "removeCachedUnifiedChallenge"

    return-object v0

    .line 580
    :pswitch_2f
    const-string/jumbo v0, "tryUnlockWithCachedUnifiedChallenge"

    return-object v0

    .line 576
    :pswitch_30
    const-string v0, "hasSecureLockScreen"

    return-object v0

    .line 572
    :pswitch_31
    const-string v0, "closeSession"

    return-object v0

    .line 568
    :pswitch_32
    const-string/jumbo v0, "recoverKeyChainSnapshot"

    return-object v0

    .line 564
    :pswitch_33
    const-string/jumbo v0, "startRecoverySessionWithCertPath"

    return-object v0

    .line 560
    :pswitch_34
    const-string v0, "getRecoverySecretTypes"

    return-object v0

    .line 556
    :pswitch_35
    const-string/jumbo v0, "setRecoverySecretTypes"

    return-object v0

    .line 552
    :pswitch_36
    const-string v0, "getRecoveryStatus"

    return-object v0

    .line 548
    :pswitch_37
    const-string/jumbo v0, "setRecoveryStatus"

    return-object v0

    .line 544
    :pswitch_38
    const-string/jumbo v0, "setServerParams"

    return-object v0

    .line 540
    :pswitch_39
    const-string/jumbo v0, "setSnapshotCreatedPendingIntent"

    return-object v0

    .line 536
    :pswitch_3a
    const-string/jumbo v0, "removeKey"

    return-object v0

    .line 532
    :pswitch_3b
    const-string v0, "getKey"

    return-object v0

    .line 528
    :pswitch_3c
    const-string v0, "importKeyWithMetadata"

    return-object v0

    .line 524
    :pswitch_3d
    const-string v0, "importKey"

    return-object v0

    .line 520
    :pswitch_3e
    const-string v0, "generateKeyWithMetadata"

    return-object v0

    .line 516
    :pswitch_3f
    const-string v0, "generateKey"

    return-object v0

    .line 512
    :pswitch_40
    const-string v0, "getKeyChainSnapshot"

    return-object v0

    .line 508
    :pswitch_41
    const-string v0, "initRecoveryServiceWithSigFile"

    return-object v0

    .line 504
    :pswitch_42
    const-string v0, "hasPendingEscrowToken"

    return-object v0

    .line 500
    :pswitch_43
    const-string v0, "getStrongAuthForUser"

    return-object v0

    .line 496
    :pswitch_44
    const-string/jumbo v0, "userPresent"

    return-object v0

    .line 492
    :pswitch_45
    const-string/jumbo v0, "systemReady"

    return-object v0

    .line 488
    :pswitch_46
    const-string/jumbo v0, "scheduleNonStrongBiometricIdleTimeout"

    return-object v0

    .line 484
    :pswitch_47
    const-string/jumbo v0, "reportSuccessfulBiometricUnlock"

    return-object v0

    .line 480
    :pswitch_48
    const-string/jumbo v0, "requireStrongAuth"

    return-object v0

    .line 476
    :pswitch_49
    const-string/jumbo v0, "unregisterStrongAuthTracker"

    return-object v0

    .line 472
    :pswitch_4a
    const-string/jumbo v0, "registerStrongAuthTracker"

    return-object v0

    .line 468
    :pswitch_4b
    const-string v0, "getSeparateProfileChallengeEnabled"

    return-object v0

    .line 464
    :pswitch_4c
    const-string/jumbo v0, "setSeparateProfileChallengeEnabled"

    return-object v0

    .line 460
    :pswitch_4d
    const-string v0, "getHashFactor"

    return-object v0

    .line 456
    :pswitch_4e
    const-string v0, "getCredentialType"

    return-object v0

    .line 452
    :pswitch_4f
    const-string/jumbo v0, "removeGatekeeperPasswordHandle"

    return-object v0

    .line 448
    :pswitch_50
    const-string/jumbo v0, "verifyGatekeeperPasswordHandle"

    return-object v0

    .line 444
    :pswitch_51
    const-string/jumbo v0, "verifyTiedProfileChallenge"

    return-object v0

    .line 440
    :pswitch_52
    const-string/jumbo v0, "verifyCredential"

    return-object v0

    .line 436
    :pswitch_53
    const-string v0, "checkCredential"

    return-object v0

    .line 432
    :pswitch_54
    const-string/jumbo v0, "resetKeyStore"

    return-object v0

    .line 428
    :pswitch_55
    const-string/jumbo v0, "setLockCredential"

    return-object v0

    .line 424
    :pswitch_56
    const-string v0, "getString"

    return-object v0

    .line 420
    :pswitch_57
    const-string v0, "getLong"

    return-object v0

    .line 416
    :pswitch_58
    const-string v0, "getBoolean"

    return-object v0

    .line 412
    :pswitch_59
    const-string/jumbo v0, "setString"

    return-object v0

    .line 408
    :pswitch_5a
    const-string/jumbo v0, "setLong"

    return-object v0

    .line 404
    :pswitch_5b
    const-string/jumbo v0, "setBoolean"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 395
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 3569
    const/16 v0, 0x5b

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 779
    invoke-static {p1}, Lcom/android/internal/widget/ILockSettings$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 783
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "com.android.internal.widget.ILockSettings"

    .line 784
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 785
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 795
    packed-switch v9, :pswitch_data_1

    .line 1824
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 791
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 792
    return v13

    .line 1814
    :pswitch_1
    sget-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 1816
    .local v0, "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1817
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1818
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->notifyPasswordChangedForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 1819
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1820
    goto/16 :goto_0

    .line 1798
    .end local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v1    # "_arg1":I
    :pswitch_2
    sget-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 1800
    .restart local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    sget-object v1, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockscreenCredential;

    .line 1802
    .local v1, "_arg1":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1804
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1805
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1806
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockCredentialWithIgnoreNotifyIfNeeded(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result v4

    .line 1807
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1808
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1809
    goto/16 :goto_0

    .line 1782
    .end local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v1    # "_arg1":Lcom/android/internal/widget/LockscreenCredential;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Z
    .end local v4    # "_result":Z
    :pswitch_3
    sget-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 1784
    .restart local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1786
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1788
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;

    move-result-object v3

    .line 1789
    .local v3, "_arg3":Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1790
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->checkCredentialForDualDarDo(Lcom/android/internal/widget/LockscreenCredential;IILcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    .line 1791
    .local v4, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1792
    invoke-virtual {v11, v4, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1793
    goto/16 :goto_0

    .line 1764
    .end local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;
    .end local v4    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 1766
    .local v14, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 1768
    .local v15, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 1770
    .local v17, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 1772
    .local v18, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1773
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1774
    move-object/from16 v0, p0

    move-object v1, v14

    move-wide v2, v15

    move-object/from16 v4, v17

    move-wide/from16 v5, v18

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/ILockSettings$Stub;->changeToken([BJ[BJI)Z

    move-result v0

    .line 1775
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1776
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1777
    goto/16 :goto_0

    .line 1750
    .end local v0    # "_result":Z
    .end local v14    # "_arg0":[B
    .end local v15    # "_arg1":J
    .end local v17    # "_arg2":[B
    .end local v18    # "_arg3":J
    .end local v20    # "_arg4":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1752
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1754
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1755
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1756
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    .line 1757
    .restart local v4    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1758
    invoke-virtual {v11, v4, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1759
    goto/16 :goto_0

    .line 1740
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1741
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1742
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->haveAppLockFingerprintPassword(I)Z

    move-result v1

    .line 1743
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1744
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1745
    goto/16 :goto_0

    .line 1730
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1731
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1732
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->haveAppLockBackupPin(I)Z

    move-result v1

    .line 1733
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1734
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1735
    goto/16 :goto_0

    .line 1720
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1721
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1722
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->haveAppLockPattern(I)Z

    move-result v1

    .line 1723
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1724
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1725
    goto/16 :goto_0

    .line 1710
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1711
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1712
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->haveAppLockPassword(I)Z

    move-result v1

    .line 1713
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1714
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1715
    goto/16 :goto_0

    .line 1700
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1701
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1702
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->haveAppLockPin(I)Z

    move-result v1

    .line 1703
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1704
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1705
    goto/16 :goto_0

    .line 1688
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1690
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1691
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1692
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkAppLockFingerprintPassword(Ljava/lang/String;I)Z

    move-result v2

    .line 1693
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1694
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1695
    goto/16 :goto_0

    .line 1676
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1678
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1679
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1680
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkAppLockBackupPin(Ljava/lang/String;I)Z

    move-result v2

    .line 1681
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1682
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1683
    goto/16 :goto_0

    .line 1662
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1664
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1666
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1667
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1668
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkAppLockPatternWithHash(Ljava/lang/String;I[B)Z

    move-result v3

    .line 1669
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1670
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1671
    goto/16 :goto_0

    .line 1650
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    .end local v3    # "_result":Z
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1652
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1653
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1654
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkAppLockPassword(Ljava/lang/String;I)Z

    move-result v2

    .line 1655
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1656
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1657
    goto/16 :goto_0

    .line 1638
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1640
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1641
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1642
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkAppLockPin(Ljava/lang/String;I)Z

    move-result v2

    .line 1643
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1644
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1645
    goto/16 :goto_0

    .line 1627
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1629
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1630
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1631
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setAppLockFingerprintPassword(Ljava/lang/String;I)V

    .line 1632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1633
    goto/16 :goto_0

    .line 1616
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1618
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1619
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1620
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setAppLockBackupPin(Ljava/lang/String;I)V

    .line 1621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1622
    goto/16 :goto_0

    .line 1605
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1607
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1608
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1609
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setAppLockPattern(Ljava/lang/String;I)V

    .line 1610
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1611
    goto/16 :goto_0

    .line 1594
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1596
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1597
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1598
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setAppLockPassword(Ljava/lang/String;I)V

    .line 1599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1600
    goto/16 :goto_0

    .line 1583
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1585
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1586
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1587
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setAppLockPin(Ljava/lang/String;I)V

    .line 1588
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1589
    goto/16 :goto_0

    .line 1575
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    .line 1576
    .local v0, "_arg0":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1577
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->setShellCommandCallback(Landroid/os/IRemoteCallback;)V

    .line 1578
    goto/16 :goto_0

    .line 1567
    .end local v0    # "_arg0":Landroid/os/IRemoteCallback;
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1568
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1569
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->setSecurityDebugLevel(I)V

    .line 1570
    goto/16 :goto_0

    .line 1557
    .end local v0    # "_arg0":I
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1559
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1560
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1561
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->addLog(ILjava/lang/String;)V

    .line 1562
    goto/16 :goto_0

    .line 1547
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1548
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1549
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->isLockPasswordValid(I)Z

    move-result v1

    .line 1550
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1551
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1552
    goto/16 :goto_0

    .line 1539
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1540
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1541
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->sendLockTypeChangedInfo(I)V

    .line 1542
    goto/16 :goto_0

    .line 1530
    .end local v0    # "_arg0":I
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    .line 1531
    .local v0, "_arg0":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1532
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockModeChangedCallback(Landroid/os/IRemoteCallback;)V

    .line 1533
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1534
    goto/16 :goto_0

    .line 1518
    .end local v0    # "_arg0":Landroid/os/IRemoteCallback;
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1520
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1521
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1522
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkCarrierPassword([BI)Z

    move-result v2

    .line 1523
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1524
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1525
    goto/16 :goto_0

    .line 1508
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1509
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1510
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->haveCarrierPassword(I)Z

    move-result v1

    .line 1511
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1512
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1513
    goto/16 :goto_0

    .line 1497
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1499
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1500
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1501
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockCarrierPassword([BI)V

    .line 1502
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1503
    goto/16 :goto_0

    .line 1488
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1489
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1490
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->setCarrierLockEnabled(I)V

    .line 1491
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1492
    goto/16 :goto_0

    .line 1478
    .end local v0    # "_arg0":I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1479
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1480
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->updateCarrierLock(I)Z

    move-result v1

    .line 1481
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1482
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1483
    goto/16 :goto_0

    .line 1468
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1469
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1470
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->getCarrierLock(I)Z

    move-result v1

    .line 1471
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1472
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1473
    goto/16 :goto_0

    .line 1456
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1458
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1459
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1460
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkFMMPassword([BI)Z

    move-result v2

    .line 1461
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1462
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1463
    goto/16 :goto_0

    .line 1446
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1447
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1448
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->haveFMMPassword(I)Z

    move-result v1

    .line 1449
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1450
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1451
    goto/16 :goto_0

    .line 1435
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1437
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1438
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1439
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockFMMPassword([BI)V

    .line 1440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1441
    goto/16 :goto_0

    .line 1426
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1427
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1428
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->requestRemoteLockInfo(I)V

    .line 1429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1430
    goto/16 :goto_0

    .line 1411
    .end local v0    # "_arg0":I
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1413
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1415
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1417
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    .line 1418
    .local v3, "_arg3":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1419
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->checkRemoteLockPassword(I[BILandroid/os/IRemoteCallback;)V

    .line 1420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1421
    goto/16 :goto_0

    .line 1400
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/IRemoteCallback;
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1402
    .restart local v0    # "_arg0":I
    sget-object v1, Lcom/android/internal/widget/RemoteLockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RemoteLockInfo;

    .line 1403
    .local v1, "_arg1":Lcom/android/internal/widget/RemoteLockInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1404
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V

    .line 1405
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1406
    goto/16 :goto_0

    .line 1389
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/widget/RemoteLockInfo;
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1391
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    move-result-object v1

    .line 1392
    .local v1, "_arg1":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1393
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->unregisterRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V

    .line 1394
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1395
    goto/16 :goto_0

    .line 1378
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1380
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    move-result-object v1

    .line 1381
    .restart local v1    # "_arg1":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1382
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->registerRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V

    .line 1383
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1384
    goto/16 :goto_0

    .line 1364
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/widget/IRemoteLockMonitorCallback;
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1366
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1368
    .local v2, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1369
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1370
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->isWeakEscrowTokenValid(J[BI)Z

    move-result v4

    .line 1371
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1372
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1373
    goto/16 :goto_0

    .line 1352
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Z
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1354
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1355
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1356
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->isWeakEscrowTokenActive(JI)Z

    move-result v3

    .line 1357
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1358
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1359
    goto/16 :goto_0

    .line 1340
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1342
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1343
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1344
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->removeWeakEscrowToken(JI)Z

    move-result v3

    .line 1345
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1346
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1347
    goto/16 :goto_0

    .line 1326
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1328
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1330
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;

    move-result-object v2

    .line 1331
    .local v2, "_arg2":Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1332
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->addWeakEscrowToken([BILcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)J

    move-result-wide v3

    .line 1333
    .local v3, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1334
    invoke-virtual {v11, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1335
    goto/16 :goto_0

    .line 1316
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;
    .end local v3    # "_result":J
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    move-result-object v0

    .line 1317
    .local v0, "_arg0":Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1318
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result v1

    .line 1319
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1320
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1321
    goto/16 :goto_0

    .line 1306
    .end local v0    # "_arg0":Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
    .end local v1    # "_result":Z
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    move-result-object v0

    .line 1307
    .restart local v0    # "_arg0":Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1308
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z

    move-result v1

    .line 1309
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1310
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1311
    goto/16 :goto_0

    .line 1297
    .end local v0    # "_arg0":Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
    .end local v1    # "_result":Z
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1298
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1299
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->removeCachedUnifiedChallenge(I)V

    .line 1300
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    goto/16 :goto_0

    .line 1287
    .end local v0    # "_arg0":I
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1288
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1289
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->tryUnlockWithCachedUnifiedChallenge(I)Z

    move-result v1

    .line 1290
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1292
    goto/16 :goto_0

    .line 1279
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_31
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;->hasSecureLockScreen()Z

    move-result v0

    .line 1280
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1281
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1282
    goto/16 :goto_0

    .line 1271
    .end local v0    # "_result":Z
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1272
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1273
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->closeSession(Ljava/lang/String;)V

    .line 1274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1275
    goto/16 :goto_0

    .line 1257
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1259
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1261
    .local v1, "_arg1":[B
    sget-object v2, Landroid/security/keystore/recovery/WrappedApplicationKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1262
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1263
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;

    move-result-object v3

    .line 1264
    .local v3, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1265
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1266
    goto/16 :goto_0

    .line 1237
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    .end local v3    # "_result":Ljava/util/Map;
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1239
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1241
    .local v14, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/security/keystore/recovery/RecoveryCertPath;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/security/keystore/recovery/RecoveryCertPath;

    .line 1243
    .local v15, "_arg2":Landroid/security/keystore/recovery/RecoveryCertPath;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 1245
    .local v16, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 1247
    .local v17, "_arg4":[B
    sget-object v0, Landroid/security/keystore/recovery/KeyChainProtectionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v18

    .line 1248
    .local v18, "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1249
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/ILockSettings$Stub;->startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B

    move-result-object v0

    .line 1250
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1251
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1252
    goto/16 :goto_0

    .line 1229
    .end local v0    # "_result":[B
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Landroid/security/keystore/recovery/RecoveryCertPath;
    .end local v16    # "_arg3":[B
    .end local v17    # "_arg4":[B
    .end local v18    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    :pswitch_35
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;->getRecoverySecretTypes()[I

    move-result-object v0

    .line 1230
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1231
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1232
    goto/16 :goto_0

    .line 1221
    .end local v0    # "_result":[I
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1222
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1223
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->setRecoverySecretTypes([I)V

    .line 1224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    goto/16 :goto_0

    .line 1213
    .end local v0    # "_arg0":[I
    :pswitch_37
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;->getRecoveryStatus()Ljava/util/Map;

    move-result-object v0

    .line 1214
    .local v0, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1215
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1216
    goto/16 :goto_0

    .line 1203
    .end local v0    # "_result":Ljava/util/Map;
    :pswitch_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1205
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1206
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1207
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setRecoveryStatus(Ljava/lang/String;I)V

    .line 1208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1209
    goto/16 :goto_0

    .line 1194
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1195
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1196
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->setServerParams([B)V

    .line 1197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1198
    goto/16 :goto_0

    .line 1185
    .end local v0    # "_arg0":[B
    :pswitch_3a
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1186
    .local v0, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1187
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V

    .line 1188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    goto/16 :goto_0

    .line 1176
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1177
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1178
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->removeKey(Ljava/lang/String;)V

    .line 1179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    goto/16 :goto_0

    .line 1166
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1167
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1168
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1169
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1171
    goto/16 :goto_0

    .line 1152
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1154
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1156
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1157
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1158
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object v3

    .line 1159
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1160
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1161
    goto/16 :goto_0

    .line 1140
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1142
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1143
    .restart local v1    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1144
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->importKey(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    .line 1145
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1147
    goto/16 :goto_0

    .line 1128
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1130
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1131
    .restart local v1    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1132
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    .line 1133
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1134
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1135
    goto/16 :goto_0

    .line 1118
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1119
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1120
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1121
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1123
    goto/16 :goto_0

    .line 1110
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_41
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;->getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v0

    .line 1111
    .local v0, "_result":Landroid/security/keystore/recovery/KeyChainSnapshot;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1112
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1113
    goto/16 :goto_0

    .line 1098
    .end local v0    # "_result":Landroid/security/keystore/recovery/KeyChainSnapshot;
    :pswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1100
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1102
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1103
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1104
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V

    .line 1105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1106
    goto/16 :goto_0

    .line 1088
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1089
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1090
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->hasPendingEscrowToken(I)Z

    move-result v1

    .line 1091
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1093
    goto/16 :goto_0

    .line 1078
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1079
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1080
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->getStrongAuthForUser(I)I

    move-result v1

    .line 1081
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1082
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1083
    goto/16 :goto_0

    .line 1069
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1070
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1071
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->userPresent(I)V

    .line 1072
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    goto/16 :goto_0

    .line 1062
    .end local v0    # "_arg0":I
    :pswitch_46
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;->systemReady()V

    .line 1063
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    goto/16 :goto_0

    .line 1054
    :pswitch_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1055
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1056
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->scheduleNonStrongBiometricIdleTimeout(I)V

    .line 1057
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    goto/16 :goto_0

    .line 1043
    .end local v0    # "_arg0":I
    :pswitch_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1045
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1046
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1047
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->reportSuccessfulBiometricUnlock(ZI)V

    .line 1048
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    goto/16 :goto_0

    .line 1032
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1034
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1035
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1036
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->requireStrongAuth(II)V

    .line 1037
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    goto/16 :goto_0

    .line 1023
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    move-result-object v0

    .line 1024
    .local v0, "_arg0":Landroid/app/trust/IStrongAuthTracker;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1025
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 1026
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    goto/16 :goto_0

    .line 1014
    .end local v0    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    :pswitch_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    move-result-object v0

    .line 1015
    .restart local v0    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1016
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 1017
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    goto/16 :goto_0

    .line 1004
    .end local v0    # "_arg0":Landroid/app/trust/IStrongAuthTracker;
    :pswitch_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1005
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1006
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->getSeparateProfileChallengeEnabled(I)Z

    move-result v1

    .line 1007
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1009
    goto/16 :goto_0

    .line 991
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 993
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 995
    .local v1, "_arg1":Z
    sget-object v2, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockscreenCredential;

    .line 996
    .local v2, "_arg2":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 997
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 998
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    goto/16 :goto_0

    .line 979
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Lcom/android/internal/widget/LockscreenCredential;
    :pswitch_4e
    sget-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 981
    .local v0, "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 982
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 983
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B

    move-result-object v2

    .line 984
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 985
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 986
    goto/16 :goto_0

    .line 969
    .end local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[B
    :pswitch_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 970
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 971
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->getCredentialType(I)I

    move-result v1

    .line 972
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 974
    goto/16 :goto_0

    .line 960
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 961
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 962
    invoke-virtual {v8, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->removeGatekeeperPasswordHandle(J)V

    .line 963
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    goto/16 :goto_0

    .line 946
    .end local v0    # "_arg0":J
    :pswitch_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 948
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 950
    .local v14, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 951
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 952
    move-object/from16 v0, p0

    move-wide v1, v6

    move-wide v3, v14

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 953
    .local v0, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 955
    goto/16 :goto_0

    .line 932
    .end local v0    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v6    # "_arg0":J
    .end local v14    # "_arg1":J
    .end local v16    # "_arg2":I
    :pswitch_52
    sget-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 934
    .local v0, "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 936
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 937
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 938
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    .line 939
    .local v3, "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 941
    goto/16 :goto_0

    .line 918
    .end local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :pswitch_53
    sget-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 920
    .restart local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 922
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 923
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 924
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    .line 925
    .restart local v3    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 927
    goto/16 :goto_0

    .line 904
    .end local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :pswitch_54
    sget-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 906
    .restart local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 908
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/ICheckCredentialProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    move-result-object v2

    .line 909
    .local v2, "_arg2":Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 910
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    .line 911
    .restart local v3    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    invoke-virtual {v11, v3, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 913
    goto/16 :goto_0

    .line 895
    .end local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .end local v3    # "_result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :pswitch_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 896
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 897
    invoke-virtual {v8, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->resetKeyStore(I)V

    .line 898
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    goto/16 :goto_0

    .line 881
    .end local v0    # "_arg0":I
    :pswitch_56
    sget-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 883
    .local v0, "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    sget-object v1, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockscreenCredential;

    .line 885
    .local v1, "_arg1":Lcom/android/internal/widget/LockscreenCredential;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 886
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 887
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z

    move-result v3

    .line 888
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 890
    goto/16 :goto_0

    .line 867
    .end local v0    # "_arg0":Lcom/android/internal/widget/LockscreenCredential;
    .end local v1    # "_arg1":Lcom/android/internal/widget/LockscreenCredential;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 869
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 871
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 872
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 873
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 874
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 876
    goto/16 :goto_0

    .line 853
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 855
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 857
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 858
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 859
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    .line 860
    .local v4, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    invoke-virtual {v11, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 862
    goto :goto_0

    .line 839
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    .end local v4    # "_result":J
    :pswitch_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 841
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 843
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 844
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 845
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v3

    .line 846
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 848
    goto :goto_0

    .line 826
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 828
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 830
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 831
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 832
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 833
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    goto :goto_0

    .line 813
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 815
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 817
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 818
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 819
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->setLong(Ljava/lang/String;JI)V

    .line 820
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    goto :goto_0

    .line 800
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    :pswitch_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 802
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 804
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 805
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 806
    invoke-virtual {v8, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setBoolean(Ljava/lang/String;ZI)V

    .line 807
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    nop

    .line 1827
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :goto_0
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
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
