.class public final Lcom/android/settings/enterprise/PrivacySettingsEnterprisePreference;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/enterprise/PrivacySettingsPreference;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/PrivacySettingsEnterprisePreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Z)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/enterprise/NetworkLogsPreferenceController;

    iget-object v2, p0, Lcom/android/settings/enterprise/PrivacySettingsEnterprisePreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/enterprise/AdminActionPreferenceControllerBase;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/enterprise/BugReportsPreferenceController;

    iget-object v2, p0, Lcom/android/settings/enterprise/PrivacySettingsEnterprisePreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/enterprise/AdminActionPreferenceControllerBase;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/enterprise/SecurityLogsPreferenceController;

    iget-object v2, p0, Lcom/android/settings/enterprise/PrivacySettingsEnterprisePreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/enterprise/AdminActionPreferenceControllerBase;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;

    iget-object v3, p0, Lcom/android/settings/enterprise/PrivacySettingsEnterprisePreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/settings/enterprise/AdminGrantedLocationPermissionsPreferenceController;

    iget-object v3, p0, Lcom/android/settings/enterprise/PrivacySettingsEnterprisePreference;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, v4}, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;-><init>(Landroid/content/Context;Z[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/settings/enterprise/AdminGrantedMicrophonePermissionPreferenceController;

    iget-object v3, p0, Lcom/android/settings/enterprise/PrivacySettingsEnterprisePreference;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.RECORD_AUDIO"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, v4}, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;-><init>(Landroid/content/Context;Z[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/settings/enterprise/AdminGrantedCameraPermissionPreferenceController;

    iget-object v3, p0, Lcom/android/settings/enterprise/PrivacySettingsEnterprisePreference;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CAMERA"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, v4}, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;-><init>(Landroid/content/Context;Z[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;

    iget-object v2, p0, Lcom/android/settings/enterprise/PrivacySettingsEnterprisePreference;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/settings/enterprise/AlwaysOnVpnCurrentUserPreferenceController;

    iget-object v2, p0, Lcom/android/settings/enterprise/PrivacySettingsEnterprisePreference;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/android/settings/enterprise/AlwaysOnVpnCurrentUserPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/settings/enterprise/AlwaysOnVpnManagedProfilePreferenceController;

    iget-object v2, p0, Lcom/android/settings/enterprise/PrivacySettingsEnterprisePreference;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/android/settings/enterprise/AlwaysOnVpnManagedProfilePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/settings/enterprise/ImePreferenceController;

    iget-object v2, p0, Lcom/android/settings/enterprise/PrivacySettingsEnterprisePreference;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/android/settings/enterprise/ImePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/settings/enterprise/GlobalHttpProxyPreferenceController;

    iget-object v2, p0, Lcom/android/settings/enterprise/PrivacySettingsEnterprisePreference;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/android/settings/enterprise/GlobalHttpProxyPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/settings/enterprise/CaCertsCurrentUserPreferenceController;

    iget-object v2, p0, Lcom/android/settings/enterprise/PrivacySettingsEnterprisePreference;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/android/settings/enterprise/CaCertsCurrentUserPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/settings/enterprise/CaCertsManagedProfilePreferenceController;

    iget-object v2, p0, Lcom/android/settings/enterprise/PrivacySettingsEnterprisePreference;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/android/settings/enterprise/CaCertsPreferenceControllerBase;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lcom/android/settings/widget/PreferenceCategoryController;

    iget-object v2, p0, Lcom/android/settings/enterprise/PrivacySettingsEnterprisePreference;->mContext:Landroid/content/Context;

    const-string v3, "exposure_changes_category"

    invoke-direct {p1, v2, v3}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/settings/enterprise/FailedPasswordWipeCurrentUserPreferenceController;

    iget-object v1, p0, Lcom/android/settings/enterprise/PrivacySettingsEnterprisePreference;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/android/settings/enterprise/FailedPasswordWipePreferenceControllerBase;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/settings/enterprise/FailedPasswordWipeManagedProfilePreferenceController;

    iget-object p0, p0, Lcom/android/settings/enterprise/PrivacySettingsEnterprisePreference;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/enterprise/FailedPasswordWipePreferenceControllerBase;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17009e

    return p0
.end method

.method public final getXmlResourcesToIndex()Ljava/util/List;
    .locals 1

    new-instance v0, Landroid/provider/SearchIndexableResource;

    iget-object p0, p0, Lcom/android/settings/enterprise/PrivacySettingsEnterprisePreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const p0, 0x7f17009e

    iput p0, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
