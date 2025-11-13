.class public Lcom/samsung/android/settings/usefulfeature/FullScreenInSplitScreenViewSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FullScreenInSplitScreenViewSettings.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initPreference()V
    .locals 3

    .line 113
    sget v0, Lcom/android/settings/R$xml;->sec_full_screen_in_split_screen_view_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    const-string v0, "full_screen_in_split_screen_preview"

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FullScreenInSplitScreenViewSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    .line 116
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FullScreenInSplitScreenViewSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FullScreenInSplitScreenViewSettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_full_screen_in_split_screen_view_summary:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setDescText(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FullScreenInSplitScreenViewSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FullScreenInSplitScreenViewSettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_full_screen_in_split_screen_view_summary_without_navi_bar:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setDescText(Ljava/lang/String;)V

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FullScreenInSplitScreenViewSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FullScreenInSplitScreenViewSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    const-string v0, "fullscreeninsplitviewscreen_dark.json"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    goto :goto_1

    .line 124
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FullScreenInSplitScreenViewSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    const-string v0, "fullscreeninsplitviewscreen_light.json"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private updateSwitchAndPreferenceState()V
    .locals 2

    .line 129
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isSplitImmersiveModeEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FullScreenInSplitScreenViewSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 132
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FullScreenInSplitScreenViewSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 56
    sget p0, Lcom/android/settings/R$string;->sec_full_screen_in_split_screen_view_title:I

    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 61
    const-class p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, 0x10a0f

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_advanced_features"

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 80
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FullScreenInSplitScreenViewSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 81
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 107
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FullScreenInSplitScreenViewSettings;->initPreference()V

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FullScreenInSplitScreenViewSettings;->updateSwitchAndPreferenceState()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FullScreenInSplitScreenViewSettings;->mContext:Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FullScreenInSplitScreenViewSettings;->initPreference()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 97
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FullScreenInSplitScreenViewSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 100
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FullScreenInSplitScreenViewSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 92
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 86
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FullScreenInSplitScreenViewSettings;->updateSwitchAndPreferenceState()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 137
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setSplitImmersiveMode(Z)V

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FullScreenInSplitScreenViewSettings;->getMetricsCategory()I

    move-result p0

    const p1, 0x10a05

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return-void
.end method
