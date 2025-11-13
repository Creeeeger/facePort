.class public final Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field public final mAsync:Z

.field public final mFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProviderImpl;


# direct methods
.method public static synthetic $r8$lambda$DztCfSlkwQzgsJLYEJ88cDUvTlA(Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;Landroidx/preference/Preference;I)V
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f140e43

    invoke-static {p0, p2, v0}, Lcom/android/settingslib/utils/StringUtil;->getIcuPluralsString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getApplicationFeatureProvider()Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->mFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    iput-boolean p2, p0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->mAsync:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "number_enterprise_installed_packages"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->mAsync:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    new-instance v2, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController$$ExternalSyntheticLambda1;-><init>([Ljava/lang/Boolean;)V

    iget-object p0, p0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->mFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {v3, v4, v1, p0}, Lcom/android/settings/applications/InstalledAppCounter;-><init>(Landroid/content/Context;ILandroid/content/pm/PackageManager;)V

    iput-object v2, v3, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;->mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;

    const/4 p0, 0x0

    new-array v1, p0, [Ljava/lang/Void;

    invoke-virtual {v3}, Lcom/android/settings/applications/AppCounter;->doInBackground()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;->onCountComplete(I)V

    aget-object p0, v0, p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 3

    new-instance v0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->mFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2, p0}, Lcom/android/settings/applications/InstalledAppCounter;-><init>(Landroid/content/Context;ILandroid/content/pm/PackageManager;)V

    iput-object v0, p1, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;->mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
