.class public final Landroid/content/pm/PackageParser$Package;
.super Ljava/lang/Object;
.source "PackageParser.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Package"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final greylist activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;"
        }
    .end annotation
.end field

.field public greylist applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public greylist-max-o baseCodePath:Ljava/lang/String;

.field public greylist-max-o baseHardwareAccelerated:Z

.field public greylist-max-o baseRevisionCode:I

.field public greylist-max-o childPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o codePath:Ljava/lang/String;

.field public greylist configPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o coreApp:Z

.field public greylist-max-o cpuAbiOverride:Ljava/lang/String;

.field public greylist-max-o featureGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/FeatureGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist implicitPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist installLocation:I

.field public final greylist instrumentation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$Instrumentation;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o isStub:Z

.field public greylist-max-o libraryNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o mAdoptPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist mAppMetaData:Landroid/os/Bundle;

.field public greylist-max-o mCompileSdkVersion:I

.field public greylist-max-o mCompileSdkVersionCodename:Ljava/lang/String;

.field public greylist mExtras:Ljava/lang/Object;

.field public blacklist mIsSamsungThemeOverlay:Z

.field public greylist-max-r mKeySetMapping:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation
.end field

.field public greylist-max-o mLastPackageUsageTimeInMills:[J

.field public greylist-max-o mOriginalPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o mOverlayCategory:Ljava/lang/String;

.field public greylist-max-o mOverlayIsStatic:Z

.field public greylist-max-o mOverlayPriority:I

.field public greylist-max-o mOverlayTarget:Ljava/lang/String;

.field public blacklist mOverlayTargetName:Ljava/lang/String;

.field public greylist mPreferredOrder:I

.field public greylist-max-o mRealPackage:Ljava/lang/String;

.field public greylist-max-o mRequiredAccountType:Ljava/lang/String;

.field public greylist-max-o mRequiredForAllUsers:Z

.field public greylist-max-o mRestrictedAccountType:Ljava/lang/String;

.field public greylist mSharedUserId:Ljava/lang/String;

.field public greylist mSharedUserLabel:I

.field public greylist mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field public greylist-max-r mUpgradeKeySets:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist mVersionCode:I

.field public greylist-max-o mVersionCodeMajor:I

.field public greylist mVersionName:Ljava/lang/String;

.field public greylist-max-o manifestPackageName:Ljava/lang/String;

.field public greylist packageName:Ljava/lang/String;

.field public greylist-max-o parentPackage:Landroid/content/pm/PackageParser$Package;

.field public final greylist permissionGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final greylist permissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$Permission;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o preferredActivityFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public greylist protectedBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final greylist providers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field

.field public final greylist receivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;"
        }
    .end annotation
.end field

.field public greylist reqFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final greylist requestedPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o restrictUpdateHash:[B

.field public final greylist services:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$Service;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o splitCodePaths:[Ljava/lang/String;

.field public greylist-max-o splitFlags:[I

.field public greylist-max-o splitNames:[Ljava/lang/String;

.field public greylist-max-o splitPrivateFlags:[I

.field public greylist-max-o splitRevisionCodes:[I

.field public greylist-max-o staticSharedLibName:Ljava/lang/String;

.field public greylist-max-o staticSharedLibVersion:J

.field public greylist-max-o use32bitAbi:Z

.field public greylist usesLibraries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist usesLibraryFiles:[Ljava/lang/String;

.field public blacklist usesLibraryInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public greylist usesOptionalLibraries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o usesStaticLibraries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o usesStaticLibrariesCertDigests:[[Ljava/lang/String;

.field public greylist-max-o usesStaticLibrariesVersions:[J

.field public greylist-max-o visibleToInstantApps:Z

.field public greylist-max-o volumeUuid:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 7664
    new-instance v0, Landroid/content/pm/PackageParser$Package$1;

    invoke-direct {v0}, Landroid/content/pm/PackageParser$Package$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser$Package;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 16
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 7372
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-class v2, Landroid/content/pm/PackageParser$Package;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6854
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v3}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6857
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    .line 6859
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    .line 6861
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 6863
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    .line 6865
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    .line 6867
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    .line 6869
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    .line 6872
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 6876
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    .line 6884
    const/4 v13, 0x0

    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    .line 6885
    const-wide/16 v14, 0x0

    iput-wide v14, v0, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    .line 6886
    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    .line 6887
    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 6889
    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    .line 6890
    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    .line 6891
    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    .line 6892
    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 6894
    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    .line 6896
    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->usesLibraryInfos:Ljava/util/ArrayList;

    .line 6898
    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 6900
    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 6901
    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 6902
    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 6905
    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 6933
    sget-object v14, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v14, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 6938
    iput v4, v0, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    .line 6942
    const/16 v14, 0x8

    new-array v14, v14, [J

    iput-object v14, v0, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    .line 6956
    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 6960
    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 6964
    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    .line 6989
    iput-boolean v4, v0, Landroid/content/pm/PackageParser$Package;->mIsSamsungThemeOverlay:Z

    .line 7374
    const-class v14, Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    .line 7376
    .local v14, "boot":Ljava/lang/ClassLoader;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 7377
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Landroid/content/pm/PackageParser$Package;->manifestPackageName:Ljava/lang/String;

    .line 7378
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    .line 7379
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    .line 7380
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    .line 7381
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 7382
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 7383
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    iput v15, v0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    .line 7384
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v15

    iput-object v15, v0, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    .line 7385
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v15

    iput-object v15, v0, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    .line 7386
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v15

    iput-object v15, v0, Landroid/content/pm/PackageParser$Package;->splitPrivateFlags:[I

    .line 7387
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    const/4 v4, 0x1

    if-ne v15, v4, :cond_0

    move v15, v4

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    iput-boolean v15, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    .line 7388
    const-class v15, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v14, v15}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ApplicationInfo;

    iput-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7389
    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    if-eqz v15, :cond_1

    .line 7390
    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v15, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 7396
    :cond_1
    const-class v4, Landroid/content/pm/PackageParser$Permission;

    invoke-virtual {v1, v3, v14, v4}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 7397
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageParser$Package;->fixupOwner(Ljava/util/List;)V

    .line 7398
    const-class v3, Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-virtual {v1, v5, v14, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 7399
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageParser$Package;->fixupOwner(Ljava/util/List;)V

    .line 7400
    const-class v3, Landroid/content/pm/PackageParser$Activity;

    invoke-virtual {v1, v6, v14, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 7401
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageParser$Package;->fixupOwner(Ljava/util/List;)V

    .line 7402
    const-class v3, Landroid/content/pm/PackageParser$Activity;

    invoke-virtual {v1, v7, v14, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 7403
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageParser$Package;->fixupOwner(Ljava/util/List;)V

    .line 7404
    const-class v3, Landroid/content/pm/PackageParser$Provider;

    invoke-virtual {v1, v8, v14, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 7405
    invoke-virtual {v0, v8}, Landroid/content/pm/PackageParser$Package;->fixupOwner(Ljava/util/List;)V

    .line 7406
    const-class v3, Landroid/content/pm/PackageParser$Service;

    invoke-virtual {v1, v9, v14, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 7407
    invoke-virtual {v0, v9}, Landroid/content/pm/PackageParser$Package;->fixupOwner(Ljava/util/List;)V

    .line 7408
    const-class v3, Landroid/content/pm/PackageParser$Instrumentation;

    invoke-virtual {v1, v10, v14, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 7409
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageParser$Package;->fixupOwner(Ljava/util/List;)V

    .line 7411
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 7412
    invoke-static {v11}, Landroid/content/pm/PackageParser$Package;->internStringArrayList(Ljava/util/List;)V

    .line 7413
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 7414
    invoke-static {v12}, Landroid/content/pm/PackageParser$Package;->internStringArrayList(Ljava/util/List;)V

    .line 7415
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    .line 7416
    invoke-static {v3}, Landroid/content/pm/PackageParser$Package;->internStringArrayList(Ljava/util/List;)V

    .line 7418
    invoke-virtual {v1, v14, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    .line 7420
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    .line 7421
    invoke-virtual {v1, v3, v14, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 7422
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 7423
    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    .line 7426
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    .line 7427
    if-eqz v2, :cond_3

    .line 7428
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    .line 7430
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    .line 7431
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    .line 7432
    invoke-static {v2}, Landroid/content/pm/PackageParser$Package;->internStringArrayList(Ljava/util/List;)V

    .line 7433
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 7434
    invoke-static {v2}, Landroid/content/pm/PackageParser$Package;->internStringArrayList(Ljava/util/List;)V

    .line 7435
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 7436
    invoke-static {v2}, Landroid/content/pm/PackageParser$Package;->internStringArrayList(Ljava/util/List;)V

    .line 7437
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    .line 7439
    sget-object v2, Landroid/content/pm/SharedLibraryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesLibraryInfos:Ljava/util/ArrayList;

    .line 7441
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7442
    .local v2, "libCount":I
    if-lez v2, :cond_4

    .line 7443
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    .line 7444
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 7445
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-static {v3}, Landroid/content/pm/PackageParser$Package;->internStringArrayList(Ljava/util/List;)V

    .line 7446
    new-array v3, v2, [J

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    .line 7447
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readLongArray([J)V

    .line 7448
    new-array v3, v2, [[Ljava/lang/String;

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    .line 7449
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 7450
    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 7449
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7454
    .end local v3    # "i":I
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 7455
    const-class v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {v1, v3, v14, v4}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 7456
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 7457
    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 7460
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 7461
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 7462
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 7463
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 7464
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 7465
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/content/pm/PackageParser$Package;->mVersionCodeMajor:I

    .line 7466
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 7467
    if-eqz v3, :cond_6

    .line 7468
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 7470
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 7471
    if-eqz v3, :cond_7

    .line 7472
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 7474
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    .line 7476
    const-class v3, Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v1, v14, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 7478
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    .line 7487
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 7488
    const-class v4, Landroid/content/pm/ConfigurationInfo;

    invoke-virtual {v1, v3, v14, v4}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 7489
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_8

    .line 7490
    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 7493
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 7494
    const-class v4, Landroid/content/pm/FeatureInfo;

    invoke-virtual {v1, v3, v14, v4}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 7495
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_9

    .line 7496
    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 7499
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    .line 7500
    const-class v4, Landroid/content/pm/FeatureGroupInfo;

    invoke-virtual {v1, v3, v14, v4}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 7501
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_a

    .line 7502
    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    .line 7505
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    .line 7506
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    move v3, v4

    goto :goto_2

    :cond_b
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, v0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    .line 7507
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_c

    const/4 v3, 0x1

    goto :goto_3

    :cond_c
    const/4 v3, 0x0

    :goto_3
    iput-boolean v3, v0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    .line 7508
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    .line 7509
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    .line 7510
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    .line 7511
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTargetName:Ljava/lang/String;

    .line 7512
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mOverlayCategory:Ljava/lang/String;

    .line 7513
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    .line 7514
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    const/4 v3, 0x1

    goto :goto_4

    :cond_d
    const/4 v3, 0x0

    :goto_4
    iput-boolean v3, v0, Landroid/content/pm/PackageParser$Package;->mOverlayIsStatic:Z

    .line 7515
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersion:I

    .line 7516
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    .line 7517
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    .line 7519
    invoke-static/range {p1 .. p1}, Landroid/content/pm/PackageParser;->readKeySetMapping(Landroid/os/Parcel;)Landroid/util/ArrayMap;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    .line 7521
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->cpuAbiOverride:Ljava/lang/String;

    .line 7522
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    const/4 v4, 0x1

    goto :goto_5

    :cond_e
    const/4 v4, 0x0

    :goto_5
    iput-boolean v4, v0, Landroid/content/pm/PackageParser$Package;->use32bitAbi:Z

    .line 7523
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    .line 7524
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    goto :goto_6

    :cond_f
    const/4 v4, 0x0

    :goto_6
    iput-boolean v4, v0, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    .line 7527
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    iput-boolean v3, v0, Landroid/content/pm/PackageParser$Package;->mIsSamsungThemeOverlay:Z

    .line 7532
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 7023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6854
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6857
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    .line 6859
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    .line 6861
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 6863
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    .line 6865
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    .line 6867
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    .line 6869
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    .line 6872
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 6876
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    .line 6884
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    .line 6885
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    .line 6886
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    .line 6887
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 6889
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    .line 6890
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    .line 6891
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    .line 6892
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 6894
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    .line 6896
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryInfos:Ljava/util/ArrayList;

    .line 6898
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 6900
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 6901
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 6902
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 6905
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 6933
    sget-object v2, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 6938
    iput v1, p0, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    .line 6942
    const/16 v2, 0x8

    new-array v2, v2, [J

    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    .line 6956
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 6960
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 6964
    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    .line 6989
    iput-boolean v1, p0, Landroid/content/pm/PackageParser$Package;->mIsSamsungThemeOverlay:Z

    .line 7024
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 7025
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->manifestPackageName:Ljava/lang/String;

    .line 7026
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 7027
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v1, -0x1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 7028
    return-void
.end method

.method private static greylist-max-o internStringArrayList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7535
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 7536
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 7537
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7538
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7537
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7541
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public greylist-max-o canHaveOatDir()Z
    .locals 1

    .line 7330
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 7369
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o fixupOwner(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/PackageParser$Component<",
            "*>;>;)V"
        }
    .end annotation

    .line 7548
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<+Landroid/content/pm/PackageParser$Component<*>;>;"
    if-eqz p1, :cond_3

    .line 7549
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Component;

    .line 7550
    .local v1, "c":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<*>;"
    iput-object p0, v1, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    .line 7551
    instance-of v2, v1, Landroid/content/pm/PackageParser$Activity;

    if-eqz v2, :cond_0

    .line 7552
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_1

    .line 7553
    :cond_0
    instance-of v2, v1, Landroid/content/pm/PackageParser$Service;

    if-eqz v2, :cond_1

    .line 7554
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageParser$Service;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_1

    .line 7555
    :cond_1
    instance-of v2, v1, Landroid/content/pm/PackageParser$Provider;

    if-eqz v2, :cond_2

    .line 7556
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageParser$Provider;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7558
    .end local v1    # "c":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<*>;"
    :cond_2
    :goto_1
    goto :goto_0

    .line 7560
    :cond_3
    return-void
.end method

.method public greylist-max-o getAllCodePaths()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7194
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7195
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7196
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 7198
    :cond_0
    return-object v0
.end method

.method public greylist-max-o getAllCodePathsExcludingResourceOnly()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7207
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 7208
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7210
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7211
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 7212
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    aget v3, v3, v1

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 7213
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7211
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7217
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public greylist-max-o getChildPackageNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7088
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 7089
    const/4 v0, 0x0

    return-object v0

    .line 7091
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7092
    .local v0, "childCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7093
    .local v1, "childPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7094
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 7095
    .local v3, "childPackageName":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7093
    .end local v3    # "childPackageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7097
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public greylist-max-o getLatestForegroundPackageUseTimeInMills()J
    .locals 8

    .line 7349
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 7354
    .local v0, "foregroundReasons":[I
    const-wide/16 v1, 0x0

    .line 7355
    .local v1, "latestUse":J
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v0, v4

    .line 7356
    .local v5, "reason":I
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    aget-wide v6, v6, v5

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 7355
    .end local v5    # "reason":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7358
    :cond_0
    return-wide v1

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data
.end method

.method public greylist-max-o getLatestPackageUseTimeInMills()J
    .locals 7

    .line 7341
    const-wide/16 v0, 0x0

    .line 7342
    .local v0, "latestUse":J
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-wide v5, v2, v4

    .line 7343
    .local v5, "use":J
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 7342
    .end local v5    # "use":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7345
    :cond_0
    return-wide v0
.end method

.method public greylist-max-o getLongVersionCode()J
    .locals 2

    .line 6917
    iget v0, p0, Landroid/content/pm/PackageParser$Package;->mVersionCodeMajor:I

    iget v1, p0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o hasChildPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 7101
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 7102
    .local v0, "childCount":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 7103
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7104
    const/4 v1, 0x1

    return v1

    .line 7102
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7107
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method public greylist-max-o hasComponentClassName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 7248
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 7249
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7250
    return v1

    .line 7248
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7253
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 7254
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7255
    return v1

    .line 7253
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 7258
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_5

    .line 7259
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Provider;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Provider;->className:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7260
    return v1

    .line 7258
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 7263
    .end local v0    # "i":I
    :cond_5
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_3
    if-ltz v0, :cond_7

    .line 7264
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Service;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Service;->className:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 7265
    return v1

    .line 7263
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 7268
    .end local v0    # "i":I
    :cond_7
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_4
    if-ltz v0, :cond_9

    .line 7269
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Instrumentation;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Instrumentation;->className:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 7270
    return v1

    .line 7268
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 7273
    .end local v0    # "i":I
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isExternal()Z
    .locals 1

    .line 7278
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isExternal()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isForwardLocked()Z
    .locals 1

    .line 7283
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isLibrary()Z
    .locals 1

    .line 7189
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public greylist-max-o isMatch(I)Z
    .locals 1
    .param p1, "flags"    # I

    .line 7334
    const/high16 v0, 0x100000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 7335
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v0

    return v0

    .line 7337
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isOdm()Z
    .locals 1

    .line 7308
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isOdm()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isOem()Z
    .locals 1

    .line 7288
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isOem()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isPrivileged()Z
    .locals 1

    .line 7313
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isProduct()Z
    .locals 1

    .line 7298
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isSystem()Z
    .locals 1

    .line 7318
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    return v0
.end method

.method public blacklist isSystemExt()Z
    .locals 1

    .line 7303
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemExt()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isUpdatedSystemApp()Z
    .locals 1

    .line 7323
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isVendor()Z
    .locals 1

    .line 7293
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o setApplicationInfoBaseCodePath(Ljava/lang/String;)V
    .locals 3
    .param p1, "baseCodePath"    # Ljava/lang/String;

    .line 7078
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->setBaseCodePath(Ljava/lang/String;)V

    .line 7079
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 7080
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7081
    .local v0, "packageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7082
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->setBaseCodePath(Ljava/lang/String;)V

    .line 7081
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7085
    .end local v0    # "packageCount":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public greylist-max-o setApplicationInfoBaseResourcePath(Ljava/lang/String;)V
    .locals 3
    .param p1, "resourcePath"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7068
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->setBaseResourcePath(Ljava/lang/String;)V

    .line 7069
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 7070
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7071
    .local v0, "packageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7072
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->setBaseResourcePath(Ljava/lang/String;)V

    .line 7071
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7075
    .end local v0    # "packageCount":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public greylist-max-o setApplicationInfoCodePath(Ljava/lang/String;)V
    .locals 3
    .param p1, "codePath"    # Ljava/lang/String;

    .line 7044
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->setCodePath(Ljava/lang/String;)V

    .line 7045
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 7046
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7047
    .local v0, "packageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7048
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->setCodePath(Ljava/lang/String;)V

    .line 7047
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7051
    .end local v0    # "packageCount":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public greylist-max-o setApplicationInfoFlags(II)V
    .locals 5
    .param p1, "mask"    # I
    .param p2, "flags"    # I

    .line 7168
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    not-int v2, p1

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 7169
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 7170
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7171
    .local v0, "packageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7172
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    not-int v4, p1

    and-int/2addr v3, v4

    and-int v4, p1, p2

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 7171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7176
    .end local v0    # "packageCount":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public greylist-max-o setApplicationInfoResourcePath(Ljava/lang/String;)V
    .locals 3
    .param p1, "resourcePath"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7056
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->setResourcePath(Ljava/lang/String;)V

    .line 7057
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 7058
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7059
    .local v0, "packageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7060
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->setResourcePath(Ljava/lang/String;)V

    .line 7059
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7063
    .end local v0    # "packageCount":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public greylist-max-o setApplicationInfoSplitCodePaths([Ljava/lang/String;)V
    .locals 1
    .param p1, "splitCodePaths"    # [Ljava/lang/String;

    .line 7111
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->setSplitCodePaths([Ljava/lang/String;)V

    .line 7113
    return-void
.end method

.method public greylist-max-o setApplicationInfoSplitResourcePaths([Ljava/lang/String;)V
    .locals 1
    .param p1, "resroucePaths"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7118
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->setSplitResourcePaths([Ljava/lang/String;)V

    .line 7120
    return-void
.end method

.method public greylist-max-o setApplicationVolumeUuid(Ljava/lang/String;)V
    .locals 4
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 7031
    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 7032
    .local v0, "storageUuid":Ljava/util/UUID;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 7033
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 7034
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 7035
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7036
    .local v1, "packageCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7037
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v3, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 7038
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, v3, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 7036
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7041
    .end local v1    # "packageCount":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public greylist-max-o setBaseCodePath(Ljava/lang/String;)V
    .locals 3
    .param p1, "baseCodePath"    # Ljava/lang/String;

    .line 7137
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 7138
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 7139
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7140
    .local v0, "packageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7141
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iput-object p1, v2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 7140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7144
    .end local v0    # "packageCount":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public greylist-max-o setCodePath(Ljava/lang/String;)V
    .locals 3
    .param p1, "codePath"    # Ljava/lang/String;

    .line 7127
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    .line 7128
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 7129
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7130
    .local v0, "packageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7131
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iput-object p1, v2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    .line 7130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7134
    .end local v0    # "packageCount":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public greylist setPackageName(Ljava/lang/String;)V
    .locals 2
    .param p1, "newName"    # Ljava/lang/String;

    .line 7222
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 7223
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 7224
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 7225
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Permission;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Permission;->setPackageName(Ljava/lang/String;)V

    .line 7224
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7227
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 7228
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$PermissionGroup;->setPackageName(Ljava/lang/String;)V

    .line 7227
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 7230
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_2

    .line 7231
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Activity;->setPackageName(Ljava/lang/String;)V

    .line 7230
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 7233
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_3
    if-ltz v0, :cond_3

    .line 7234
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Activity;->setPackageName(Ljava/lang/String;)V

    .line 7233
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 7236
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_4
    if-ltz v0, :cond_4

    .line 7237
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Provider;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Provider;->setPackageName(Ljava/lang/String;)V

    .line 7236
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 7239
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_5
    if-ltz v0, :cond_5

    .line 7240
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Service;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Service;->setPackageName(Ljava/lang/String;)V

    .line 7239
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 7242
    .end local v0    # "i":I
    :cond_5
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_6
    if-ltz v0, :cond_6

    .line 7243
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Instrumentation;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Instrumentation;->setPackageName(Ljava/lang/String;)V

    .line 7242
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 7245
    .end local v0    # "i":I
    :cond_6
    return-void
.end method

.method public greylist-max-o setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)V
    .locals 3
    .param p1, "signingDetails"    # Landroid/content/pm/PackageParser$SigningDetails;

    .line 7148
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 7149
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 7150
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7151
    .local v0, "packageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7152
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iput-object p1, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 7151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7155
    .end local v0    # "packageCount":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public greylist-max-o setSplitCodePaths([Ljava/lang/String;)V
    .locals 0
    .param p1, "codePaths"    # [Ljava/lang/String;

    .line 7123
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 7124
    return-void
.end method

.method public greylist-max-o setUse32bitAbi(Z)V
    .locals 3
    .param p1, "use32bitAbi"    # Z

    .line 7179
    iput-boolean p1, p0, Landroid/content/pm/PackageParser$Package;->use32bitAbi:Z

    .line 7180
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 7181
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7182
    .local v0, "packageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7183
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iput-boolean p1, v2, Landroid/content/pm/PackageParser$Package;->use32bitAbi:Z

    .line 7182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7186
    .end local v0    # "packageCount":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public greylist-max-o setVolumeUuid(Ljava/lang/String;)V
    .locals 3
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 7158
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    .line 7159
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 7160
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7161
    .local v0, "packageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7162
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iput-object p1, v2, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    .line 7161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7165
    .end local v0    # "packageCount":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 7362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7363
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7362
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 7564
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7565
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->manifestPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7566
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 7567
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7568
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7569
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7570
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 7571
    iget v0, p0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7572
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 7573
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 7574
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->splitPrivateFlags:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 7575
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7576
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7578
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 7579
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 7580
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 7581
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 7582
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 7583
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 7584
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 7586
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7587
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7588
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7591
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7592
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 7594
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7595
    iget-wide v0, p0, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 7596
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7597
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7598
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7599
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 7600
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 7602
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7603
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 7605
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7606
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7607
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 7608
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 7609
    .local v3, "usesStaticLibrariesCertDigest":[Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 7608
    .end local v3    # "usesStaticLibrariesCertDigest":[Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7613
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 7615
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7616
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7617
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 7618
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 7619
    iget v0, p0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7620
    iget v0, p0, Landroid/content/pm/PackageParser$Package;->mVersionCodeMajor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7621
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7622
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7623
    iget v0, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7625
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7627
    iget v0, p0, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7635
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 7636
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 7637
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 7639
    iget v0, p0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7640
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7641
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7642
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7643
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7644
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7645
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mOverlayTargetName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7646
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mOverlayCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7647
    iget v0, p0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7648
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->mOverlayIsStatic:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7649
    iget v0, p0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7650
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7651
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 7652
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    invoke-static {p1, v0}, Landroid/content/pm/PackageParser;->writeKeySetMapping(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 7653
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->cpuAbiOverride:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7654
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->use32bitAbi:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7655
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 7656
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7659
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->mIsSamsungThemeOverlay:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7662
    return-void
.end method
