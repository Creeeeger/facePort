.class public Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;
.super Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCallsPreference:Landroidx/preference/Preference;

.field public mMessagesPreference:Landroidx/preference/Preference;

.field public mNotificationsPreference:Landroidx/preference/Preference;

.field public mSummaryBuilder:Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    new-instance v7, Lcom/android/settings/notification/zen/ZenRuleCustomSwitchPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const/4 v5, 0x5

    const/16 v6, 0x4ca

    const-string v4, "zen_rule_alarms"

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/zen/ZenRuleCustomSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    new-instance v7, Lcom/android/settings/notification/zen/ZenRuleCustomSwitchPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const/4 v5, 0x6

    const/16 v6, 0x4cb

    const-string v4, "zen_rule_media"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/zen/ZenRuleCustomSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    new-instance v7, Lcom/android/settings/notification/zen/ZenRuleCustomSwitchPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const/4 v5, 0x7

    const/16 v6, 0x53c

    const-string v4, "zen_rule_system"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/zen/ZenRuleCustomSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    new-instance v7, Lcom/android/settings/notification/zen/ZenRuleCustomSwitchPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v6, 0xa7

    const-string v4, "zen_rule_reminders"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/zen/ZenRuleCustomSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    new-instance v7, Lcom/android/settings/notification/zen/ZenRuleCustomSwitchPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const/4 v5, 0x1

    const/16 v6, 0xa8

    const-string v4, "zen_rule_events"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/zen/ZenRuleCustomSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x645

    return p0
.end method

.method public final getPreferenceCategoryKey()Ljava/lang/String;
    .locals 0

    const-string p0, "zen_custom_rule_configuration_category"

    return-object p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1702b0

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->mSummaryBuilder:Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "zen_rule_calls_settings"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->mCallsPreference:Landroidx/preference/Preference;

    new-instance v0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings$1;-><init>(Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;I)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "zen_rule_messages_settings"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->mMessagesPreference:Landroidx/preference/Preference;

    new-instance v0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings$1;-><init>(Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;I)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "zen_rule_notifications"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->mNotificationsPreference:Landroidx/preference/Preference;

    new-instance v0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings$1;-><init>(Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;I)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->updateSummaries()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->updateSummaries()V

    return-void
.end method

.method public final onZenModeConfigChanged()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->onZenModeConfigChanged()V

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->updateSummaries()V

    return-void
.end method

.method public final updateSummaries()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig;-><init>()V

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->mCallsPreference:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->mSummaryBuilder:Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;

    invoke-virtual {v2, v0}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getCallsSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->mMessagesPreference:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->mSummaryBuilder:Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;

    invoke-virtual {v2, v0}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getMessagesSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->mNotificationsPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->mSummaryBuilder:Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1438bf

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
