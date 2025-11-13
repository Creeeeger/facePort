.class public Lcom/samsung/android/settings/as/audio/SoundSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SoundSettings.java"

# interfaces
.implements Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;
.implements Lcom/android/settings/core/OnActivityResultListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field private static mAudioManager:Landroid/media/AudioManager;


# instance fields
.field private mAddedWindowCallbacks:Z

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDialogFragment:Lcom/android/settingslib/widget/UpdatableListPreferenceDialogFragment;

.field private mHandler:Landroid/os/Handler;

.field private mLaunchPickerByBixby:Ljava/lang/Runnable;

.field private mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

.field private mPrefControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mReadyToLaunchPickerByBixby:Z

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

.field private mRequestPreference:Lcom/android/settings/RingtonePreference;

.field private mRingtone:Lcom/android/settings/DefaultRingtonePreference;

.field private mSoundModeController:Lcom/samsung/android/settings/as/audio/SecSoundModeController;

.field private mTimePickerDialog:Landroidx/picker/app/SeslTimePickerDialog;

.field private mWindowCallbacks:Landroid/view/WindowCallbacks;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAddedWindowCallbacks(Lcom/samsung/android/settings/as/audio/SoundSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mAddedWindowCallbacks:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/audio/SoundSettings;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLaunchPickerByBixby(Lcom/samsung/android/settings/as/audio/SoundSettings;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mLaunchPickerByBixby:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReadyToLaunchPickerByBixby(Lcom/samsung/android/settings/as/audio/SoundSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mReadyToLaunchPickerByBixby:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoundModeController(Lcom/samsung/android/settings/as/audio/SoundSettings;)Lcom/samsung/android/settings/as/audio/SecSoundModeController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mSoundModeController:Lcom/samsung/android/settings/as/audio/SecSoundModeController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWindowCallbacks(Lcom/samsung/android/settings/as/audio/SoundSettings;)Landroid/view/WindowCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mWindowCallbacks:Landroid/view/WindowCallbacks;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAddedWindowCallbacks(Lcom/samsung/android/settings/as/audio/SoundSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mAddedWindowCallbacks:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReadyToLaunchPickerByBixby(Lcom/samsung/android/settings/as/audio/SoundSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mReadyToLaunchPickerByBixby:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mlaunchPickerScreenByBixby(Lcom/samsung/android/settings/as/audio/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SoundSettings;->launchPickerScreenByBixby()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmAudioManager()Landroid/media/AudioManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/as/audio/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/as/audio/SoundSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/as/audio/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetSystemSoundThemeLog(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SoundSettings;->getSystemSoundThemeLog(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisInternalRingtoneUri(Landroid/net/Uri;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SoundSettings;->isInternalRingtoneUri(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 385
    new-instance v0, Lcom/samsung/android/settings/as/audio/SoundSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/as/audio/SoundSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/as/audio/SoundSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    .line 474
    new-instance v0, Lcom/samsung/android/settings/as/audio/SoundSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/as/audio/SoundSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/as/audio/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mPrefControllers:Ljava/util/List;

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mReadyToLaunchPickerByBixby:Z

    .line 131
    iput-boolean v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mAddedWindowCallbacks:Z

    .line 647
    new-instance v0, Lcom/samsung/android/settings/as/audio/SoundSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/audio/SoundSettings$4;-><init>(Lcom/samsung/android/settings/as/audio/SoundSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mLaunchPickerByBixby:Ljava/lang/Runnable;

    .line 676
    new-instance v0, Lcom/samsung/android/settings/as/audio/SoundSettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/audio/SoundSettings$5;-><init>(Lcom/samsung/android/settings/as/audio/SoundSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mWindowCallbacks:Landroid/view/WindowCallbacks;

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/as/audio/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/settings/as/audio/SoundSettings;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 190
    new-instance v1, Lcom/samsung/android/settings/as/audio/SecSoundModeController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/as/audio/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p1, Lcom/samsung/android/settings/as/audio/SoundSettings;->mSoundModeController:Lcom/samsung/android/settings/as/audio/SecSoundModeController;

    .line 191
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/as/audio/SecSoundVolumeController;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/settings/as/audio/SecSoundVolumeController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v1, Lcom/samsung/android/settings/as/audio/SecSoundDownloadRingtoneController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/as/audio/SecSoundDownloadRingtoneController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v1, Lcom/samsung/android/settings/as/audio/SecSoundRingtoneController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/as/audio/SecSoundRingtoneController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v1, Lcom/samsung/android/settings/as/audio/SecSoundDSRingtoneController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/as/audio/SecSoundDSRingtoneController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v1, Lcom/samsung/android/settings/as/vibration/SecSoundDeviceVibrationController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/as/vibration/SecSoundDeviceVibrationController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v1, Lcom/samsung/android/settings/as/audio/SecSoundNotificationController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/as/audio/SecSoundNotificationController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v1, Lcom/samsung/android/settings/as/audio/SecSoundDSNotificationController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/as/audio/SecSoundDSNotificationController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v1, Lcom/samsung/android/settings/as/audio/SecSoundCarrierRingtoneController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/as/audio/SecSoundCarrierRingtoneController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v1, Lcom/samsung/android/settings/as/vibration/SecSoundVibrationFeedbackController;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/as/vibration/SecSoundVibrationFeedbackController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v1, Lcom/samsung/android/settings/as/audio/SecSoundEffectSoundController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/as/audio/SecSoundEffectSoundController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v1, Lcom/samsung/android/settings/as/audio/SecSoundMultiSoundController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/as/audio/SecSoundMultiSoundController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v1, Lcom/samsung/android/settings/as/vibration/SecSoundNotificationVibrationController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/as/vibration/SecSoundNotificationVibrationController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v1, Lcom/samsung/android/settings/as/audio/SecSoundVColoringController;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/as/audio/SecSoundVColoringController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v1, Lcom/samsung/android/settings/as/vibration/SecSoundDsdsDeviceVibrationController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/as/vibration/SecSoundDsdsDeviceVibrationController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    .line 209
    iput-object v0, p1, Lcom/samsung/android/settings/as/audio/SoundSettings;->mPrefControllers:Ljava/util/List;

    :cond_1
    return-object v0
.end method

.method private static getSystemSoundThemeLog(Landroid/content/Context;)I
    .locals 1

    .line 723
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "system_sound"

    .line 722
    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 724
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Galaxy"

    .line 725
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Calm"

    .line 727
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v0, "Fun"

    .line 729
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isInternalRingtoneUri(Landroid/net/Uri;)Z
    .locals 1

    .line 377
    invoke-static {p0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 378
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 379
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private launchPickerScreenByBixby()V
    .locals 7

    .line 584
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 585
    invoke-static {v0}, Lcom/samsung/android/settings/as/utils/SimUtils;->isMultiSimEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 586
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 587
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "open_screen"

    .line 590
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 592
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notification_sounds"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "launchPickerScreenByBixby : "

    const-string v6, "SoundSettings"

    if-eqz v4, :cond_2

    if-nez v1, :cond_1

    .line 595
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "notification_sound"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    .line 598
    invoke-virtual {v1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 597
    invoke-virtual {v1, v2}, Lcom/android/settings/DefaultRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 599
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 605
    :catch_0
    invoke-static {v0}, Lcom/samsung/android/settings/as/utils/SoundUtils;->showToEnableSecSoundPickerDialog(Landroid/content/Context;)V

    goto/16 :goto_0

    :catch_1
    move-exception p0

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 610
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/samsung/android/settings/as/audio/SecDualNotificationSoundSettings;

    .line 611
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 610
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_notification_sound_category_title:I

    .line 611
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 613
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SoundSettings;->getMetricsCategory()I

    move-result p0

    .line 612
    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 613
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception p0

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 618
    :cond_2
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ringtone_screen"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 619
    invoke-static {v0}, Lcom/samsung/android/settings/as/utils/SimUtils;->isMultiSimEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 621
    :try_start_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "ringtone"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    .line 622
    invoke-virtual {v1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/DefaultRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 623
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 628
    :catch_3
    invoke-static {v0}, Lcom/samsung/android/settings/as/utils/SoundUtils;->showToEnableSecSoundPickerDialog(Landroid/content/Context;)V

    goto :goto_0

    :catch_4
    move-exception p0

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 633
    :cond_3
    :try_start_3
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/samsung/android/settings/as/audio/SecDualSoundRingtoneSettings;

    .line 634
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 633
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->incoming_call_volume_title:I

    .line 635
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 636
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SoundSettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 637
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_0

    :catch_5
    move-exception p0

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 182
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/samsung/android/settings/as/audio/SoundSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/as/audio/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/16 p0, 0xc

    if-ne p1, p0, :cond_0

    const/16 p0, 0x1c25

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 148
    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 149
    sget p0, Lcom/android/settings/R$string;->sound_and_vibrations_title:I

    return p0

    .line 151
    :cond_0
    sget p0, Lcom/android/settings/R$string;->sound_settings:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SoundSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x150

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 138
    sget p0, Lcom/android/settings/R$xml;->as_sound_vibration_settings_v2:I

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_sounds"

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 276
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    const/4 p1, 0x0

    .line 278
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mPrefControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    .line 283
    instance-of v3, v2, Lcom/android/settings/development/OnActivityResultListener;

    if-eqz v3, :cond_1

    .line 286
    check-cast v2, Lcom/android/settings/development/OnActivityResultListener;

    .line 287
    invoke-interface {v2, p1, p2, p3}, Lcom/android/settings/development/OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 292
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 216
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 218
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mContext:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAnimationAllowed(Z)V

    .line 221
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 222
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 224
    sget-boolean p1, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_V_COLORING:Z

    if-nez p1, :cond_0

    const-string p1, "vcoloring"

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 229
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "SoundSettings"

    .line 230
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/UpdatableListPreferenceDialogFragment;

    .line 231
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mDialogFragment:Lcom/android/settingslib/widget/UpdatableListPreferenceDialogFragment;

    .line 232
    sget p1, Lcom/android/settings/R$string;->sec_sound_work_settings:I

    const-string v0, "sound_work_settings"

    const-string v1, "Settings.WORK_PROFILE_SOUND_SETTINGS_SECTION_HEADER"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    .line 237
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mLaunchPickerByBixby:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 238
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mLaunchPickerByBixby:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 240
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mLaunchPickerByBixby:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 259
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 260
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mTimePickerDialog:Landroidx/picker/app/SeslTimePickerDialog;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 265
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

    .line 267
    iput-boolean v1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mAddedWindowCallbacks:Z

    .line 268
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mWindowCallbacks:Landroid/view/WindowCallbacks;

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->removeWindowCallbacks(Landroid/view/WindowCallbacks;)V

    :cond_1
    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 1

    .line 165
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settingslib/widget/UpdatableListPreferenceDialogFragment;->newInstance(Ljava/lang/String;I)Lcom/android/settingslib/widget/UpdatableListPreferenceDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mDialogFragment:Lcom/android/settingslib/widget/UpdatableListPreferenceDialogFragment;

    .line 166
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 167
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mDialogFragment:Lcom/android/settingslib/widget/UpdatableListPreferenceDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "SoundSettings"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    const-string v0, "SoundSettings"

    .line 739
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 740
    instance-of v2, p1, Lcom/android/settings/RingtonePreference;

    if-eqz v2, :cond_0

    const-string v2, "work_ringtone"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "work_notification_ringtone"

    .line 741
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :try_start_0
    const-string v1, "onPreferenceTreeClick"

    .line 743
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->writePreferenceClickMetric(Landroidx/preference/Preference;)V

    .line 745
    check-cast p1, Lcom/android/settings/RingtonePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 746
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 747
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0xc8

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 748
    invoke-virtual {v4}, Lcom/android/settings/RingtonePreference;->getUserId()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 747
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/SoundUtils;->showToEnableSecSoundPickerDialog(Landroid/content/Context;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    .line 757
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 246
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sound_and_vibrations_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sound_settings:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/audio/SoundSettings;->setLinkedDataView(Landroid/content/Context;)V

    return-void
.end method

.method public onTimeSet(Landroidx/picker/widget/SeslTimePicker;II)V
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mSoundModeController:Lcom/samsung/android/settings/as/audio/SecSoundModeController;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->setIntervalTime(II)V

    return-void
.end method

.method public setLinkedDataView(Landroid/content/Context;)V
    .locals 6

    .line 334
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 336
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportRelativeLink(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    if-nez v1, :cond_2

    .line 337
    new-instance v1, Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    const-string v1, "smart_alert"

    .line 339
    invoke-static {p1, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const-string v2, "com.android.settings"

    const/16 v3, 0x150

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 341
    new-instance p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {p1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 343
    sget v0, Lcom/android/settings/R$string;->pick_up_title:I

    iput v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 344
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, ":settings:fragment_args_key"

    .line 345
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x232b

    .line 347
    iput v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 348
    iput v3, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 349
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.android.settings.Settings$MotionAndGestureSettingsActivity"

    .line 350
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, ":settings:show_fragment_args"

    .line 352
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v4, ":settings:show_fragment_title_resid"

    .line 353
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    iput-object v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const-string v0, "top_level_advanced_features"

    .line 356
    iput-object v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 361
    :cond_1
    new-instance p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {p1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 363
    sget v0, Lcom/android/settings/R$string;->zen_mode_settings_title:I

    iput v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    const/16 v0, 0x23f1

    .line 364
    iput v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 365
    iput v3, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 366
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings.Settings$ZenModeSettingsActivity"

    .line 367
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    iput-object v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 371
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    .line 372
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/SecRelativeLinkView;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecRelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public showIntervalDialog()V
    .locals 8

    .line 302
    sget-object v0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result v0

    .line 303
    new-instance v7, Landroidx/picker/app/SeslTimePickerDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    div-int/lit8 v4, v0, 0x3c

    rem-int/lit8 v5, v0, 0x3c

    const/4 v6, 0x1

    move-object v1, v7

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroidx/picker/app/SeslTimePickerDialog;-><init>(Landroid/content/Context;Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v7, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mTimePickerDialog:Landroidx/picker/app/SeslTimePickerDialog;

    .line 308
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 310
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mTimePickerDialog:Landroidx/picker/app/SeslTimePickerDialog;

    sget v1, Lcom/android/settings/R$string;->sec_sound_mute_duration:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    .line 311
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mTimePickerDialog:Landroidx/picker/app/SeslTimePickerDialog;

    new-instance v1, Lcom/samsung/android/settings/as/audio/SoundSettings$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/as/audio/SoundSettings$1;-><init>(Lcom/samsung/android/settings/as/audio/SoundSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 322
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings;->mTimePickerDialog:Landroidx/picker/app/SeslTimePickerDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
