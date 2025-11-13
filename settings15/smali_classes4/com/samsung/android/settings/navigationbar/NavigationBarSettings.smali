.class public Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field public mCircleToSearch:Landroidx/preference/SecSwitchPreference;

.field public mContext:Landroid/content/Context;

.field public mDetailedSettingPreference:Landroidx/preference/SecPreferenceScreen;

.field public mGesturePreference:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

.field public final mIntentFilter:Landroid/content/IntentFilter;

.field public mLastConfiguration:Landroid/content/res/Configuration;

.field public final mOneHandModeObserver:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;

.field public final mOverlayChangedReceiver:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;

.field public mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

.field public mSwipeToOpenAssistantApp:Landroidx/preference/SecSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$3;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOneHandModeObserver:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mIntentFilter:Landroid/content/IntentFilter;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOverlayChangedReceiver:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;

    return-void
.end method


# virtual methods
.method public final getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f14190a

    goto :goto_0

    :cond_0
    const p0, 0x7f14193b

    :goto_0
    return p0
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/android/settings/DisplaySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1d2e

    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_display"

    return-object p0
.end method

.method public final initPreferences$10()V
    .locals 11

    const v0, 0x7f17012d

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f14190a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    const-string v0, "gesture_preview"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGesturePreference:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    const-string v0, "gesture_detailed"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mDetailedSettingPreference:Landroidx/preference/SecPreferenceScreen;

    const-string/jumbo v0, "swipe_to_open_assistant_app"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mSwipeToOpenAssistantApp:Landroidx/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ro.product.first_api_level"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    const/16 v4, 0x22

    const-string v5, "NavigationBarPref"

    if-ge v1, v4, :cond_2

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isSupportLegacyFeatures(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_key_simplified_gesture_inline_cue_disabled"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    const v1, 0x7f141b4c

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    new-instance v6, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    new-instance v7, Lcom/samsung/android/settings/accessibility/base/widget/InlineCuePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lcom/samsung/android/settings/accessibility/base/widget/InlineCuePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v8, 0x7f141929

    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda2;

    const/4 v10, 0x1

    invoke-direct {v9, p0, v0, v6, v10}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;Landroidx/preference/PreferenceScreen;Landroidx/preference/PreferenceCategory;I)V

    iput-object v8, v7, Lcom/samsung/android/settings/accessibility/base/widget/InlineCuePreference;->firstButtonTitle:Ljava/lang/CharSequence;

    iput-object v9, v7, Lcom/samsung/android/settings/accessibility/base/widget/InlineCuePreference;->firstButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7}, Landroidx/preference/Preference;->notifyChanged()V

    invoke-virtual {v6, v7}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    new-instance v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    sget-boolean v6, Lcom/samsung/android/settings/Rune;->FEATURE_SIDE_BUTTON_SUPPORT_AI_AGENT_APP:Z

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "navigationbar_splugin_flags"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v5, "pref_key_assistant_inline_cue_disabled"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v2

    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    new-instance v5, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    new-instance v6, Lcom/samsung/android/settings/accessibility/base/widget/InlineCuePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lcom/samsung/android/settings/accessibility/base/widget/InlineCuePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v4, 0x7f1418f7

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda2;

    const/4 v7, 0x0

    invoke-direct {v4, p0, v0, v5, v7}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;Landroidx/preference/PreferenceScreen;Landroidx/preference/PreferenceCategory;I)V

    iput-object v1, v6, Lcom/samsung/android/settings/accessibility/base/widget/InlineCuePreference;->firstButtonTitle:Ljava/lang/CharSequence;

    iput-object v4, v6, Lcom/samsung/android/settings/accessibility/base/widget/InlineCuePreference;->firstButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6}, Landroidx/preference/Preference;->notifyChanged()V

    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    new-instance v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isSupportTouch2Search()Z

    move-result v0

    const-string/jumbo v1, "touch_and_hold_to_search_chn"

    const-string/jumbo v4, "touch_and_hold_to_search"

    if-eqz v0, :cond_7

    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mCircleToSearch:Landroidx/preference/SecSwitchPreference;

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mCircleToSearch:Landroidx/preference/SecSwitchPreference;

    :goto_4
    if-eqz v0, :cond_8

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getNavBarMode(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_9

    move v0, v3

    goto :goto_5

    :cond_9
    move v0, v2

    :goto_5
    if-nez v0, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "navigation_bar_gesture_detail_type"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_a

    move v1, v3

    goto :goto_6

    :cond_a
    move v1, v2

    :goto_6
    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isSupportSearcle()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mCircleToSearch:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mCircleToSearch:Landroidx/preference/SecSwitchPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "any_screen_running"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_b

    move v2, v3

    :cond_b
    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_7

    :cond_c
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mCircleToSearch:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mSwipeToOpenAssistantApp:Landroidx/preference/SecSwitchPreference;

    const v2, 0x7f141933

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mSwipeToOpenAssistantApp:Landroidx/preference/SecSwitchPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mSwipeToOpenAssistantApp:Landroidx/preference/SecSwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mCircleToSearch:Landroidx/preference/SecSwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-nez v0, :cond_f

    new-instance v0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->updateRelativeLinks()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mLastConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->initPreferences$10()V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sIsForceUpdate:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mLastConfiguration:Landroid/content/res/Configuration;

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iget v1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sIsForceUpdate:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->updatePreferences$10()V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "NavigationBarSettings"

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mLastConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->initPreferences$10()V

    if-eqz p1, :cond_0

    const-string v0, "isOnehandModeDialogShown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->updatePreferences$10()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGesturePreference:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->sOnehandModeDisableDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "isOnehandModeDialogShown"

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 10

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_running"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOneHandModeObserver:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android"

    invoke-virtual {v0, v1, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOverlayChangedReceiver:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOneHandModeObserver:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mOverlayChangedReceiver:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$2;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final updatePreferences$10()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isNavigationBarEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NavigationBarSettings"

    const-string v1, "Navigation bar settings can\'t open in DeX mode or non-primary user."

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getNavBarMode(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGesturePreference:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mDetailedSettingPreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mDetailedSettingPreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mSwipeToOpenAssistantApp:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mCircleToSearch:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->updateRelativeLinks()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGesturePreference:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->updatePreviewResources()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isDefaultDigitalAssistantAppSet(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    const-string v4, "assist_touch_gesture_enabled"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mSwipeToOpenAssistantApp:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mSwipeToOpenAssistantApp:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mSwipeToOpenAssistantApp:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "touch_and_hold_to_search"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_4

    move v1, v2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mCircleToSearch:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mCircleToSearch:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final updateRelativeLinks()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    iget-object v1, v1, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->mLinkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "navigation_bar_gesture_while_hidden"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportRelativeLink()Z

    move-result v3

    const/16 v5, 0x1d2e

    const-string v6, "com.android.settings"

    const/4 v7, 0x0

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isTaskBarEnableCondition(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/android/settings/Utils;->isNewDexMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v3}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v8, 0x7f14193a

    iput v8, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iput v5, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    const-string v8, "com.android.settings.Settings$TaskBarSettingsActivity"

    invoke-static {v6, v8}, Lcom/android/settings/DisplaySettings$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    iput-object v8, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v3, v7

    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportRelativeLink()Z

    move-result v8

    if-nez v8, :cond_2

    :goto_2
    move-object v8, v7

    goto :goto_3

    :cond_2
    invoke-static {v1}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    new-instance v8, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v8}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v9, 0x7f141939

    iput v9, v8, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const-string v9, "747003"

    iput-object v9, v8, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    iput v5, v8, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    const-string/jumbo v9, "top_level_sounds"

    iput-object v9, v8, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    const-string v9, "com.android.settings.Settings$VibrationSystemIntensitySettingsActivity"

    invoke-static {v6, v9}, Lcom/android/settings/DisplaySettings$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v8, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    :goto_3
    const-string v6, "NavigationBarSettingsUtil"

    const-string/jumbo v9, "value"

    const-string v10, "GET_global"

    const-string v11, "content://com.samsung.android.spay.common.share/global"

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportRelativeLink()Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    if-eq v2, v12, :cond_4

    goto/16 :goto_8

    :cond_4
    new-instance v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v2}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v13, 0x7f141917

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    const-string/jumbo v5, "samsungwallet_open_quickaccess"

    invoke-virtual {v14, v15, v10, v5, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v14, "wallet_app_status"

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-lt v14, v12, :cond_5

    move v14, v12

    goto :goto_4

    :cond_5
    move v14, v4

    :goto_4
    sput-boolean v14, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sIsWalletApp:Z

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v12, :cond_7

    sget-boolean v5, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sIsWalletApp:Z

    if-eqz v5, :cond_6

    const v5, 0x7f141918

    iput v5, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    goto :goto_7

    :cond_6
    iput v13, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    goto :goto_7

    :catch_0
    sput-boolean v4, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->sIsWalletApp:Z

    const-string v5, "Samsung wallet is not provisioned."

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string v5, "isProvisioned : "

    :try_start_1
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "samsung_pay_provisioning_status"

    invoke-virtual {v14, v11, v10, v15, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-ne v14, v12, :cond_8

    move v14, v12

    goto :goto_5

    :cond_8
    move v14, v4

    :goto_5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v4, "samsung_pay_setting_quickaccess_deeplink"

    invoke-virtual {v15, v11, v10, v4, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v12, :cond_9

    move v4, v12

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    :goto_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", supportedQuickAccess : "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v14, :cond_a

    if-eqz v4, :cond_a

    iput v13, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :goto_7
    const-string v4, "747002"

    iput-object v4, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    const/16 v4, 0x1d2e

    iput v4, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    const-string/jumbo v4, "samsungpay://launch?action=settings&menu=simplepay_view"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v4, "relative_link"

    invoke-virtual {v5, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iput-object v5, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    goto :goto_9

    :catch_1
    const-string v2, "Spay is not provisioned."

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_8
    move-object v2, v7

    :goto_9
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportRelativeLink()Z

    move-result v4

    if-eqz v4, :cond_c

    sget-boolean v4, Lcom/samsung/android/settings/Rune;->FEATURE_SIDE_BUTTON_SUPPORT_AI_AGENT_APP:Z

    if-eqz v4, :cond_b

    goto :goto_a

    :cond_b
    new-instance v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v7}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v4, 0x7f141907

    iput v4, v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const-string v4, "747004"

    iput-object v4, v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    const/16 v4, 0x1d2e

    iput v4, v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    const-string/jumbo v4, "top_level_apps"

    iput-object v4, v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MANAGE_DEFAULT_APP"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "android.intent.extra.ROLE_NAME"

    const-string v5, "android.app.role.ASSISTANT"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    :cond_c
    :goto_a
    filled-new-array {v3, v8, v2, v7}, [Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v2, :cond_d

    aget-object v3, v1, v4

    iget-object v5, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_d
    return-void
.end method
