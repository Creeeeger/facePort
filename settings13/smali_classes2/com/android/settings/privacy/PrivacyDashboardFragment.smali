.class public Lcom/android/settings/privacy/PrivacyDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PrivacyDashboardFragment.java"


# static fields
.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/privacy/PrivacyDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 126
    new-instance v0, Lcom/android/settings/privacy/PrivacyDashboardFragment$1;

    sget v1, Lcom/android/settings/R$xml;->sec_privacy_dashboard_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/privacy/PrivacyDashboardFragment$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/privacy/PrivacyDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 166
    new-instance v0, Lcom/android/settings/privacy/PrivacyDashboardFragment$2;

    invoke-direct {v0}, Lcom/android/settings/privacy/PrivacyDashboardFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/privacy/PrivacyDashboardFragment;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
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

    .line 106
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/privacy/PrivacyDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 101
    sget p0, Lcom/android/settings/R$string;->help_url_privacy_dashboard:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PrivacyDashboardFrag"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2a95

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 96
    sget p0, Lcom/android/settings/R$xml;->sec_privacy_dashboard_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    sget p1, Lcom/android/settings/R$string;->locked_work_profile_notification_title:I

    const-string/jumbo v0, "privacy_lock_screen_work_profile_notifications"

    const-string v1, "Settings.WORK_PROFILE_LOCKED_NOTIFICATION_TITLE"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    sget p1, Lcom/android/settings/R$string;->interact_across_profiles_title:I

    const-string v0, "interact_across_profiles_privacy"

    const-string v1, "Settings.CONNECTED_WORK_AND_PERSONAL_APPS_TITLE"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    sget p1, Lcom/android/settings/R$string;->profile_section_header:I

    const-string/jumbo v0, "privacy_work_profile_notifications_category"

    const-string v1, "Settings.WORK_PROFILE_NOTIFICATIONS_SECTION_HEADER"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    sget p1, Lcom/android/settings/R$string;->work_policy_privacy_settings:I

    const-string/jumbo v0, "work_policy_info"

    const-string v1, "Settings.WORK_PROFILE_PRIVACY_POLICY_INFO"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    sget p1, Lcom/android/settings/R$string;->work_policy_privacy_settings_summary:I

    const-string v1, "Settings.WORK_PROFILE_PRIVACY_POLICY_INFO_SUMMARY"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringSummary(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    return-void
.end method
