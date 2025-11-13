.class public Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SwipeForSplitViewSettings.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# static fields
.field private static final SETTINGS_URIS:[Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method static bridge synthetic -$$Nest$mupdateSwitchAndPreferenceState(Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->updateSwitchAndPreferenceState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "open_in_split_screen_view"

    .line 49
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->SETTINGS_URIS:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 52
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private initPreference()V
    .locals 3

    .line 129
    sget v0, Lcom/android/settings/R$xml;->sec_swipe_for_split_view_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    const-string v0, "swipe_for_split_preview"

    .line 131
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    .line 144
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_swpie_for_split_view_summary_bartype:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setDescText(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    const-string v0, "swipeforsplitview_dark.json"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    const-string v0, "swipeforsplitview_light.json"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateSwitchAndPreferenceState()V
    .locals 3

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "open_in_split_screen_view"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v1, :cond_1

    .line 156
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 157
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 68
    sget p0, Lcom/android/settings/R$string;->sec_swpie_for_split_view_title:I

    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 73
    const-class p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, 0x10a22

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_advanced_features"

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 92
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 93
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 122
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 123
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 124
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->initPreference()V

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->updateSwitchAndPreferenceState()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->mContext:Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->initPreference()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 113
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 116
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 107
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 7

    .line 98
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->updateSwitchAndPreferenceState()V

    .line 100
    sget-object v0, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->SETTINGS_URIS:[Landroid/net/Uri;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 101
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v4, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 164
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "open_in_split_screen_view"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->getMetricsCategory()I

    move-result p0

    const p1, 0x10a23

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return-void
.end method
