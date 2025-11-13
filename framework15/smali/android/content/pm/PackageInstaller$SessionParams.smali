.class public Landroid/content/pm/PackageInstaller$SessionParams;
.super Ljava/lang/Object;
.source "PackageInstaller.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageInstaller$SessionParams$PermissionState;,
        Landroid/content/pm/PackageInstaller$SessionParams$UserActionRequirement;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageInstaller$SessionParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MAX_PACKAGE_NAME_LENGTH:I = 0xff

.field public static final whitelist MODE_FULL_INSTALL:I = 0x1

.field public static final whitelist MODE_INHERIT_EXISTING:I = 0x2

.field public static final greylist-max-o MODE_INVALID:I = -0x1

.field public static final whitelist PERMISSION_STATE_DEFAULT:I = 0x0

.field public static final whitelist PERMISSION_STATE_DENIED:I = 0x2

.field public static final whitelist PERMISSION_STATE_GRANTED:I = 0x1

.field public static final whitelist RESTRICTED_PERMISSIONS_ALL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o UID_UNKNOWN:I = -0x1

.field public static final whitelist USER_ACTION_NOT_REQUIRED:I = 0x2

.field public static final whitelist USER_ACTION_REQUIRED:I = 0x1

.field public static final whitelist USER_ACTION_UNSPECIFIED:I


# instance fields
.field public greylist-max-o abiOverride:Ljava/lang/String;

.field public greylist-max-r appIcon:Landroid/graphics/Bitmap;

.field public greylist-max-o appIconLastModified:J

.field public greylist-max-p appLabel:Ljava/lang/String;

.field public greylist-max-p appPackageName:Ljava/lang/String;

.field public blacklist applicationEnabledSettingPersistent:Z

.field public blacklist autoRevokePermissionsMode:I

.field public blacklist dataLoaderParams:Landroid/content/pm/DataLoaderParams;

.field public blacklist developmentInstallFlags:I

.field public blacklist dexoptCompilerFilter:Ljava/lang/String;

.field public blacklist forceQueryableOverride:Z

.field public greylist installFlags:I

.field public greylist-max-o installLocation:I

.field public greylist-max-o installReason:I

.field public blacklist installScenario:I

.field public greylist-max-o installerPackageName:Ljava/lang/String;

.field public blacklist isMultiPackage:Z

.field public blacklist isStaged:Z

.field private final blacklist mPermissionStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-p mode:I

.field public greylist-max-r originatingUid:I

.field public greylist-max-o originatingUri:Landroid/net/Uri;

.field public blacklist packageSource:I

.field public greylist-max-o referrerUri:Landroid/net/Uri;

.field public blacklist requireUserAction:I

.field public blacklist requiredInstalledVersionCode:J

.field public blacklist rollbackDataPolicy:I

.field public blacklist rollbackImpactLevel:I

.field public blacklist rollbackLifetimeMillis:J

.field public blacklist sessionFlags:I

.field public greylist-max-r sizeBytes:J

.field public blacklist unarchiveId:I

.field public greylist-max-o volumeUuid:Ljava/lang/String;

.field public blacklist whitelistedRestrictedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInstaller$SessionParams;->RESTRICTED_PERMISSIONS_ALL:Ljava/util/Set;

    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams$1;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionParams$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInstaller$SessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/high16 v1, 0x400000

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    iput-wide v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    const/4 v4, 0x3

    iput v4, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    iput-wide v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    iput-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/high16 v1, 0x400000

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    iput-wide v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    const/4 v4, 0x3

    iput v4, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    iput-wide v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    iput-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    const-class v2, Ljava/lang/String;

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    const-class v0, Landroid/content/pm/DataLoaderParamsParcel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/pm/DataLoaderParamsParcel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/DataLoaderParamsParcel;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/pm/DataLoaderParams;

    invoke-direct {v1, v0}, Landroid/content/pm/DataLoaderParams;-><init>(Landroid/content/pm/DataLoaderParamsParcel;)V

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    return-void
.end method


# virtual methods
.method public greylist-max-o areHiddenOptionsSet()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v1, 0x11d880

    and-int/2addr v0, v1

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    if-eqz v0, :cond_0

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

.method public blacklist copy()Landroid/content/pm/PackageInstaller$SessionParams;
    .locals 3

    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    iget-wide v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    iput-wide v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    iget-wide v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    iget-wide v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    iput-wide v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mode"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "installFlags"

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printHexPair(Ljava/lang/String;I)Lcom/android/internal/util/IndentingPrintWriter;

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "installLocation"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "installReason"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "installScenario"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "sizeBytes"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "appPackageName"

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "appIcon"

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "appLabel"

    iget-object v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "originatingUri"

    iget-object v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "originatingUid"

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "referrerUri"

    iget-object v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "abiOverride"

    iget-object v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "volumeUuid"

    iget-object v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mPermissionStates"

    iget-object v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "packageSource"

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "whitelistedRestrictedPermissions"

    iget-object v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "autoRevokePermissions"

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "installerPackageName"

    iget-object v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v3, "isMultiPackage"

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v3, "isStaged"

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "forceQueryable"

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    invoke-static {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->-$$Nest$smuserActionToString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "requireUserAction"

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v3, "requiredInstalledVersionCode"

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "dataLoaderParams"

    iget-object v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "rollbackDataPolicy"

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-wide v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v3, "rollbackLifetimeMillis"

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "rollbackImpactLevel"

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "applicationEnabledSettingPersistent"

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "developmentInstallFlags"

    iget v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printHexPair(Ljava/lang/String;I)Lcom/android/internal/util/IndentingPrintWriter;

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v3, "unarchiveId"

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "dexoptCompilerFilter"

    iget-object v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "sessionFlags"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public blacklist getEnableRollback()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getLegacyGrantedRuntimePermissions()[Ljava/lang/String;
    .locals 6

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public blacklist getPermissionStates()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist semSetInstallFlagsDisableVerification()V
    .locals 2

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    return-void
.end method

.method public whitelist semSetInstallFlagsSkipDexOptimization()V
    .locals 2

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    return-void
.end method

.method public whitelist setAllocateAggressive(Z)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :goto_0
    return-void
.end method

.method public whitelist setAllowDowngrade(Z)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    return-void
.end method

.method public whitelist setAppIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public whitelist setAppLabel(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    return-void
.end method

.method public whitelist setAppPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    return-void
.end method

.method public whitelist setApplicationEnabledSettingPersistent()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    return-void
.end method

.method public whitelist setAutoRevokePermissionsMode(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    xor-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    return-void
.end method

.method public whitelist setDataLoaderParams(Landroid/content/pm/DataLoaderParams;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    return-void
.end method

.method public blacklist setDexoptCompilerFilter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    return-void
.end method

.method public whitelist setDontKillApp(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :goto_0
    return-void
.end method

.method public whitelist setEnableRollback(Z)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setEnableRollback(ZI)V

    return-void
.end method

.method public whitelist setEnableRollback(ZI)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    :goto_0
    iput p2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    return-void
.end method

.method public blacklist setForceQueryable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    return-void
.end method

.method public whitelist setGrantedRuntimePermissions([Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    goto :goto_1

    :cond_0
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setPermissionState(Ljava/lang/String;I)Landroid/content/pm/PackageInstaller$SessionParams;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public whitelist setInstallAsApex()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    return-void
.end method

.method public whitelist setInstallAsInstantApp(Z)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :goto_0
    return-void
.end method

.method public whitelist setInstallAsVirtualPreload()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    return-void
.end method

.method public blacklist setInstallFlagAllowTest()V
    .locals 1

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    return-void
.end method

.method public greylist-max-o setInstallFlagsForcePermissionPrompt()V
    .locals 1

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    return-void
.end method

.method public whitelist setInstallLocation(I)V
    .locals 0

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    return-void
.end method

.method public whitelist setInstallReason(I)V
    .locals 0

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    return-void
.end method

.method public whitelist setInstallScenario(I)V
    .locals 0

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    return-void
.end method

.method public whitelist setInstallerPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    return-void
.end method

.method public whitelist setMultiPackage()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    return-void
.end method

.method public whitelist setOriginatingUid(I)V
    .locals 0

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    return-void
.end method

.method public whitelist setOriginatingUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    return-void
.end method

.method public whitelist setPackageSource(I)V
    .locals 0

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    return-void
.end method

.method public whitelist setPermissionState(Ljava/lang/String;I)Landroid/content/pm/PackageInstaller$SessionParams;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided permissionName cannot be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_0

    const-string/jumbo v2, "null"

    goto :goto_0

    :cond_0
    const-string v2, "empty"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected permission state int: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setPermissionStates(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public whitelist setReferrerUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    return-void
.end method

.method public whitelist setRequestDowngrade(Z)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :goto_0
    return-void
.end method

.method public whitelist setRequestUpdateOwnership(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    :goto_0
    return-void
.end method

.method public whitelist setRequireUserAction(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requireUserAction set as invalid value of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but must be one of [USER_ACTION_UNSPECIFIED, USER_ACTION_REQUIRED, USER_ACTION_NOT_REQUIRED]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    return-void
.end method

.method public blacklist setRequiredInstalledVersionCode(J)V
    .locals 0

    iput-wide p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    return-void
.end method

.method public whitelist setRollbackImpactLevel(I)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t set rollbackImpactLevel when rollback is not enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRollbackLifetimeMillis(J)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t set rollbackLifetimeMillis when rollback is not enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rollbackLifetimeMillis can\'t be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSize(J)V
    .locals 0

    iput-wide p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    return-void
.end method

.method public whitelist setStaged()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    return-void
.end method

.method public whitelist setUnarchiveId(I)V
    .locals 0

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    return-void
.end method

.method public whitelist setWhitelistedRestrictedPermissions(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/content/pm/PackageInstaller$SessionParams;->RESTRICTED_PERMISSIONS_ALL:Ljava/util/Set;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x400000

    or-int/2addr v0, v2

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    goto :goto_1

    :cond_0
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v2, -0x400001

    and-int/2addr v0, v2

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    if-eqz p1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    nop

    :goto_0
    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    :goto_1
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mPermissionStates:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :goto_0
    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackLifetimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackImpactLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->unarchiveId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
