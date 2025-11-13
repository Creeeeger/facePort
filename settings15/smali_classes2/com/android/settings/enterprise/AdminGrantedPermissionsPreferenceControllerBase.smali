.class public abstract Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field public final mAsync:Z

.field public final mFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

.field public mHasApps:Z

.field public final mPermissions:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$eup4Bmb_joEfgUk8nuk2bfAW-QI(Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;Landroidx/preference/Preference;I)V
    .locals 2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mHasApps:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f140e43

    invoke-static {v0, p2, v1}, Lcom/android/settingslib/utils/StringUtil;->getIcuPluralsString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mHasApps:Z

    :goto_0
    iget-boolean p0, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mHasApps:Z

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mPermissions:[Ljava/lang/String;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getApplicationFeatureProvider()Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    iput-boolean p2, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mAsync:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mHasApps:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public final isAvailable()Z
    .locals 9

    iget-boolean v0, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mAsync:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    new-instance v7, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase$$ExternalSyntheticLambda0;-><init>([Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;

    iget-object v2, v1, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, v1, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPms:Landroid/content/pm/IPackageManager;

    iget-object v6, v1, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mPermissions:[Ljava/lang/String;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;-><init>(Landroid/content/Context;[Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v8}, Lcom/android/settings/applications/AppCounter;->doInBackground()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;->onCountComplete(I)V

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mHasApps:Z

    return v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 8

    new-instance v6, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, p1}, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;

    iget-object v1, p1, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPms:Landroid/content/pm/IPackageManager;

    iget-object v5, p1, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mPermissions:[Ljava/lang/String;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfileAppWithAdminGrantedPermissionsCounter;-><init>(Landroid/content/Context;[Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v7, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
