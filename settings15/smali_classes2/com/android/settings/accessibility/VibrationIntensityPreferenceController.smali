.class public abstract Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;
.super Lcom/android/settings/core/SliderPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private final mMaxIntensity:I

.field protected final mPreferenceConfig:Lcom/android/settings/accessibility/VibrationPreferenceConfig;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/VibrationPreferenceConfig$SettingObserver;


# direct methods
.method public static synthetic $r8$lambda$gC0vPMnPFo7h8Uqn9obUHZ5V06U(Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->lambda$displayPreference$0(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/accessibility/VibrationPreferenceConfig;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/accessibility/VibrationPreferenceConfig;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/accessibility/VibrationPreferenceConfig;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mPreferenceConfig:Lcom/android/settings/accessibility/VibrationPreferenceConfig;

    new-instance p1, Lcom/android/settings/accessibility/VibrationPreferenceConfig$SettingObserver;

    invoke-direct {p1, p3}, Lcom/android/settings/accessibility/VibrationPreferenceConfig$SettingObserver;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceConfig;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mSettingsContentObserver:Lcom/android/settings/accessibility/VibrationPreferenceConfig$SettingObserver;

    const/4 p1, 0x3

    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mMaxIntensity:I

    return-void
.end method

.method private calculateVibrationIntensity(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->getMax()I

    move-result v0

    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mPreferenceConfig:Lcom/android/settings/accessibility/VibrationPreferenceConfig;

    iget p0, p0, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->mDefaultIntensity:I

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    return p1
.end method

.method private lambda$displayPreference$0(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mPreferenceConfig:Lcom/android/settings/accessibility/VibrationPreferenceConfig;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->isRestrictedByRingerModeSilent()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->mRingerModeSilentSummary:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SeekBarPreference;

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mSettingsContentObserver:Lcom/android/settings/accessibility/VibrationPreferenceConfig$SettingObserver;

    iput-object p0, v0, Lcom/android/settings/accessibility/VibrationPreferenceConfig$SettingObserver;->mPreferenceController:Lcom/android/settingslib/core/AbstractPreferenceController;

    iput-object p1, v0, Lcom/android/settings/accessibility/VibrationPreferenceConfig$SettingObserver;->mPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mPreferenceConfig:Lcom/android/settings/accessibility/VibrationPreferenceConfig;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->isPreferenceEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    new-instance v0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->getMin()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setMin(I)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->getMax()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/settings/widget/SeekBarPreference;->mContinuousUpdates:Z

    return-void
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->getBackupKeys()Ljava/util/List;

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

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMax()I
    .locals 0

    iget p0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mMaxIntensity:I

    return p0
.end method

.method public getMin()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSliderPosition()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mPreferenceConfig:Lcom/android/settings/accessibility/VibrationPreferenceConfig;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->isPreferenceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->getMin()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mPreferenceConfig:Lcom/android/settings/accessibility/VibrationPreferenceConfig;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->readIntensity()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->getMax()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->getStatusText()Ljava/lang/String;

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

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/SliderPreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mSettingsContentObserver:Lcom/android/settings/accessibility/VibrationPreferenceConfig$SettingObserver;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/VibrationPreferenceConfig$SettingObserver;->register(Landroid/content/Context;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mSettingsContentObserver:Lcom/android/settings/accessibility/VibrationPreferenceConfig$SettingObserver;

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

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setSliderPosition(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mPreferenceConfig:Lcom/android/settings/accessibility/VibrationPreferenceConfig;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->isPreferenceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->calculateVibrationIntensity(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mPreferenceConfig:Lcom/android/settings/accessibility/VibrationPreferenceConfig;

    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->updateIntensity(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mPreferenceConfig:Lcom/android/settings/accessibility/VibrationPreferenceConfig;

    iget-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->PREVIEW_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    iget-object p0, p0, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->mPreviewVibrationAttributes:Landroid/os/VibrationAttributes;

    invoke-virtual {p1, v1, p0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    :cond_1
    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/SliderPreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mPreferenceConfig:Lcom/android/settings/accessibility/VibrationPreferenceConfig;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceConfig;->isPreferenceEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
