.class public Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SwipeForPopUpViewSettings.java"

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
.method static bridge synthetic -$$Nest$mupdateSwitchAndPreferenceState(Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->updateSwitchAndPreferenceState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "open_in_pop_up_view"

    .line 47
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->SETTINGS_URIS:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 50
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private initPreference()V
    .locals 3

    .line 127
    sget v0, Lcom/android/settings/R$xml;->sec_swipe_for_popup_view_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    const-string v0, "swipe_for_popup_preview"

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    .line 130
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_swpie_for_popup_view_summary:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setDescText(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    const-string v0, "swipeforpopupview_dark.json"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    const-string v0, "swipeforpopupview_light.json"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateSwitchAndPreferenceState()V
    .locals 3

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "open_in_pop_up_view"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v1, :cond_1

    .line 141
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 142
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 66
    sget p0, Lcom/android/settings/R$string;->sec_swpie_for_popup_view_title:I

    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 71
    const-class p0, Lcom/samsung/android/settings/usefulfeature/LabsSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, 0x10a18

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_advanced_features"

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 90
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 91
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 121
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->initPreference()V

    .line 123
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->updateSwitchAndPreferenceState()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->mContext:Landroid/content/Context;

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->initPreference()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 111
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 114
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 105
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 7

    .line 96
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->updateSwitchAndPreferenceState()V

    .line 98
    sget-object v0, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->SETTINGS_URIS:[Landroid/net/Uri;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 99
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v4, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 149
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "open_in_pop_up_view"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->getMetricsCategory()I

    move-result p0

    const p1, 0x10a19

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return-void
.end method
