.class public abstract Landroid/os/IVold$Stub;
.super Landroid/os/Binder;
.source "IVold.java"

# interfaces
.implements Landroid/os/IVold;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVold$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IVold"

.field static final blacklist TRANSACTION_abortChanges:I = 0x40

.field static final blacklist TRANSACTION_abortFuse:I = 0x2

.field static final greylist-max-o TRANSACTION_abortIdleMaint:I = 0x1e

.field static final blacklist TRANSACTION_addAppIds:I = 0xa

.field static final blacklist TRANSACTION_addSandboxIds:I = 0xb

.field static final greylist-max-o TRANSACTION_addUserKeyAuth:I = 0x31

.field static final blacklist TRANSACTION_asecCreate:I = 0x5f

.field static final blacklist TRANSACTION_asecDestroy:I = 0x63

.field static final blacklist TRANSACTION_asecFinalize:I = 0x61

.field static final blacklist TRANSACTION_asecFixperms:I = 0x62

.field static final blacklist TRANSACTION_asecFsPath:I = 0x68

.field static final blacklist TRANSACTION_asecList:I = 0x69

.field static final blacklist TRANSACTION_asecMount:I = 0x64

.field static final blacklist TRANSACTION_asecPath:I = 0x67

.field static final blacklist TRANSACTION_asecRename:I = 0x66

.field static final blacklist TRANSACTION_asecResize:I = 0x60

.field static final blacklist TRANSACTION_asecUnmount:I = 0x65

.field static final greylist-max-o TRANSACTION_benchmark:I = 0x12

.field static final blacklist TRANSACTION_bindMount:I = 0x58

.field static final blacklist TRANSACTION_clearUserKeyAuth:I = 0x32

.field static final blacklist TRANSACTION_commitChanges:I = 0x41

.field static final blacklist TRANSACTION_cpFileAtData:I = 0x5d

.field static final greylist-max-o TRANSACTION_createObb:I = 0x1a

.field static final blacklist TRANSACTION_createStubVolume:I = 0x4b

.field static final greylist-max-o TRANSACTION_createUserKey:I = 0x2f

.field static final blacklist TRANSACTION_destroyDsuMetadataKey:I = 0x59

.field static final greylist-max-o TRANSACTION_destroyObb:I = 0x1b

.field static final blacklist TRANSACTION_destroySandboxForApp:I = 0x3b

.field static final blacklist TRANSACTION_destroyStubVolume:I = 0x4c

.field static final greylist-max-o TRANSACTION_destroyUserKey:I = 0x30

.field static final greylist-max-o TRANSACTION_destroyUserStorage:I = 0x39

.field static final blacklist TRANSACTION_earlyBootEnded:I = 0x4a

.field static final greylist-max-o TRANSACTION_encryptFstab:I = 0x2d

.field static final blacklist TRANSACTION_ensureAppDirsCreated:I = 0x19

.field static final greylist-max-o TRANSACTION_fbeEnable:I = 0x29

.field static final greylist-max-o TRANSACTION_fixateNewestUserKeyAuth:I = 0x33

.field static final blacklist TRANSACTION_fixupAppDir:I = 0x18

.field static final greylist-max-o TRANSACTION_forgetPartition:I = 0xe

.field static final greylist-max-o TRANSACTION_format:I = 0x11

.field static final greylist-max-o TRANSACTION_fstrim:I = 0x1c

.field static final blacklist TRANSACTION_getStorageLifeTime:I = 0x1f

.field static final blacklist TRANSACTION_getUnlockedUsers:I = 0x34

.field static final blacklist TRANSACTION_getUsedF2fsFileNode:I = 0x5b

.field static final blacklist TRANSACTION_getWriteAmount:I = 0x22

.field static final blacklist TRANSACTION_incFsEnabled:I = 0x54

.field static final greylist-max-o TRANSACTION_initUser0:I = 0x2b

.field static final blacklist TRANSACTION_isCheckpointing:I = 0x3f

.field static final blacklist TRANSACTION_isFbeSecure:I = 0x2a

.field static final blacklist TRANSACTION_isSensitive:I = 0x4f

.field static final greylist-max-o TRANSACTION_lockUserKey:I = 0x36

.field static final blacklist TRANSACTION_markBootAttempt:I = 0x45

.field static final greylist-max-o TRANSACTION_monitor:I = 0x3

.field static final greylist-max-o TRANSACTION_mount:I = 0xf

.field static final greylist-max-o TRANSACTION_mountAppFuse:I = 0x23

.field static final greylist-max-o TRANSACTION_mountFstab:I = 0x2c

.field static final blacklist TRANSACTION_mountIncFs:I = 0x55

.field static final blacklist TRANSACTION_mountSdpMediaStorageCmd:I = 0x50

.field static final greylist-max-o TRANSACTION_moveStorage:I = 0x13

.field static final blacklist TRANSACTION_mvFileAtData:I = 0x5c

.field static final blacklist TRANSACTION_needsCheckpoint:I = 0x3d

.field static final blacklist TRANSACTION_needsRollback:I = 0x3e

.field static final greylist-max-o TRANSACTION_onSecureKeyguardStateChanged:I = 0xc

.field static final greylist-max-o TRANSACTION_onUserAdded:I = 0x6

.field static final greylist-max-o TRANSACTION_onUserRemoved:I = 0x7

.field static final greylist-max-o TRANSACTION_onUserStarted:I = 0x8

.field static final greylist-max-o TRANSACTION_onUserStopped:I = 0x9

.field static final blacklist TRANSACTION_openAppFuseFile:I = 0x4d

.field static final greylist-max-o TRANSACTION_partition:I = 0xd

.field static final blacklist TRANSACTION_prepareCheckpoint:I = 0x42

.field static final blacklist TRANSACTION_prepareSandboxForApp:I = 0x3a

.field static final greylist-max-o TRANSACTION_prepareUserStorage:I = 0x38

.field static final blacklist TRANSACTION_refreshLatestWrite:I = 0x21

.field static final blacklist TRANSACTION_remountAppStorageDirs:I = 0x15

.field static final greylist-max-o TRANSACTION_remountUid:I = 0x14

.field static final greylist-max-o TRANSACTION_reset:I = 0x4

.field static final blacklist TRANSACTION_resetCheckpoint:I = 0x49

.field static final blacklist TRANSACTION_restoreCheckpoint:I = 0x43

.field static final blacklist TRANSACTION_restoreCheckpointPart:I = 0x44

.field static final blacklist TRANSACTION_runIdleDefrag:I = 0x5a

.field static final greylist-max-o TRANSACTION_runIdleMaint:I = 0x1d

.field static final blacklist TRANSACTION_sdeEnable:I = 0x27

.field static final blacklist TRANSACTION_sdeMoveMountHidden:I = 0x28

.field static final blacklist TRANSACTION_setDebugForExternal:I = 0x37

.field static final blacklist TRANSACTION_setDualDARPolicyCmd:I = 0x53

.field static final blacklist TRANSACTION_setGCUrgentPace:I = 0x20

.field static final blacklist TRANSACTION_setIncFsMountOptions:I = 0x57

.field static final greylist-max-o TRANSACTION_setListener:I = 0x1

.field static final blacklist TRANSACTION_setMpUidForFileSystem:I = 0x5e

.field static final blacklist TRANSACTION_setSdpPolicyCmd:I = 0x51

.field static final blacklist TRANSACTION_setSdpPolicyToPathCmd:I = 0x52

.field static final blacklist TRANSACTION_setSensitive:I = 0x4e

.field static final blacklist TRANSACTION_setStorageBindingSeed:I = 0x2e

.field static final blacklist TRANSACTION_setupAppDir:I = 0x17

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x5

.field static final blacklist TRANSACTION_startCheckpoint:I = 0x3c

.field static final blacklist TRANSACTION_startServiceSnsDataRedirect:I = 0x25

.field static final blacklist TRANSACTION_stopServiceSnsDataRedirect:I = 0x26

.field static final blacklist TRANSACTION_supportsBlockCheckpoint:I = 0x47

.field static final blacklist TRANSACTION_supportsCheckpoint:I = 0x46

.field static final blacklist TRANSACTION_supportsFileCheckpoint:I = 0x48

.field static final greylist-max-o TRANSACTION_unlockUserKey:I = 0x35

.field static final greylist-max-o TRANSACTION_unmount:I = 0x10

.field static final greylist-max-o TRANSACTION_unmountAppFuse:I = 0x24

.field static final blacklist TRANSACTION_unmountAppStorageDirs:I = 0x16

.field static final blacklist TRANSACTION_unmountIncFs:I = 0x56


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 378
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 379
    const-string v0, "android.os.IVold"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVold$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/IVold;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 387
    if-nez p0, :cond_0

    .line 388
    const/4 v0, 0x0

    return-object v0

    .line 390
    :cond_0
    const-string v0, "android.os.IVold"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 391
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IVold;

    if-eqz v1, :cond_1

    .line 392
    move-object v1, v0

    check-cast v1, Landroid/os/IVold;

    return-object v1

    .line 394
    :cond_1
    new-instance v1, Landroid/os/IVold$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IVold$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 403
    packed-switch p0, :pswitch_data_0

    .line 827
    const/4 v0, 0x0

    return-object v0

    .line 823
    :pswitch_0
    const-string v0, "asecList"

    return-object v0

    .line 819
    :pswitch_1
    const-string v0, "asecFsPath"

    return-object v0

    .line 815
    :pswitch_2
    const-string v0, "asecPath"

    return-object v0

    .line 811
    :pswitch_3
    const-string v0, "asecRename"

    return-object v0

    .line 807
    :pswitch_4
    const-string v0, "asecUnmount"

    return-object v0

    .line 803
    :pswitch_5
    const-string v0, "asecMount"

    return-object v0

    .line 799
    :pswitch_6
    const-string v0, "asecDestroy"

    return-object v0

    .line 795
    :pswitch_7
    const-string v0, "asecFixperms"

    return-object v0

    .line 791
    :pswitch_8
    const-string v0, "asecFinalize"

    return-object v0

    .line 787
    :pswitch_9
    const-string v0, "asecResize"

    return-object v0

    .line 783
    :pswitch_a
    const-string v0, "asecCreate"

    return-object v0

    .line 779
    :pswitch_b
    const-string/jumbo v0, "setMpUidForFileSystem"

    return-object v0

    .line 775
    :pswitch_c
    const-string v0, "cpFileAtData"

    return-object v0

    .line 771
    :pswitch_d
    const-string/jumbo v0, "mvFileAtData"

    return-object v0

    .line 767
    :pswitch_e
    const-string/jumbo v0, "getUsedF2fsFileNode"

    return-object v0

    .line 763
    :pswitch_f
    const-string/jumbo v0, "runIdleDefrag"

    return-object v0

    .line 759
    :pswitch_10
    const-string v0, "destroyDsuMetadataKey"

    return-object v0

    .line 755
    :pswitch_11
    const-string v0, "bindMount"

    return-object v0

    .line 751
    :pswitch_12
    const-string/jumbo v0, "setIncFsMountOptions"

    return-object v0

    .line 747
    :pswitch_13
    const-string/jumbo v0, "unmountIncFs"

    return-object v0

    .line 743
    :pswitch_14
    const-string/jumbo v0, "mountIncFs"

    return-object v0

    .line 739
    :pswitch_15
    const-string/jumbo v0, "incFsEnabled"

    return-object v0

    .line 735
    :pswitch_16
    const-string/jumbo v0, "setDualDARPolicyCmd"

    return-object v0

    .line 731
    :pswitch_17
    const-string/jumbo v0, "setSdpPolicyToPathCmd"

    return-object v0

    .line 727
    :pswitch_18
    const-string/jumbo v0, "setSdpPolicyCmd"

    return-object v0

    .line 723
    :pswitch_19
    const-string/jumbo v0, "mountSdpMediaStorageCmd"

    return-object v0

    .line 719
    :pswitch_1a
    const-string/jumbo v0, "isSensitive"

    return-object v0

    .line 715
    :pswitch_1b
    const-string/jumbo v0, "setSensitive"

    return-object v0

    .line 711
    :pswitch_1c
    const-string/jumbo v0, "openAppFuseFile"

    return-object v0

    .line 707
    :pswitch_1d
    const-string v0, "destroyStubVolume"

    return-object v0

    .line 703
    :pswitch_1e
    const-string v0, "createStubVolume"

    return-object v0

    .line 699
    :pswitch_1f
    const-string v0, "earlyBootEnded"

    return-object v0

    .line 695
    :pswitch_20
    const-string/jumbo v0, "resetCheckpoint"

    return-object v0

    .line 691
    :pswitch_21
    const-string/jumbo v0, "supportsFileCheckpoint"

    return-object v0

    .line 687
    :pswitch_22
    const-string/jumbo v0, "supportsBlockCheckpoint"

    return-object v0

    .line 683
    :pswitch_23
    const-string/jumbo v0, "supportsCheckpoint"

    return-object v0

    .line 679
    :pswitch_24
    const-string/jumbo v0, "markBootAttempt"

    return-object v0

    .line 675
    :pswitch_25
    const-string/jumbo v0, "restoreCheckpointPart"

    return-object v0

    .line 671
    :pswitch_26
    const-string/jumbo v0, "restoreCheckpoint"

    return-object v0

    .line 667
    :pswitch_27
    const-string/jumbo v0, "prepareCheckpoint"

    return-object v0

    .line 663
    :pswitch_28
    const-string v0, "commitChanges"

    return-object v0

    .line 659
    :pswitch_29
    const-string v0, "abortChanges"

    return-object v0

    .line 655
    :pswitch_2a
    const-string/jumbo v0, "isCheckpointing"

    return-object v0

    .line 651
    :pswitch_2b
    const-string/jumbo v0, "needsRollback"

    return-object v0

    .line 647
    :pswitch_2c
    const-string/jumbo v0, "needsCheckpoint"

    return-object v0

    .line 643
    :pswitch_2d
    const-string/jumbo v0, "startCheckpoint"

    return-object v0

    .line 639
    :pswitch_2e
    const-string v0, "destroySandboxForApp"

    return-object v0

    .line 635
    :pswitch_2f
    const-string/jumbo v0, "prepareSandboxForApp"

    return-object v0

    .line 631
    :pswitch_30
    const-string v0, "destroyUserStorage"

    return-object v0

    .line 627
    :pswitch_31
    const-string/jumbo v0, "prepareUserStorage"

    return-object v0

    .line 623
    :pswitch_32
    const-string/jumbo v0, "setDebugForExternal"

    return-object v0

    .line 619
    :pswitch_33
    const-string/jumbo v0, "lockUserKey"

    return-object v0

    .line 615
    :pswitch_34
    const-string/jumbo v0, "unlockUserKey"

    return-object v0

    .line 611
    :pswitch_35
    const-string/jumbo v0, "getUnlockedUsers"

    return-object v0

    .line 607
    :pswitch_36
    const-string v0, "fixateNewestUserKeyAuth"

    return-object v0

    .line 603
    :pswitch_37
    const-string v0, "clearUserKeyAuth"

    return-object v0

    .line 599
    :pswitch_38
    const-string v0, "addUserKeyAuth"

    return-object v0

    .line 595
    :pswitch_39
    const-string v0, "destroyUserKey"

    return-object v0

    .line 591
    :pswitch_3a
    const-string v0, "createUserKey"

    return-object v0

    .line 587
    :pswitch_3b
    const-string/jumbo v0, "setStorageBindingSeed"

    return-object v0

    .line 583
    :pswitch_3c
    const-string v0, "encryptFstab"

    return-object v0

    .line 579
    :pswitch_3d
    const-string/jumbo v0, "mountFstab"

    return-object v0

    .line 575
    :pswitch_3e
    const-string/jumbo v0, "initUser0"

    return-object v0

    .line 571
    :pswitch_3f
    const-string/jumbo v0, "isFbeSecure"

    return-object v0

    .line 567
    :pswitch_40
    const-string v0, "fbeEnable"

    return-object v0

    .line 563
    :pswitch_41
    const-string/jumbo v0, "sdeMoveMountHidden"

    return-object v0

    .line 559
    :pswitch_42
    const-string/jumbo v0, "sdeEnable"

    return-object v0

    .line 555
    :pswitch_43
    const-string/jumbo v0, "stopServiceSnsDataRedirect"

    return-object v0

    .line 551
    :pswitch_44
    const-string/jumbo v0, "startServiceSnsDataRedirect"

    return-object v0

    .line 547
    :pswitch_45
    const-string/jumbo v0, "unmountAppFuse"

    return-object v0

    .line 543
    :pswitch_46
    const-string/jumbo v0, "mountAppFuse"

    return-object v0

    .line 539
    :pswitch_47
    const-string/jumbo v0, "getWriteAmount"

    return-object v0

    .line 535
    :pswitch_48
    const-string/jumbo v0, "refreshLatestWrite"

    return-object v0

    .line 531
    :pswitch_49
    const-string/jumbo v0, "setGCUrgentPace"

    return-object v0

    .line 527
    :pswitch_4a
    const-string/jumbo v0, "getStorageLifeTime"

    return-object v0

    .line 523
    :pswitch_4b
    const-string v0, "abortIdleMaint"

    return-object v0

    .line 519
    :pswitch_4c
    const-string/jumbo v0, "runIdleMaint"

    return-object v0

    .line 515
    :pswitch_4d
    const-string v0, "fstrim"

    return-object v0

    .line 511
    :pswitch_4e
    const-string v0, "destroyObb"

    return-object v0

    .line 507
    :pswitch_4f
    const-string v0, "createObb"

    return-object v0

    .line 503
    :pswitch_50
    const-string v0, "ensureAppDirsCreated"

    return-object v0

    .line 499
    :pswitch_51
    const-string v0, "fixupAppDir"

    return-object v0

    .line 495
    :pswitch_52
    const-string/jumbo v0, "setupAppDir"

    return-object v0

    .line 491
    :pswitch_53
    const-string/jumbo v0, "unmountAppStorageDirs"

    return-object v0

    .line 487
    :pswitch_54
    const-string/jumbo v0, "remountAppStorageDirs"

    return-object v0

    .line 483
    :pswitch_55
    const-string/jumbo v0, "remountUid"

    return-object v0

    .line 479
    :pswitch_56
    const-string/jumbo v0, "moveStorage"

    return-object v0

    .line 475
    :pswitch_57
    const-string v0, "benchmark"

    return-object v0

    .line 471
    :pswitch_58
    const-string v0, "format"

    return-object v0

    .line 467
    :pswitch_59
    const-string/jumbo v0, "unmount"

    return-object v0

    .line 463
    :pswitch_5a
    const-string/jumbo v0, "mount"

    return-object v0

    .line 459
    :pswitch_5b
    const-string v0, "forgetPartition"

    return-object v0

    .line 455
    :pswitch_5c
    const-string/jumbo v0, "partition"

    return-object v0

    .line 451
    :pswitch_5d
    const-string/jumbo v0, "onSecureKeyguardStateChanged"

    return-object v0

    .line 447
    :pswitch_5e
    const-string v0, "addSandboxIds"

    return-object v0

    .line 443
    :pswitch_5f
    const-string v0, "addAppIds"

    return-object v0

    .line 439
    :pswitch_60
    const-string/jumbo v0, "onUserStopped"

    return-object v0

    .line 435
    :pswitch_61
    const-string/jumbo v0, "onUserStarted"

    return-object v0

    .line 431
    :pswitch_62
    const-string/jumbo v0, "onUserRemoved"

    return-object v0

    .line 427
    :pswitch_63
    const-string/jumbo v0, "onUserAdded"

    return-object v0

    .line 423
    :pswitch_64
    const-string/jumbo v0, "shutdown"

    return-object v0

    .line 419
    :pswitch_65
    const-string/jumbo v0, "reset"

    return-object v0

    .line 415
    :pswitch_66
    const-string/jumbo v0, "monitor"

    return-object v0

    .line 411
    :pswitch_67
    const-string v0, "abortFuse"

    return-object v0

    .line 407
    :pswitch_68
    const-string/jumbo v0, "setListener"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 398
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 3841
    const/16 v0, 0x68

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 834
    invoke-static {p1}, Landroid/os/IVold$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 838
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.os.IVold"

    .line 839
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 840
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 850
    packed-switch v8, :pswitch_data_1

    .line 1961
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 846
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 847
    return v12

    .line 1954
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->asecList()[Ljava/lang/String;

    move-result-object v0

    .line 1955
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1956
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1957
    goto/16 :goto_0

    .line 1945
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1946
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1947
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->asecFsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1948
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1949
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1950
    goto/16 :goto_0

    .line 1935
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1936
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1937
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->asecPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1938
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1939
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1940
    goto/16 :goto_0

    .line 1924
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1926
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1927
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1928
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->asecRename(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1930
    goto/16 :goto_0

    .line 1913
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1915
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1916
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1917
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->asecUnmount(Ljava/lang/String;Z)V

    .line 1918
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1919
    goto/16 :goto_0

    .line 1898
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1900
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1902
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1904
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1905
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1906
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->asecMount(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1907
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1908
    goto/16 :goto_0

    .line 1887
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1889
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1890
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1891
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->asecDestroy(Ljava/lang/String;Z)V

    .line 1892
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1893
    goto/16 :goto_0

    .line 1874
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1876
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1878
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1879
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1880
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->asecFixperms(Ljava/lang/String;ILjava/lang/String;)V

    .line 1881
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1882
    goto/16 :goto_0

    .line 1865
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1866
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1867
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->asecFinalize(Ljava/lang/String;)V

    .line 1868
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1869
    goto/16 :goto_0

    .line 1852
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1854
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1856
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1857
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1858
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->asecResize(Ljava/lang/String;ILjava/lang/String;)V

    .line 1859
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1860
    goto/16 :goto_0

    .line 1833
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1835
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1837
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1839
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1841
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1843
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 1844
    .local v18, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1845
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IVold$Stub;->asecCreate(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 1846
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1847
    goto/16 :goto_0

    .line 1824
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1825
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1826
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->setMpUidForFileSystem(I)V

    .line 1827
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1828
    goto/16 :goto_0

    .line 1807
    .end local v0    # "_arg0":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1809
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1811
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1813
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1815
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v16

    .line 1816
    .local v16, "_arg4":Landroid/os/IVoldTaskListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1817
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IVold$Stub;->cpFileAtData(Ljava/lang/String;Ljava/lang/String;IILandroid/os/IVoldTaskListener;)V

    .line 1818
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1819
    goto/16 :goto_0

    .line 1790
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Landroid/os/IVoldTaskListener;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1792
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1794
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1796
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1798
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v16

    .line 1799
    .restart local v16    # "_arg4":Landroid/os/IVoldTaskListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1800
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IVold$Stub;->mvFileAtData(Ljava/lang/String;Ljava/lang/String;IILandroid/os/IVoldTaskListener;)V

    .line 1801
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1802
    goto/16 :goto_0

    .line 1782
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Landroid/os/IVoldTaskListener;
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->getUsedF2fsFileNode()J

    move-result-wide v0

    .line 1783
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1784
    invoke-virtual {v10, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1785
    goto/16 :goto_0

    .line 1774
    .end local v0    # "_result":J
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v0

    .line 1775
    .local v0, "_arg0":Landroid/os/IVoldTaskListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1776
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->runIdleDefrag(Landroid/os/IVoldTaskListener;)V

    .line 1777
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1778
    goto/16 :goto_0

    .line 1765
    .end local v0    # "_arg0":Landroid/os/IVoldTaskListener;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1766
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1767
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->destroyDsuMetadataKey(Ljava/lang/String;)V

    .line 1768
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1769
    goto/16 :goto_0

    .line 1754
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1756
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1757
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1758
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->bindMount(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1760
    goto/16 :goto_0

    .line 1739
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_13
    sget-object v0, Landroid/os/incremental/IncrementalFileSystemControlParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/incremental/IncrementalFileSystemControlParcel;

    .line 1741
    .local v0, "_arg0":Landroid/os/incremental/IncrementalFileSystemControlParcel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1743
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1745
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1746
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1747
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->setIncFsMountOptions(Landroid/os/incremental/IncrementalFileSystemControlParcel;ZZLjava/lang/String;)V

    .line 1748
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1749
    goto/16 :goto_0

    .line 1730
    .end local v0    # "_arg0":Landroid/os/incremental/IncrementalFileSystemControlParcel;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1731
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1732
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->unmountIncFs(Ljava/lang/String;)V

    .line 1733
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1734
    goto/16 :goto_0

    .line 1714
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1716
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1718
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1720
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1721
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1722
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->mountIncFs(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/os/incremental/IncrementalFileSystemControlParcel;

    move-result-object v4

    .line 1723
    .local v4, "_result":Landroid/os/incremental/IncrementalFileSystemControlParcel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1724
    invoke-virtual {v10, v4, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1725
    goto/16 :goto_0

    .line 1706
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/incremental/IncrementalFileSystemControlParcel;
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->incFsEnabled()Z

    move-result v0

    .line 1707
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1708
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1709
    goto/16 :goto_0

    .line 1695
    .end local v0    # "_result":Z
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1697
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1698
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1699
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->setDualDARPolicyCmd(II)Z

    move-result v2

    .line 1700
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1701
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1702
    goto/16 :goto_0

    .line 1683
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1685
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1686
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1687
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->setSdpPolicyToPathCmd(ILjava/lang/String;)Z

    move-result v2

    .line 1688
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1689
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1690
    goto/16 :goto_0

    .line 1673
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1674
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1675
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->setSdpPolicyCmd(I)Z

    move-result v1

    .line 1676
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1677
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1678
    goto/16 :goto_0

    .line 1663
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1664
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1665
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->mountSdpMediaStorageCmd(I)Z

    move-result v1

    .line 1666
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1667
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1668
    goto/16 :goto_0

    .line 1653
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1654
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1655
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->isSensitive(Ljava/lang/String;)Z

    move-result v1

    .line 1656
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1657
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1658
    goto/16 :goto_0

    .line 1641
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1643
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1644
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1645
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->setSensitive(ILjava/lang/String;)Z

    move-result v2

    .line 1646
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1647
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1648
    goto/16 :goto_0

    .line 1625
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1627
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1629
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1631
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1632
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1633
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->openAppFuseFile(IIII)Ljava/io/FileDescriptor;

    move-result-object v4

    .line 1634
    .local v4, "_result":Ljava/io/FileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1635
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1636
    goto/16 :goto_0

    .line 1616
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Ljava/io/FileDescriptor;
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1617
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1618
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->destroyStubVolume(Ljava/lang/String;)V

    .line 1619
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1620
    goto/16 :goto_0

    .line 1596
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1598
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1600
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1602
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1604
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1606
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1607
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1608
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IVold$Stub;->createStubVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1609
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1610
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1611
    goto/16 :goto_0

    .line 1589
    .end local v0    # "_result":Ljava/lang/String;
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":I
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->earlyBootEnded()V

    .line 1590
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1591
    goto/16 :goto_0

    .line 1583
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->resetCheckpoint()V

    .line 1584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1585
    goto/16 :goto_0

    .line 1576
    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->supportsFileCheckpoint()Z

    move-result v0

    .line 1577
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1578
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1579
    goto/16 :goto_0

    .line 1569
    .end local v0    # "_result":Z
    :pswitch_23
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->supportsBlockCheckpoint()Z

    move-result v0

    .line 1570
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1571
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1572
    goto/16 :goto_0

    .line 1562
    .end local v0    # "_result":Z
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->supportsCheckpoint()Z

    move-result v0

    .line 1563
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1564
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1565
    goto/16 :goto_0

    .line 1556
    .end local v0    # "_result":Z
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->markBootAttempt()V

    .line 1557
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1558
    goto/16 :goto_0

    .line 1546
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1548
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1549
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1550
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->restoreCheckpointPart(Ljava/lang/String;I)V

    .line 1551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1552
    goto/16 :goto_0

    .line 1537
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1538
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1539
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->restoreCheckpoint(Ljava/lang/String;)V

    .line 1540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1541
    goto/16 :goto_0

    .line 1530
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_28
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->prepareCheckpoint()V

    .line 1531
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1532
    goto/16 :goto_0

    .line 1524
    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->commitChanges()V

    .line 1525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1526
    goto/16 :goto_0

    .line 1514
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1516
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1517
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1518
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->abortChanges(Ljava/lang/String;Z)V

    .line 1519
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1520
    goto/16 :goto_0

    .line 1506
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_2b
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->isCheckpointing()Z

    move-result v0

    .line 1507
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1508
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1509
    goto/16 :goto_0

    .line 1499
    .end local v0    # "_result":Z
    :pswitch_2c
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->needsRollback()Z

    move-result v0

    .line 1500
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1501
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1502
    goto/16 :goto_0

    .line 1492
    .end local v0    # "_result":Z
    :pswitch_2d
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->needsCheckpoint()Z

    move-result v0

    .line 1493
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1494
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1495
    goto/16 :goto_0

    .line 1484
    .end local v0    # "_result":Z
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1485
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1486
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->startCheckpoint(I)V

    .line 1487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1488
    goto/16 :goto_0

    .line 1471
    .end local v0    # "_arg0":I
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1473
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1475
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1476
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1477
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->destroySandboxForApp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1478
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1479
    goto/16 :goto_0

    .line 1456
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1458
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1460
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1462
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1463
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1464
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->prepareSandboxForApp(Ljava/lang/String;ILjava/lang/String;I)V

    .line 1465
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1466
    goto/16 :goto_0

    .line 1443
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1445
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1447
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1448
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1449
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->destroyUserStorage(Ljava/lang/String;II)V

    .line 1450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1451
    goto/16 :goto_0

    .line 1428
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1430
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1432
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1434
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1435
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1436
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->prepareUserStorage(Ljava/lang/String;III)V

    .line 1437
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1438
    goto/16 :goto_0

    .line 1419
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1420
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1421
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->setDebugForExternal(Ljava/lang/String;)V

    .line 1422
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1423
    goto/16 :goto_0

    .line 1410
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1411
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1412
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->lockUserKey(I)V

    .line 1413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1414
    goto/16 :goto_0

    .line 1395
    .end local v0    # "_arg0":I
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1397
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1399
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1401
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1402
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1403
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->unlockUserKey(IILjava/lang/String;Ljava/lang/String;)V

    .line 1404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1405
    goto/16 :goto_0

    .line 1387
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_36
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->getUnlockedUsers()[I

    move-result-object v0

    .line 1388
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1389
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1390
    goto/16 :goto_0

    .line 1379
    .end local v0    # "_result":[I
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1380
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1381
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->fixateNewestUserKeyAuth(I)V

    .line 1382
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1383
    goto/16 :goto_0

    .line 1364
    .end local v0    # "_arg0":I
    :pswitch_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1366
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1368
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1370
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1371
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1372
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->clearUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V

    .line 1373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1374
    goto/16 :goto_0

    .line 1349
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1351
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1353
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1355
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1356
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1357
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->addUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V

    .line 1358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1359
    goto/16 :goto_0

    .line 1340
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1341
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1342
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->destroyUserKey(I)V

    .line 1343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1344
    goto/16 :goto_0

    .line 1327
    .end local v0    # "_arg0":I
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1329
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1331
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1332
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1333
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->createUserKey(IIZ)V

    .line 1334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1335
    goto/16 :goto_0

    .line 1318
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1319
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1320
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->setStorageBindingSeed([B)V

    .line 1321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1322
    goto/16 :goto_0

    .line 1303
    .end local v0    # "_arg0":[B
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1305
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1307
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1309
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1310
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1311
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->encryptFstab(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1313
    goto/16 :goto_0

    .line 1292
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1294
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1295
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1296
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->mountFstab(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1298
    goto/16 :goto_0

    .line 1285
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_3f
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->initUser0()V

    .line 1286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1287
    goto/16 :goto_0

    .line 1276
    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1277
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1278
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->isFbeSecure(I)Z

    move-result v1

    .line 1279
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1280
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1281
    goto/16 :goto_0

    .line 1269
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_41
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->fbeEnable()V

    .line 1270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1271
    goto/16 :goto_0

    .line 1255
    :pswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1257
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1259
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1261
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoldMountCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldMountCallback;

    move-result-object v3

    .line 1262
    .local v3, "_arg3":Landroid/os/IVoldMountCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1263
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->sdeMoveMountHidden(Ljava/lang/String;IILandroid/os/IVoldMountCallback;)V

    .line 1264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1265
    goto/16 :goto_0

    .line 1236
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/IVoldMountCallback;
    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1238
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1240
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1242
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 1244
    .local v16, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v17

    .line 1246
    .local v17, "_arg4":Landroid/os/IVoldTaskListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoldMountCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldMountCallback;

    move-result-object v18

    .line 1247
    .local v18, "_arg5":Landroid/os/IVoldMountCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1248
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IVold$Stub;->sdeEnable(Ljava/lang/String;IIZLandroid/os/IVoldTaskListener;Landroid/os/IVoldMountCallback;)V

    .line 1249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1250
    goto/16 :goto_0

    .line 1229
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Z
    .end local v17    # "_arg4":Landroid/os/IVoldTaskListener;
    .end local v18    # "_arg5":Landroid/os/IVoldMountCallback;
    :pswitch_44
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->stopServiceSnsDataRedirect()V

    .line 1230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1231
    goto/16 :goto_0

    .line 1223
    :pswitch_45
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->startServiceSnsDataRedirect()V

    .line 1224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    goto/16 :goto_0

    .line 1213
    :pswitch_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1215
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1216
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1217
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->unmountAppFuse(II)V

    .line 1218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    goto/16 :goto_0

    .line 1201
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1203
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1204
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1205
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->mountAppFuse(II)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 1206
    .local v2, "_result":Ljava/io/FileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1207
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1208
    goto/16 :goto_0

    .line 1193
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/io/FileDescriptor;
    :pswitch_48
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->getWriteAmount()I

    move-result v0

    .line 1194
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1195
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1196
    goto/16 :goto_0

    .line 1187
    .end local v0    # "_result":I
    :pswitch_49
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->refreshLatestWrite()V

    .line 1188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    goto/16 :goto_0

    .line 1171
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1173
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1175
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v14

    .line 1177
    .local v14, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v15

    .line 1179
    .local v15, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1180
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1181
    move-object/from16 v0, p0

    move v1, v6

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IVold$Stub;->setGCUrgentPace(IIFFI)V

    .line 1182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1183
    goto/16 :goto_0

    .line 1163
    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":F
    .end local v15    # "_arg3":F
    .end local v16    # "_arg4":I
    :pswitch_4b
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->getStorageLifeTime()I

    move-result v0

    .line 1164
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1165
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1166
    goto/16 :goto_0

    .line 1155
    .end local v0    # "_result":I
    :pswitch_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v0

    .line 1156
    .local v0, "_arg0":Landroid/os/IVoldTaskListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1157
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->abortIdleMaint(Landroid/os/IVoldTaskListener;)V

    .line 1158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1159
    goto/16 :goto_0

    .line 1144
    .end local v0    # "_arg0":Landroid/os/IVoldTaskListener;
    :pswitch_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1146
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    .line 1147
    .local v1, "_arg1":Landroid/os/IVoldTaskListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1148
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->runIdleMaint(ZLandroid/os/IVoldTaskListener;)V

    .line 1149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1150
    goto/16 :goto_0

    .line 1133
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/os/IVoldTaskListener;
    :pswitch_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1135
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    .line 1136
    .restart local v1    # "_arg1":Landroid/os/IVoldTaskListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1137
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 1138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1139
    goto/16 :goto_0

    .line 1124
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IVoldTaskListener;
    :pswitch_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1125
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1126
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->destroyObb(Ljava/lang/String;)V

    .line 1127
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    goto/16 :goto_0

    .line 1112
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1114
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1115
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1116
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->createObb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1117
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1118
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1119
    goto/16 :goto_0

    .line 1101
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 1103
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1104
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1105
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->ensureAppDirsCreated([Ljava/lang/String;I)V

    .line 1106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1107
    goto/16 :goto_0

    .line 1090
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1092
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1093
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1094
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->fixupAppDir(Ljava/lang/String;I)V

    .line 1095
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1096
    goto/16 :goto_0

    .line 1079
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1081
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1082
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1083
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->setupAppDir(Ljava/lang/String;I)V

    .line 1084
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    goto/16 :goto_0

    .line 1066
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1068
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1070
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1071
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1072
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->unmountAppStorageDirs(II[Ljava/lang/String;)V

    .line 1073
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    goto/16 :goto_0

    .line 1053
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[Ljava/lang/String;
    :pswitch_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1055
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1057
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1058
    .restart local v2    # "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1059
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->remountAppStorageDirs(II[Ljava/lang/String;)V

    .line 1060
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    goto/16 :goto_0

    .line 1042
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[Ljava/lang/String;
    :pswitch_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1044
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1045
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1046
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->remountUid(II)V

    .line 1047
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1048
    goto/16 :goto_0

    .line 1029
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1031
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1033
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v2

    .line 1034
    .local v2, "_arg2":Landroid/os/IVoldTaskListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1035
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 1036
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    goto/16 :goto_0

    .line 1018
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/IVoldTaskListener;
    :pswitch_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1020
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    .line 1021
    .local v1, "_arg1":Landroid/os/IVoldTaskListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1022
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 1023
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    goto/16 :goto_0

    .line 1007
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IVoldTaskListener;
    :pswitch_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1009
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1010
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1011
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->format(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    goto/16 :goto_0

    .line 998
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 999
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1000
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->unmount(Ljava/lang/String;)V

    .line 1001
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1002
    goto/16 :goto_0

    .line 983
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 985
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 987
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 989
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoldMountCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldMountCallback;

    move-result-object v3

    .line 990
    .restart local v3    # "_arg3":Landroid/os/IVoldMountCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 991
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->mount(Ljava/lang/String;IILandroid/os/IVoldMountCallback;)V

    .line 992
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    goto/16 :goto_0

    .line 972
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/os/IVoldMountCallback;
    :pswitch_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 974
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 975
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 976
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 978
    goto/16 :goto_0

    .line 959
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 961
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 963
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 964
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 965
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->partition(Ljava/lang/String;II)V

    .line 966
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    goto/16 :goto_0

    .line 950
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 951
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 952
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->onSecureKeyguardStateChanged(Z)V

    .line 953
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    goto/16 :goto_0

    .line 939
    .end local v0    # "_arg0":Z
    :pswitch_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 941
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 942
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 943
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->addSandboxIds([I[Ljava/lang/String;)V

    .line 944
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    goto/16 :goto_0

    .line 928
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 931
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 932
    invoke-virtual {v7, v0, v1}, Landroid/os/IVold$Stub;->addAppIds([Ljava/lang/String;[I)V

    .line 933
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    goto/16 :goto_0

    .line 919
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":[I
    :pswitch_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 920
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 921
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->onUserStopped(I)V

    .line 922
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    goto :goto_0

    .line 910
    .end local v0    # "_arg0":I
    :pswitch_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 911
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 912
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->onUserStarted(I)V

    .line 913
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    goto :goto_0

    .line 901
    .end local v0    # "_arg0":I
    :pswitch_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 902
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 903
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->onUserRemoved(I)V

    .line 904
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    goto :goto_0

    .line 888
    .end local v0    # "_arg0":I
    :pswitch_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 890
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 892
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 893
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 894
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IVold$Stub;->onUserAdded(III)V

    .line 895
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    goto :goto_0

    .line 881
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_65
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->shutdown()V

    .line 882
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    goto :goto_0

    .line 875
    :pswitch_66
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->reset()V

    .line 876
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    goto :goto_0

    .line 869
    :pswitch_67
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->monitor()V

    .line 870
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    goto :goto_0

    .line 863
    :pswitch_68
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->abortFuse()V

    .line 864
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    goto :goto_0

    .line 855
    :pswitch_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldListener;

    move-result-object v0

    .line 856
    .local v0, "_arg0":Landroid/os/IVoldListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 857
    invoke-virtual {v7, v0}, Landroid/os/IVold$Stub;->setListener(Landroid/os/IVoldListener;)V

    .line 858
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 859
    nop

    .line 1964
    .end local v0    # "_arg0":Landroid/os/IVoldListener;
    :goto_0
    return v12

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
