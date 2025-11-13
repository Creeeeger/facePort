.class public Lcom/android/settings/notification/zen/ZenModeSettings;
.super Lcom/android/settings/notification/zen/ZenModeSettingsBase;
.source "ZenModeSettings.java"

# interfaces
.implements Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/zen/ZenModeSettings$SettingsObserver;,
        Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;
    }
.end annotation


# static fields
.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSettingsObserver:Lcom/android/settings/notification/zen/ZenModeSettings$SettingsObserver;


# direct methods
.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;Landroid/app/Application;Lcom/android/settings/notification/zen/ZenModeSettings;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/notification/zen/ZenModeSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;Landroid/app/Application;Lcom/android/settings/notification/zen/ZenModeSettings;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetNewDefaultZenRule(Landroid/content/Context;)Landroid/app/AutomaticZenRule;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModeSettings;->getNewDefaultZenRule(Landroid/content/Context;)Landroid/app/AutomaticZenRule;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 588
    new-instance v0, Lcom/android/settings/notification/zen/ZenModeSettings$1;

    invoke-direct {v0}, Lcom/android/settings/notification/zen/ZenModeSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeSettings;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    .line 672
    new-instance v0, Lcom/android/settings/notification/zen/ZenModeSettings$2;

    invoke-direct {v0}, Lcom/android/settings/notification/zen/ZenModeSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    .line 740
    new-instance v0, Lcom/android/settings/notification/zen/ZenModeSettings$3;

    sget v1, Lcom/android/settings/R$xml;->zen_mode_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/notification/zen/ZenModeSettings$3;-><init>(I)V

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;Landroid/app/Application;Lcom/android/settings/notification/zen/ZenModeSettings;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Landroidx/fragment/app/FragmentManager;",
            "Landroid/app/Application;",
            "Lcom/android/settings/notification/zen/ZenModeSettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    new-instance v1, Lcom/android/settings/notification/zen/ZenModePeoplePreferenceController;

    const-string/jumbo v2, "zen_mode_behavior_people"

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/notification/zen/ZenModePeoplePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v1, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;

    invoke-direct {v1, p0, p3, p4, p1}, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance p3, Lcom/android/settings/notification/zen/ZenModeDurationPreferenceController;

    invoke-direct {p3, p0, p1}, Lcom/android/settings/notification/zen/ZenModeDurationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance p3, Lcom/samsung/android/settings/notification/zen/ZenModeSettingsHeaderPreferenceController;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/settings/notification/zen/ZenModeSettingsHeaderPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance p3, Lcom/android/settings/notification/zen/ZenModeSoundVibrationPreferenceController;

    const-string/jumbo v1, "zen_sound_vibration_settings"

    invoke-direct {p3, p0, p1, v1}, Lcom/android/settings/notification/zen/ZenModeSoundVibrationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance p3, Lcom/samsung/android/settings/notification/zen/ZenModeEnableNowPreferenceController;

    invoke-direct {p3, p0, p1, p2}, Lcom/samsung/android/settings/notification/zen/ZenModeEnableNowPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance p2, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;

    invoke-direct {p2, p0, p4, p1, p4}, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static defaultNewSchedule()Lcom/android/settings/notification/zen/ZenRuleInfo;
    .locals 3

    .line 654
    new-instance v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 655
    sget-object v1, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    const/16 v1, 0x16

    .line 656
    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    const/4 v1, 0x0

    .line 657
    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    const/4 v2, 0x7

    .line 658
    iput v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 659
    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 660
    new-instance v1, Lcom/android/settings/notification/zen/ZenRuleInfo;

    invoke-direct {v1}, Lcom/android/settings/notification/zen/ZenRuleInfo;-><init>()V

    .line 661
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/notification/zen/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    .line 662
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getScheduleConditionProvider()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/notification/zen/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    return-object v1
.end method

.method private static getNewDefaultZenRule(Landroid/content/Context;)Landroid/app/AutomaticZenRule;
    .locals 10

    .line 644
    invoke-static {}, Lcom/android/settings/notification/zen/ZenModeSettings;->defaultNewSchedule()Lcom/android/settings/notification/zen/ZenRuleInfo;

    move-result-object v0

    .line 645
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x1040f8e

    .line 646
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 647
    new-instance p0, Landroid/app/AutomaticZenRule;

    iget-object v4, v0, Lcom/android/settings/notification/zen/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    iget-object v5, v0, Lcom/android/settings/notification/zen/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    iget-object v6, v0, Lcom/android/settings/notification/zen/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V

    return-object p0
.end method

.method private getNewRuleIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 209
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const/high16 v0, 0x4000000

    .line 210
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    .line 211
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method private showNewSchedule()V
    .locals 1

    :try_start_0
    const-string v0, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    .line 202
    invoke-direct {p0, v0}, Lcom/android/settings/notification/zen/ZenModeSettings;->getNewRuleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 204
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 135
    :goto_0
    invoke-static {p1, v1, v2, v0, p0}, Lcom/android/settings/notification/zen/ZenModeSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;Landroid/app/Application;Lcom/android/settings/notification/zen/ZenModeSettings;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 141
    sget p0, Lcom/android/settings/R$string;->help_uri_interruptions:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, 0x8cbf

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 124
    sget p0, Lcom/android/settings/R$xml;->zen_mode_settings:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 217
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 106
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettings;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance p1, Lcom/android/settings/notification/zen/ZenModeSettings$SettingsObserver;

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/notification/zen/ZenModeSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/zen/ZenModeSettings;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettings;->mSettingsObserver:Lcom/android/settings/notification/zen/ZenModeSettings$SettingsObserver;

    return-void
.end method

.method public onPreferenceLongClick(Lcom/android/settings/notification/zen/ZenRulePreference;)Z
    .locals 0

    .line 184
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeSettings;->startLongPressActivity(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 172
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zen_mode_add_automatic_rule"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeSettings;->showNewSchedule()V

    const/4 p0, 0x1

    return p0

    .line 176
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 118
    invoke-super {p0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->onResume()V

    .line 119
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings;->mSettingsObserver:Lcom/android/settings/notification/zen/ZenModeSettings$SettingsObserver;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeSettings$SettingsObserver;->setListening(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 112
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 113
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings;->mSettingsObserver:Lcom/android/settings/notification/zen/ZenModeSettings$SettingsObserver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeSettings$SettingsObserver;->setListening(Z)V

    return-void
.end method

.method public startLongPressActivity(Ljava/lang/String;)V
    .locals 3

    .line 190
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "selected_id"

    .line 191
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$SecZenModeDeleteRulesSettingsActivity"

    .line 193
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 195
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, ":settings:show_fragment_args"

    .line 196
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
