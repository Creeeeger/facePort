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

.field static final blacklist TRANSACTION_cleanupInvalidPackageDirs:I = 0x31

.field static final greylist-max-o TRANSACTION_clearAppData:I = 0x9

.field static final greylist-max-o TRANSACTION_clearAppProfiles:I = 0x19

.field static final blacklist TRANSACTION_compressFile:I = 0x46

.field static final blacklist TRANSACTION_controlDexOptBlocking:I = 0x14

.field static final blacklist TRANSACTION_copyKnoxAppData:I = 0x36

.field static final blacklist TRANSACTION_copyKnoxCancel:I = 0x38

.field static final blacklist TRANSACTION_copyKnoxChunks:I = 0x37

.field static final greylist-max-o TRANSACTION_copySystemProfile:I = 0x18

.field static final greylist-max-o TRANSACTION_createAppData:I = 0x4

.field static final blacklist TRANSACTION_createAppDataBatched:I = 0x5

.field static final blacklist TRANSACTION_createEncAppData:I = 0x3c

.field static final blacklist TRANSACTION_createFsveritySetupAuthToken:I = 0x34

.field static final greylist-max-o TRANSACTION_createOatDir:I = 0x21

.field static final greylist-max-o TRANSACTION_createProfileSnapshot:I = 0x1c

.field static final greylist-max-o TRANSACTION_createUserData:I = 0x1

.field static final blacklist TRANSACTION_deleteKnoxFile:I = 0x3b

.field static final greylist-max-o TRANSACTION_deleteOdex:I = 0x24

.field static final blacklist TRANSACTION_deleteReferenceProfile:I = 0x1b

.field static final greylist-max-o TRANSACTION_destroyAppData:I = 0xa

.field static final blacklist TRANSACTION_destroyAppDataSnapshot:I = 0x2c

.field static final greylist-max-o TRANSACTION_destroyAppProfiles:I = 0x1a

.field static final blacklist TRANSACTION_destroyCeSnapshotsNotSpecified:I = 0x2d

.field static final greylist-max-o TRANSACTION_destroyProfileSnapshot:I = 0x1d

.field static final greylist-max-o TRANSACTION_destroyUserData:I = 0x2

.field static final greylist-max-o TRANSACTION_dexopt:I = 0x13

.field static final greylist-max-o TRANSACTION_dumpProfiles:I = 0x17

.field static final blacklist TRANSACTION_enableFsverity:I = 0x35

.field static final greylist-max-o TRANSACTION_fixupAppData:I = 0xb

.field static final greylist-max-o TRANSACTION_freeCache:I = 0x1f

.field static final blacklist TRANSACTION_getAppCrates:I = 0xf

.field static final greylist-max-o TRANSACTION_getAppSize:I = 0xc

.field static final blacklist TRANSACTION_getCompressedStats:I = 0x47

.field static final blacklist TRANSACTION_getDualDARLockstate:I = 0x45

.field static final greylist-max-o TRANSACTION_getExternalSize:I = 0xe

.field static final blacklist TRANSACTION_getKnoxFileInfo:I = 0x39

.field static final blacklist TRANSACTION_getKnoxScanDir:I = 0x3a

.field static final blacklist TRANSACTION_getOdexVisibility:I = 0x32

.field static final blacklist TRANSACTION_getUserCrates:I = 0x10

.field static final greylist-max-o TRANSACTION_getUserSize:I = 0xd

.field static final blacklist TRANSACTION_hasDualDARPolicy:I = 0x43

.field static final blacklist TRANSACTION_hasDualDARPolicyRecursively:I = 0x44

.field static final greylist-max-o TRANSACTION_hashSecondaryDexFile:I = 0x26

.field static final greylist-max-o TRANSACTION_invalidateMounts:I = 0x27

.field static final greylist-max-o TRANSACTION_isQuotaSupported:I = 0x28

.field static final greylist-max-o TRANSACTION_linkFile:I = 0x22

.field static final greylist-max-o TRANSACTION_linkNativeLibraryDirectory:I = 0x20

.field static final greylist-max-o TRANSACTION_mergeProfiles:I = 0x16

.field static final greylist-max-o TRANSACTION_migrateAppData:I = 0x8

.field static final blacklist TRANSACTION_migrateLegacyObbData:I = 0x30

.field static final blacklist TRANSACTION_migrateSdpDb:I = 0x3f

.field static final greylist-max-o TRANSACTION_moveAb:I = 0x23

.field static final greylist-max-o TRANSACTION_moveCompleteApp:I = 0x12

.field static final blacklist TRANSACTION_onPrivateVolumeRemoved:I = 0x2f

.field static final greylist-max-o TRANSACTION_prepareAppProfile:I = 0x29

.field static final blacklist TRANSACTION_reconcileSdkData:I = 0x6

.field static final greylist-max-o TRANSACTION_reconcileSecondaryDexFile:I = 0x25

.field static final blacklist TRANSACTION_removeEncPkgDir:I = 0x3d

.field static final blacklist TRANSACTION_removeEncUserDir:I = 0x3e

.field static final blacklist TRANSACTION_removeNotTargetedPreloadApksIfNeeded:I = 0x33

.field static final blacklist TRANSACTION_restoreAppDataSnapshot:I = 0x2b

.field static final greylist-max-o TRANSACTION_restoreconAppData:I = 0x7

.field static final greylist-max-o TRANSACTION_rmPackageDir:I = 0x1e

.field static final greylist-max-o TRANSACTION_rmdex:I = 0x15

.field static final blacklist TRANSACTION_scanApkStats:I = 0x48

.field static final greylist-max-o TRANSACTION_setAppQuota:I = 0x11

.field static final blacklist TRANSACTION_setDualDARPolicyDir:I = 0x41

.field static final blacklist TRANSACTION_setDualDARPolicyDirRecursively:I = 0x42

.field static final blacklist TRANSACTION_setEviction:I = 0x40

.field static final blacklist TRANSACTION_setFirstBoot:I = 0x3

.field static final blacklist TRANSACTION_snapshotAppData:I = 0x2a

.field static final blacklist TRANSACTION_tryMountDataMirror:I = 0x2e


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IInstalld"

    invoke-virtual {p0, p0, v0}, Landroid/os/IInstalld$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.os.IInstalld"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IInstalld;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/os/IInstalld;

    return-object v1

    :cond_1
    new-instance v1, Landroid/os/IInstalld$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IInstalld$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "scanApkStats"

    return-object v0

    :pswitch_1
    const-string v0, "getCompressedStats"

    return-object v0

    :pswitch_2
    const-string v0, "compressFile"

    return-object v0

    :pswitch_3
    const-string v0, "getDualDARLockstate"

    return-object v0

    :pswitch_4
    const-string v0, "hasDualDARPolicyRecursively"

    return-object v0

    :pswitch_5
    const-string v0, "hasDualDARPolicy"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "setDualDARPolicyDirRecursively"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "setDualDARPolicyDir"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "setEviction"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "migrateSdpDb"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "removeEncUserDir"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "removeEncPkgDir"

    return-object v0

    :pswitch_c
    const-string v0, "createEncAppData"

    return-object v0

    :pswitch_d
    const-string v0, "deleteKnoxFile"

    return-object v0

    :pswitch_e
    const-string v0, "getKnoxScanDir"

    return-object v0

    :pswitch_f
    const-string v0, "getKnoxFileInfo"

    return-object v0

    :pswitch_10
    const-string v0, "copyKnoxCancel"

    return-object v0

    :pswitch_11
    const-string v0, "copyKnoxChunks"

    return-object v0

    :pswitch_12
    const-string v0, "copyKnoxAppData"

    return-object v0

    :pswitch_13
    const-string v0, "enableFsverity"

    return-object v0

    :pswitch_14
    const-string v0, "createFsveritySetupAuthToken"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "removeNotTargetedPreloadApksIfNeeded"

    return-object v0

    :pswitch_16
    const-string v0, "getOdexVisibility"

    return-object v0

    :pswitch_17
    const-string v0, "cleanupInvalidPackageDirs"

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "migrateLegacyObbData"

    return-object v0

    :pswitch_19
    const-string/jumbo v0, "onPrivateVolumeRemoved"

    return-object v0

    :pswitch_1a
    const-string/jumbo v0, "tryMountDataMirror"

    return-object v0

    :pswitch_1b
    const-string v0, "destroyCeSnapshotsNotSpecified"

    return-object v0

    :pswitch_1c
    const-string v0, "destroyAppDataSnapshot"

    return-object v0

    :pswitch_1d
    const-string/jumbo v0, "restoreAppDataSnapshot"

    return-object v0

    :pswitch_1e
    const-string/jumbo v0, "snapshotAppData"

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "prepareAppProfile"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "isQuotaSupported"

    return-object v0

    :pswitch_21
    const-string/jumbo v0, "invalidateMounts"

    return-object v0

    :pswitch_22
    const-string v0, "hashSecondaryDexFile"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "reconcileSecondaryDexFile"

    return-object v0

    :pswitch_24
    const-string v0, "deleteOdex"

    return-object v0

    :pswitch_25
    const-string/jumbo v0, "moveAb"

    return-object v0

    :pswitch_26
    const-string/jumbo v0, "linkFile"

    return-object v0

    :pswitch_27
    const-string v0, "createOatDir"

    return-object v0

    :pswitch_28
    const-string/jumbo v0, "linkNativeLibraryDirectory"

    return-object v0

    :pswitch_29
    const-string v0, "freeCache"

    return-object v0

    :pswitch_2a
    const-string/jumbo v0, "rmPackageDir"

    return-object v0

    :pswitch_2b
    const-string v0, "destroyProfileSnapshot"

    return-object v0

    :pswitch_2c
    const-string v0, "createProfileSnapshot"

    return-object v0

    :pswitch_2d
    const-string v0, "deleteReferenceProfile"

    return-object v0

    :pswitch_2e
    const-string v0, "destroyAppProfiles"

    return-object v0

    :pswitch_2f
    const-string v0, "clearAppProfiles"

    return-object v0

    :pswitch_30
    const-string v0, "copySystemProfile"

    return-object v0

    :pswitch_31
    const-string v0, "dumpProfiles"

    return-object v0

    :pswitch_32
    const-string/jumbo v0, "mergeProfiles"

    return-object v0

    :pswitch_33
    const-string/jumbo v0, "rmdex"

    return-object v0

    :pswitch_34
    const-string v0, "controlDexOptBlocking"

    return-object v0

    :pswitch_35
    const-string v0, "dexopt"

    return-object v0

    :pswitch_36
    const-string/jumbo v0, "moveCompleteApp"

    return-object v0

    :pswitch_37
    const-string/jumbo v0, "setAppQuota"

    return-object v0

    :pswitch_38
    const-string v0, "getUserCrates"

    return-object v0

    :pswitch_39
    const-string v0, "getAppCrates"

    return-object v0

    :pswitch_3a
    const-string v0, "getExternalSize"

    return-object v0

    :pswitch_3b
    const-string v0, "getUserSize"

    return-object v0

    :pswitch_3c
    const-string v0, "getAppSize"

    return-object v0

    :pswitch_3d
    const-string v0, "fixupAppData"

    return-object v0

    :pswitch_3e
    const-string v0, "destroyAppData"

    return-object v0

    :pswitch_3f
    const-string v0, "clearAppData"

    return-object v0

    :pswitch_40
    const-string/jumbo v0, "migrateAppData"

    return-object v0

    :pswitch_41
    const-string/jumbo v0, "restoreconAppData"

    return-object v0

    :pswitch_42
    const-string/jumbo v0, "reconcileSdkData"

    return-object v0

    :pswitch_43
    const-string v0, "createAppDataBatched"

    return-object v0

    :pswitch_44
    const-string v0, "createAppData"

    return-object v0

    :pswitch_45
    const-string/jumbo v0, "setFirstBoot"

    return-object v0

    :pswitch_46
    const-string v0, "destroyUserData"

    return-object v0

    :pswitch_47
    const-string v0, "createUserData"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x47

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/os/IInstalld$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    const-string v10, "android.os.IInstalld"

    const/4 v11, 0x1

    if-lt v14, v11, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    invoke-virtual {v13, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v0, 0x5f4e5446

    if-ne v14, v0, :cond_1

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :cond_1
    packed-switch v14, :pswitch_data_0

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->scanApkStats(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    new-array v2, v1, [J

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v2}, Landroid/os/IInstalld$Stub;->getCompressedStats(Ljava/lang/String;[J)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->compressFile(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/IInstalld$Stub;->getDualDARLockstate()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->hasDualDARPolicyRecursively(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->hasDualDARPolicy(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/os/IInstalld$Stub;->setDualDARPolicyDirRecursively(IILjava/lang/String;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/os/IInstalld$Stub;->setDualDARPolicyDir(IILjava/lang/String;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->setEviction(IZ)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->migrateSdpDb(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->removeEncUserDir(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->removeEncPkgDir(ILjava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->createEncAppData(Ljava/lang/String;III)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->deleteKnoxFile(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->getKnoxScanDir(Ljava/lang/String;JLjava/util/List;)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->getKnoxFileInfo(Ljava/lang/String;)[J

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/os/IInstalld$Stub;->copyKnoxCancel(Ljava/lang/String;J)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move-wide/from16 v6, v21

    move-wide/from16 v8, v23

    move-object/from16 v27, v10

    move-wide/from16 v10, v25

    invoke-virtual/range {v0 .. v11}, Landroid/os/IInstalld$Stub;->copyKnoxChunks(Ljava/lang/String;ILjava/lang/String;IIJJJ)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_12
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_13
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/os/IInstalld$Stub;->enableFsverity(Landroid/os/IInstalld$IFsveritySetupAuthToken;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_14
    move-object/from16 v27, v10

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->createFsveritySetupAuthToken(Landroid/os/ParcelFileDescriptor;I)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_15
    move-object/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Landroid/os/IInstalld$Stub;->removeNotTargetedPreloadApksIfNeeded()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_16
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->getOdexVisibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_17
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/os/IInstalld$Stub;->cleanupInvalidPackageDirs(Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_18
    move-object/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Landroid/os/IInstalld$Stub;->migrateLegacyObbData()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_19
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->onPrivateVolumeRemoved(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_1a
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->tryMountDataMirror(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_1b
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/os/IInstalld$Stub;->destroyCeSnapshotsNotSpecified(Ljava/lang/String;I[I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_1c
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move v3, v10

    move-wide/from16 v4, v16

    move v6, v11

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_1d
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move v3, v10

    move-object v4, v11

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_1e
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_1f
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_20
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_21
    move-object/from16 v27, v10

    invoke-virtual/range {p0 .. p0}, Landroid/os/IInstalld$Stub;->invalidateMounts()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_22
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_23
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_24
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_25
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_26
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_27
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/os/IInstalld$Stub;->createOatDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_28
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_29
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->freeCache(Ljava/lang/String;JI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_2a
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_2b
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_2c
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_2d
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_2e
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->destroyAppProfiles(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_2f
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_30
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_31
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_32
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/os/IInstalld$Stub;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_33
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/os/IInstalld$Stub;->rmdex(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_34
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/os/IInstalld$Stub;->controlDexOptBlocking(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_35
    move-object/from16 v27, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v1, v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    move/from16 v2, v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v3, v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v4, v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    move/from16 v5, v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v6, v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    move/from16 v7, v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v8, v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v9, v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v10, v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v11, v28

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v29

    move-object v0, v12

    move/from16 v12, v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    move/from16 v13, v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v14, v31

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v15, v32

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v16, v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v16}, Landroid/os/IInstalld$Stub;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v8, p3

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v9, p0

    move-object/from16 v1, p2

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_36
    move-object/from16 v27, v10

    move-object v8, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move v4, v12

    move-object v5, v13

    move v6, v14

    move-object v7, v15

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v9, p0

    move-object/from16 v1, p2

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_37
    move-object/from16 v27, v10

    move-object v8, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v9

    move-wide v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->setAppQuota(Ljava/lang/String;IIJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v9, p0

    move-object/from16 v1, p2

    const/4 v10, 0x1

    goto/16 :goto_1

    :pswitch_38
    move-object/from16 v27, v10

    move-object v8, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v9, p0

    invoke-virtual {v9, v0, v1}, Landroid/os/IInstalld$Stub;->getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    invoke-virtual {v8, v2, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move-object/from16 v1, p2

    goto/16 :goto_1

    :pswitch_39
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v9, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/IInstalld$Stub;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v3, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move-object/from16 v1, p2

    goto/16 :goto_1

    :pswitch_3a
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v9, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeLongArray([J)V

    move-object/from16 v1, p2

    goto/16 :goto_1

    :pswitch_3b
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v9, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->getUserSize(Ljava/lang/String;II[I)[J

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeLongArray([J)V

    move-object/from16 v1, p2

    goto/16 :goto_1

    :pswitch_3c
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v9, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

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

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    move-object/from16 v1, p2

    goto/16 :goto_1

    :pswitch_3d
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v9, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1}, Landroid/os/IInstalld$Stub;->fixupAppData(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p2

    goto/16 :goto_1

    :pswitch_3e
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v9, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v11

    move v3, v12

    move v4, v13

    move-wide v5, v14

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p2

    goto/16 :goto_1

    :pswitch_3f
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v9, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v11

    move v3, v12

    move v4, v13

    move-wide v5, v14

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p2

    goto/16 :goto_1

    :pswitch_40
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v9, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p2

    goto/16 :goto_1

    :pswitch_41
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v9, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v1, p2

    goto/16 :goto_1

    :pswitch_42
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v9, v15

    sget-object v0, Landroid/os/ReconcileSdkDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ReconcileSdkDataArgs;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0}, Landroid/os/IInstalld$Stub;->reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_43
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    sget-object v0, Landroid/os/CreateAppDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/CreateAppDataArgs;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0}, Landroid/os/IInstalld$Stub;->createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2, v10}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :pswitch_44
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    sget-object v0, Landroid/os/CreateAppDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CreateAppDataArgs;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0}, Landroid/os/IInstalld$Stub;->createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_1

    :pswitch_45
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    invoke-virtual/range {p0 .. p0}, Landroid/os/IInstalld$Stub;->setFirstBoot()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_46
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v2, v3}, Landroid/os/IInstalld$Stub;->destroyUserData(Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_47
    move-object/from16 v27, v10

    move v10, v11

    move-object v8, v12

    move-object v1, v13

    move-object v9, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v2, v3, v4}, Landroid/os/IInstalld$Stub;->createUserData(Ljava/lang/String;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_1
    return v10

    :pswitch_data_0
    .packed-switch 0x1
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
