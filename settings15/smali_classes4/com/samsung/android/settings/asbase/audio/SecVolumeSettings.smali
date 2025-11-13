.class public Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyEventListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field public mAccessibilityController:Lcom/samsung/android/settings/asbase/audio/SecA11yVolumePreferenceController;

.field public mAlarmController:Lcom/samsung/android/settings/asbase/audio/SecAlarmVolumePreferenceController;

.field public mBixbyController:Lcom/samsung/android/settings/asbase/audio/SecBixbyVolumePreferenceController;

.field public mContext:Landroid/content/Context;

.field public mDNDLinkableController:Lcom/samsung/android/settings/asbase/audio/SecDNDLinkableController;

.field public mDTMFController:Lcom/samsung/android/settings/asbase/audio/SecDTMFVolumePreferenceController;

.field public final mHandler:Landroid/os/Handler;

.field public mMediaController:Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;

.field public mMuteAllSoundController:Lcom/samsung/android/settings/asbase/audio/SecMuteAllSoundController;

.field public mNotificationController:Lcom/samsung/android/settings/asbase/audio/SecNotificationVolumePreferenceController;

.field public mRingController:Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;

.field public mSecAuracastLinkableController:Lcom/samsung/android/settings/asbase/audio/SecAuracastLinkableController;

.field public mSecGlobalAlarmLinkableController:Lcom/samsung/android/settings/asbase/audio/SecGlobalAlarmLinkableController;

.field public final mStatusObserver:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$1;

.field public mSystemController:Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;

.field public final mVolumeCallback:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$VolumePreferenceCallback;

.field public mVolumeKeyControlCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$2;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$IconCallback;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$IconCallback;-><init>(Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$VolumePreferenceCallback;-><init>(Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$VolumePreferenceCallback;

    new-instance v0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$1;-><init>(Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mStatusObserver:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$1;

    return-void
.end method

.method public static buildPreferenceControllers$4(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/asbase/audio/SecDTMFExplanationPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/asbase/audio/SecVolumeInsetCategoryPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/asbase/audio/SecMuteAllSoundController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/asbase/audio/SecMuteAllSoundController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/asbase/audio/SecDNDLinkableController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/asbase/audio/SecDNDLinkableController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/asbase/audio/SecAuracastLinkableController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/asbase/audio/SecAuracastLinkableController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/asbase/audio/SecGlobalAlarmLinkableController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/asbase/audio/SecGlobalAlarmLinkableController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static isShowInSetCategory(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/utils/SoundUtils;->isZenModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/utils/SoundUtils;->isMuteAllSoundEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/utils/SoundUtils;->isInstalledClockApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/utils/SoundUtils;->isUseGlobalAlarmVolume(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/asbase/utils/SoundUtils;->isBluetoothLeBroadcastEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->buildPreferenceControllers$4(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecVolumeSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0xfa6

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170052

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mContext:Landroid/content/Context;

    const-class p1, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mRingController:Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;

    const-class p1, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mMediaController:Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;

    const-class p1, Lcom/samsung/android/settings/asbase/audio/SecNotificationVolumePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/asbase/audio/SecNotificationVolumePreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mNotificationController:Lcom/samsung/android/settings/asbase/audio/SecNotificationVolumePreferenceController;

    const-class p1, Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mSystemController:Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;

    const-class p1, Lcom/samsung/android/settings/asbase/audio/SecA11yVolumePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/asbase/audio/SecA11yVolumePreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mAccessibilityController:Lcom/samsung/android/settings/asbase/audio/SecA11yVolumePreferenceController;

    const-class p1, Lcom/samsung/android/settings/asbase/audio/SecBixbyVolumePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/asbase/audio/SecBixbyVolumePreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mBixbyController:Lcom/samsung/android/settings/asbase/audio/SecBixbyVolumePreferenceController;

    const-class p1, Lcom/samsung/android/settings/asbase/audio/SecDTMFVolumePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/asbase/audio/SecDTMFVolumePreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mDTMFController:Lcom/samsung/android/settings/asbase/audio/SecDTMFVolumePreferenceController;

    const-class p1, Lcom/samsung/android/settings/asbase/audio/SecAlarmVolumePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/asbase/audio/SecAlarmVolumePreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mAlarmController:Lcom/samsung/android/settings/asbase/audio/SecAlarmVolumePreferenceController;

    const-class p1, Lcom/samsung/android/settings/asbase/audio/SecMuteAllSoundController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/asbase/audio/SecMuteAllSoundController;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mMuteAllSoundController:Lcom/samsung/android/settings/asbase/audio/SecMuteAllSoundController;

    const-class p1, Lcom/samsung/android/settings/asbase/audio/SecDNDLinkableController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/asbase/audio/SecDNDLinkableController;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mDNDLinkableController:Lcom/samsung/android/settings/asbase/audio/SecDNDLinkableController;

    const-class p1, Lcom/samsung/android/settings/asbase/audio/SecAuracastLinkableController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/asbase/audio/SecAuracastLinkableController;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mSecAuracastLinkableController:Lcom/samsung/android/settings/asbase/audio/SecAuracastLinkableController;

    const-class p1, Lcom/samsung/android/settings/asbase/audio/SecGlobalAlarmLinkableController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/asbase/audio/SecGlobalAlarmLinkableController;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mSecGlobalAlarmLinkableController:Lcom/samsung/android/settings/asbase/audio/SecGlobalAlarmLinkableController;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "category_volume_key_control"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mVolumeKeyControlCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v0, 0x1

    const v1, 0x7f142866

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string/jumbo p0, "onKeyDown():"

    const-string p2, "SecVolumeSettings"

    invoke-static {p1, p0, p2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x18

    if-eq p1, p0, :cond_0

    const/16 p0, 0x19

    if-eq p1, p0, :cond_0

    const/16 p0, 0xa4

    if-eq p1, p0, :cond_0

    const/16 p0, 0xa8

    if-eq p1, p0, :cond_0

    const/16 p0, 0xa9

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeLimiterSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v0, p1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 p0, 0x0

    const v2, 0x7f142866

    invoke-virtual {p1, v2, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    const/16 p0, 0xfa6

    iput p0, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mStatusObserver:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mOnKeyEventListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyEventListener;

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mVolumeKeyControlCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->isShowInSetCategory(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iput-object p0, v0, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mOnKeyEventListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyEventListener;

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mStatusObserver:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$1;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mRingController:Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mRingController:Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mMediaController:Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mMediaController:Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mNotificationController:Lcom/samsung/android/settings/asbase/audio/SecNotificationVolumePreferenceController;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mNotificationController:Lcom/samsung/android/settings/asbase/audio/SecNotificationVolumePreferenceController;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mSystemController:Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mSystemController:Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mAccessibilityController:Lcom/samsung/android/settings/asbase/audio/SecA11yVolumePreferenceController;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mAccessibilityController:Lcom/samsung/android/settings/asbase/audio/SecA11yVolumePreferenceController;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mBixbyController:Lcom/samsung/android/settings/asbase/audio/SecBixbyVolumePreferenceController;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mBixbyController:Lcom/samsung/android/settings/asbase/audio/SecBixbyVolumePreferenceController;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mDTMFController:Lcom/samsung/android/settings/asbase/audio/SecDTMFVolumePreferenceController;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mDTMFController:Lcom/samsung/android/settings/asbase/audio/SecDTMFVolumePreferenceController;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mAlarmController:Lcom/samsung/android/settings/asbase/audio/SecAlarmVolumePreferenceController;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mAlarmController:Lcom/samsung/android/settings/asbase/audio/SecAlarmVolumePreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_7
    return-void
.end method

.method public final onStop()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$VolumePreferenceCallback;

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings$VolumePreferenceCallback;->mCurrent:Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settings/asbase/audio/SecSeekBarVolumizer;->postStopSample()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mRingController:Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mRingController:Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mMediaController:Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mMediaController:Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mNotificationController:Lcom/samsung/android/settings/asbase/audio/SecNotificationVolumePreferenceController;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mNotificationController:Lcom/samsung/android/settings/asbase/audio/SecNotificationVolumePreferenceController;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mSystemController:Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mSystemController:Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mAccessibilityController:Lcom/samsung/android/settings/asbase/audio/SecA11yVolumePreferenceController;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mAccessibilityController:Lcom/samsung/android/settings/asbase/audio/SecA11yVolumePreferenceController;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mBixbyController:Lcom/samsung/android/settings/asbase/audio/SecBixbyVolumePreferenceController;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mBixbyController:Lcom/samsung/android/settings/asbase/audio/SecBixbyVolumePreferenceController;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mDTMFController:Lcom/samsung/android/settings/asbase/audio/SecDTMFVolumePreferenceController;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mDTMFController:Lcom/samsung/android/settings/asbase/audio/SecDTMFVolumePreferenceController;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mAlarmController:Lcom/samsung/android/settings/asbase/audio/SecAlarmVolumePreferenceController;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSettings;->mAlarmController:Lcom/samsung/android/settings/asbase/audio/SecAlarmVolumePreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_8
    return-void
.end method
