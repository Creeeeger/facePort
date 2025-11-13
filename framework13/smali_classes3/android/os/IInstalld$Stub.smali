.class public abstract Landroid/os/IInstalld$Stub;
.super Landroid/os/Binder;
.source "IInstalld.java"

# interfaces
.implements Landroid/os/IInstalld;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IInstalld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IInstalld$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IInstalld"

.field static final blacklist TRANSACTION_cleanupInvalidPackageDirs:I = 0x34

.field static final greylist-max-o TRANSACTION_clearAppData:I = 0x9

.field static final greylist-max-o TRANSACTION_clearAppProfiles:I = 0x1c

.field static final blacklist TRANSACTION_compileLayouts:I = 0x17

.field static final blacklist TRANSACTION_compressFile:I = 0x48

.field static final blacklist TRANSACTION_controlDexOptBlocking:I = 0x16

.field static final blacklist TRANSACTION_copyKnoxAppData:I = 0x37

.field static final blacklist TRANSACTION_copyKnoxCancel:I = 0x39

.field static final blacklist TRANSACTION_copyKnoxChunks:I = 0x38

.field static final greylist-max-o TRANSACTION_copySystemProfile:I = 0x1b

.field static final greylist-max-o TRANSACTION_createAppData:I = 0x4

.field static final blacklist TRANSACTION_createAppDataBatched:I = 0x5

.field static final blacklist TRANSACTION_createEncAppData:I = 0x3d

.field static final greylist-max-o TRANSACTION_createOatDir:I = 0x24

.field static final greylist-max-o TRANSACTION_createProfileSnapshot:I = 0x1f

.field static final greylist-max-o TRANSACTION_createUserData:I = 0x1

.field static final blacklist TRANSACTION_deleteDirectoryContents:I = 0x47

.field static final blacklist TRANSACTION_deleteKnoxFile:I = 0x3c

.field static final greylist-max-o TRANSACTION_deleteOdex:I = 0x27

.field static final blacklist TRANSACTION_deleteReferenceProfile:I = 0x1e

.field static final greylist-max-o TRANSACTION_destroyAppData:I = 0xa

.field static final blacklist TRANSACTION_destroyAppDataSnapshot:I = 0x2f

.field static final greylist-max-o TRANSACTION_destroyAppProfiles:I = 0x1d

.field static final blacklist TRANSACTION_destroyCeSnapshotsNotSpecified:I = 0x30

.field static final greylist-max-o TRANSACTION_destroyProfileSnapshot:I = 0x20

.field static final greylist-max-o TRANSACTION_destroyUserData:I = 0x2

.field static final greylist-max-o TRANSACTION_dexopt:I = 0x13

.field static final blacklist TRANSACTION_dexoptAsync:I = 0x14

.field static final greylist-max-o TRANSACTION_dumpProfiles:I = 0x1a

.field static final greylist-max-o TRANSACTION_fixupAppData:I = 0xb

.field static final greylist-max-o TRANSACTION_freeCache:I = 0x22

.field static final blacklist TRANSACTION_getAppCrates:I = 0xf

.field static final greylist-max-o TRANSACTION_getAppSize:I = 0xc

.field static final blacklist TRANSACTION_getAsyncResult:I = 0x15

.field static final blacklist TRANSACTION_getCompressedStats:I = 0x49

.field static final blacklist TRANSACTION_getDualDARLockstate:I = 0x46

.field static final greylist-max-o TRANSACTION_getExternalSize:I = 0xe

.field static final blacklist TRANSACTION_getKnoxFileInfo:I = 0x3a

.field static final blacklist TRANSACTION_getKnoxScanDir:I = 0x3b

.field static final blacklist TRANSACTION_getOdexVisibility:I = 0x35

.field static final blacklist TRANSACTION_getUserCrates:I = 0x10

.field static final greylist-max-o TRANSACTION_getUserSize:I = 0xd

.field static final blacklist TRANSACTION_hasDualDARPolicy:I = 0x44

.field static final blacklist TRANSACTION_hasDualDARPolicyRecursively:I = 0x45

.field static final greylist-max-o TRANSACTION_hashSecondaryDexFile:I = 0x29

.field static final greylist-max-o TRANSACTION_invalidateMounts:I = 0x2a

.field static final greylist-max-o TRANSACTION_isQuotaSupported:I = 0x2b

.field static final greylist-max-o TRANSACTION_linkFile:I = 0x25

.field static final greylist-max-o TRANSACTION_linkNativeLibraryDirectory:I = 0x23

.field static final greylist-max-o TRANSACTION_mergeProfiles:I = 0x19

.field static final greylist-max-o TRANSACTION_migrateAppData:I = 0x8

.field static final blacklist TRANSACTION_migrateLegacyObbData:I = 0x33

.field static final blacklist TRANSACTION_migrateSdpDb:I = 0x40

.field static final greylist-max-o TRANSACTION_moveAb:I = 0x26

.field static final greylist-max-o TRANSACTION_moveCompleteApp:I = 0x12

.field static final blacklist TRANSACTION_onPrivateVolumeRemoved:I = 0x32

.field static final greylist-max-o TRANSACTION_prepareAppProfile:I = 0x2c

.field static final blacklist TRANSACTION_reconcileSdkData:I = 0x6

.field static final greylist-max-o TRANSACTION_reconcileSecondaryDexFile:I = 0x28

.field static final blacklist TRANSACTION_removeEncPkgDir:I = 0x3e

.field static final blacklist TRANSACTION_removeEncUserDir:I = 0x3f

.field static final blacklist TRANSACTION_removeNotTargetedPreloadApksIfNeeded:I = 0x36

.field static final blacklist TRANSACTION_restoreAppDataSnapshot:I = 0x2e

.field static final greylist-max-o TRANSACTION_restoreconAppData:I = 0x7

.field static final greylist-max-o TRANSACTION_rmPackageDir:I = 0x21

.field static final greylist-max-o TRANSACTION_rmdex:I = 0x18

.field static final blacklist TRANSACTION_scanApkStats:I = 0x4a

.field static final greylist-max-o TRANSACTION_setAppQuota:I = 0x11

.field static final blacklist TRANSACTION_setDualDARPolicyDir:I = 0x42

.field static final blacklist TRANSACTION_setDualDARPolicyDirRecursively:I = 0x43

.field static final blacklist TRANSACTION_setEviction:I = 0x41

.field static final blacklist TRANSACTION_setFirstBoot:I = 0x3

.field static final blacklist TRANSACTION_snapshotAppData:I = 0x2d

.field static final blacklist TRANSACTION_tryMountDataMirror:I = 0x31


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 300
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 301
    const-string v0, "android.os.IInstalld"

    invoke-virtual {p0, p0, v0}, Landroid/os/IInstalld$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 309
    if-nez p0, :cond_0

    .line 310
    const/4 v0, 0x0

    return-object v0

    .line 312
    :cond_0
    const-string v0, "android.os.IInstalld"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 313
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IInstalld;

    if-eqz v1, :cond_1

    .line 314
    move-object v1, v0

    check-cast v1, Landroid/os/IInstalld;

    return-object v1

    .line 316
    :cond_1
    new-instance v1, Landroid/os/IInstalld$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IInstalld$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 325
    packed-switch p0, :pswitch_data_0

    .line 625
    const/4 v0, 0x0

    return-object v0

    .line 621
    :pswitch_0
    const-string/jumbo v0, "scanApkStats"

    return-object v0

    .line 617
    :pswitch_1
    const-string v0, "getCompressedStats"

    return-object v0

    .line 613
    :pswitch_2
    const-string v0, "compressFile"

    return-object v0

    .line 609
    :pswitch_3
    const-string v0, "deleteDirectoryContents"

    return-object v0

    .line 605
    :pswitch_4
    const-string v0, "getDualDARLockstate"

    return-object v0

    .line 601
    :pswitch_5
    const-string/jumbo v0, "hasDualDARPolicyRecursively"

    return-object v0

    .line 597
    :pswitch_6
    const-string/jumbo v0, "hasDualDARPolicy"

    return-object v0

    .line 593
    :pswitch_7
    const-string/jumbo v0, "setDualDARPolicyDirRecursively"

    return-object v0

    .line 589
    :pswitch_8
    const-string/jumbo v0, "setDualDARPolicyDir"

    return-object v0

    .line 585
    :pswitch_9
    const-string/jumbo v0, "setEviction"

    return-object v0

    .line 581
    :pswitch_a
    const-string/jumbo v0, "migrateSdpDb"

    return-object v0

    .line 577
    :pswitch_b
    const-string/jumbo v0, "removeEncUserDir"

    return-object v0

    .line 573
    :pswitch_c
    const-string/jumbo v0, "removeEncPkgDir"

    return-object v0

    .line 569
    :pswitch_d
    const-string v0, "createEncAppData"

    return-object v0

    .line 565
    :pswitch_e
    const-string v0, "deleteKnoxFile"

    return-object v0

    .line 561
    :pswitch_f
    const-string/jumbo v0, "getKnoxScanDir"

    return-object v0

    .line 557
    :pswitch_10
    const-string/jumbo v0, "getKnoxFileInfo"

    return-object v0

    .line 553
    :pswitch_11
    const-string v0, "copyKnoxCancel"

    return-object v0

    .line 549
    :pswitch_12
    const-string v0, "copyKnoxChunks"

    return-object v0

    .line 545
    :pswitch_13
    const-string v0, "copyKnoxAppData"

    return-object v0

    .line 541
    :pswitch_14
    const-string/jumbo v0, "removeNotTargetedPreloadApksIfNeeded"

    return-object v0

    .line 537
    :pswitch_15
    const-string/jumbo v0, "getOdexVisibility"

    return-object v0

    .line 533
    :pswitch_16
    const-string v0, "cleanupInvalidPackageDirs"

    return-object v0

    .line 529
    :pswitch_17
    const-string/jumbo v0, "migrateLegacyObbData"

    return-object v0

    .line 525
    :pswitch_18
    const-string/jumbo v0, "onPrivateVolumeRemoved"

    return-object v0

    .line 521
    :pswitch_19
    const-string/jumbo v0, "tryMountDataMirror"

    return-object v0

    .line 517
    :pswitch_1a
    const-string v0, "destroyCeSnapshotsNotSpecified"

    return-object v0

    .line 513
    :pswitch_1b
    const-string v0, "destroyAppDataSnapshot"

    return-object v0

    .line 509
    :pswitch_1c
    const-string/jumbo v0, "restoreAppDataSnapshot"

    return-object v0

    .line 505
    :pswitch_1d
    const-string/jumbo v0, "snapshotAppData"

    return-object v0

    .line 501
    :pswitch_1e
    const-string/jumbo v0, "prepareAppProfile"

    return-object v0

    .line 497
    :pswitch_1f
    const-string/jumbo v0, "isQuotaSupported"

    return-object v0

    .line 493
    :pswitch_20
    const-string/jumbo v0, "invalidateMounts"

    return-object v0

    .line 489
    :pswitch_21
    const-string/jumbo v0, "hashSecondaryDexFile"

    return-object v0

    .line 485
    :pswitch_22
    const-string/jumbo v0, "reconcileSecondaryDexFile"

    return-object v0

    .line 481
    :pswitch_23
    const-string v0, "deleteOdex"

    return-object v0

    .line 477
    :pswitch_24
    const-string/jumbo v0, "moveAb"

    return-object v0

    .line 473
    :pswitch_25
    const-string/jumbo v0, "linkFile"

    return-object v0

    .line 469
    :pswitch_26
    const-string v0, "createOatDir"

    return-object v0

    .line 465
    :pswitch_27
    const-string/jumbo v0, "linkNativeLibraryDirectory"

    return-object v0

    .line 461
    :pswitch_28
    const-string v0, "freeCache"

    return-object v0

    .line 457
    :pswitch_29
    const-string/jumbo v0, "rmPackageDir"

    return-object v0

    .line 453
    :pswitch_2a
    const-string v0, "destroyProfileSnapshot"

    return-object v0

    .line 449
    :pswitch_2b
    const-string v0, "createProfileSnapshot"

    return-object v0

    .line 445
    :pswitch_2c
    const-string v0, "deleteReferenceProfile"

    return-object v0

    .line 441
    :pswitch_2d
    const-string v0, "destroyAppProfiles"

    return-object v0

    .line 437
    :pswitch_2e
    const-string v0, "clearAppProfiles"

    return-object v0

    .line 433
    :pswitch_2f
    const-string v0, "copySystemProfile"

    return-object v0

    .line 429
    :pswitch_30
    const-string v0, "dumpProfiles"

    return-object v0

    .line 425
    :pswitch_31
    const-string/jumbo v0, "mergeProfiles"

    return-object v0

    .line 421
    :pswitch_32
    const-string/jumbo v0, "rmdex"

    return-object v0

    .line 417
    :pswitch_33
    const-string v0, "compileLayouts"

    return-object v0

    .line 413
    :pswitch_34
    const-string v0, "controlDexOptBlocking"

    return-object v0

    .line 409
    :pswitch_35
    const-string v0, "getAsyncResult"

    return-object v0

    .line 405
    :pswitch_36
    const-string v0, "dexoptAsync"

    return-object v0

    .line 401
    :pswitch_37
    const-string v0, "dexopt"

    return-object v0

    .line 397
    :pswitch_38
    const-string/jumbo v0, "moveCompleteApp"

    return-object v0

    .line 393
    :pswitch_39
    const-string/jumbo v0, "setAppQuota"

    return-object v0

    .line 389
    :pswitch_3a
    const-string/jumbo v0, "getUserCrates"

    return-object v0

    .line 385
    :pswitch_3b
    const-string v0, "getAppCrates"

    return-object v0

    .line 381
    :pswitch_3c
    const-string v0, "getExternalSize"

    return-object v0

    .line 377
    :pswitch_3d
    const-string/jumbo v0, "getUserSize"

    return-object v0

    .line 373
    :pswitch_3e
    const-string v0, "getAppSize"

    return-object v0

    .line 369
    :pswitch_3f
    const-string v0, "fixupAppData"

    return-object v0

    .line 365
    :pswitch_40
    const-string v0, "destroyAppData"

    return-object v0

    .line 361
    :pswitch_41
    const-string v0, "clearAppData"

    return-object v0

    .line 357
    :pswitch_42
    const-string/jumbo v0, "migrateAppData"

    return-object v0

    .line 353
    :pswitch_43
    const-string/jumbo v0, "restoreconAppData"

    return-object v0

    .line 349
    :pswitch_44
    const-string/jumbo v0, "reconcileSdkData"

    return-object v0

    .line 345
    :pswitch_45
    const-string v0, "createAppDataBatched"

    return-object v0

    .line 341
    :pswitch_46
    const-string v0, "createAppData"

    return-object v0

    .line 337
    :pswitch_47
    const-string/jumbo v0, "setFirstBoot"

    return-object v0

    .line 333
    :pswitch_48
    const-string v0, "destroyUserData"

    return-object v0

    .line 329
    :pswitch_49
    const-string v0, "createUserData"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 320
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 3228
    const/16 v0, 0x49

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 632
    invoke-static {p1}, Landroid/os/IInstalld$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 36
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 636
    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    const-string v10, "android.os.IInstalld"

    .line 637
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v14, v11, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    .line 638
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 648
    packed-switch v14, :pswitch_data_1

    .line 1703
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 644
    :pswitch_0
    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 645
    return v11

    .line 1693
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1695
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1696
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1697
    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->scanApkStats(Ljava/lang/String;I)V

    .line 1698
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1699
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    .line 1675
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1677
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1678
    .local v1, "_arg1_length":I
    if-gez v1, :cond_1

    .line 1679
    const/4 v2, 0x0

    .local v2, "_arg1":[J
    goto :goto_0

    .line 1681
    .end local v2    # "_arg1":[J
    :cond_1
    new-array v2, v1, [J

    .line 1683
    .restart local v2    # "_arg1":[J
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1684
    invoke-virtual {v15, v0, v2}, Landroid/os/IInstalld$Stub;->getCompressedStats(Ljava/lang/String;[J)Z

    move-result v3

    .line 1685
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1686
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1687
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1688
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    .line 1664
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1_length":I
    .end local v2    # "_arg1":[J
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1666
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1667
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1668
    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->compressFile(Ljava/lang/String;Z)V

    .line 1669
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1670
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    .line 1654
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1655
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1656
    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->deleteDirectoryContents(Ljava/lang/String;)Z

    move-result v1

    .line 1657
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1658
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1659
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    .line 1646
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/os/IInstalld$Stub;->getDualDARLockstate()Z

    move-result v0

    .line 1647
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1648
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1649
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    .line 1634
    .end local v0    # "_result":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1636
    .local v0, "_arg0":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1637
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1638
    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->hasDualDARPolicyRecursively(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    .line 1639
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1640
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1641
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1642
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    .line 1624
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_result":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1625
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1626
    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->hasDualDARPolicy(Ljava/lang/String;)Z

    move-result v1

    .line 1627
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1628
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1629
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    .line 1610
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1612
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1614
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1615
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1616
    invoke-virtual {v15, v0, v1, v2}, Landroid/os/IInstalld$Stub;->setDualDARPolicyDirRecursively(IILjava/lang/String;)Z

    move-result v3

    .line 1617
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1618
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1619
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    .line 1596
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1598
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1600
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1601
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1602
    invoke-virtual {v15, v0, v1, v2}, Landroid/os/IInstalld$Stub;->setDualDARPolicyDir(IILjava/lang/String;)Z

    move-result v3

    .line 1603
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1604
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1605
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    .line 1584
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1586
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1587
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1588
    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->setEviction(IZ)Z

    move-result v2

    .line 1589
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1590
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1591
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    .line 1572
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1574
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1575
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1576
    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->migrateSdpDb(Ljava/lang/String;I)Z

    move-result v2

    .line 1577
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1578
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1579
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    .line 1562
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1563
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1564
    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->removeEncUserDir(I)Z

    move-result v1

    .line 1565
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1566
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1567
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    .line 1550
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1552
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1553
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1554
    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->removeEncPkgDir(ILjava/lang/String;)Z

    move-result v2

    .line 1555
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1556
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1557
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    .line 1534
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1536
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1538
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1540
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1541
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1542
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->createEncAppData(Ljava/lang/String;III)Z

    move-result v4

    .line 1543
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1544
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1545
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    .line 1524
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1525
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1526
    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->deleteKnoxFile(Ljava/lang/String;)Z

    move-result v1

    .line 1527
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1528
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1529
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    .line 1509
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1511
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1513
    .local v1, "_arg1":J
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1514
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1515
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->getKnoxScanDir(Ljava/lang/String;JLjava/util/List;)Z

    move-result v4

    .line 1516
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1517
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1518
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1519
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    .line 1499
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":Z
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1500
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1501
    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->getKnoxFileInfo(Ljava/lang/String;)[J

    move-result-object v1

    .line 1502
    .local v1, "_result":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1503
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1504
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    .line 1487
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[J
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1489
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1490
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1491
    invoke-virtual {v15, v0, v1, v2}, Landroid/os/IInstalld$Stub;->copyKnoxCancel(Ljava/lang/String;J)Z

    move-result v3

    .line 1492
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1493
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1494
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    .line 1463
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_result":Z
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1465
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1467
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1469
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1471
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1473
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 1475
    .local v21, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    .line 1477
    .local v23, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .line 1478
    .local v25, "_arg7":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1479
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move-wide/from16 v6, v21

    move-wide/from16 v8, v23

    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .local v27, "descriptor":Ljava/lang/String;
    move-wide/from16 v10, v25

    invoke-virtual/range {v0 .. v11}, Landroid/os/IInstalld$Stub;->copyKnoxChunks(Ljava/lang/String;ILjava/lang/String;IIJJJ)I

    move-result v0

    .line 1480
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1481
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1482
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1445
    .end local v0    # "_result":I
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":J
    .end local v23    # "_arg6":J
    .end local v25    # "_arg7":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_14
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1447
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1449
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1451
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1453
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1454
    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1455
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z

    move-result v0

    .line 1456
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1457
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1458
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1437
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_15
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/IInstalld$Stub;->removeNotTargetedPreloadApksIfNeeded()Z

    move-result v0

    .line 1438
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1439
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1440
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1422
    .end local v0    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_16
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1424
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1426
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1428
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1429
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1430
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->getOdexVisibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1431
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1432
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1433
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1409
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_17
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1411
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1413
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1414
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1415
    invoke-virtual {v15, v0, v1, v2}, Landroid/os/IInstalld$Stub;->cleanupInvalidPackageDirs(Ljava/lang/String;II)V

    .line 1416
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1417
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1402
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_18
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/IInstalld$Stub;->migrateLegacyObbData()V

    .line 1403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1404
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1394
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_19
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1395
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1396
    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->onPrivateVolumeRemoved(Ljava/lang/String;)V

    .line 1397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1398
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1385
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1a
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1386
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1387
    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->tryMountDataMirror(Ljava/lang/String;)V

    .line 1388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1389
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1372
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1b
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1374
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1376
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 1377
    .local v2, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1378
    invoke-virtual {v15, v0, v1, v2}, Landroid/os/IInstalld$Stub;->destroyCeSnapshotsNotSpecified(Ljava/lang/String;I[I)V

    .line 1379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1380
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1353
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_1c
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1355
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1357
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1359
    .local v10, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 1361
    .local v16, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1363
    .local v11, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1364
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1365
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move v3, v10

    move-wide/from16 v4, v16

    move v6, v11

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V

    .line 1366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1367
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1332
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v11    # "_arg4":I
    .end local v16    # "_arg3":J
    .end local v18    # "_arg5":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_1d
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1334
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1336
    .restart local v9    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1338
    .local v10, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 1340
    .local v11, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1342
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1344
    .local v17, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1345
    .local v18, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1346
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 1347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1314
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v11    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":I
    .end local v18    # "_arg6":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_1e
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1316
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1318
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1320
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1322
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1323
    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1324
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J

    move-result-wide v0

    .line 1325
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1326
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1327
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1294
    .end local v0    # "_result":J
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_1f
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1296
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1298
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1300
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1302
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 1304
    .local v11, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1305
    .local v16, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1306
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1307
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1308
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1309
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1284
    .end local v0    # "_result":Z
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v11    # "_arg4":Ljava/lang/String;
    .end local v16    # "_arg5":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_20
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1285
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1286
    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v1

    .line 1287
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1288
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1289
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1277
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_21
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/IInstalld$Stub;->invalidateMounts()V

    .line 1278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1260
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_22
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1262
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1264
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1266
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1268
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1269
    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1270
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v0

    .line 1271
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1272
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1273
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1240
    .end local v0    # "_result":[B
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_23
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1242
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1244
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1246
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v10

    .line 1248
    .local v10, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 1250
    .restart local v11    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1251
    .local v16, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1252
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1253
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1254
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1255
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1224
    .end local v0    # "_result":Z
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v11    # "_arg4":Ljava/lang/String;
    .end local v16    # "_arg5":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_24
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1226
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1228
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1230
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1231
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1232
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 1233
    .local v4, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1234
    invoke-virtual {v12, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1235
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1209
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_25
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1211
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1213
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1215
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1216
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1217
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1194
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_26
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1196
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1198
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1200
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1201
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1202
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1181
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_27
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1183
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1185
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1186
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1187
    invoke-virtual {v15, v0, v1, v2}, Landroid/os/IInstalld$Stub;->createOatDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1166
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_28
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1168
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1170
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1172
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1173
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1174
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1175
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1176
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1153
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_29
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1155
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1157
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1158
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1159
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->freeCache(Ljava/lang/String;JI)V

    .line 1160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1142
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_2a
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1144
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1145
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1146
    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1148
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1131
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_2b
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1133
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1134
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1135
    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1115
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_2c
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1117
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1119
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1121
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1122
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1123
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1124
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1125
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1126
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1104
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_2d
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1106
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1107
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1108
    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1095
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_2e
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1096
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1097
    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->destroyAppProfiles(Ljava/lang/String;)V

    .line 1098
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1084
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_2f
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1086
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1087
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1088
    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1090
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1068
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_30
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1070
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1072
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1074
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1075
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1076
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1077
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1078
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1079
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1050
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_31
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1052
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1054
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1056
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1058
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 1059
    .local v10, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1060
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 1061
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1062
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1063
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1036
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_32
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1038
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1040
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1041
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1042
    invoke-virtual {v15, v0, v1, v2}, Landroid/os/IInstalld$Stub;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1043
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1044
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1045
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1025
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_33
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1027
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1028
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1029
    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->rmdex(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1009
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_34
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1011
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1013
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1015
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1016
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1017
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 1018
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1019
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1020
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1000
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_35
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1001
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1002
    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->controlDexOptBlocking(Z)V

    .line 1003
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 992
    .end local v0    # "_arg0":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_36
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/IInstalld$Stub;->getAsyncResult()[I

    move-result-object v0

    .line 993
    .local v0, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 995
    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 951
    .end local v0    # "_result":[I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_37
    move-object/from16 v27, v10

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .local v18, "_arg0":Ljava/lang/String;
    move-object/from16 v1, v18

    .line 953
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .local v19, "_arg1":I
    move/from16 v2, v19

    .line 955
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .local v20, "_arg2":Ljava/lang/String;
    move-object/from16 v3, v20

    .line 957
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .local v21, "_arg3":Ljava/lang/String;
    move-object/from16 v4, v21

    .line 959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .local v22, "_arg4":I
    move/from16 v5, v22

    .line 961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .local v23, "_arg5":Ljava/lang/String;
    move-object/from16 v6, v23

    .line 963
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .local v24, "_arg6":I
    move/from16 v7, v24

    .line 965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .local v25, "_arg7":Ljava/lang/String;
    move-object/from16 v8, v25

    .line 967
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .local v26, "_arg8":Ljava/lang/String;
    move-object/from16 v9, v26

    .line 969
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .local v28, "_arg9":Ljava/lang/String;
    move-object/from16 v10, v28

    .line 971
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .local v29, "_arg10":Ljava/lang/String;
    move-object/from16 v11, v29

    .line 973
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v30

    move-object v0, v12

    .local v30, "_arg11":Z
    move/from16 v12, v30

    .line 975
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .local v31, "_arg12":I
    move/from16 v13, v31

    .line 977
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .local v32, "_arg13":Ljava/lang/String;
    move-object/from16 v14, v32

    .line 979
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .local v33, "_arg14":Ljava/lang/String;
    move-object/from16 v15, v33

    .line 981
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    .local v34, "_arg15":Ljava/lang/String;
    move-object/from16 v16, v34

    .line 983
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    .local v35, "_arg16":I
    move/from16 v17, v35

    .line 984
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 985
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v17}, Landroid/os/IInstalld$Stub;->dexoptAsync(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 986
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 987
    move-object/from16 v15, p3

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 988
    move-object/from16 v9, p0

    move-object/from16 v1, p2

    move-object v8, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 911
    .end local v0    # "_result":Z
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v20    # "_arg2":Ljava/lang/String;
    .end local v21    # "_arg3":Ljava/lang/String;
    .end local v22    # "_arg4":I
    .end local v23    # "_arg5":Ljava/lang/String;
    .end local v24    # "_arg6":I
    .end local v25    # "_arg7":Ljava/lang/String;
    .end local v26    # "_arg8":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .end local v28    # "_arg9":Ljava/lang/String;
    .end local v29    # "_arg10":Ljava/lang/String;
    .end local v30    # "_arg11":Z
    .end local v31    # "_arg12":I
    .end local v32    # "_arg13":Ljava/lang/String;
    .end local v33    # "_arg14":Ljava/lang/String;
    .end local v34    # "_arg15":Ljava/lang/String;
    .end local v35    # "_arg16":I
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_38
    move-object/from16 v27, v10

    move-object v15, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .local v17, "_arg0":Ljava/lang/String;
    move-object/from16 v1, v17

    .line 913
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .local v18, "_arg1":I
    move/from16 v2, v18

    .line 915
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .local v19, "_arg2":Ljava/lang/String;
    move-object/from16 v3, v19

    .line 917
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .local v20, "_arg3":Ljava/lang/String;
    move-object/from16 v4, v20

    .line 919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .local v21, "_arg4":I
    move/from16 v5, v21

    .line 921
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .local v22, "_arg5":Ljava/lang/String;
    move-object/from16 v6, v22

    .line 923
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .local v23, "_arg6":I
    move/from16 v7, v23

    .line 925
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .local v24, "_arg7":Ljava/lang/String;
    move-object/from16 v8, v24

    .line 927
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .local v25, "_arg8":Ljava/lang/String;
    move-object/from16 v9, v25

    .line 929
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .local v26, "_arg9":Ljava/lang/String;
    move-object/from16 v10, v26

    .line 931
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .local v28, "_arg10":Ljava/lang/String;
    move-object/from16 v11, v28

    .line 933
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v29

    .local v29, "_arg11":Z
    move/from16 v12, v29

    .line 935
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .local v30, "_arg12":I
    move/from16 v13, v30

    .line 937
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .local v31, "_arg13":Ljava/lang/String;
    move-object/from16 v14, v31

    .line 939
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    move-object v0, v15

    .local v32, "_arg14":Ljava/lang/String;
    move-object/from16 v15, v32

    .line 941
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .local v33, "_arg15":Ljava/lang/String;
    move-object/from16 v16, v33

    .line 942
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 943
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v16}, Landroid/os/IInstalld$Stub;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 944
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    move-object/from16 v8, p3

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 946
    move-object/from16 v9, p0

    move-object/from16 v1, p2

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 890
    .end local v0    # "_result":Z
    .end local v17    # "_arg0":Ljava/lang/String;
    .end local v18    # "_arg1":I
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v20    # "_arg3":Ljava/lang/String;
    .end local v21    # "_arg4":I
    .end local v22    # "_arg5":Ljava/lang/String;
    .end local v23    # "_arg6":I
    .end local v24    # "_arg7":Ljava/lang/String;
    .end local v25    # "_arg8":Ljava/lang/String;
    .end local v26    # "_arg9":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .end local v28    # "_arg10":Ljava/lang/String;
    .end local v29    # "_arg11":Z
    .end local v30    # "_arg12":I
    .end local v31    # "_arg13":Ljava/lang/String;
    .end local v32    # "_arg14":Ljava/lang/String;
    .end local v33    # "_arg15":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_39
    move-object/from16 v27, v10

    move-object v8, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 892
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 894
    .local v10, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 896
    .local v11, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 898
    .local v12, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 900
    .local v13, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 902
    .local v14, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 903
    .local v15, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move v4, v12

    move-object v5, v13

    move v6, v14

    move-object v7, v15

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 905
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    move-object/from16 v9, p0

    move-object/from16 v1, p2

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 875
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg3":I
    .end local v13    # "_arg4":Ljava/lang/String;
    .end local v14    # "_arg5":I
    .end local v15    # "_arg6":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_3a
    move-object/from16 v27, v10

    move-object v8, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 877
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 879
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 881
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 882
    .local v10, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 883
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v9

    move-wide v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->setAppQuota(Ljava/lang/String;IIJ)V

    .line 884
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    move-object/from16 v9, p0

    move-object/from16 v1, p2

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 863
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    :pswitch_3b
    move-object/from16 v27, v10

    move-object v8, v12

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 865
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 866
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 867
    move-object/from16 v9, p0

    invoke-virtual {v9, v0, v1}, Landroid/os/IInstalld$Stub;->getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v2

    .line 868
    .local v2, "_result":[Landroid/os/storage/CrateMetadata;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    const/4 v10, 0x1

    invoke-virtual {v8, v2, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 870
    move-object/from16 v1, p2

    goto/16 :goto_1

    .line 849
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":[Landroid/os/storage/CrateMetadata;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_3c
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v9, v15

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 851
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 853
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 854
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 855
    invoke-virtual {v9, v0, v1, v2}, Landroid/os/IInstalld$Stub;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v3

    .line 856
    .local v3, "_result":[Landroid/os/storage/CrateMetadata;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    invoke-virtual {v8, v3, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 858
    move-object/from16 v1, p2

    goto/16 :goto_1

    .line 833
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":[Landroid/os/storage/CrateMetadata;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_3d
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v9, v15

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 835
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 837
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 839
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 840
    .local v3, "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 841
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v4

    .line 842
    .local v4, "_result":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 844
    move-object/from16 v1, p2

    goto/16 :goto_1

    .line 817
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":[I
    .end local v4    # "_result":[J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_3e
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v9, v15

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 819
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 821
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 823
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 824
    .restart local v3    # "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 825
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->getUserSize(Ljava/lang/String;II[I)[J

    move-result-object v4

    .line 826
    .restart local v4    # "_result":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 828
    move-object/from16 v1, p2

    goto/16 :goto_1

    .line 795
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":[I
    .end local v4    # "_result":[J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_3f
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v9, v15

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 797
    .local v11, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v12

    .line 799
    .local v12, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 801
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 803
    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 805
    .local v15, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v16

    .line 807
    .local v16, "_arg5":[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v17

    .line 808
    .local v17, "_arg6":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 809
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    move-result-object v0

    .line 810
    .local v0, "_result":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 812
    move-object/from16 v1, p2

    goto/16 :goto_1

    .line 784
    .end local v0    # "_result":[J
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":[Ljava/lang/String;
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":I
    .end local v16    # "_arg5":[J
    .end local v17    # "_arg6":[Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_40
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v9, v15

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 787
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 788
    invoke-virtual {v9, v0, v1}, Landroid/os/IInstalld$Stub;->fixupAppData(Ljava/lang/String;I)V

    .line 789
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    move-object/from16 v1, p2

    goto/16 :goto_1

    .line 767
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_41
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v9, v15

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 769
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 771
    .local v11, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 773
    .local v12, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 775
    .local v13, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 776
    .local v14, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 777
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v11

    move v3, v12

    move v4, v13

    move-wide v5, v14

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 778
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    move-object/from16 v1, p2

    goto/16 :goto_1

    .line 750
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":I
    .end local v13    # "_arg3":I
    .end local v14    # "_arg4":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_42
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v9, v15

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 752
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 754
    .restart local v11    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 756
    .restart local v12    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 758
    .restart local v13    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 759
    .restart local v14    # "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v11

    move v3, v12

    move v4, v13

    move-wide v5, v14

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 761
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    move-object/from16 v1, p2

    goto/16 :goto_1

    .line 735
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":I
    .end local v13    # "_arg3":I
    .end local v14    # "_arg4":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_43
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v9, v15

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 737
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 739
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 741
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 742
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 743
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V

    .line 744
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    move-object/from16 v1, p2

    goto/16 :goto_1

    .line 716
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_44
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v9, v15

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 718
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 720
    .restart local v11    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 722
    .restart local v12    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 724
    .restart local v13    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 726
    .local v14, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 727
    .local v15, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 729
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    move-object/from16 v1, p2

    goto/16 :goto_1

    .line 707
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":I
    .end local v13    # "_arg3":I
    .end local v14    # "_arg4":I
    .end local v15    # "_arg5":Ljava/lang/String;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_45
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v9, v15

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/os/ReconcileSdkDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ReconcileSdkDataArgs;

    .line 708
    .local v0, "_arg0":Landroid/os/ReconcileSdkDataArgs;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 709
    invoke-virtual {v9, v0}, Landroid/os/IInstalld$Stub;->reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V

    .line 710
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    goto/16 :goto_1

    .line 697
    .end local v0    # "_arg0":Landroid/os/ReconcileSdkDataArgs;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_46
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/os/CreateAppDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/CreateAppDataArgs;

    .line 698
    .local v0, "_arg0":[Landroid/os/CreateAppDataArgs;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 699
    invoke-virtual {v9, v0}, Landroid/os/IInstalld$Stub;->createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;

    move-result-object v2

    .line 700
    .local v2, "_result":[Landroid/os/CreateAppDataResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    invoke-virtual {v8, v2, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 702
    goto/16 :goto_1

    .line 687
    .end local v0    # "_arg0":[Landroid/os/CreateAppDataArgs;
    .end local v2    # "_result":[Landroid/os/CreateAppDataResult;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_47
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/os/CreateAppDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CreateAppDataArgs;

    .line 688
    .local v0, "_arg0":Landroid/os/CreateAppDataArgs;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 689
    invoke-virtual {v9, v0}, Landroid/os/IInstalld$Stub;->createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;

    move-result-object v2

    .line 690
    .local v2, "_result":Landroid/os/CreateAppDataResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    invoke-virtual {v8, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 692
    goto :goto_1

    .line 680
    .end local v0    # "_arg0":Landroid/os/CreateAppDataArgs;
    .end local v2    # "_result":Landroid/os/CreateAppDataResult;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_48
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/IInstalld$Stub;->setFirstBoot()V

    .line 681
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    goto :goto_1

    .line 668
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_49
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 672
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 673
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 674
    invoke-virtual {v9, v0, v2, v3}, Landroid/os/IInstalld$Stub;->destroyUserData(Ljava/lang/String;II)V

    .line 675
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    goto :goto_1

    .line 653
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    :pswitch_4a
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 655
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 657
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 659
    .restart local v3    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 660
    .local v4, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 661
    invoke-virtual {v9, v0, v2, v3, v4}, Landroid/os/IInstalld$Stub;->createUserData(Ljava/lang/String;III)V

    .line 662
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    nop

    .line 1706
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :goto_1
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
