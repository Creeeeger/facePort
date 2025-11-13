.class public final Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;


# instance fields
.field protected mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

.field public final mPreferenceLongClickListner:Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;

.field public final mServiceListing:Lcom/android/settings/utils/ZenServiceListing;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    sget-object v0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    new-instance v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;

    const-string v7, "condition provider"

    const/4 v8, 0x0

    const-string v2, "ZenModeSettings"

    const/4 v3, 0x0

    const-string v4, "android.service.notification.ConditionProviderService"

    const-string v5, "android.app.action.AUTOMATIC_ZEN_RULE"

    const-string v6, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/android/settings/utils/ManagedServiceSettings$Config;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;)V
    .locals 0

    const-string p2, "zen_mode_automatic_rules"

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->mPm:Landroid/content/pm/PackageManager;

    new-instance p1, Lcom/android/settings/utils/ZenServiceListing;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object p3, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    invoke-direct {p1, p2, p3}, Lcom/android/settings/utils/ZenServiceListing;-><init>(Landroid/content/Context;Lcom/android/settings/utils/ManagedServiceSettings$Config;)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    invoke-virtual {p1}, Lcom/android/settings/utils/ZenServiceListing;->reloadApprovedServices()V

    iput-object p4, p0, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->mPreferenceLongClickListner:Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;

    return-void
.end method


# virtual methods
.method public createZenRulePreference(Ljava/util/Map$Entry;)Lcom/android/settings/notification/zen/ZenRulePreference;
    .locals 3
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

    new-instance v0, Lcom/android/settings/notification/zen/ZenRulePreference;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->mPreferenceLongClickListner:Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/android/settings/notification/zen/ZenRulePreference;-><init>(Landroid/content/Context;Ljava/util/Map$Entry;Lcom/android/settings/notification/zen/ZenModeBackend;Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;)V

    return-object v0
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "zen_mode_automatic_rules"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/Preference;->setPersistent()V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "zen_mode_automatic_rules"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public reloadAllRules([Ljava/util/Map$Entry;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->createZenRulePreference(Ljava/util/Map$Entry;)Lcom/android/settings/notification/zen/ZenRulePreference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AutomaticZenRule;

    invoke-virtual {v4}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    const/4 v7, 0x0

    if-nez v5, :cond_0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_0
    iget-object v6, v6, Lcom/android/settings/utils/ZenServiceListing;->mApprovedComponents:Ljava/util/Set;

    check-cast v6, Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ComponentInfo;

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v8, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v7, v8

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v5, v4, v7}, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->getSettingsActivity(Landroid/content/pm/PackageManager;Landroid/app/AutomaticZenRule;Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const/high16 v8, 0x4000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "android.service.notification.extra.RULE_ID"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "android.app.extra.AUTOMATIC_RULE_ID"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.android.settings"

    if-eqz v5, :cond_3

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    const-string v5, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v3, v6}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Landroid/app/AutomaticZenRule;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.android.app.routines.action.LAUNCH_MODE_TAB"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_3

    :cond_5
    const-string v2, "com.samsung.android.app.routines"

    invoke-virtual {v4}, Landroid/app/AutomaticZenRule;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.android.app.routines.action.LAUNCH_ROUTINE_TAB"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v3, v6}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :goto_3
    new-instance v2, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController$1;-><init>(Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;)V

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getAutomaticZenRules()[Ljava/util/Map$Entry;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    array-length v1, p1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->mPreferenceCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/zen/ZenRulePreference;

    iget-object v2, v1, Lcom/android/settings/notification/zen/ZenRulePreference;->mId:Ljava/lang/String;

    aget-object v3, p1, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, p1, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AutomaticZenRule;

    iget-object v3, v1, Lcom/android/settings/notification/zen/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v3}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, v1, Lcom/android/settings/notification/zen/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v3}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/notification/zen/ZenRulePreference;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v3, v1, Lcom/android/settings/notification/zen/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v3}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v4

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/settings/notification/zen/ZenRulePreference;->computeRuleSummary(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iput-object v2, v1, Lcom/android/settings/notification/zen/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->reloadAllRules([Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;->reloadAllRules([Ljava/util/Map$Entry;)V

    :cond_4
    :goto_1
    return-void
.end method
