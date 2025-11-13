.class public Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;
.super Lcom/android/settings/core/SliderPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/gestures/PowerMenuSettingsUtils$SettingsStateCallback;
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private mPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

.field private final mSensitivityValues:[I

.field private final mUtils:Lcom/android/settings/gestures/PowerMenuSettingsUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x107011a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;->mSensitivityValues:[I

    new-instance p2, Lcom/android/settings/gestures/PowerMenuSettingsUtils;

    invoke-direct {p2, p1}, Lcom/android/settings/gestures/PowerMenuSettingsUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;->mUtils:Lcom/android/settings/gestures/PowerMenuSettingsUtils;

    return-void
.end method

.method private static closestValueIndex([II)I
    .locals 4

    const v0, 0x7fffffff

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    aget v3, p0, v1

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v0, :cond_0

    move v2, v1

    move v0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private getCurrentSensitivityValue()I
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x10e00d1

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const-string v1, "power_button_long_press_duration_ms"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/LabeledSeekBarPreference;

    iput-object p1, p0, Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;->mPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/widget/SeekBarPreference;->mContinuousUpdates:Z

    const/4 v0, 0x1

    iput v0, p1, Lcom/android/settings/widget/SeekBarPreference;->mHapticFeedbackMode:I

    invoke-virtual {p0}, Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;->getMin()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setMin(I)V

    iget-object p1, p0, Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;->mPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;->getMax()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;->mSensitivityValues:[I

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/gestures/PowerMenuSettingsUtils;->isLongPressPowerSettingAvailable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x3

    return p0
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
    .locals 1

    iget-object p0, p0, Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;->mSensitivityValues:[I

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

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

    iget-object v0, p0, Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;->mSensitivityValues:[I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;->getCurrentSensitivityValue()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;->closestValueIndex([II)I

    move-result p0

    :goto_0
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

.method public onChange(Landroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;->mPreference:Lcom/android/settings/widget/LabeledSeekBarPreference;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;->mUtils:Lcom/android/settings/gestures/PowerMenuSettingsUtils;

    invoke-virtual {v0, p0}, Lcom/android/settings/gestures/PowerMenuSettingsUtils;->registerObserver(Lcom/android/settings/gestures/PowerMenuSettingsUtils$SettingsStateCallback;)V

    return-void
.end method

.method public onStop()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object p0, p0, Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;->mUtils:Lcom/android/settings/gestures/PowerMenuSettingsUtils;

    invoke-virtual {p0}, Lcom/android/settings/gestures/PowerMenuSettingsUtils;->unregisterObserver()V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/SliderPreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setSliderPosition(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;->mSensitivityValues:[I

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;->mSensitivityValues:[I

    aget p0, p0, p1

    const-string p1, "power_button_long_press_duration_ms"

    invoke-static {v0, p1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/SliderPreferenceController;->updateState(Landroidx/preference/Preference;)V

    check-cast p1, Lcom/android/settings/widget/LabeledSeekBarPreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/gestures/PowerMenuSettingsUtils;->isLongPressPowerForAssistantEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/android/settings/gestures/LongPressPowerSensitivityPreferenceController;->getSliderPosition()I

    move-result p0

    invoke-virtual {p1, p0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(IZ)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
