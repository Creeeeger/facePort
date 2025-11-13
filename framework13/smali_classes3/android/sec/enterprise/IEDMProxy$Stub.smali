.class public abstract Landroid/sec/enterprise/IEDMProxy$Stub;
.super Landroid/os/Binder;
.source "IEDMProxy.java"

# interfaces
.implements Landroid/sec/enterprise/IEDMProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/enterprise/IEDMProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_AuditLogger:I = 0x2c

.field static final blacklist TRANSACTION_AuditLoggerAsUser:I = 0x2e

.field static final blacklist TRANSACTION_AuditLoggerPrivileged:I = 0x30

.field static final blacklist TRANSACTION_AuditLoggerPrivilegedAsUser:I = 0x32

.field static final blacklist TRANSACTION_RedactedAuditLogger:I = 0x2d

.field static final blacklist TRANSACTION_RedactedAuditLoggerAsUser:I = 0x2f

.field static final blacklist TRANSACTION_RedactedAuditLoggerPrivileged:I = 0x31

.field static final blacklist TRANSACTION_RedactedAuditLoggerPrivilegedAsUser:I = 0x33

.field static final blacklist TRANSACTION_addCallsCount:I = 0x1

.field static final blacklist TRANSACTION_addNumberOfIncomingCalls:I = 0x15

.field static final blacklist TRANSACTION_addNumberOfIncomingSms:I = 0x18

.field static final blacklist TRANSACTION_addNumberOfOutgoingCalls:I = 0x16

.field static final blacklist TRANSACTION_addNumberOfOutgoingSms:I = 0x19

.field static final blacklist TRANSACTION_bluetoothLog:I = 0x29

.field static final blacklist TRANSACTION_canIncomingCall:I = 0x6e

.field static final blacklist TRANSACTION_canIncomingSms:I = 0x1c

.field static final blacklist TRANSACTION_canOutgoingCall:I = 0x6d

.field static final blacklist TRANSACTION_canOutgoingSms:I = 0x1b

.field static final blacklist TRANSACTION_decreaseNumberOfOutgoingSms:I = 0x1a

.field static final blacklist TRANSACTION_getAddHomeShorcutRequested:I = 0x62

.field static final blacklist TRANSACTION_getAllowBluetoothDataTransfer:I = 0x7

.field static final blacklist TRANSACTION_getApplicationIconFromDb:I = 0x6

.field static final blacklist TRANSACTION_getApplicationNameFromDb:I = 0x45

.field static final blacklist TRANSACTION_getApplicationRestrictions:I = 0x59

.field static final blacklist TRANSACTION_getBrowserSettingStatus:I = 0xf

.field static final blacklist TRANSACTION_getELMPermissions:I = 0x61

.field static final blacklist TRANSACTION_getEmergencyCallOnly:I = 0x14

.field static final blacklist TRANSACTION_getExtendedCallInfoState:I = 0x5a

.field static final blacklist TRANSACTION_getKeyboardMode:I = 0x55

.field static final blacklist TRANSACTION_getNtpServer:I = 0x1e

.field static final blacklist TRANSACTION_getNtpTimeout:I = 0x1f

.field static final blacklist TRANSACTION_getProKioskHideNotificationMessages:I = 0x4a

.field static final blacklist TRANSACTION_getProKioskNotificationMessagesState:I = 0x49

.field static final blacklist TRANSACTION_getProKioskState:I = 0x48

.field static final blacklist TRANSACTION_getSensorDisabled:I = 0x4e

.field static final blacklist TRANSACTION_getToastEnabledState:I = 0x4c

.field static final blacklist TRANSACTION_getToastGravity:I = 0x52

.field static final blacklist TRANSACTION_getToastGravityEnabledState:I = 0x51

.field static final blacklist TRANSACTION_getToastGravityXOffset:I = 0x53

.field static final blacklist TRANSACTION_getToastGravityYOffset:I = 0x54

.field static final blacklist TRANSACTION_getToastShowPackageNameState:I = 0x4d

.field static final blacklist TRANSACTION_getUsbNetAddress:I = 0x58

.field static final blacklist TRANSACTION_getUsbNetStateInternal:I = 0x57

.field static final blacklist TRANSACTION_getVolumeButtonRotationState:I = 0x50

.field static final blacklist TRANSACTION_getVolumeControlStream:I = 0x4b

.field static final blacklist TRANSACTION_getVolumePanelEnabledState:I = 0x4f

.field static final blacklist TRANSACTION_getWifiState:I = 0x56

.field static final blacklist TRANSACTION_isAccountRemovalAllowed:I = 0x44

.field static final blacklist TRANSACTION_isAnyApplicationNameChangedAsUser:I = 0x46

.field static final blacklist TRANSACTION_isAudioRecordAllowed:I = 0x3b

.field static final blacklist TRANSACTION_isAuditLogEnabledAsUser:I = 0x34

.field static final blacklist TRANSACTION_isBackupAllowed:I = 0x2b

.field static final blacklist TRANSACTION_isBlockMmsWithStorageEnabled:I = 0x41

.field static final blacklist TRANSACTION_isBlockSmsWithStorageEnabled:I = 0x40

.field static final blacklist TRANSACTION_isBluetoothDeviceAllowed:I = 0xb

.field static final blacklist TRANSACTION_isBluetoothEnabled:I = 0xe

.field static final blacklist TRANSACTION_isBluetoothLogEnabled:I = 0x28

.field static final blacklist TRANSACTION_isBluetoothUUIDAllowed:I = 0x9

.field static final blacklist TRANSACTION_isCaCertificateTrustedAsUser:I = 0x38

.field static final blacklist TRANSACTION_isCallingCaptureEnabled:I = 0x2

.field static final blacklist TRANSACTION_isCertificateTrustedUntrustedEnabledAsUser:I = 0x39

.field static final blacklist TRANSACTION_isCertificateValidationAtInstallEnabledAsUser:I = 0x3a

.field static final blacklist TRANSACTION_isClipboardAllowed:I = 0x12

.field static final blacklist TRANSACTION_isClipboardShareAllowed:I = 0x3f

.field static final blacklist TRANSACTION_isCopyContactToSimAllowed:I = 0x47

.field static final blacklist TRANSACTION_isDataAllowedFromSimSlot:I = 0x6f

.field static final blacklist TRANSACTION_isDiscoverableEnabled:I = 0xd

.field static final blacklist TRANSACTION_isFactoryResetAllowed:I = 0x24

.field static final blacklist TRANSACTION_isGoogleAccountsAutoSyncAllowedAsUser:I = 0x65

.field static final blacklist TRANSACTION_isIncomingCallAllowedFromSimSlot:I = 0x6c

.field static final blacklist TRANSACTION_isIncomingMmsAllowed:I = 0x2a

.field static final blacklist TRANSACTION_isIncomingSmsAllowed:I = 0x26

.field static final blacklist TRANSACTION_isIncomingSmsAllowedFromSimSlot:I = 0x68

.field static final blacklist TRANSACTION_isKnoxBluetoothEnabled:I = 0x5b

.field static final blacklist TRANSACTION_isLimitNumberOfSmsEnabled:I = 0x17

.field static final blacklist TRANSACTION_isMicrophoneEnabled:I = 0x13

.field static final blacklist TRANSACTION_isMmsAllowedFromSimSlot:I = 0x6a

.field static final blacklist TRANSACTION_isMockLocationEnabled:I = 0x64

.field static final blacklist TRANSACTION_isNtpSetByMDM:I = 0x21

.field static final blacklist TRANSACTION_isOcspCheckEnabled:I = 0x37

.field static final blacklist TRANSACTION_isOutgoingCallAllowedFromSimSlot:I = 0x6b

.field static final blacklist TRANSACTION_isOutgoingCallsAllowed:I = 0x8

.field static final blacklist TRANSACTION_isOutgoingSmsAllowed:I = 0x27

.field static final blacklist TRANSACTION_isOutgoingSmsAllowedFromSimSlot:I = 0x69

.field static final blacklist TRANSACTION_isPackageAllowedToAccessExternalSdcard:I = 0x5c

.field static final blacklist TRANSACTION_isPackageInAvrWhitelist:I = 0x66

.field static final blacklist TRANSACTION_isPairingEnabled:I = 0xc

.field static final blacklist TRANSACTION_isProfileEnabled:I = 0xa

.field static final blacklist TRANSACTION_isRevocationCheckEnabled:I = 0x36

.field static final blacklist TRANSACTION_isRoamingDataEnabled:I = 0x11

.field static final blacklist TRANSACTION_isRoamingPushEnabled:I = 0x10

.field static final blacklist TRANSACTION_isSMSCaptureEnabled:I = 0x4

.field static final blacklist TRANSACTION_isScreenLockPatternVisibilityEnabled:I = 0x22

.field static final blacklist TRANSACTION_isScreenLockPatternVisibilityEnabledAsUser:I = 0x23

.field static final blacklist TRANSACTION_isSmsPatternCheckRequired:I = 0x1d

.field static final blacklist TRANSACTION_isTaskManagerAllowed:I = 0x25

.field static final blacklist TRANSACTION_isVideoRecordAllowed:I = 0x3c

.field static final blacklist TRANSACTION_isWapPushAllowed:I = 0x43

.field static final blacklist TRANSACTION_notifyCertificateFailureAsUser:I = 0x35

.field static final blacklist TRANSACTION_notifyCertificateRemovedAsUser:I = 0x3d

.field static final blacklist TRANSACTION_notifyPasswordPolicyOneLockChanged:I = 0x67

.field static final blacklist TRANSACTION_registerSystemUICallback:I = 0x63

.field static final blacklist TRANSACTION_shallForceNtpMdmValues:I = 0x20

.field static final blacklist TRANSACTION_storeBlockedSmsMms:I = 0x42

.field static final blacklist TRANSACTION_storeCalling:I = 0x3

.field static final blacklist TRANSACTION_storeSMS:I = 0x5

.field static final blacklist TRANSACTION_ucmDecrypt:I = 0x5e

.field static final blacklist TRANSACTION_ucmEncrypt:I = 0x5f

.field static final blacklist TRANSACTION_ucmGetCertificateChain:I = 0x5d

.field static final blacklist TRANSACTION_ucmSign:I = 0x60

.field static final blacklist TRANSACTION_validateCertificateAtInstallAsUser:I = 0x3e


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 467
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 468
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p0, p0, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/sec/enterprise/IEDMProxy;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 476
    if-nez p0, :cond_0

    .line 477
    const/4 v0, 0x0

    return-object v0

    .line 479
    :cond_0
    const-string v0, "android.sec.enterprise.IEDMProxy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 480
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/sec/enterprise/IEDMProxy;

    if-eqz v1, :cond_1

    .line 481
    move-object v1, v0

    check-cast v1, Landroid/sec/enterprise/IEDMProxy;

    return-object v1

    .line 483
    :cond_1
    new-instance v1, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 492
    packed-switch p0, :pswitch_data_0

    .line 940
    const/4 v0, 0x0

    return-object v0

    .line 936
    :pswitch_0
    const-string/jumbo v0, "isDataAllowedFromSimSlot"

    return-object v0

    .line 932
    :pswitch_1
    const-string v0, "canIncomingCall"

    return-object v0

    .line 928
    :pswitch_2
    const-string v0, "canOutgoingCall"

    return-object v0

    .line 924
    :pswitch_3
    const-string/jumbo v0, "isIncomingCallAllowedFromSimSlot"

    return-object v0

    .line 920
    :pswitch_4
    const-string/jumbo v0, "isOutgoingCallAllowedFromSimSlot"

    return-object v0

    .line 916
    :pswitch_5
    const-string/jumbo v0, "isMmsAllowedFromSimSlot"

    return-object v0

    .line 912
    :pswitch_6
    const-string/jumbo v0, "isOutgoingSmsAllowedFromSimSlot"

    return-object v0

    .line 908
    :pswitch_7
    const-string/jumbo v0, "isIncomingSmsAllowedFromSimSlot"

    return-object v0

    .line 904
    :pswitch_8
    const-string/jumbo v0, "notifyPasswordPolicyOneLockChanged"

    return-object v0

    .line 900
    :pswitch_9
    const-string/jumbo v0, "isPackageInAvrWhitelist"

    return-object v0

    .line 896
    :pswitch_a
    const-string/jumbo v0, "isGoogleAccountsAutoSyncAllowedAsUser"

    return-object v0

    .line 892
    :pswitch_b
    const-string/jumbo v0, "isMockLocationEnabled"

    return-object v0

    .line 888
    :pswitch_c
    const-string/jumbo v0, "registerSystemUICallback"

    return-object v0

    .line 884
    :pswitch_d
    const-string v0, "getAddHomeShorcutRequested"

    return-object v0

    .line 880
    :pswitch_e
    const-string v0, "getELMPermissions"

    return-object v0

    .line 876
    :pswitch_f
    const-string/jumbo v0, "ucmSign"

    return-object v0

    .line 872
    :pswitch_10
    const-string/jumbo v0, "ucmEncrypt"

    return-object v0

    .line 868
    :pswitch_11
    const-string/jumbo v0, "ucmDecrypt"

    return-object v0

    .line 864
    :pswitch_12
    const-string/jumbo v0, "ucmGetCertificateChain"

    return-object v0

    .line 860
    :pswitch_13
    const-string/jumbo v0, "isPackageAllowedToAccessExternalSdcard"

    return-object v0

    .line 856
    :pswitch_14
    const-string/jumbo v0, "isKnoxBluetoothEnabled"

    return-object v0

    .line 852
    :pswitch_15
    const-string v0, "getExtendedCallInfoState"

    return-object v0

    .line 848
    :pswitch_16
    const-string v0, "getApplicationRestrictions"

    return-object v0

    .line 844
    :pswitch_17
    const-string/jumbo v0, "getUsbNetAddress"

    return-object v0

    .line 840
    :pswitch_18
    const-string/jumbo v0, "getUsbNetStateInternal"

    return-object v0

    .line 836
    :pswitch_19
    const-string/jumbo v0, "getWifiState"

    return-object v0

    .line 832
    :pswitch_1a
    const-string/jumbo v0, "getKeyboardMode"

    return-object v0

    .line 828
    :pswitch_1b
    const-string/jumbo v0, "getToastGravityYOffset"

    return-object v0

    .line 824
    :pswitch_1c
    const-string/jumbo v0, "getToastGravityXOffset"

    return-object v0

    .line 820
    :pswitch_1d
    const-string/jumbo v0, "getToastGravity"

    return-object v0

    .line 816
    :pswitch_1e
    const-string/jumbo v0, "getToastGravityEnabledState"

    return-object v0

    .line 812
    :pswitch_1f
    const-string/jumbo v0, "getVolumeButtonRotationState"

    return-object v0

    .line 808
    :pswitch_20
    const-string/jumbo v0, "getVolumePanelEnabledState"

    return-object v0

    .line 804
    :pswitch_21
    const-string/jumbo v0, "getSensorDisabled"

    return-object v0

    .line 800
    :pswitch_22
    const-string/jumbo v0, "getToastShowPackageNameState"

    return-object v0

    .line 796
    :pswitch_23
    const-string/jumbo v0, "getToastEnabledState"

    return-object v0

    .line 792
    :pswitch_24
    const-string/jumbo v0, "getVolumeControlStream"

    return-object v0

    .line 788
    :pswitch_25
    const-string/jumbo v0, "getProKioskHideNotificationMessages"

    return-object v0

    .line 784
    :pswitch_26
    const-string/jumbo v0, "getProKioskNotificationMessagesState"

    return-object v0

    .line 780
    :pswitch_27
    const-string/jumbo v0, "getProKioskState"

    return-object v0

    .line 776
    :pswitch_28
    const-string/jumbo v0, "isCopyContactToSimAllowed"

    return-object v0

    .line 772
    :pswitch_29
    const-string/jumbo v0, "isAnyApplicationNameChangedAsUser"

    return-object v0

    .line 768
    :pswitch_2a
    const-string v0, "getApplicationNameFromDb"

    return-object v0

    .line 764
    :pswitch_2b
    const-string/jumbo v0, "isAccountRemovalAllowed"

    return-object v0

    .line 760
    :pswitch_2c
    const-string/jumbo v0, "isWapPushAllowed"

    return-object v0

    .line 756
    :pswitch_2d
    const-string/jumbo v0, "storeBlockedSmsMms"

    return-object v0

    .line 752
    :pswitch_2e
    const-string/jumbo v0, "isBlockMmsWithStorageEnabled"

    return-object v0

    .line 748
    :pswitch_2f
    const-string/jumbo v0, "isBlockSmsWithStorageEnabled"

    return-object v0

    .line 744
    :pswitch_30
    const-string/jumbo v0, "isClipboardShareAllowed"

    return-object v0

    .line 740
    :pswitch_31
    const-string/jumbo v0, "validateCertificateAtInstallAsUser"

    return-object v0

    .line 736
    :pswitch_32
    const-string/jumbo v0, "notifyCertificateRemovedAsUser"

    return-object v0

    .line 732
    :pswitch_33
    const-string/jumbo v0, "isVideoRecordAllowed"

    return-object v0

    .line 728
    :pswitch_34
    const-string/jumbo v0, "isAudioRecordAllowed"

    return-object v0

    .line 724
    :pswitch_35
    const-string/jumbo v0, "isCertificateValidationAtInstallEnabledAsUser"

    return-object v0

    .line 720
    :pswitch_36
    const-string/jumbo v0, "isCertificateTrustedUntrustedEnabledAsUser"

    return-object v0

    .line 716
    :pswitch_37
    const-string/jumbo v0, "isCaCertificateTrustedAsUser"

    return-object v0

    .line 712
    :pswitch_38
    const-string/jumbo v0, "isOcspCheckEnabled"

    return-object v0

    .line 708
    :pswitch_39
    const-string/jumbo v0, "isRevocationCheckEnabled"

    return-object v0

    .line 704
    :pswitch_3a
    const-string/jumbo v0, "notifyCertificateFailureAsUser"

    return-object v0

    .line 700
    :pswitch_3b
    const-string/jumbo v0, "isAuditLogEnabledAsUser"

    return-object v0

    .line 696
    :pswitch_3c
    const-string v0, "RedactedAuditLoggerPrivilegedAsUser"

    return-object v0

    .line 692
    :pswitch_3d
    const-string v0, "AuditLoggerPrivilegedAsUser"

    return-object v0

    .line 688
    :pswitch_3e
    const-string v0, "RedactedAuditLoggerPrivileged"

    return-object v0

    .line 684
    :pswitch_3f
    const-string v0, "AuditLoggerPrivileged"

    return-object v0

    .line 680
    :pswitch_40
    const-string v0, "RedactedAuditLoggerAsUser"

    return-object v0

    .line 676
    :pswitch_41
    const-string v0, "AuditLoggerAsUser"

    return-object v0

    .line 672
    :pswitch_42
    const-string v0, "RedactedAuditLogger"

    return-object v0

    .line 668
    :pswitch_43
    const-string v0, "AuditLogger"

    return-object v0

    .line 664
    :pswitch_44
    const-string/jumbo v0, "isBackupAllowed"

    return-object v0

    .line 660
    :pswitch_45
    const-string/jumbo v0, "isIncomingMmsAllowed"

    return-object v0

    .line 656
    :pswitch_46
    const-string v0, "bluetoothLog"

    return-object v0

    .line 652
    :pswitch_47
    const-string/jumbo v0, "isBluetoothLogEnabled"

    return-object v0

    .line 648
    :pswitch_48
    const-string/jumbo v0, "isOutgoingSmsAllowed"

    return-object v0

    .line 644
    :pswitch_49
    const-string/jumbo v0, "isIncomingSmsAllowed"

    return-object v0

    .line 640
    :pswitch_4a
    const-string/jumbo v0, "isTaskManagerAllowed"

    return-object v0

    .line 636
    :pswitch_4b
    const-string/jumbo v0, "isFactoryResetAllowed"

    return-object v0

    .line 632
    :pswitch_4c
    const-string/jumbo v0, "isScreenLockPatternVisibilityEnabledAsUser"

    return-object v0

    .line 628
    :pswitch_4d
    const-string/jumbo v0, "isScreenLockPatternVisibilityEnabled"

    return-object v0

    .line 624
    :pswitch_4e
    const-string/jumbo v0, "isNtpSetByMDM"

    return-object v0

    .line 620
    :pswitch_4f
    const-string/jumbo v0, "shallForceNtpMdmValues"

    return-object v0

    .line 616
    :pswitch_50
    const-string/jumbo v0, "getNtpTimeout"

    return-object v0

    .line 612
    :pswitch_51
    const-string/jumbo v0, "getNtpServer"

    return-object v0

    .line 608
    :pswitch_52
    const-string/jumbo v0, "isSmsPatternCheckRequired"

    return-object v0

    .line 604
    :pswitch_53
    const-string v0, "canIncomingSms"

    return-object v0

    .line 600
    :pswitch_54
    const-string v0, "canOutgoingSms"

    return-object v0

    .line 596
    :pswitch_55
    const-string v0, "decreaseNumberOfOutgoingSms"

    return-object v0

    .line 592
    :pswitch_56
    const-string v0, "addNumberOfOutgoingSms"

    return-object v0

    .line 588
    :pswitch_57
    const-string v0, "addNumberOfIncomingSms"

    return-object v0

    .line 584
    :pswitch_58
    const-string/jumbo v0, "isLimitNumberOfSmsEnabled"

    return-object v0

    .line 580
    :pswitch_59
    const-string v0, "addNumberOfOutgoingCalls"

    return-object v0

    .line 576
    :pswitch_5a
    const-string v0, "addNumberOfIncomingCalls"

    return-object v0

    .line 572
    :pswitch_5b
    const-string v0, "getEmergencyCallOnly"

    return-object v0

    .line 568
    :pswitch_5c
    const-string/jumbo v0, "isMicrophoneEnabled"

    return-object v0

    .line 564
    :pswitch_5d
    const-string/jumbo v0, "isClipboardAllowed"

    return-object v0

    .line 560
    :pswitch_5e
    const-string/jumbo v0, "isRoamingDataEnabled"

    return-object v0

    .line 556
    :pswitch_5f
    const-string/jumbo v0, "isRoamingPushEnabled"

    return-object v0

    .line 552
    :pswitch_60
    const-string v0, "getBrowserSettingStatus"

    return-object v0

    .line 548
    :pswitch_61
    const-string/jumbo v0, "isBluetoothEnabled"

    return-object v0

    .line 544
    :pswitch_62
    const-string/jumbo v0, "isDiscoverableEnabled"

    return-object v0

    .line 540
    :pswitch_63
    const-string/jumbo v0, "isPairingEnabled"

    return-object v0

    .line 536
    :pswitch_64
    const-string/jumbo v0, "isBluetoothDeviceAllowed"

    return-object v0

    .line 532
    :pswitch_65
    const-string/jumbo v0, "isProfileEnabled"

    return-object v0

    .line 528
    :pswitch_66
    const-string/jumbo v0, "isBluetoothUUIDAllowed"

    return-object v0

    .line 524
    :pswitch_67
    const-string/jumbo v0, "isOutgoingCallsAllowed"

    return-object v0

    .line 520
    :pswitch_68
    const-string v0, "getAllowBluetoothDataTransfer"

    return-object v0

    .line 516
    :pswitch_69
    const-string v0, "getApplicationIconFromDb"

    return-object v0

    .line 512
    :pswitch_6a
    const-string/jumbo v0, "storeSMS"

    return-object v0

    .line 508
    :pswitch_6b
    const-string/jumbo v0, "isSMSCaptureEnabled"

    return-object v0

    .line 504
    :pswitch_6c
    const-string/jumbo v0, "storeCalling"

    return-object v0

    .line 500
    :pswitch_6d
    const-string/jumbo v0, "isCallingCaptureEnabled"

    return-object v0

    .line 496
    :pswitch_6e
    const-string v0, "addCallsCount"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 487
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 4213
    const/16 v0, 0x6e

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 947
    invoke-static {p1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 951
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p3

    const-string v12, "android.sec.enterprise.IEDMProxy"

    .line 952
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v10, v13, :cond_0

    const v0, 0xffffff

    if-gt v10, v0, :cond_0

    .line 953
    move-object/from16 v14, p2

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 952
    :cond_0
    move-object/from16 v14, p2

    .line 955
    :goto_0
    packed-switch v10, :pswitch_data_0

    .line 963
    packed-switch v10, :pswitch_data_1

    .line 2077
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 959
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 960
    return v13

    .line 2068
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2069
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2070
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isDataAllowedFromSimSlot(I)Z

    move-result v1

    .line 2071
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2072
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2073
    goto/16 :goto_1

    .line 2058
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2059
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2060
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->canIncomingCall(Ljava/lang/String;)Z

    move-result v1

    .line 2061
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2062
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2063
    goto/16 :goto_1

    .line 2048
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2049
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2050
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v1

    .line 2051
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2052
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2053
    goto/16 :goto_1

    .line 2038
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2039
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2040
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isIncomingCallAllowedFromSimSlot(I)Z

    move-result v1

    .line 2041
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2042
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2043
    goto/16 :goto_1

    .line 2028
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2029
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2030
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isOutgoingCallAllowedFromSimSlot(I)Z

    move-result v1

    .line 2031
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2032
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2033
    goto/16 :goto_1

    .line 2018
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2019
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2020
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isMmsAllowedFromSimSlot(I)Z

    move-result v1

    .line 2021
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2022
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2023
    goto/16 :goto_1

    .line 2008
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2009
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2010
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isOutgoingSmsAllowedFromSimSlot(I)Z

    move-result v1

    .line 2011
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2012
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2013
    goto/16 :goto_1

    .line 1998
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1999
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2000
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isIncomingSmsAllowedFromSimSlot(I)Z

    move-result v1

    .line 2001
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2002
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2003
    goto/16 :goto_1

    .line 1987
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1989
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1990
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1991
    invoke-virtual {v9, v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->notifyPasswordPolicyOneLockChanged(ZI)V

    .line 1992
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1993
    goto/16 :goto_1

    .line 1977
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1978
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1979
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isPackageInAvrWhitelist(I)Z

    move-result v1

    .line 1980
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1981
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1982
    goto/16 :goto_1

    .line 1967
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1968
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1969
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isGoogleAccountsAutoSyncAllowedAsUser(I)Z

    move-result v1

    .line 1970
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1971
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1972
    goto/16 :goto_1

    .line 1959
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isMockLocationEnabled()Z

    move-result v0

    .line 1960
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1961
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1962
    goto/16 :goto_1

    .line 1950
    .end local v0    # "_result":Z
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    move-result-object v0

    .line 1951
    .local v0, "_arg0":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1952
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z

    move-result v1

    .line 1953
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1954
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1955
    goto/16 :goto_1

    .line 1942
    .end local v0    # "_arg0":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    .end local v1    # "_result":Z
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAddHomeShorcutRequested()Z

    move-result v0

    .line 1943
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1944
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1945
    goto/16 :goto_1

    .line 1933
    .end local v0    # "_result":Z
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1934
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1935
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1936
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1937
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1938
    goto/16 :goto_1

    .line 1919
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1921
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1923
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1924
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1925
    invoke-virtual {v9, v0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->ucmSign(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v3

    .line 1926
    .local v3, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1927
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1928
    goto/16 :goto_1

    .line 1905
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":[B
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1907
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1909
    .restart local v1    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1910
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1911
    invoke-virtual {v9, v0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->ucmEncrypt(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v3

    .line 1912
    .restart local v3    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1913
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1914
    goto/16 :goto_1

    .line 1891
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":[B
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1893
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 1895
    .restart local v1    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1896
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1897
    invoke-virtual {v9, v0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->ucmDecrypt(Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v3

    .line 1898
    .restart local v3    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1899
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1900
    goto/16 :goto_1

    .line 1881
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":[B
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1882
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1883
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->ucmGetCertificateChain(Ljava/lang/String;)[B

    move-result-object v1

    .line 1884
    .local v1, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1885
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1886
    goto/16 :goto_1

    .line 1869
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[B
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1871
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1872
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1873
    invoke-virtual {v9, v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isPackageAllowedToAccessExternalSdcard(II)Z

    move-result v2

    .line 1874
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1875
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1876
    goto/16 :goto_1

    .line 1859
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1860
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1861
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isKnoxBluetoothEnabled(I)Z

    move-result v1

    .line 1862
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1863
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1864
    goto/16 :goto_1

    .line 1851
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getExtendedCallInfoState()Z

    move-result v0

    .line 1852
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1853
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1854
    goto/16 :goto_1

    .line 1840
    .end local v0    # "_result":Z
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1842
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1843
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1844
    invoke-virtual {v9, v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    .line 1845
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1846
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1847
    goto/16 :goto_1

    .line 1830
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1831
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1832
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v1

    .line 1833
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1834
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1835
    goto/16 :goto_1

    .line 1822
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getUsbNetStateInternal()Z

    move-result v0

    .line 1823
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1824
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1825
    goto/16 :goto_1

    .line 1815
    .end local v0    # "_result":Z
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getWifiState()Z

    move-result v0

    .line 1816
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1817
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1818
    goto/16 :goto_1

    .line 1808
    .end local v0    # "_result":Z
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getKeyboardMode()I

    move-result v0

    .line 1809
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1810
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1811
    goto/16 :goto_1

    .line 1801
    .end local v0    # "_result":I
    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getToastGravityYOffset()I

    move-result v0

    .line 1802
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1803
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1804
    goto/16 :goto_1

    .line 1794
    .end local v0    # "_result":I
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getToastGravityXOffset()I

    move-result v0

    .line 1795
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1796
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1797
    goto/16 :goto_1

    .line 1787
    .end local v0    # "_result":I
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getToastGravity()I

    move-result v0

    .line 1788
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1789
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1790
    goto/16 :goto_1

    .line 1780
    .end local v0    # "_result":I
    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getToastGravityEnabledState()Z

    move-result v0

    .line 1781
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1782
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1783
    goto/16 :goto_1

    .line 1773
    .end local v0    # "_result":Z
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getVolumeButtonRotationState()Z

    move-result v0

    .line 1774
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1775
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1776
    goto/16 :goto_1

    .line 1766
    .end local v0    # "_result":Z
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getVolumePanelEnabledState()Z

    move-result v0

    .line 1767
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1768
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1769
    goto/16 :goto_1

    .line 1759
    .end local v0    # "_result":Z
    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getSensorDisabled()I

    move-result v0

    .line 1760
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1761
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1762
    goto/16 :goto_1

    .line 1752
    .end local v0    # "_result":I
    :pswitch_23
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getToastShowPackageNameState()Z

    move-result v0

    .line 1753
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1754
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1755
    goto/16 :goto_1

    .line 1745
    .end local v0    # "_result":Z
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getToastEnabledState()Z

    move-result v0

    .line 1746
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1747
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1748
    goto/16 :goto_1

    .line 1738
    .end local v0    # "_result":Z
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getVolumeControlStream()I

    move-result v0

    .line 1739
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1740
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1741
    goto/16 :goto_1

    .line 1731
    .end local v0    # "_result":I
    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getProKioskHideNotificationMessages()I

    move-result v0

    .line 1732
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1733
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1734
    goto/16 :goto_1

    .line 1724
    .end local v0    # "_result":I
    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getProKioskNotificationMessagesState()Z

    move-result v0

    .line 1725
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1726
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1727
    goto/16 :goto_1

    .line 1717
    .end local v0    # "_result":Z
    :pswitch_28
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getProKioskState()Z

    move-result v0

    .line 1718
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1719
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1720
    goto/16 :goto_1

    .line 1708
    .end local v0    # "_result":Z
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1709
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1710
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCopyContactToSimAllowed(I)Z

    move-result v1

    .line 1711
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1712
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1713
    goto/16 :goto_1

    .line 1698
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1699
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1700
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAnyApplicationNameChangedAsUser(I)Z

    move-result v1

    .line 1701
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1702
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1703
    goto/16 :goto_1

    .line 1686
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1688
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1689
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1690
    invoke-virtual {v9, v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1691
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1692
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1693
    goto/16 :goto_1

    .line 1672
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1674
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1676
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1677
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1678
    invoke-virtual {v9, v0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 1679
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1680
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1681
    goto/16 :goto_1

    .line 1664
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Z
    :pswitch_2d
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isWapPushAllowed()Z

    move-result v0

    .line 1665
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1666
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1667
    goto/16 :goto_1

    .line 1644
    .end local v0    # "_result":Z
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 1646
    .local v8, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 1648
    .local v15, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1650
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1652
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1654
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1656
    .local v19, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1657
    .local v20, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1658
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v15

    move-object/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1660
    goto/16 :goto_1

    .line 1636
    .end local v8    # "_arg0":Z
    .end local v15    # "_arg1":[B
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":Ljava/lang/String;
    :pswitch_2f
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBlockMmsWithStorageEnabled()Z

    move-result v0

    .line 1637
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1638
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1639
    goto/16 :goto_1

    .line 1629
    .end local v0    # "_result":Z
    :pswitch_30
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBlockSmsWithStorageEnabled()Z

    move-result v0

    .line 1630
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1631
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1632
    goto/16 :goto_1

    .line 1622
    .end local v0    # "_result":Z
    :pswitch_31
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isClipboardShareAllowed()Z

    move-result v0

    .line 1623
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1624
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1625
    goto/16 :goto_1

    .line 1611
    .end local v0    # "_result":Z
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1613
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1614
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1615
    invoke-virtual {v9, v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->validateCertificateAtInstallAsUser([BI)I

    move-result v2

    .line 1616
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1617
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1618
    goto/16 :goto_1

    .line 1600
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1602
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1603
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1604
    invoke-virtual {v9, v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->notifyCertificateRemovedAsUser(Ljava/lang/String;I)V

    .line 1605
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1606
    goto/16 :goto_1

    .line 1590
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1591
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1592
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isVideoRecordAllowed(Z)Z

    move-result v1

    .line 1593
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1594
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1595
    goto/16 :goto_1

    .line 1580
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1581
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1582
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAudioRecordAllowed(Z)Z

    move-result v1

    .line 1583
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1584
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1585
    goto/16 :goto_1

    .line 1570
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1571
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1572
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v1

    .line 1573
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1574
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1575
    goto/16 :goto_1

    .line 1560
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1561
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1562
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCertificateTrustedUntrustedEnabledAsUser(I)Z

    move-result v1

    .line 1563
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1564
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1565
    goto/16 :goto_1

    .line 1544
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1546
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1548
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1550
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1551
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1552
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCaCertificateTrustedAsUser([BZZI)Z

    move-result v4

    .line 1553
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1554
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1555
    goto/16 :goto_1

    .line 1536
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_39
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isOcspCheckEnabled()Z

    move-result v0

    .line 1537
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1538
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1539
    goto/16 :goto_1

    .line 1529
    .end local v0    # "_result":Z
    :pswitch_3a
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isRevocationCheckEnabled()Z

    move-result v0

    .line 1530
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1531
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1532
    goto/16 :goto_1

    .line 1515
    .end local v0    # "_result":Z
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1517
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1519
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1521
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1522
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1523
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/sec/enterprise/IEDMProxy$Stub;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1524
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1525
    goto/16 :goto_1

    .line 1505
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":I
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1506
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1507
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAuditLogEnabledAsUser(I)Z

    move-result v1

    .line 1508
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1509
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1510
    goto/16 :goto_1

    .line 1482
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1484
    .local v15, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1486
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 1488
    .local v17, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1490
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1492
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1494
    .local v20, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1496
    .local v21, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1497
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1498
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/sec/enterprise/IEDMProxy$Stub;->RedactedAuditLoggerPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1499
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1500
    goto/16 :goto_1

    .line 1461
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":Z
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Ljava/lang/String;
    .end local v21    # "_arg6":Ljava/lang/String;
    .end local v22    # "_arg7":I
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1463
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1465
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 1467
    .local v16, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1469
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1471
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1473
    .local v19, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1474
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1475
    move-object/from16 v0, p0

    move v1, v8

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->AuditLoggerPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1477
    goto/16 :goto_1

    .line 1440
    .end local v8    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":Z
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":I
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1442
    .restart local v8    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1444
    .restart local v15    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 1446
    .restart local v16    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1448
    .restart local v17    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1450
    .restart local v18    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1452
    .restart local v19    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1453
    .local v20, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1454
    move-object/from16 v0, p0

    move v1, v8

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->RedactedAuditLoggerPrivileged(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1456
    goto/16 :goto_1

    .line 1421
    .end local v8    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":Z
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":Ljava/lang/String;
    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1423
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1425
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 1427
    .local v15, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1429
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1431
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1432
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1433
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/sec/enterprise/IEDMProxy$Stub;->AuditLoggerPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1434
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1435
    goto/16 :goto_1

    .line 1398
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v15    # "_arg2":Z
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1400
    .local v15, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1402
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 1404
    .local v17, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1406
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1408
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1410
    .local v20, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1412
    .restart local v21    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1413
    .restart local v22    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1414
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/sec/enterprise/IEDMProxy$Stub;->RedactedAuditLoggerAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1416
    goto/16 :goto_1

    .line 1377
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":Z
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Ljava/lang/String;
    .end local v21    # "_arg6":Ljava/lang/String;
    .end local v22    # "_arg7":I
    :pswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1379
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1381
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 1383
    .local v16, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1385
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1387
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1389
    .local v19, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1390
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1391
    move-object/from16 v0, p0

    move v1, v8

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->AuditLoggerAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1393
    goto/16 :goto_1

    .line 1356
    .end local v8    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":Z
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":I
    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1358
    .restart local v8    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1360
    .restart local v15    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 1362
    .restart local v16    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1364
    .restart local v17    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1366
    .restart local v18    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1368
    .restart local v19    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1369
    .local v20, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1370
    move-object/from16 v0, p0

    move v1, v8

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->RedactedAuditLogger(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1372
    goto/16 :goto_1

    .line 1337
    .end local v8    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":Z
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":Ljava/lang/String;
    :pswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1339
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1341
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 1343
    .local v15, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1345
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1347
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1348
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1349
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/sec/enterprise/IEDMProxy$Stub;->AuditLogger(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1351
    goto/16 :goto_1

    .line 1327
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v15    # "_arg2":Z
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1328
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1329
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBackupAllowed(Z)Z

    move-result v1

    .line 1330
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1331
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1332
    goto/16 :goto_1

    .line 1319
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_46
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isIncomingMmsAllowed()Z

    move-result v0

    .line 1320
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1321
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1322
    goto/16 :goto_1

    .line 1309
    .end local v0    # "_result":Z
    :pswitch_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1311
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1312
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1313
    invoke-virtual {v9, v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1315
    goto/16 :goto_1

    .line 1301
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_48
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothLogEnabled()Z

    move-result v0

    .line 1302
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1303
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1304
    goto/16 :goto_1

    .line 1294
    .end local v0    # "_result":Z
    :pswitch_49
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isOutgoingSmsAllowed()Z

    move-result v0

    .line 1295
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1296
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1297
    goto/16 :goto_1

    .line 1287
    .end local v0    # "_result":Z
    :pswitch_4a
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isIncomingSmsAllowed()Z

    move-result v0

    .line 1288
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1289
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1290
    goto/16 :goto_1

    .line 1278
    .end local v0    # "_result":Z
    :pswitch_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1279
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1280
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isTaskManagerAllowed(Z)Z

    move-result v1

    .line 1281
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1282
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1283
    goto/16 :goto_1

    .line 1270
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_4c
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isFactoryResetAllowed()Z

    move-result v0

    .line 1271
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1272
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1273
    goto/16 :goto_1

    .line 1261
    .end local v0    # "_result":Z
    :pswitch_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1262
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1263
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isScreenLockPatternVisibilityEnabledAsUser(I)Z

    move-result v1

    .line 1264
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1265
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1266
    goto/16 :goto_1

    .line 1253
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4e
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isScreenLockPatternVisibilityEnabled()Z

    move-result v0

    .line 1254
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1255
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1256
    goto/16 :goto_1

    .line 1246
    .end local v0    # "_result":Z
    :pswitch_4f
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isNtpSetByMDM()Z

    move-result v0

    .line 1247
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1248
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1249
    goto/16 :goto_1

    .line 1239
    .end local v0    # "_result":Z
    :pswitch_50
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->shallForceNtpMdmValues()Z

    move-result v0

    .line 1240
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1242
    goto/16 :goto_1

    .line 1232
    .end local v0    # "_result":Z
    :pswitch_51
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getNtpTimeout()J

    move-result-wide v0

    .line 1233
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1234
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1235
    goto/16 :goto_1

    .line 1225
    .end local v0    # "_result":J
    :pswitch_52
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getNtpServer()Ljava/lang/String;

    move-result-object v0

    .line 1226
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1227
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1228
    goto/16 :goto_1

    .line 1218
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_53
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSmsPatternCheckRequired()Z

    move-result v0

    .line 1219
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1220
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1221
    goto/16 :goto_1

    .line 1209
    .end local v0    # "_result":Z
    :pswitch_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1210
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1211
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->canIncomingSms(Ljava/lang/String;)Z

    move-result v1

    .line 1212
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1213
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1214
    goto/16 :goto_1

    .line 1199
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1200
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1201
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v1

    .line 1202
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1203
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1204
    goto/16 :goto_1

    .line 1191
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_56
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->decreaseNumberOfOutgoingSms()Z

    move-result v0

    .line 1192
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1193
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1194
    goto/16 :goto_1

    .line 1184
    .end local v0    # "_result":Z
    :pswitch_57
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfOutgoingSms()Z

    move-result v0

    .line 1185
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1186
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1187
    goto/16 :goto_1

    .line 1177
    .end local v0    # "_result":Z
    :pswitch_58
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfIncomingSms()Z

    move-result v0

    .line 1178
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1179
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1180
    goto/16 :goto_1

    .line 1170
    .end local v0    # "_result":Z
    :pswitch_59
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isLimitNumberOfSmsEnabled()Z

    move-result v0

    .line 1171
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1172
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1173
    goto/16 :goto_1

    .line 1163
    .end local v0    # "_result":Z
    :pswitch_5a
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfOutgoingCalls()Z

    move-result v0

    .line 1164
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1165
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1166
    goto/16 :goto_1

    .line 1156
    .end local v0    # "_result":Z
    :pswitch_5b
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfIncomingCalls()Z

    move-result v0

    .line 1157
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1158
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1159
    goto/16 :goto_1

    .line 1147
    .end local v0    # "_result":Z
    :pswitch_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1148
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1149
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getEmergencyCallOnly(Z)Z

    move-result v1

    .line 1150
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1151
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1152
    goto/16 :goto_1

    .line 1137
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1138
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1139
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isMicrophoneEnabled(Z)Z

    move-result v1

    .line 1140
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1141
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1142
    goto/16 :goto_1

    .line 1127
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1128
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1129
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isClipboardAllowed(Z)Z

    move-result v1

    .line 1130
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1132
    goto/16 :goto_1

    .line 1119
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_5f
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isRoamingDataEnabled()Z

    move-result v0

    .line 1120
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1122
    goto/16 :goto_1

    .line 1112
    .end local v0    # "_result":Z
    :pswitch_60
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isRoamingPushEnabled()Z

    move-result v0

    .line 1113
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1115
    goto/16 :goto_1

    .line 1103
    .end local v0    # "_result":Z
    :pswitch_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1104
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1105
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getBrowserSettingStatus(I)Z

    move-result v1

    .line 1106
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1107
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1108
    goto/16 :goto_1

    .line 1095
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_62
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothEnabled()Z

    move-result v0

    .line 1096
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1098
    goto/16 :goto_1

    .line 1088
    .end local v0    # "_result":Z
    :pswitch_63
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isDiscoverableEnabled()Z

    move-result v0

    .line 1089
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1090
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1091
    goto/16 :goto_1

    .line 1081
    .end local v0    # "_result":Z
    :pswitch_64
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isPairingEnabled()Z

    move-result v0

    .line 1082
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1084
    goto/16 :goto_1

    .line 1072
    .end local v0    # "_result":Z
    :pswitch_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1073
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1074
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothDeviceAllowed(Ljava/lang/String;)Z

    move-result v1

    .line 1075
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1077
    goto/16 :goto_1

    .line 1062
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1063
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1064
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isProfileEnabled(I)Z

    move-result v1

    .line 1065
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1067
    goto/16 :goto_1

    .line 1052
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1053
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1054
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v1

    .line 1055
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1057
    goto/16 :goto_1

    .line 1044
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_68
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isOutgoingCallsAllowed()Z

    move-result v0

    .line 1045
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1047
    goto/16 :goto_1

    .line 1035
    .end local v0    # "_result":Z
    :pswitch_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1036
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1037
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAllowBluetoothDataTransfer(Z)Z

    move-result v1

    .line 1038
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1039
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1040
    goto/16 :goto_1

    .line 1023
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1025
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1026
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1027
    invoke-virtual {v9, v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationIconFromDb(Ljava/lang/String;I)[B

    move-result-object v2

    .line 1028
    .local v2, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1030
    goto :goto_1

    .line 1008
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[B
    :pswitch_6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1010
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1012
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1014
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1015
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1016
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/sec/enterprise/IEDMProxy$Stub;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1017
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    goto :goto_1

    .line 1000
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Z
    :pswitch_6c
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSMSCaptureEnabled()Z

    move-result v0

    .line 1001
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1002
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1003
    goto :goto_1

    .line 984
    .end local v0    # "_result":Z
    :pswitch_6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 986
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 988
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 990
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 992
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 993
    .local v16, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 994
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/sec/enterprise/IEDMProxy$Stub;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 995
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    goto :goto_1

    .line 976
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Z
    :pswitch_6e
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCallingCaptureEnabled()Z

    move-result v0

    .line 977
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 978
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 979
    goto :goto_1

    .line 968
    .end local v0    # "_result":Z
    :pswitch_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 969
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 970
    invoke-virtual {v9, v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addCallsCount(Ljava/lang/String;)V

    .line 971
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    nop

    .line 2080
    .end local v0    # "_arg0":Ljava/lang/String;
    :goto_1
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
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
