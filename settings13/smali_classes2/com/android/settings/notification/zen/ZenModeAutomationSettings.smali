.class public Lcom/android/settings/notification/zen/ZenModeAutomationSettings;
.super Lcom/android/settings/notification/zen/ZenModeSettingsBase;
.source "ZenModeAutomationSettings.java"

# interfaces
.implements Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private final ADD_RULES:I

.field protected final CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

.field private final DELETE_RULES:I

.field private mPinnedView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$mshowNewSchedule(Lcom/android/settings/notification/zen/ZenModeAutomationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->showNewSchedule()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/utils/ZenServiceListing;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->buildPreferenceControllers(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/utils/ZenServiceListing;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 240
    new-instance v0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings$2;

    sget v1, Lcom/android/settings/R$xml;->zen_mode_automation_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/notification/zen/ZenModeAutomationSettings$2;-><init>(I)V

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;-><init>()V

    .line 59
    invoke-static {}, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->getConditionProviderConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    const/4 v0, 0x1

    .line 195
    iput v0, p0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->DELETE_RULES:I

    const/4 v0, 0x2

    .line 196
    iput v0, p0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->ADD_RULES:I

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/utils/ZenServiceListing;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/android/settings/utils/ZenServiceListing;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance v0, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method private getAutomaticRulesCount()I
    .locals 2

    .line 128
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 130
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 131
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AutomaticZenRule;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected static getConditionProviderConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;
    .locals 2

    .line 187
    new-instance v0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    invoke-direct {v0}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;-><init>()V

    const-string v1, "ZenModeSettings"

    .line 188
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setTag(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const-string v1, "android.service.notification.ConditionProviderService"

    .line 189
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setIntentAction(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const-string v1, "android.app.action.AUTOMATIC_ZEN_RULE"

    .line 190
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setConfigurationIntentAction(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const-string v1, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    .line 191
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setPermission(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const-string v1, "condition provider"

    .line 192
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setNoun(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->build()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    return-object v0
.end method

.method private getNewRuleIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 145
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const/high16 v0, 0x4000000

    .line 146
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    .line 147
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method private showNewSchedule()V
    .locals 1

    const-string v0, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    .line 141
    invoke-direct {p0, v0}, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->getNewRuleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

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

    .line 79
    new-instance v0, Lcom/android/settings/utils/ZenServiceListing;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/utils/ZenServiceListing;-><init>(Landroid/content/Context;Lcom/android/settings/utils/ManagedServiceSettings$Config;)V

    .line 80
    invoke-virtual {v0}, Lcom/android/settings/utils/ZenServiceListing;->reloadApprovedServices()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    new-instance v1, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2, p0}, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/notification/zen/ZenRulePreference$OnPreferenceLongClickListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1036

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 178
    sget p0, Lcom/android/settings/R$xml;->zen_mode_automation_settings:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 172
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->onAttach(Landroid/content/Context;)V

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "DELETE_RULE"

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/zen/ZenModeBackend;->removeZenRule(Ljava/lang/String;)Z

    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 202
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->getAutomaticRulesCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 203
    sget v1, Lcom/android/settings/R$string;->common_remove:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 204
    sget v0, Lcom/android/settings/R$string;->zen_mode_add_rule:I

    const/4 v1, 0x2

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 206
    :try_start_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 207
    sget v1, Lcom/android/settings/R$drawable;->tw_ic_ab_add_mtrl:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 208
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_dnd_schedule_add:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "ZenModeSettings"

    const-string v1, "MenuItem or Drawable is null"

    .line 211
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 103
    sget p2, Lcom/android/settings/R$layout;->sec_add_schedule_preference:I

    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->mPinnedView:Landroid/view/View;

    .line 104
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastRoundedCorner(Z)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 221
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 233
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 229
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->showNewSchedule()V

    return v1

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->getMetricsCategory()I

    move-result p1

    const/16 v0, 0x1037

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    const/4 p1, 0x0

    .line 226
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->startLongPressActivity(Ljava/lang/String;)V

    return v1
.end method

.method public onPreferenceLongClick(Lcom/android/settings/notification/zen/ZenRulePreference;)Z
    .locals 0

    .line 153
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->startLongPressActivity(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 110
    invoke-super {p0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->onResume()V

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 112
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->getAutomaticRulesCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->mPinnedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->mPinnedView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->add_preference:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 115
    new-instance v1, Lcom/android/settings/notification/zen/ZenModeAutomationSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/ZenModeAutomationSettings$1;-><init>(Lcom/android/settings/notification/zen/ZenModeAutomationSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->mPinnedView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public startLongPressActivity(Ljava/lang/String;)V
    .locals 3

    .line 159
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "selected_id"

    .line 160
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$SecZenModeDeleteRulesSettingsActivity"

    .line 162
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 164
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, ":settings:show_fragment_args"

    .line 165
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
