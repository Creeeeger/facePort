.class public abstract Landroid/os/storage/IStorageManager$Stub;
.super Landroid/os/Binder;
.source "IStorageManager.java"

# interfaces
.implements Landroid/os/storage/IStorageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IStorageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.storage.IStorageManager"

.field static final blacklist TRANSACTION_abortChanges:I = 0x58

.field static final greylist-max-o TRANSACTION_abortIdleMaintenance:I = 0x51

.field static final greylist-max-o TRANSACTION_addUserKeyAuth:I = 0x47

.field static final greylist-max-o TRANSACTION_allocateBytes:I = 0x4f

.field static final greylist-max-o TRANSACTION_benchmark:I = 0x3c

.field static final blacklist TRANSACTION_clearUserKeyAuth:I = 0x59

.field static final blacklist TRANSACTION_commitChanges:I = 0x54

.field static final blacklist TRANSACTION_cpFileAtData:I = 0x9b

.field static final blacklist TRANSACTION_createSecureContainer:I = 0xcb

.field static final greylist-max-o TRANSACTION_createUserKey:I = 0x3e

.field static final blacklist TRANSACTION_destroySecureContainer:I = 0xcd

.field static final greylist-max-o TRANSACTION_destroyUserKey:I = 0x3f

.field static final greylist-max-o TRANSACTION_destroyUserStorage:I = 0x44

.field static final blacklist TRANSACTION_disableAppDataIsolation:I = 0x5b

.field static final blacklist TRANSACTION_encryptExternalStorage:I = 0x9f

.field static final blacklist TRANSACTION_finalizeSecureContainer:I = 0xcc

.field static final blacklist TRANSACTION_finishMediaUpdate:I = 0xd4

.field static final blacklist TRANSACTION_fixPermissionsSecureContainer:I = 0xd6

.field static final greylist-max-o TRANSACTION_fixateNewestUserKeyAuth:I = 0x48

.field static final blacklist TRANSACTION_fixupAppDir:I = 0x5a

.field static final greylist-max-o TRANSACTION_forgetAllVolumes:I = 0x39

.field static final greylist-max-o TRANSACTION_forgetVolume:I = 0x38

.field static final greylist-max-o TRANSACTION_format:I = 0x32

.field static final blacklist TRANSACTION_formatBySecApp:I = 0x9e

.field static final greylist-max-o TRANSACTION_fstrim:I = 0x49

.field static final greylist-max-o TRANSACTION_getAllocatableBytes:I = 0x4e

.field static final greylist-max-o TRANSACTION_getCacheQuotaBytes:I = 0x4c

.field static final greylist-max-o TRANSACTION_getCacheSizeBytes:I = 0x4d

.field static final blacklist TRANSACTION_getCloudMediaProvider:I = 0x62

.field static final greylist-max-o TRANSACTION_getDisks:I = 0x2d

.field static final blacklist TRANSACTION_getExternalStorageMountMode:I = 0x5f

.field static final blacklist TRANSACTION_getManageSpaceActivityIntent:I = 0x5c

.field static final greylist-max-o TRANSACTION_getMountedObbPath:I = 0x19

.field static final greylist-max-o TRANSACTION_getPrimaryStorageUuid:I = 0x3a

.field static final blacklist TRANSACTION_getSecureContainerFilesystemPath:I = 0xd5

.field static final blacklist TRANSACTION_getSecureContainerList:I = 0xd3

.field static final blacklist TRANSACTION_getSecureContainerPath:I = 0xd2

.field static final blacklist TRANSACTION_getUsedF2fsFileNode:I = 0x99

.field static final greylist-max-o TRANSACTION_getVolumeList:I = 0x1e

.field static final greylist-max-o TRANSACTION_getVolumeRecords:I = 0x2f

.field static final blacklist TRANSACTION_getVolumeState:I = 0xca

.field static final greylist-max-o TRANSACTION_getVolumes:I = 0x2e

.field static final blacklist TRANSACTION_isAppIoBlocked:I = 0x60

.field static final blacklist TRANSACTION_isFbeSecure:I = 0xa0

.field static final greylist-max-o TRANSACTION_isObbMounted:I = 0x18

.field static final blacklist TRANSACTION_isPackageForeground:I = 0xfe

.field static final blacklist TRANSACTION_isSecureContainerMounted:I = 0xd0

.field static final blacklist TRANSACTION_isSensitive:I = 0x70

.field static final greylist-max-o TRANSACTION_isUserKeyUnlocked:I = 0x42

.field static final greylist-max-o TRANSACTION_lastMaintenance:I = 0x2a

.field static final greylist-max-o TRANSACTION_lockUserKey:I = 0x41

.field static final greylist-max-o TRANSACTION_mkdirs:I = 0x23

.field static final greylist-max-o TRANSACTION_mount:I = 0x30

.field static final blacklist TRANSACTION_mountBySecApp:I = 0x9c

.field static final greylist-max-o TRANSACTION_mountObb:I = 0x16

.field static final greylist-max-o TRANSACTION_mountProxyFileDescriptorBridge:I = 0x4a

.field static final blacklist TRANSACTION_mountSdpMediaStorageCmd:I = 0x71

.field static final blacklist TRANSACTION_mountSecureContainer:I = 0xce

.field static final blacklist TRANSACTION_mountVolume:I = 0x6

.field static final blacklist TRANSACTION_mvFileAtData:I = 0x9a

.field static final blacklist TRANSACTION_needsCheckpoint:I = 0x57

.field static final blacklist TRANSACTION_notifyAppIoBlocked:I = 0x5d

.field static final blacklist TRANSACTION_notifyAppIoResumed:I = 0x5e

.field static final greylist-max-o TRANSACTION_openProxyFileDescriptor:I = 0x4b

.field static final greylist-max-o TRANSACTION_partitionMixed:I = 0x35

.field static final greylist-max-o TRANSACTION_partitionPrivate:I = 0x34

.field static final greylist-max-o TRANSACTION_partitionPublic:I = 0x33

.field static final greylist-max-o TRANSACTION_prepareUserStorage:I = 0x43

.field static final greylist-max-o TRANSACTION_registerListener:I = 0x1

.field static final blacklist TRANSACTION_renameSecureContainer:I = 0xd1

.field static final blacklist TRANSACTION_resizeSecureContainer:I = 0xd7

.field static final greylist-max-o TRANSACTION_runIdleMaintenance:I = 0x50

.field static final greylist-max-o TRANSACTION_runMaintenance:I = 0x2b

.field static final blacklist TRANSACTION_semGetExternalSdCardHealthState:I = 0x97

.field static final blacklist TRANSACTION_semGetExternalSdCardId:I = 0x98

.field static final blacklist TRANSACTION_setCloudMediaProvider:I = 0x61

.field static final greylist-max-o TRANSACTION_setDebugFlags:I = 0x3d

.field static final blacklist TRANSACTION_setDualDARPolicyCmd:I = 0x74

.field static final greylist-max-o TRANSACTION_setPrimaryStorageUuid:I = 0x3b

.field static final blacklist TRANSACTION_setSdpPolicyCmd:I = 0x72

.field static final blacklist TRANSACTION_setSdpPolicyToPathCmd:I = 0x73

.field static final blacklist TRANSACTION_setSensitive:I = 0x6f

.field static final greylist-max-o TRANSACTION_setVolumeNickname:I = 0x36

.field static final greylist-max-o TRANSACTION_setVolumeUserFlags:I = 0x37

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x14

.field static final blacklist TRANSACTION_startCheckpoint:I = 0x56

.field static final blacklist TRANSACTION_startServiceSns:I = 0xfc

.field static final blacklist TRANSACTION_stopServiceSns:I = 0xfd

.field static final blacklist TRANSACTION_supportsCheckpoint:I = 0x55

.field static final greylist-max-o TRANSACTION_unlockUserKey:I = 0x40

.field static final greylist-max-o TRANSACTION_unmount:I = 0x31

.field static final blacklist TRANSACTION_unmountBySecApp:I = 0x9d

.field static final greylist-max-o TRANSACTION_unmountObb:I = 0x17

.field static final blacklist TRANSACTION_unmountSecureContainer:I = 0xcf

.field static final blacklist TRANSACTION_unmountVolume:I = 0x7

.field static final greylist-max-o TRANSACTION_unregisterListener:I = 0x2

.field static final blacklist TRANSACTION_waitForAsecScan:I = 0xd8


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 548
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 549
    const-string v0, "android.os.storage.IStorageManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IStorageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 557
    if-nez p0, :cond_0

    .line 558
    const/4 v0, 0x0

    return-object v0

    .line 560
    :cond_0
    const-string v0, "android.os.storage.IStorageManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 561
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IStorageManager;

    if-eqz v1, :cond_1

    .line 562
    move-object v1, v0

    check-cast v1, Landroid/os/storage/IStorageManager;

    return-object v1

    .line 564
    :cond_1
    new-instance v1, Landroid/os/storage/IStorageManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/storage/IStorageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 573
    sparse-switch p0, :sswitch_data_0

    .line 965
    const/4 v0, 0x0

    return-object v0

    .line 961
    :sswitch_0
    const-string/jumbo v0, "isPackageForeground"

    return-object v0

    .line 957
    :sswitch_1
    const-string/jumbo v0, "stopServiceSns"

    return-object v0

    .line 953
    :sswitch_2
    const-string/jumbo v0, "startServiceSns"

    return-object v0

    .line 949
    :sswitch_3
    const-string/jumbo v0, "waitForAsecScan"

    return-object v0

    .line 945
    :sswitch_4
    const-string/jumbo v0, "resizeSecureContainer"

    return-object v0

    .line 941
    :sswitch_5
    const-string v0, "fixPermissionsSecureContainer"

    return-object v0

    .line 937
    :sswitch_6
    const-string/jumbo v0, "getSecureContainerFilesystemPath"

    return-object v0

    .line 933
    :sswitch_7
    const-string v0, "finishMediaUpdate"

    return-object v0

    .line 929
    :sswitch_8
    const-string/jumbo v0, "getSecureContainerList"

    return-object v0

    .line 925
    :sswitch_9
    const-string/jumbo v0, "getSecureContainerPath"

    return-object v0

    .line 921
    :sswitch_a
    const-string/jumbo v0, "renameSecureContainer"

    return-object v0

    .line 917
    :sswitch_b
    const-string/jumbo v0, "isSecureContainerMounted"

    return-object v0

    .line 913
    :sswitch_c
    const-string/jumbo v0, "unmountSecureContainer"

    return-object v0

    .line 909
    :sswitch_d
    const-string/jumbo v0, "mountSecureContainer"

    return-object v0

    .line 905
    :sswitch_e
    const-string v0, "destroySecureContainer"

    return-object v0

    .line 901
    :sswitch_f
    const-string v0, "finalizeSecureContainer"

    return-object v0

    .line 897
    :sswitch_10
    const-string v0, "createSecureContainer"

    return-object v0

    .line 893
    :sswitch_11
    const-string/jumbo v0, "getVolumeState"

    return-object v0

    .line 889
    :sswitch_12
    const-string/jumbo v0, "isFbeSecure"

    return-object v0

    .line 885
    :sswitch_13
    const-string v0, "encryptExternalStorage"

    return-object v0

    .line 881
    :sswitch_14
    const-string v0, "formatBySecApp"

    return-object v0

    .line 877
    :sswitch_15
    const-string/jumbo v0, "unmountBySecApp"

    return-object v0

    .line 873
    :sswitch_16
    const-string/jumbo v0, "mountBySecApp"

    return-object v0

    .line 869
    :sswitch_17
    const-string v0, "cpFileAtData"

    return-object v0

    .line 865
    :sswitch_18
    const-string/jumbo v0, "mvFileAtData"

    return-object v0

    .line 861
    :sswitch_19
    const-string/jumbo v0, "getUsedF2fsFileNode"

    return-object v0

    .line 857
    :sswitch_1a
    const-string/jumbo v0, "semGetExternalSdCardId"

    return-object v0

    .line 853
    :sswitch_1b
    const-string/jumbo v0, "semGetExternalSdCardHealthState"

    return-object v0

    .line 849
    :sswitch_1c
    const-string/jumbo v0, "setDualDARPolicyCmd"

    return-object v0

    .line 845
    :sswitch_1d
    const-string/jumbo v0, "setSdpPolicyToPathCmd"

    return-object v0

    .line 841
    :sswitch_1e
    const-string/jumbo v0, "setSdpPolicyCmd"

    return-object v0

    .line 837
    :sswitch_1f
    const-string/jumbo v0, "mountSdpMediaStorageCmd"

    return-object v0

    .line 833
    :sswitch_20
    const-string/jumbo v0, "isSensitive"

    return-object v0

    .line 829
    :sswitch_21
    const-string/jumbo v0, "setSensitive"

    return-object v0

    .line 825
    :sswitch_22
    const-string v0, "getCloudMediaProvider"

    return-object v0

    .line 821
    :sswitch_23
    const-string/jumbo v0, "setCloudMediaProvider"

    return-object v0

    .line 817
    :sswitch_24
    const-string/jumbo v0, "isAppIoBlocked"

    return-object v0

    .line 813
    :sswitch_25
    const-string v0, "getExternalStorageMountMode"

    return-object v0

    .line 809
    :sswitch_26
    const-string/jumbo v0, "notifyAppIoResumed"

    return-object v0

    .line 805
    :sswitch_27
    const-string/jumbo v0, "notifyAppIoBlocked"

    return-object v0

    .line 801
    :sswitch_28
    const-string/jumbo v0, "getManageSpaceActivityIntent"

    return-object v0

    .line 797
    :sswitch_29
    const-string v0, "disableAppDataIsolation"

    return-object v0

    .line 793
    :sswitch_2a
    const-string v0, "fixupAppDir"

    return-object v0

    .line 789
    :sswitch_2b
    const-string v0, "clearUserKeyAuth"

    return-object v0

    .line 785
    :sswitch_2c
    const-string v0, "abortChanges"

    return-object v0

    .line 781
    :sswitch_2d
    const-string/jumbo v0, "needsCheckpoint"

    return-object v0

    .line 777
    :sswitch_2e
    const-string/jumbo v0, "startCheckpoint"

    return-object v0

    .line 773
    :sswitch_2f
    const-string/jumbo v0, "supportsCheckpoint"

    return-object v0

    .line 769
    :sswitch_30
    const-string v0, "commitChanges"

    return-object v0

    .line 765
    :sswitch_31
    const-string v0, "abortIdleMaintenance"

    return-object v0

    .line 761
    :sswitch_32
    const-string/jumbo v0, "runIdleMaintenance"

    return-object v0

    .line 757
    :sswitch_33
    const-string v0, "allocateBytes"

    return-object v0

    .line 753
    :sswitch_34
    const-string v0, "getAllocatableBytes"

    return-object v0

    .line 749
    :sswitch_35
    const-string v0, "getCacheSizeBytes"

    return-object v0

    .line 745
    :sswitch_36
    const-string v0, "getCacheQuotaBytes"

    return-object v0

    .line 741
    :sswitch_37
    const-string/jumbo v0, "openProxyFileDescriptor"

    return-object v0

    .line 737
    :sswitch_38
    const-string/jumbo v0, "mountProxyFileDescriptorBridge"

    return-object v0

    .line 733
    :sswitch_39
    const-string v0, "fstrim"

    return-object v0

    .line 729
    :sswitch_3a
    const-string v0, "fixateNewestUserKeyAuth"

    return-object v0

    .line 725
    :sswitch_3b
    const-string v0, "addUserKeyAuth"

    return-object v0

    .line 721
    :sswitch_3c
    const-string v0, "destroyUserStorage"

    return-object v0

    .line 717
    :sswitch_3d
    const-string/jumbo v0, "prepareUserStorage"

    return-object v0

    .line 713
    :sswitch_3e
    const-string/jumbo v0, "isUserKeyUnlocked"

    return-object v0

    .line 709
    :sswitch_3f
    const-string/jumbo v0, "lockUserKey"

    return-object v0

    .line 705
    :sswitch_40
    const-string/jumbo v0, "unlockUserKey"

    return-object v0

    .line 701
    :sswitch_41
    const-string v0, "destroyUserKey"

    return-object v0

    .line 697
    :sswitch_42
    const-string v0, "createUserKey"

    return-object v0

    .line 693
    :sswitch_43
    const-string/jumbo v0, "setDebugFlags"

    return-object v0

    .line 689
    :sswitch_44
    const-string v0, "benchmark"

    return-object v0

    .line 685
    :sswitch_45
    const-string/jumbo v0, "setPrimaryStorageUuid"

    return-object v0

    .line 681
    :sswitch_46
    const-string/jumbo v0, "getPrimaryStorageUuid"

    return-object v0

    .line 677
    :sswitch_47
    const-string v0, "forgetAllVolumes"

    return-object v0

    .line 673
    :sswitch_48
    const-string v0, "forgetVolume"

    return-object v0

    .line 669
    :sswitch_49
    const-string/jumbo v0, "setVolumeUserFlags"

    return-object v0

    .line 665
    :sswitch_4a
    const-string/jumbo v0, "setVolumeNickname"

    return-object v0

    .line 661
    :sswitch_4b
    const-string/jumbo v0, "partitionMixed"

    return-object v0

    .line 657
    :sswitch_4c
    const-string/jumbo v0, "partitionPrivate"

    return-object v0

    .line 653
    :sswitch_4d
    const-string/jumbo v0, "partitionPublic"

    return-object v0

    .line 649
    :sswitch_4e
    const-string v0, "format"

    return-object v0

    .line 645
    :sswitch_4f
    const-string/jumbo v0, "unmount"

    return-object v0

    .line 641
    :sswitch_50
    const-string/jumbo v0, "mount"

    return-object v0

    .line 637
    :sswitch_51
    const-string/jumbo v0, "getVolumeRecords"

    return-object v0

    .line 633
    :sswitch_52
    const-string/jumbo v0, "getVolumes"

    return-object v0

    .line 629
    :sswitch_53
    const-string v0, "getDisks"

    return-object v0

    .line 625
    :sswitch_54
    const-string/jumbo v0, "runMaintenance"

    return-object v0

    .line 621
    :sswitch_55
    const-string/jumbo v0, "lastMaintenance"

    return-object v0

    .line 617
    :sswitch_56
    const-string/jumbo v0, "mkdirs"

    return-object v0

    .line 613
    :sswitch_57
    const-string/jumbo v0, "getVolumeList"

    return-object v0

    .line 609
    :sswitch_58
    const-string/jumbo v0, "getMountedObbPath"

    return-object v0

    .line 605
    :sswitch_59
    const-string/jumbo v0, "isObbMounted"

    return-object v0

    .line 601
    :sswitch_5a
    const-string/jumbo v0, "unmountObb"

    return-object v0

    .line 597
    :sswitch_5b
    const-string/jumbo v0, "mountObb"

    return-object v0

    .line 593
    :sswitch_5c
    const-string/jumbo v0, "shutdown"

    return-object v0

    .line 589
    :sswitch_5d
    const-string/jumbo v0, "unmountVolume"

    return-object v0

    .line 585
    :sswitch_5e
    const-string/jumbo v0, "mountVolume"

    return-object v0

    .line 581
    :sswitch_5f
    const-string/jumbo v0, "unregisterListener"

    return-object v0

    .line 577
    :sswitch_60
    const-string/jumbo v0, "registerListener"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_60
        0x2 -> :sswitch_5f
        0x6 -> :sswitch_5e
        0x7 -> :sswitch_5d
        0x14 -> :sswitch_5c
        0x16 -> :sswitch_5b
        0x17 -> :sswitch_5a
        0x18 -> :sswitch_59
        0x19 -> :sswitch_58
        0x1e -> :sswitch_57
        0x23 -> :sswitch_56
        0x2a -> :sswitch_55
        0x2b -> :sswitch_54
        0x2d -> :sswitch_53
        0x2e -> :sswitch_52
        0x2f -> :sswitch_51
        0x30 -> :sswitch_50
        0x31 -> :sswitch_4f
        0x32 -> :sswitch_4e
        0x33 -> :sswitch_4d
        0x34 -> :sswitch_4c
        0x35 -> :sswitch_4b
        0x36 -> :sswitch_4a
        0x37 -> :sswitch_49
        0x38 -> :sswitch_48
        0x39 -> :sswitch_47
        0x3a -> :sswitch_46
        0x3b -> :sswitch_45
        0x3c -> :sswitch_44
        0x3d -> :sswitch_43
        0x3e -> :sswitch_42
        0x3f -> :sswitch_41
        0x40 -> :sswitch_40
        0x41 -> :sswitch_3f
        0x42 -> :sswitch_3e
        0x43 -> :sswitch_3d
        0x44 -> :sswitch_3c
        0x47 -> :sswitch_3b
        0x48 -> :sswitch_3a
        0x49 -> :sswitch_39
        0x4a -> :sswitch_38
        0x4b -> :sswitch_37
        0x4c -> :sswitch_36
        0x4d -> :sswitch_35
        0x4e -> :sswitch_34
        0x4f -> :sswitch_33
        0x50 -> :sswitch_32
        0x51 -> :sswitch_31
        0x54 -> :sswitch_30
        0x55 -> :sswitch_2f
        0x56 -> :sswitch_2e
        0x57 -> :sswitch_2d
        0x58 -> :sswitch_2c
        0x59 -> :sswitch_2b
        0x5a -> :sswitch_2a
        0x5b -> :sswitch_29
        0x5c -> :sswitch_28
        0x5d -> :sswitch_27
        0x5e -> :sswitch_26
        0x5f -> :sswitch_25
        0x60 -> :sswitch_24
        0x61 -> :sswitch_23
        0x62 -> :sswitch_22
        0x6f -> :sswitch_21
        0x70 -> :sswitch_20
        0x71 -> :sswitch_1f
        0x72 -> :sswitch_1e
        0x73 -> :sswitch_1d
        0x74 -> :sswitch_1c
        0x97 -> :sswitch_1b
        0x98 -> :sswitch_1a
        0x99 -> :sswitch_19
        0x9a -> :sswitch_18
        0x9b -> :sswitch_17
        0x9c -> :sswitch_16
        0x9d -> :sswitch_15
        0x9e -> :sswitch_14
        0x9f -> :sswitch_13
        0xa0 -> :sswitch_12
        0xca -> :sswitch_11
        0xcb -> :sswitch_10
        0xcc -> :sswitch_f
        0xcd -> :sswitch_e
        0xce -> :sswitch_d
        0xcf -> :sswitch_c
        0xd0 -> :sswitch_b
        0xd1 -> :sswitch_a
        0xd2 -> :sswitch_9
        0xd3 -> :sswitch_8
        0xd4 -> :sswitch_7
        0xd5 -> :sswitch_6
        0xd6 -> :sswitch_5
        0xd7 -> :sswitch_4
        0xd8 -> :sswitch_3
        0xfc -> :sswitch_2
        0xfd -> :sswitch_1
        0xfe -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 568
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 3981
    const/16 v0, 0xfd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 972
    invoke-static {p1}, Landroid/os/storage/IStorageManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 976
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.os.storage.IStorageManager"

    .line 977
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 978
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 988
    sparse-switch v8, :sswitch_data_0

    .line 2017
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 984
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 985
    return v12

    .line 2008
    :sswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2009
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2010
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->isPackageForeground(Ljava/lang/String;)Z

    move-result v1

    .line 2011
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2012
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2013
    goto/16 :goto_0

    .line 2001
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->stopServiceSns()V

    .line 2002
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2003
    goto/16 :goto_0

    .line 1995
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->startServiceSns()V

    .line 1996
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1997
    goto/16 :goto_0

    .line 1989
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->waitForAsecScan()V

    .line 1990
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1991
    goto/16 :goto_0

    .line 1976
    :sswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1978
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1980
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1981
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1982
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 1983
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1984
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1985
    goto/16 :goto_0

    .line 1962
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1964
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1966
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1967
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1968
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 1969
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1970
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1971
    goto/16 :goto_0

    .line 1952
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1953
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1954
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1955
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1956
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1957
    goto/16 :goto_0

    .line 1945
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->finishMediaUpdate()V

    .line 1946
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1947
    goto/16 :goto_0

    .line 1938
    :sswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v0

    .line 1939
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1940
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1941
    goto/16 :goto_0

    .line 1929
    .end local v0    # "_result":[Ljava/lang/String;
    :sswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1930
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1931
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1932
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1933
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1934
    goto/16 :goto_0

    .line 1917
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1919
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1920
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1921
    invoke-virtual {v7, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1922
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1923
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1924
    goto/16 :goto_0

    .line 1907
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1908
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1909
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->isSecureContainerMounted(Ljava/lang/String;)Z

    move-result v1

    .line 1910
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1911
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1912
    goto/16 :goto_0

    .line 1895
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :sswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1897
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1898
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1899
    invoke-virtual {v7, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->unmountSecureContainer(Ljava/lang/String;Z)I

    move-result v2

    .line 1900
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1901
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1902
    goto/16 :goto_0

    .line 1879
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    :sswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1881
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1883
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1885
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1886
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1887
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v4

    .line 1888
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1889
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1890
    goto/16 :goto_0

    .line 1867
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Z
    .end local v4    # "_result":I
    :sswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1869
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1870
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1871
    invoke-virtual {v7, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->destroySecureContainer(Ljava/lang/String;Z)I

    move-result v2

    .line 1872
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1873
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1874
    goto/16 :goto_0

    .line 1857
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    :sswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1858
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1859
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->finalizeSecureContainer(Ljava/lang/String;)I

    move-result v1

    .line 1860
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1861
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1862
    goto/16 :goto_0

    .line 1837
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :sswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1839
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1841
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1843
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1845
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1847
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 1848
    .local v18, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1849
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/storage/IStorageManager$Stub;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result v0

    .line 1850
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1851
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1852
    goto/16 :goto_0

    .line 1827
    .end local v0    # "_result":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Z
    :sswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1828
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1829
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1830
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1831
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1832
    goto/16 :goto_0

    .line 1817
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1818
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1819
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->isFbeSecure(I)Z

    move-result v1

    .line 1820
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1821
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1822
    goto/16 :goto_0

    .line 1807
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1808
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1809
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->encryptExternalStorage(Z)I

    move-result v1

    .line 1810
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1811
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1812
    goto/16 :goto_0

    .line 1796
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :sswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1798
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1799
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1800
    invoke-virtual {v7, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->formatBySecApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1802
    goto/16 :goto_0

    .line 1785
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1787
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1788
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1789
    invoke-virtual {v7, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->unmountBySecApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1791
    goto/16 :goto_0

    .line 1774
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1776
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1777
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1778
    invoke-virtual {v7, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->mountBySecApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1780
    goto/16 :goto_0

    .line 1762
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1764
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1765
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1766
    invoke-virtual {v7, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->cpFileAtData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1767
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1768
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1769
    goto/16 :goto_0

    .line 1750
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1752
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1753
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1754
    invoke-virtual {v7, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->mvFileAtData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1755
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1756
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1757
    goto/16 :goto_0

    .line 1742
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_19
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->getUsedF2fsFileNode()J

    move-result-wide v0

    .line 1743
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1744
    invoke-virtual {v10, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1745
    goto/16 :goto_0

    .line 1735
    .end local v0    # "_result":J
    :sswitch_1a
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->semGetExternalSdCardId()Ljava/lang/String;

    move-result-object v0

    .line 1736
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1737
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1738
    goto/16 :goto_0

    .line 1728
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_1b
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->semGetExternalSdCardHealthState()I

    move-result v0

    .line 1729
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1730
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1731
    goto/16 :goto_0

    .line 1717
    .end local v0    # "_result":I
    :sswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1719
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1720
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1721
    invoke-virtual {v7, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->setDualDARPolicyCmd(II)Z

    move-result v2

    .line 1722
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1723
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1724
    goto/16 :goto_0

    .line 1705
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :sswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1707
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1708
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1709
    invoke-virtual {v7, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->setSdpPolicyToPathCmd(ILjava/lang/String;)Z

    move-result v2

    .line 1710
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1711
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1712
    goto/16 :goto_0

    .line 1695
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1696
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1697
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->setSdpPolicyCmd(I)Z

    move-result v1

    .line 1698
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1699
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1700
    goto/16 :goto_0

    .line 1685
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1686
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1687
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->mountSdpMediaStorageCmd(I)Z

    move-result v1

    .line 1688
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1689
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1690
    goto/16 :goto_0

    .line 1675
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1676
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1677
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->isSensitive(Ljava/lang/String;)Z

    move-result v1

    .line 1678
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1679
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1680
    goto/16 :goto_0

    .line 1663
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :sswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1665
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1666
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1667
    invoke-virtual {v7, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->setSensitive(ILjava/lang/String;)Z

    move-result v2

    .line 1668
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1669
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1670
    goto/16 :goto_0

    .line 1655
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_22
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->getCloudMediaProvider()Ljava/lang/String;

    move-result-object v0

    .line 1656
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1657
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1658
    goto/16 :goto_0

    .line 1647
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1648
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1649
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->setCloudMediaProvider(Ljava/lang/String;)V

    .line 1650
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1651
    goto/16 :goto_0

    .line 1631
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1633
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1635
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1637
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1638
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1639
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->isAppIoBlocked(Ljava/lang/String;III)Z

    move-result v4

    .line 1640
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1641
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1642
    goto/16 :goto_0

    .line 1619
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :sswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1621
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1622
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1623
    invoke-virtual {v7, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v2

    .line 1624
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1625
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1626
    goto/16 :goto_0

    .line 1604
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1606
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1608
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1610
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1611
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1612
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->notifyAppIoResumed(Ljava/lang/String;III)V

    .line 1613
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1614
    goto/16 :goto_0

    .line 1589
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :sswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1591
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1593
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1595
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1596
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1597
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->notifyAppIoBlocked(Ljava/lang/String;III)V

    .line 1598
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1599
    goto/16 :goto_0

    .line 1577
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :sswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1579
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1580
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1581
    invoke-virtual {v7, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->getManageSpaceActivityIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1582
    .local v2, "_result":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1583
    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1584
    goto/16 :goto_0

    .line 1564
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/app/PendingIntent;
    :sswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1566
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1568
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1569
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1570
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->disableAppDataIsolation(Ljava/lang/String;II)V

    .line 1571
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1572
    goto/16 :goto_0

    .line 1555
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1556
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1557
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->fixupAppDir(Ljava/lang/String;)V

    .line 1558
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1559
    goto/16 :goto_0

    .line 1540
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1542
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1544
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1546
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1547
    .local v3, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1548
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->clearUserKeyAuth(II[B[B)V

    .line 1549
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1550
    goto/16 :goto_0

    .line 1529
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":[B
    :sswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1531
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1532
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1533
    invoke-virtual {v7, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->abortChanges(Ljava/lang/String;Z)V

    .line 1534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1535
    goto/16 :goto_0

    .line 1521
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :sswitch_2d
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->needsCheckpoint()Z

    move-result v0

    .line 1522
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1523
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1524
    goto/16 :goto_0

    .line 1513
    .end local v0    # "_result":Z
    :sswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1514
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1515
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->startCheckpoint(I)V

    .line 1516
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1517
    goto/16 :goto_0

    .line 1505
    .end local v0    # "_arg0":I
    :sswitch_2f
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->supportsCheckpoint()Z

    move-result v0

    .line 1506
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1507
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1508
    goto/16 :goto_0

    .line 1499
    .end local v0    # "_result":Z
    :sswitch_30
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->commitChanges()V

    .line 1500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1501
    goto/16 :goto_0

    .line 1493
    :sswitch_31
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->abortIdleMaintenance()V

    .line 1494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1495
    goto/16 :goto_0

    .line 1487
    :sswitch_32
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->runIdleMaintenance()V

    .line 1488
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1489
    goto/16 :goto_0

    .line 1473
    :sswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1475
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 1477
    .local v13, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1479
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1480
    .restart local v16    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1481
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v13

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/storage/IStorageManager$Stub;->allocateBytes(Ljava/lang/String;JILjava/lang/String;)V

    .line 1482
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1483
    goto/16 :goto_0

    .line 1459
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":J
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Ljava/lang/String;
    :sswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1461
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1463
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1464
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1465
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v3

    .line 1466
    .local v3, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1467
    invoke-virtual {v10, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1468
    goto/16 :goto_0

    .line 1447
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":J
    :sswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1449
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1450
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1451
    invoke-virtual {v7, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->getCacheSizeBytes(Ljava/lang/String;I)J

    move-result-wide v2

    .line 1452
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1453
    invoke-virtual {v10, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1454
    goto/16 :goto_0

    .line 1435
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":J
    :sswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1437
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1438
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1439
    invoke-virtual {v7, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide v2

    .line 1440
    .restart local v2    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1441
    invoke-virtual {v10, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1442
    goto/16 :goto_0

    .line 1421
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":J
    :sswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1423
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1425
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1426
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1427
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->openProxyFileDescriptor(III)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 1428
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1429
    invoke-virtual {v10, v3, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1430
    goto/16 :goto_0

    .line 1413
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_38
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->mountProxyFileDescriptorBridge()Lcom/android/internal/os/AppFuseMount;

    move-result-object v0

    .line 1414
    .local v0, "_result":Lcom/android/internal/os/AppFuseMount;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1415
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1416
    goto/16 :goto_0

    .line 1403
    .end local v0    # "_result":Lcom/android/internal/os/AppFuseMount;
    :sswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1405
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    .line 1406
    .local v1, "_arg1":Landroid/os/IVoldTaskListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1407
    invoke-virtual {v7, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 1408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1409
    goto/16 :goto_0

    .line 1394
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IVoldTaskListener;
    :sswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1395
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1396
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->fixateNewestUserKeyAuth(I)V

    .line 1397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1398
    goto/16 :goto_0

    .line 1379
    .end local v0    # "_arg0":I
    :sswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1381
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1383
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1385
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1386
    .local v3, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1387
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->addUserKeyAuth(II[B[B)V

    .line 1388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1389
    goto/16 :goto_0

    .line 1366
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":[B
    :sswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1368
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1370
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1371
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1372
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->destroyUserStorage(Ljava/lang/String;II)V

    .line 1373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1374
    goto/16 :goto_0

    .line 1351
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1353
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1355
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1357
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1358
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1359
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->prepareUserStorage(Ljava/lang/String;III)V

    .line 1360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1361
    goto/16 :goto_0

    .line 1341
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :sswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1342
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1343
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->isUserKeyUnlocked(I)Z

    move-result v1

    .line 1344
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1345
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1346
    goto/16 :goto_0

    .line 1332
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1333
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1334
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->lockUserKey(I)V

    .line 1335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1336
    goto/16 :goto_0

    .line 1317
    .end local v0    # "_arg0":I
    :sswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1319
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1321
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 1323
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1324
    .local v3, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1325
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->unlockUserKey(II[B[B)V

    .line 1326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1327
    goto/16 :goto_0

    .line 1308
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":[B
    :sswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1309
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1310
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->destroyUserKey(I)V

    .line 1311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1312
    goto/16 :goto_0

    .line 1295
    .end local v0    # "_arg0":I
    :sswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1297
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1299
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1300
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1301
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->createUserKey(IIZ)V

    .line 1302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1303
    goto/16 :goto_0

    .line 1284
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :sswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1286
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1287
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1288
    invoke-virtual {v7, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->setDebugFlags(II)V

    .line 1289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1290
    goto/16 :goto_0

    .line 1273
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1275
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    .line 1276
    .local v1, "_arg1":Landroid/os/IVoldTaskListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1277
    invoke-virtual {v7, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 1278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    goto/16 :goto_0

    .line 1262
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IVoldTaskListener;
    :sswitch_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1264
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v1

    .line 1265
    .local v1, "_arg1":Landroid/content/pm/IPackageMoveObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1266
    invoke-virtual {v7, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    .line 1267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1268
    goto/16 :goto_0

    .line 1254
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/pm/IPackageMoveObserver;
    :sswitch_46
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v0

    .line 1255
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1256
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1257
    goto/16 :goto_0

    .line 1248
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_47
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->forgetAllVolumes()V

    .line 1249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1250
    goto/16 :goto_0

    .line 1240
    :sswitch_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1241
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1242
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->forgetVolume(Ljava/lang/String;)V

    .line 1243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    goto/16 :goto_0

    .line 1227
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1229
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1231
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1232
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1233
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->setVolumeUserFlags(Ljava/lang/String;II)V

    .line 1234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    goto/16 :goto_0

    .line 1216
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1218
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1219
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1220
    invoke-virtual {v7, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1222
    goto/16 :goto_0

    .line 1205
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1207
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1208
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1209
    invoke-virtual {v7, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->partitionMixed(Ljava/lang/String;I)V

    .line 1210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    goto/16 :goto_0

    .line 1196
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1197
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1198
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->partitionPrivate(Ljava/lang/String;)V

    .line 1199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1200
    goto/16 :goto_0

    .line 1187
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1188
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1189
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->partitionPublic(Ljava/lang/String;)V

    .line 1190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1191
    goto/16 :goto_0

    .line 1178
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1179
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1180
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->format(Ljava/lang/String;)V

    .line 1181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1182
    goto/16 :goto_0

    .line 1169
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1170
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1171
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->unmount(Ljava/lang/String;)V

    .line 1172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1173
    goto/16 :goto_0

    .line 1160
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1161
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1162
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->mount(Ljava/lang/String;)V

    .line 1163
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    goto/16 :goto_0

    .line 1150
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1151
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1152
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;

    move-result-object v1

    .line 1153
    .local v1, "_result":[Landroid/os/storage/VolumeRecord;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1155
    goto/16 :goto_0

    .line 1140
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Landroid/os/storage/VolumeRecord;
    :sswitch_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1141
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1142
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 1143
    .local v1, "_result":[Landroid/os/storage/VolumeInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1144
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1145
    goto/16 :goto_0

    .line 1132
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Landroid/os/storage/VolumeInfo;
    :sswitch_53
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->getDisks()[Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 1133
    .local v0, "_result":[Landroid/os/storage/DiskInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1134
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1135
    goto/16 :goto_0

    .line 1126
    .end local v0    # "_result":[Landroid/os/storage/DiskInfo;
    :sswitch_54
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->runMaintenance()V

    .line 1127
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    goto/16 :goto_0

    .line 1119
    :sswitch_55
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->lastMaintenance()J

    move-result-wide v0

    .line 1120
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    invoke-virtual {v10, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1122
    goto/16 :goto_0

    .line 1109
    .end local v0    # "_result":J
    :sswitch_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1111
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1112
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1113
    invoke-virtual {v7, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->mkdirs(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1115
    goto/16 :goto_0

    .line 1095
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1097
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1099
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1100
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1101
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 1102
    .local v3, "_result":[Landroid/os/storage/StorageVolume;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    invoke-virtual {v10, v3, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1104
    goto/16 :goto_0

    .line 1085
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":[Landroid/os/storage/StorageVolume;
    :sswitch_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1086
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1087
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1088
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1090
    goto/16 :goto_0

    .line 1075
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1076
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1077
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->isObbMounted(Ljava/lang/String;)Z

    move-result v1

    .line 1078
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1080
    goto/16 :goto_0

    .line 1060
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :sswitch_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1062
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1064
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v2

    .line 1066
    .local v2, "_arg2":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1067
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1068
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    .line 1069
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1070
    goto/16 :goto_0

    .line 1043
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/os/storage/IObbActionListener;
    .end local v3    # "_arg3":I
    :sswitch_5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1045
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1047
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v14

    .line 1049
    .local v14, "_arg2":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1051
    .local v15, "_arg3":I
    sget-object v0, Landroid/content/res/ObbInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/res/ObbInfo;

    .line 1052
    .local v16, "_arg4":Landroid/content/res/ObbInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1053
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/storage/IStorageManager$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;ILandroid/content/res/ObbInfo;)V

    .line 1054
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1055
    goto :goto_0

    .line 1034
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Landroid/os/storage/IObbActionListener;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Landroid/content/res/ObbInfo;
    :sswitch_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageShutdownObserver;

    move-result-object v0

    .line 1035
    .local v0, "_arg0":Landroid/os/storage/IStorageShutdownObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1036
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->shutdown(Landroid/os/storage/IStorageShutdownObserver;)V

    .line 1037
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    goto :goto_0

    .line 1021
    .end local v0    # "_arg0":Landroid/os/storage/IStorageShutdownObserver;
    :sswitch_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1023
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1025
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1026
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1027
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 1028
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    goto :goto_0

    .line 1011
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    :sswitch_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1012
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1013
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->mountVolume(Ljava/lang/String;)I

    move-result v1

    .line 1014
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1016
    goto :goto_0

    .line 1002
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :sswitch_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageEventListener;

    move-result-object v0

    .line 1003
    .local v0, "_arg0":Landroid/os/storage/IStorageEventListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1004
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->unregisterListener(Landroid/os/storage/IStorageEventListener;)V

    .line 1005
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    goto :goto_0

    .line 993
    .end local v0    # "_arg0":Landroid/os/storage/IStorageEventListener;
    :sswitch_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageEventListener;

    move-result-object v0

    .line 994
    .restart local v0    # "_arg0":Landroid/os/storage/IStorageEventListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 995
    invoke-virtual {v7, v0}, Landroid/os/storage/IStorageManager$Stub;->registerListener(Landroid/os/storage/IStorageEventListener;)V

    .line 996
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    nop

    .line 2020
    .end local v0    # "_arg0":Landroid/os/storage/IStorageEventListener;
    :goto_0
    return v12

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_60
        0x2 -> :sswitch_5f
        0x6 -> :sswitch_5e
        0x7 -> :sswitch_5d
        0x14 -> :sswitch_5c
        0x16 -> :sswitch_5b
        0x17 -> :sswitch_5a
        0x18 -> :sswitch_59
        0x19 -> :sswitch_58
        0x1e -> :sswitch_57
        0x23 -> :sswitch_56
        0x2a -> :sswitch_55
        0x2b -> :sswitch_54
        0x2d -> :sswitch_53
        0x2e -> :sswitch_52
        0x2f -> :sswitch_51
        0x30 -> :sswitch_50
        0x31 -> :sswitch_4f
        0x32 -> :sswitch_4e
        0x33 -> :sswitch_4d
        0x34 -> :sswitch_4c
        0x35 -> :sswitch_4b
        0x36 -> :sswitch_4a
        0x37 -> :sswitch_49
        0x38 -> :sswitch_48
        0x39 -> :sswitch_47
        0x3a -> :sswitch_46
        0x3b -> :sswitch_45
        0x3c -> :sswitch_44
        0x3d -> :sswitch_43
        0x3e -> :sswitch_42
        0x3f -> :sswitch_41
        0x40 -> :sswitch_40
        0x41 -> :sswitch_3f
        0x42 -> :sswitch_3e
        0x43 -> :sswitch_3d
        0x44 -> :sswitch_3c
        0x47 -> :sswitch_3b
        0x48 -> :sswitch_3a
        0x49 -> :sswitch_39
        0x4a -> :sswitch_38
        0x4b -> :sswitch_37
        0x4c -> :sswitch_36
        0x4d -> :sswitch_35
        0x4e -> :sswitch_34
        0x4f -> :sswitch_33
        0x50 -> :sswitch_32
        0x51 -> :sswitch_31
        0x54 -> :sswitch_30
        0x55 -> :sswitch_2f
        0x56 -> :sswitch_2e
        0x57 -> :sswitch_2d
        0x58 -> :sswitch_2c
        0x59 -> :sswitch_2b
        0x5a -> :sswitch_2a
        0x5b -> :sswitch_29
        0x5c -> :sswitch_28
        0x5d -> :sswitch_27
        0x5e -> :sswitch_26
        0x5f -> :sswitch_25
        0x60 -> :sswitch_24
        0x61 -> :sswitch_23
        0x62 -> :sswitch_22
        0x6f -> :sswitch_21
        0x70 -> :sswitch_20
        0x71 -> :sswitch_1f
        0x72 -> :sswitch_1e
        0x73 -> :sswitch_1d
        0x74 -> :sswitch_1c
        0x97 -> :sswitch_1b
        0x98 -> :sswitch_1a
        0x99 -> :sswitch_19
        0x9a -> :sswitch_18
        0x9b -> :sswitch_17
        0x9c -> :sswitch_16
        0x9d -> :sswitch_15
        0x9e -> :sswitch_14
        0x9f -> :sswitch_13
        0xa0 -> :sswitch_12
        0xca -> :sswitch_11
        0xcb -> :sswitch_10
        0xcc -> :sswitch_f
        0xcd -> :sswitch_e
        0xce -> :sswitch_d
        0xcf -> :sswitch_c
        0xd0 -> :sswitch_b
        0xd1 -> :sswitch_a
        0xd2 -> :sswitch_9
        0xd3 -> :sswitch_8
        0xd4 -> :sswitch_7
        0xd5 -> :sswitch_6
        0xd6 -> :sswitch_5
        0xd7 -> :sswitch_4
        0xd8 -> :sswitch_3
        0xfc -> :sswitch_2
        0xfd -> :sswitch_1
        0xfe -> :sswitch_0
    .end sparse-switch
.end method
