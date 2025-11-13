.class public Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field public static mEnableSwitch:Z


# instance fields
.field public mLauncherApps:Landroid/content/pm/LauncherApps;

.field public mPreference:Landroidx/preference/SecPreference;

.field public mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

.field public mScrollWheelPreference:Landroidx/preference/SecDropDownPreference;

.field public mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

.field public mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field public final mTalkbackObserver:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings$1;

.field public mTouchpadHelpPreference:Landroidx/preference/SecPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings$2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings$3;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mTalkbackObserver:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings$1;

    return-void
.end method


# virtual methods
.method public final getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    const p0, 0x7f142417

    return p0
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const p0, 0x10b94

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17019f

    return p0
.end method

.method public final getSummary$1$1()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mLauncherApps:Landroid/content/pm/LauncherApps;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LauncherActivityInfo.size : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FlexModePanelSettings"

    invoke-static {v3, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/view/SemWindowManager;->getSupportsFlexPanel(ILjava/lang/String;)I

    move-result v4

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_0

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f142413

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v2, 0x4

    const/4 v4, 0x0

    if-ge v1, v2, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v2, ""

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/android/settingslib/utils/applications/AppUtils;->getApplicationLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_3

    const-string v5, ", "

    invoke-static {v2, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-object v2

    :cond_5
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v4

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/settingslib/utils/applications/AppUtils;->getApplicationLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    if-lt v5, v3, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    aget-object v0, v2, v4

    aget-object v2, v2, v3

    add-int/lit8 v3, v1, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f120043

    invoke-virtual {p0, v2, v1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_advanced_features"

    return-object p0
.end method

.method public final initPreference$13()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    const-string v0, "flex_mode_panel_preview"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f142415

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setDescText(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    const-string v0, "flex_mode_apps_to_show_flex_mode_panel_automatically"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mPreference:Landroidx/preference/SecPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->getSummary$1$1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mPreference:Landroidx/preference/SecPreference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    const-string v0, "flex_mode_touchpad_gesture_help"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mTouchpadHelpPreference:Landroidx/preference/SecPreference;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IS_FLEX_SCROLL_WHEEL:Z

    if-eqz v0, :cond_1

    const-string v0, "flex_mode_scroll_wheel_pos"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SecDropDownPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mScrollWheelPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, -0x1

    const v4, 0x7f0300e6

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mScrollWheelPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mScrollWheelPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mScrollWheelPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mScrollWheelPreference:Landroidx/preference/SecDropDownPreference;

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object p1, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "flex_mode_panel_enabled"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sput-boolean p2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mEnableSwitch:Z

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mPreference:Landroidx/preference/SecPreference;

    const v0, 0x10b94

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x10ba7

    invoke-static {p1, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mTouchpadHelpPreference:Landroidx/preference/SecPreference;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x10bae

    invoke-static {p1, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    :cond_1
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IS_FLEX_SCROLL_WHEEL:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mScrollWheelPreference:Landroidx/preference/SecDropDownPreference;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "flex_mode_scroll_wheel_pos"

    const/4 v1, 0x2

    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mScrollWheelPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const p1, 0x10bad

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const p1, 0x7f17019f

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->initPreference$13()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->updateSwitchAndPreferenceState$3()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->setLinkedDataView$14()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "launcherapps"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->initPreference$13()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->setLinkedDataView$14()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "enabled_accessibility_services"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mTalkbackObserver:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings$1;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslSwitchBar;->hide()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mTalkbackObserver:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->updateSwitchAndPreferenceState$3()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mPreference:Landroidx/preference/SecPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->getSummary$1$1()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setLinkedDataView$14()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const-string v1, "770100"

    iput-object v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    const v1, 0x10b94

    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    const v2, 0x7f141c4c

    iput v2, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$MouseAndTrackpadSettingsActivity"

    invoke-static {v2, v3}, Lcom/android/settings/DisplaySettings$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    const v0, 0x10ba5

    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateSwitchAndPreferenceState$3()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "flex_mode_panel_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mEnableSwitch:Z

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mPreference:Landroidx/preference/SecPreference;

    if-eqz v0, :cond_2

    sget-boolean v3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mEnableSwitch:Z

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mTouchpadHelpPreference:Landroidx/preference/SecPreference;

    if-eqz v0, :cond_3

    sget-boolean v3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mEnableSwitch:Z

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_IS_FLEX_SCROLL_WHEEL:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mScrollWheelPreference:Landroidx/preference/SecDropDownPreference;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mScrollWheelPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mScrollWheelPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mScrollWheelPreference:Landroidx/preference/SecDropDownPreference;

    sget-boolean v0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/FlexModePanelSettings;->mEnableSwitch:Z

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_5
    :goto_1
    return-void
.end method
