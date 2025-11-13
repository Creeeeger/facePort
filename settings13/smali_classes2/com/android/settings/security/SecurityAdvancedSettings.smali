.class public Lcom/android/settings/security/SecurityAdvancedSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SecurityAdvancedSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/dashboard/DashboardFragment;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/security/SecurityAdvancedSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/dashboard/DashboardFragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 211
    new-instance v0, Lcom/android/settings/security/SecurityAdvancedSettings$1;

    sget v1, Lcom/android/settings/R$xml;->sec_security_advanced_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/security/SecurityAdvancedSettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/security/SecurityAdvancedSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/dashboard/DashboardFragment;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settings/dashboard/DashboardFragment;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    new-instance v1, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v1, Lcom/samsung/android/settings/security/SecurityPolicyUpdatePreferenceController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdatePreferenceController;-><init>(Landroid/content/Context;)V

    .line 169
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v1, Lcom/android/settings/security/UserCredentialsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/security/UserCredentialsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v1, Lcom/android/settings/security/ResetCredentialsPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/security/ResetCredentialsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance p1, Lcom/android/settings/security/InstallCertificatePreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/security/InstallCertificatePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance p1, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;

    const-string/jumbo v1, "sdcard_encrypt_status"

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 196
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance p1, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/android/settings/security/SecurityAdvancedSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/dashboard/DashboardFragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCategoryKey()Ljava/lang/String;
    .locals 2

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "com.android.settings.category.ia.legacy_advanced_security"

    if-nez p0, :cond_0

    return-object v0

    .line 107
    :cond_0
    invoke-static {}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->get()Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "com.android.settings.category.ia.advanced_security"

    return-object p0

    .line 111
    :cond_1
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getSecuritySettingsFeatureProvider()Lcom/android/settings/security/SecuritySettingsFeatureProvider;

    move-result-object p0

    .line 114
    invoke-interface {p0}, Lcom/android/settings/security/SecuritySettingsFeatureProvider;->hasAlternativeSecuritySettingsFragment()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    invoke-interface {p0}, Lcom/android/settings/security/SecuritySettingsFeatureProvider;->getAlternativeAdvancedSettingsCategoryKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecurityAdvancedSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1197

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 124
    sget p0, Lcom/android/settings/R$xml;->sec_security_advanced_settings:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 142
    const-class v0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;

    .line 143
    invoke-virtual {v0, p1, p2}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->handleActivityResult(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 146
    :cond_0
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->FEATURE_FACTORY_DATA_RESET_PASSWORD:Z

    if-eqz v0, :cond_1

    .line 147
    const-class v0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;

    .line 148
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 158
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    sget p1, Lcom/android/settings/R$string;->unlock_set_unlock_launch_picker_title_profile:I

    const-string/jumbo v0, "unlock_set_or_change_profile"

    const-string v1, "Settings.WORK_PROFILE_SET_UNLOCK_LAUNCH_PICKER_TITLE"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    sget p1, Lcom/android/settings/R$string;->lock_settings_profile_unification_summary:I

    const-string/jumbo v0, "unification"

    const-string v1, "Settings.WORK_PROFILE_UNIFY_LOCKS_SUMMARY"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringSummary(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    sget p1, Lcom/android/settings/R$string;->security_settings_work_fingerprint_preference_title:I

    const-string v0, "fingerprint_settings_profile"

    const-string v1, "Settings.FINGERPRINT_FOR_WORK"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    sget p1, Lcom/android/settings/R$string;->manage_device_admin:I

    const-string v0, "manage_device_admin"

    const-string v1, "Settings.MANAGE_DEVICE_ADMIN_APPS"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    sget p1, Lcom/android/settings/R$string;->lock_settings_profile_title:I

    const-string/jumbo v0, "security_category_profile"

    const-string v1, "Settings.WORK_PROFILE_SECURITY_TITLE"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    sget p1, Lcom/android/settings/R$string;->enterprise_privacy_settings:I

    const-string v0, "enterprise_privacy"

    const-string v1, "Settings.MANAGED_DEVICE_INFO"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
