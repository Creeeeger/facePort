.class public Lcom/samsung/android/settings/taskbar/TaskBarSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TaskBarSettings.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# instance fields
.field private final KEY_MAIN_CONTAINER:Ljava/lang/String;

.field private final KEY_RECENT_APP_SWITCH:Ljava/lang/String;

.field private final KEY_SHOW_HIDE_TASKBAR_SWITCH:Ljava/lang/String;

.field private mMainContainerPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mTaskBarSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method public static synthetic $r8$lambda$K6ys5eL5uGuF-Nwz_PFrVYt350Y(Lcom/samsung/android/settings/taskbar/TaskBarSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->taskbarCancelDialogClickListener(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NmPcuC0vZC0jJCjvPx6OgzY_6hA(Lcom/samsung/android/settings/taskbar/TaskBarSettings;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->lambda$setupRecentAppsSwitch$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eOQzHa0lwGJIz3MRlw8zvplNNPE(Lcom/samsung/android/settings/taskbar/TaskBarSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->taskbarTurnOnDialogClickListener(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qzCYo-_5n-7ByuhUimHSoRdEPZI(Lcom/samsung/android/settings/taskbar/TaskBarSettings;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->lambda$setupShowHideTaskbarSwitch$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "task_bar_preview"

    .line 31
    iput-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->KEY_MAIN_CONTAINER:Ljava/lang/String;

    const-string v0, "recent_app_switch"

    .line 32
    iput-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->KEY_RECENT_APP_SWITCH:Ljava/lang/String;

    const-string v0, "show_hide_taskbar_switch"

    .line 33
    iput-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->KEY_SHOW_HIDE_TASKBAR_SWITCH:Ljava/lang/String;

    return-void
.end method

.method private initPreferences()V
    .locals 1

    .line 88
    sget v0, Lcom/android/settings/R$xml;->sec_task_bar_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "task_bar_preview"

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->mMainContainerPref:Lcom/android/settingslib/widget/LayoutPreference;

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->setupHelpVI()V

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->setupRecentAppsSwitch()V

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->isGestureNavigationBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->setupShowHideTaskbarSwitch()V

    goto :goto_0

    :cond_0
    const-string v0, "show_hide_taskbar_switch"

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/SwitchPreferenceCompat;

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method private static isDarkMode(Landroid/content/Context;)Z
    .locals 1

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isEnabled()Z
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "task_bar"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isGestureNavigationBarEnabled()Z
    .locals 1

    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getNavigationBarMode(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isRecentAppsEnabled()Z
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "taskbar_recent_apps_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isShowHideTaskbarEnabled()Z
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "taskbar_show_hide_on_hold_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private synthetic lambda$setupRecentAppsSwitch$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 130
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Recent app Switch is clicked to -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TaskBarSettings"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "taskbar_recent_apps_enabled"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$setupShowHideTaskbarSwitch$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 110
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Show hide taskbar switch is clicked to -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TaskBarSettings"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "taskbar_show_hide_on_hold_enabled"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method private setupHelpVI()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->mMainContainerPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->help_vi_container:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0xf

    .line 148
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    .line 152
    sget v1, Lcom/android/settings/R$id;->task_bar_help_vi:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 153
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->isDarkMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Taskbar_settings_tips_Tablet_dark.json"

    .line 155
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "Taskbar_settings_tips_Tablet_light.json"

    .line 157
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->isDarkMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Taskbar_settings_tips_Fold_dark.json"

    .line 161
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setupRecentAppsSwitch()V
    .locals 2

    const-string v0, "recent_app_switch"

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->isRecentAppsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 129
    new-instance v1, Lcom/samsung/android/settings/taskbar/TaskBarSettings$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/taskbar/TaskBarSettings$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/taskbar/TaskBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    invoke-direct {p0}, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->updateSwitchPreference(Z)V

    return-void
.end method

.method private setupShowHideTaskbarSwitch()V
    .locals 2

    const-string v0, "show_hide_taskbar_switch"

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->isShowHideTaskbarEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 109
    new-instance v1, Lcom/samsung/android/settings/taskbar/TaskBarSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/taskbar/TaskBarSettings$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/taskbar/TaskBarSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->updateSwitchPreference(Z)V

    return-void
.end method

.method private taskbarCancelDialogClickListener(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->mTaskBarSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void
.end method

.method private taskbarTurnOnDialogClickListener(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 202
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/taskbar/TaskBarUtils;->unpinPinnedEdge(Landroid/content/Context;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "task_bar"

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private updateSwitchPreference(Z)V
    .locals 2

    const-string v0, "recent_app_switch"

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    const-string v1, "show_hide_taskbar_switch"

    .line 192
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreferenceCompat;

    .line 193
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 194
    invoke-direct {p0}, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->isGestureNavigationBarEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 195
    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 197
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 44
    const-class p0, Lcom/android/settings/DisplaySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_display"

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 57
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->mTaskBarSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 60
    iget-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->mTaskBarSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 61
    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->mTaskBarSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/taskbar/TaskBarUtils;->isFrontDisplay(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->initPreferences()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 75
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->mTaskBarSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 78
    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->mTaskBarSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TaskBar Switch is clicked to -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TaskBarSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/taskbar/TaskBarUtils;->isPinPanelRunning(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/taskbar/TaskBarSettings$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/taskbar/TaskBarSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/taskbar/TaskBarSettings;)V

    new-instance v0, Lcom/samsung/android/settings/taskbar/TaskBarSettings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/taskbar/TaskBarSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/taskbar/TaskBarSettings;)V

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/taskbar/TaskBarUtils;->showUnpinDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "task_bar"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 187
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/taskbar/TaskBarSettings;->updateSwitchPreference(Z)V

    return-void
.end method
