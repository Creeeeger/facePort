.class public abstract Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermission;
.super Lcom/android/settings/enterprise/ApplicationListFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mPermissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/enterprise/ApplicationListFragment;-><init>()V

    iput-object p1, p0, Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermission;->mPermissions:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final buildApplicationList(Lcom/android/settings/enterprise/ApplicationListPreferenceController;)V
    .locals 8

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getApplicationFeatureProvider()Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermission;->mPermissions:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;

    iget-object v3, v0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, v0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPms:Landroid/content/pm/IPackageManager;

    iget-object v5, v0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, v0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAppWithAdminGrantedPermissionsLister;-><init>([Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;Lcom/android/settings/enterprise/ApplicationListPreferenceController;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3ab

    return p0
.end method
