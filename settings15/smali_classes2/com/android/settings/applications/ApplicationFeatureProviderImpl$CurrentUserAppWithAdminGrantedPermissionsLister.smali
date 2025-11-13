.class public final Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;
.super Lcom/android/settings/applications/AppLister;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCallback:Lcom/android/settings/enterprise/ApplicationListPreferenceController;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mPackageManagerService:Landroid/content/pm/IPackageManager;

.field public final mPermissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;Lcom/android/settings/enterprise/ApplicationListPreferenceController;)V
    .locals 0

    invoke-direct {p0, p2, p5}, Lcom/android/settings/applications/AppLister;-><init>(Landroid/content/pm/PackageManager;Landroid/os/UserManager;)V

    iput-object p1, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;->mPermissions:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;->mPackageManagerService:Landroid/content/pm/IPackageManager;

    iput-object p4, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iput-object p6, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;->mCallback:Lcom/android/settings/enterprise/ApplicationListPreferenceController;

    return-void
.end method


# virtual methods
.method public final includeInCount(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;->mPermissions:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/AppLister;->mPm:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;->mPackageManagerService:Landroid/content/pm/IPackageManager;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;->includeInCount([Ljava/lang/String;Landroid/app/admin/DevicePolicyManager;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public final onAppListBuilt(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;->mCallback:Lcom/android/settings/enterprise/ApplicationListPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/enterprise/ApplicationListPreferenceController;->onListOfAppsResult(Ljava/util/List;)V

    return-void
.end method
