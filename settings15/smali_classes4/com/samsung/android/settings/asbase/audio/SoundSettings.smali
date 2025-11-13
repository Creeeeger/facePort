.class public Lcom/samsung/android/settings/asbase/audio/SoundSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;
.implements Lcom/android/settings/core/OnActivityResultListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field public static mAudioManager:Landroid/media/AudioManager;


# instance fields
.field public mAddedWindowCallbacks:Z

.field public mContext:Ljava/lang/ref/WeakReference;

.field public mDialogFragment:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

.field public final mHandler:Landroid/os/Handler;

.field public final mLaunchPickerByBixby:Lcom/samsung/android/settings/asbase/audio/SoundSettings$4;

.field public mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

.field public mPrefControllers:Ljava/util/List;

.field public mReadyToLaunchPickerByBixby:Z

.field public mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

.field public mRequestPreference:Lcom/android/settings/RingtonePreference;

.field public mRingtone:Lcom/android/settings/DefaultRingtonePreference;

.field public mSoundModeController:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;

.field public final mStatusObserver:Lcom/samsung/android/settings/asbase/audio/SoundSettings$6;

.field public mTimePickerDialog:Landroidx/picker/app/SeslTimePickerDialog;

.field public final mWindowCallbacks:Lcom/samsung/android/settings/asbase/audio/SoundSettings$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/asbase/audio/SoundSettings$2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    new-instance v0, Lcom/samsung/android/settings/asbase/audio/SoundSettings$3;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mPrefControllers:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mReadyToLaunchPickerByBixby:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mAddedWindowCallbacks:Z

    new-instance v0, Lcom/samsung/android/settings/asbase/audio/SoundSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/asbase/audio/SoundSettings$4;-><init>(Lcom/samsung/android/settings/asbase/audio/SoundSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mLaunchPickerByBixby:Lcom/samsung/android/settings/asbase/audio/SoundSettings$4;

    new-instance v0, Lcom/samsung/android/settings/asbase/audio/SoundSettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/asbase/audio/SoundSettings$5;-><init>(Lcom/samsung/android/settings/asbase/audio/SoundSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mWindowCallbacks:Lcom/samsung/android/settings/asbase/audio/SoundSettings$5;

    new-instance v0, Lcom/samsung/android/settings/asbase/audio/SoundSettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/asbase/audio/SoundSettings$6;-><init>(Lcom/samsung/android/settings/asbase/audio/SoundSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mStatusObserver:Lcom/samsung/android/settings/asbase/audio/SoundSettings$6;

    return-void
.end method

.method public static buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/asbase/audio/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/asbase/audio/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p1, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mSoundModeController:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lcom/samsung/android/settings/asbase/audio/SecSoundModeCategoryController;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeCategoryController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/asbase/audio/SecMuteAllSoundController;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/settings/asbase/audio/SecMuteAllSoundController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/asbase/audio/SecDNDLinkableController;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/settings/asbase/audio/SecDNDLinkableController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/asbase/audio/SecSoundVolumeController;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/settings/asbase/audio/SecSoundVolumeController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/asbase/audio/SecSoundRingtoneController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/asbase/audio/SecSoundRingtoneController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/asbase/vibration/SecSoundDeviceVibrationController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/asbase/audio/SecSoundNotificationController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/asbase/audio/SecSoundNotificationController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/asbase/audio/SecSoundCarrierRingtoneController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/asbase/audio/SecSoundCarrierRingtoneController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/asbase/vibration/SecSoundVibrationFeedbackController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/asbase/vibration/SecSoundVibrationFeedbackController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/asbase/audio/SecSoundEffectSoundController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/asbase/audio/SecSoundEffectSoundController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/asbase/audio/SecSoundMultiSoundController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/asbase/audio/SecSoundMultiSoundController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/asbase/vibration/SecSoundNotificationVibrationController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/asbase/vibration/SecSoundNotificationVibrationController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/samsung/android/settings/asbase/audio/SecSoundVColoringController;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/asbase/audio/SecSoundVColoringController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    iput-object v0, p1, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mPrefControllers:Ljava/util/List;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/asbase/audio/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getDialogMetricsCategory(I)I
    .locals 0

    const/16 p0, 0xc

    if-ne p1, p0, :cond_0

    const/16 p0, 0x1c25

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f142ce6

    return p0

    :cond_0
    const p0, 0x7f142cf1

    return p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SoundSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x150

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17004a

    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_sounds"

    return-object p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mPrefControllers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of v3, v2, Lcom/android/settings/development/OnActivityResultListener;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/android/settings/development/OnActivityResultListener;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/settings/development/OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mContext:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAnimationAllowed(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    sget-boolean v0, Lcom/samsung/android/settings/asbase/rune/AudioRune;->SUPPORT_V_COLORING:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "vcoloring"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "SoundSettings"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mDialogFragment:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    const v0, 0x7f1427b1

    const-string/jumbo v1, "sound_work_settings"

    const-string v2, "Settings.WORK_PROFILE_SOUND_SETTINGS_SECTION_HEADER"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mLaunchPickerByBixby:Lcom/samsung/android/settings/asbase/audio/SoundSettings$4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mLaunchPickerByBixby:Lcom/samsung/android/settings/asbase/audio/SoundSettings$4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mLaunchPickerByBixby:Lcom/samsung/android/settings/asbase/audio/SoundSettings$4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->isMultiSimModel()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_sim2_only"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, p1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->isEnabledSIM2Only()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mTimePickerDialog:Landroidx/picker/app/SeslTimePickerDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mAddedWindowCallbacks:Z

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mWindowCallbacks:Lcom/samsung/android/settings/asbase/audio/SoundSettings$5;

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->removeWindowCallbacks(Landroid/view/WindowCallbacks;)V

    :cond_1
    return-void
.end method

.method public final onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->newInstance(ILjava/lang/String;)Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mDialogFragment:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mDialogFragment:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "SoundSettings"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mStatusObserver:Lcom/samsung/android/settings/asbase/audio/SoundSettings$6;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    const-string v0, "SoundSettings"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    instance-of v2, p1, Lcom/android/settings/RingtonePreference;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "work_ringtone"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "work_notification_ringtone"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :try_start_0
    const-string/jumbo v1, "onPreferenceTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->writePreferenceClickMetric(Landroidx/preference/Preference;)V

    check-cast p1, Lcom/android/settings/RingtonePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    iget v2, v2, Lcom/android/settings/RingtonePreference;->mUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v3, v4, v2}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/utils/SoundUtils;->showToEnableSecSoundPickerDialog(Landroid/content/Context;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public final onResume()V
    .locals 7

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f142ce6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f142cf1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mStatusObserver:Lcom/samsung/android/settings/asbase/audio/SoundSettings$6;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportRelativeLink()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-nez v1, :cond_3

    new-instance v1, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    const-string/jumbo v1, "smart_alert"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v2, "com.android.settings"

    const/16 v4, 0x150

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v3, 0x7f141c27

    iput v3, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const-string v5, ":settings:fragment_args_key"

    invoke-static {v5, v1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    sget v5, Lcom/samsung/android/settings/asbase/logging/AsConstant;->sounds_and_vibration_relative_link_smart_alert:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    iput v4, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.android.settings.Settings$MotionAndGestureSettingsActivity"

    invoke-virtual {v5, v2, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, ":settings:show_fragment_args"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, ":settings:show_fragment_title_resid"

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v5, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string/jumbo v1, "top_level_advanced_features"

    iput-object v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_2
    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v1, 0x7f1438e6

    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    sget v1, Lcom/samsung/android/settings/asbase/logging/AsConstant;->sounds_and_vibration_relative_link_do_not_disturb:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    iput v4, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    const-string v1, "com.android.settings.Settings$ZenModeSettingsActivity"

    invoke-static {v2, v1}, Lcom/android/settings/DisplaySettings$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v1, 0x7f1427a6

    iput v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    sget v1, Lcom/samsung/android/settings/asbase/logging/AsConstant;->sounds_and_vibration_relative_link_hearing_enhancements:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:Ljava/lang/String;

    iput v4, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    const-string v1, "com.samsung.android.settings.accessibility.hearing.HearingEnhancementsFragment"

    iput-object v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->fragment:Ljava/lang/String;

    const-string/jumbo v1, "top_level_accessibility"

    iput-object v1, v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final onTimeSet(Landroidx/picker/widget/SeslTimePicker;II)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mSoundModeController:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->setIntervalTime(II)V

    return-void
.end method
