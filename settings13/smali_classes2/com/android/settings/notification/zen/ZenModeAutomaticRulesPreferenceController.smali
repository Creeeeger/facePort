.class public Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;
.source "ZenModeAutomaticRulesPreferenceController.java"


# static fields
.field private static final CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;


# instance fields
.field protected mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

.field protected mPreferenceLongClickListner:Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;

.field final mServiceListing:Lcom/android/settings/utils/ZenServiceListing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    invoke-static {}, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->getConditionProviderConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;)V
    .locals 1

    const-string/jumbo v0, "zen_mode_automatic_rules"

    .line 59
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 61
    new-instance p1, Lcom/android/settings/utils/ZenServiceListing;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object p3, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    invoke-direct {p1, p2, p3}, Lcom/android/settings/utils/ZenServiceListing;-><init>(Landroid/content/Context;Lcom/android/settings/utils/ManagedServiceSettings$Config;)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    .line 62
    invoke-virtual {p1}, Lcom/android/settings/utils/ZenServiceListing;->reloadApprovedServices()V

    .line 63
    iput-object p4, p0, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->mPreferenceLongClickListner:Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;

    return-void
.end method

.method private isValidScheduleRule(Ljava/util/Map$Entry;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;)Z"
        }
    .end annotation

    .line 110
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AutomaticZenRule;

    .line 111
    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method createZenRulePreference(Ljava/util/Map$Entry;)Lcom/android/settings/notification/zen/ZenRulePreference;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;)",
            "Lcom/android/settings/notification/zen/ZenRulePreference;"
        }
    .end annotation

    .line 171
    new-instance v6, Lcom/android/settings/notification/zen/ZenRulePreference;

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->mParent:Landroidx/fragment/app/Fragment;

    iget-object v4, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v5, p0, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->mPreferenceLongClickListner:Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/zen/ZenRulePreference;-><init>(Landroid/content/Context;Ljava/util/Map$Entry;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;)V

    return-object v6
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    const/4 p0, 0x0

    .line 81
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setPersistent(Z)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "zen_mode_automatic_rules"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method reloadAllRules([Ljava/util/Map$Entry;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;)V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 118
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 119
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->createZenRulePreference(Ljava/util/Map$Entry;)Lcom/android/settings/notification/zen/ZenRulePreference;

    move-result-object v3

    const/4 v4, 0x1

    .line 121
    invoke-virtual {v3, v4}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 123
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AutomaticZenRule;

    .line 124
    iget-object v5, p0, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    invoke-virtual {v4}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/utils/ZenServiceListing;->findService(Landroid/content/ComponentName;)Landroid/content/pm/ComponentInfo;

    move-result-object v5

    .line 125
    iget-object v6, p0, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v6, v4, v5}, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->getSettingsActivity(Landroid/content/pm/PackageManager;Landroid/app/AutomaticZenRule;Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v5

    .line 126
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    invoke-static {v7, v5, v6}, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->getRuleIntent(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 131
    invoke-direct {p0, v2}, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->isValidScheduleRule(Ljava/util/Map$Entry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 133
    :cond_0
    invoke-virtual {v4}, Landroid/app/AutomaticZenRule;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "com.android.settings"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.android.app.routines.action.LAUNCH_MODE_TAB"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 136
    :cond_1
    invoke-virtual {v4}, Landroid/app/AutomaticZenRule;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.samsung.android.app.routines"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.android.app.routines.action.LAUNCH_ROUTINE_TAB"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 140
    :cond_2
    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 143
    :goto_1
    new-instance v2, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController$1;-><init>(Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;)V

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 165
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->getRules()[Ljava/util/Map$Entry;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 89
    array-length v1, p1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 90
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/zen/ZenRulePreference;

    .line 95
    iget-object v2, v1, Lcom/android/settings/notification/zen/ZenRulePreference;->mId:Ljava/lang/String;

    aget-object v3, p1, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    aget-object v2, p1, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AutomaticZenRule;

    .line 97
    invoke-virtual {v1, v2}, Lcom/android/settings/notification/zen/ZenRulePreference;->updatePreference(Landroid/app/AutomaticZenRule;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->reloadAllRules([Ljava/util/Map$Entry;)V

    goto :goto_1

    .line 104
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->reloadAllRules([Ljava/util/Map$Entry;)V

    :cond_2
    :goto_1
    return-void
.end method
