.class public final Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;
.super Lcom/android/settings/applications/AppCounter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mPackageManagerService:Landroid/content/pm/IPackageManager;

.field public final mPermissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V
    .locals 1

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlagsImpl;-><init>()V

    invoke-direct {p0, p1, p3, v0}, Lcom/android/settings/applications/AppCounter;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;)V

    iput-object p2, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;->mPermissions:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;->mPackageManagerService:Landroid/content/pm/IPackageManager;

    iput-object p5, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iput-object p6, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;->mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;

    return-void
.end method

.method public static includeInCount([Ljava/lang/String;Landroid/app/admin/DevicePolicyManager;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/content/pm/ApplicationInfo;)Z
    .locals 5

    iget v0, p4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_2

    array-length p2, p0

    move p3, v2

    :goto_0
    if-ge p3, p2, :cond_1

    aget-object v0, p0, p3

    const/4 v1, 0x0

    iget-object v4, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v4, v0}, Landroid/app/admin/DevicePolicyManager;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_0

    return v3

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    iget-object p1, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v0, Landroid/os/UserHandle;

    iget v1, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getInstallReason(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p1

    if-eq p1, v3, :cond_3

    return v2

    :cond_3
    :try_start_0
    array-length p1, p0

    move p2, v2

    :goto_1
    if-ge p2, p1, :cond_5

    aget-object v0, p0, p2

    iget v1, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {p3, v0, v1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_4

    return v3

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :catch_0
    :cond_5
    return v2
.end method


# virtual methods
.method public final includeInCount(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;->mPermissions:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/AppCounter;->mPm:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;->mPackageManagerService:Landroid/content/pm/IPackageManager;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;->includeInCount([Ljava/lang/String;Landroid/app/admin/DevicePolicyManager;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public final onCountComplete(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;->mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;

    invoke-interface {p0, p1}, Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;->onNumberOfAppsResult(I)V

    return-void
.end method
