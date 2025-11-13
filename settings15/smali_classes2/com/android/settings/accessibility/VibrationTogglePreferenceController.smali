.class public abstract Lcom/android/settings/accessibility/VibrationTogglePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field protected final mPreferenceConfig:Lcom/android/settings/accessibility/VibrationPreferenceConfig;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/VibrationPreferenceConfig$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/accessibility/VibrationPreferenceConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/settings/accessibility/VibrationTogglePreferenceController;->mPreferenceConfig:Lcom/android/settings/accessibility/VibrationPreferenceConfig;

    new-instance p1, Lcom/android/settings/accessibility/VibrationPreferenceConfig$SettingObserver;

    invoke-direct {p1, p3}, Lcom/android/settings/accessibility/VibrationPreferenceConfig$SettingObserver;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceConfig;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/VibrationTogglePreferenceController;->mSettingsContentObserver:Lcom/android/settings/accessibility/VibrationPreferenceConfig$SettingObserver;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationTogglePreferenceController;->mSettingsContentObserver:Lcom/android/settings/accessibility/VibrationPreferenceConfig$SettingObserver;

    iput-object p0, v0, Lcom/android/settings/accessibility/VibrationPreferenceConfig$SettingObserver;->mPreferenceController:Lcom/android/settingslib/core/AbstractPreferenceController;

    iput-object p1, v0, Lcom/android/settings/accessibility/VibrationPreferenceConfig$SettingObserver;->mPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/accessibility/VibrationTogglePreferenceController;->mPreferenceConfig:Lcom/android/settings/accessibility/VibrationPreferenceConfig;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->isPreferenceEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const p0, 0x7f1417b1

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationTogglePreferenceController;->mPreferenceConfig:Lcom/android/settings/accessibility/VibrationPreferenceConfig;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->isPreferenceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/accessibility/VibrationTogglePreferenceController;->mPreferenceConfig:Lcom/android/settings/accessibility/VibrationPreferenceConfig;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->readIntensity()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationTogglePreferenceController;->mSettingsContentObserver:Lcom/android/settings/accessibility/VibrationPreferenceConfig$SettingObserver;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/VibrationPreferenceConfig$SettingObserver;->register(Landroid/content/Context;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationTogglePreferenceController;->mSettingsContentObserver:Lcom/android/settings/accessibility/VibrationPreferenceConfig$SettingObserver;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, v0, Lcom/android/settings/accessibility/VibrationPreferenceConfig$SettingObserver;->mRingerModeChangeReceiver:Lcom/android/settings/accessibility/VibrationPreferenceConfig$SettingObserver$1;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationTogglePreferenceController;->mPreferenceConfig:Lcom/android/settings/accessibility/VibrationPreferenceConfig;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->isPreferenceEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationTogglePreferenceController;->mPreferenceConfig:Lcom/android/settings/accessibility/VibrationPreferenceConfig;

    iget v1, v0, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->mDefaultIntensity:I

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationTogglePreferenceController;->mPreferenceConfig:Lcom/android/settings/accessibility/VibrationPreferenceConfig;

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->updateIntensity(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/settings/accessibility/VibrationTogglePreferenceController;->mPreferenceConfig:Lcom/android/settings/accessibility/VibrationPreferenceConfig;

    iget-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->PREVIEW_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    iget-object p0, p0, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->mPreviewVibrationAttributes:Landroid/os/VibrationAttributes;

    invoke-virtual {p1, v1, p0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    :cond_2
    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationTogglePreferenceController;->mPreferenceConfig:Lcom/android/settings/accessibility/VibrationPreferenceConfig;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->isPreferenceEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/accessibility/VibrationTogglePreferenceController;->mPreferenceConfig:Lcom/android/settings/accessibility/VibrationPreferenceConfig;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->isRestrictedByRingerModeSilent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->mRingerModeSilentSummary:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
