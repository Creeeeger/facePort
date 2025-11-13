.class public Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyEventListener;
.implements Lcom/android/settings/core/OnActivityResultListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mPrefControllers:Ljava/util/List;

.field public mSystemController:Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;

.field public final mVolumeCallback:Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings$VolumePreferenceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings$1;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;->mPrefControllers:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings$IconCallback;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings$IconCallback;-><init>(Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings$VolumePreferenceCallback;-><init>(Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;->mVolumeCallback:Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings$VolumePreferenceCallback;

    return-void
.end method

.method public static buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/asbase/audio/SecSoundFolderSoundController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    new-instance v8, Lcom/samsung/android/settings/asbase/audio/SecSoundFolderSoundController$1;

    const/4 v9, 0x0

    new-array v7, v9, [I

    const/4 v3, 0x2

    const-string v4, "folder_sounds"

    const-string v5, "folder_sounds_enabled"

    const/4 v6, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v8, v1, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/asbase/audio/SecSoundGPSNotiSoundController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/asbase/audio/SecSoundGPSNotiSoundController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/asbase/audio/SecDockingSoundPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    new-instance v8, Lcom/samsung/android/settings/asbase/audio/SecDockingSoundPreferenceController$1;

    new-array v7, v9, [I

    const/4 v3, 0x1

    const-string v4, "docking_sounds"

    const-string v5, "dock_sounds_enabled"

    const/4 v6, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v8, v1, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/asbase/audio/SecDockAudioMediaPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    new-instance v8, Lcom/samsung/android/settings/asbase/audio/SecDockAudioMediaPreferenceController$1;

    const/4 v10, 0x1

    filled-new-array {v9, v10}, [I

    move-result-object v7

    const/4 v3, 0x1

    const-string v4, "dock_audio_media"

    const-string v5, "dock_audio_media_enabled"

    const/4 v6, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v8, v1, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/asbase/audio/SecEmergencyTonePreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/utils/VibUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/samsung/android/settings/asbase/audio/SecEmergencyTonePreferenceController$1;

    const/4 v3, 0x2

    filled-new-array {v10, v3, v9}, [I

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/samsung/android/settings/asbase/audio/SecEmergencyTonePreferenceController$1;-><init>(Lcom/samsung/android/settings/asbase/audio/SecEmergencyTonePreferenceController;[II)V

    iput-object v2, v1, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/settings/asbase/audio/SecEmergencyTonePreferenceController$1;

    filled-new-array {v10, v9}, [I

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4}, Lcom/samsung/android/settings/asbase/audio/SecEmergencyTonePreferenceController$1;-><init>(Lcom/samsung/android/settings/asbase/audio/SecEmergencyTonePreferenceController;[II)V

    iput-object v2, v1, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    iput-object v0, p1, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;->mPrefControllers:Ljava/util/List;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecSystemSoundSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x27e2

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17004c

    return p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;->mPrefControllers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of v3, v2, Lcom/android/settings/development/OnActivityResultListener;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/settings/development/OnActivityResultListener;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/settings/development/OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class p1, Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;->mSystemController:Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;->mVolumeCallback:Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings$VolumePreferenceCallback;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;->mSystemController:Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoAddFooterPreference(Z)V

    return-void
.end method

.method public final onDetach()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;->mSystemController:Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference$Callback;)V

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundSystemSoundSettings;->mSystemController:Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
