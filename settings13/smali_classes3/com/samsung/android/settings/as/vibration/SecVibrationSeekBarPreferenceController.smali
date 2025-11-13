.class public abstract Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;
.super Lcom/android/settings/core/SliderPreferenceController;
.source "SecVibrationSeekBarPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final MAX_VIBRATION_INTENSITY_DC_HAPTIC:I = 0x3

.field protected static final MAX_VIBRATION_INTENSITY_DEFAULT:I = 0x5

.field protected static final MAX_VIBRATION_INTENSITY_FORCE_TOUCH:I = 0x4


# instance fields
.field private mPrefObserver:Landroid/database/ContentObserver;

.field protected mPreference:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 8

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    .line 52
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->getTitle()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v4, p1

    .line 57
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->getSystemDBName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->getMaxVibrationIntensity()I

    move-result v2

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->getSALogID()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->getRingtone()Landroid/media/Ringtone;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->getStream()I

    move-result v7

    .line 58
    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->setStream(Ljava/lang/String;IILjava/lang/String;Landroid/media/Ringtone;Landroid/os/VibrationAttributes;I)V

    .line 61
    new-instance p1, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController$1;-><init>(Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->mPrefObserver:Landroid/database/ContentObserver;

    :cond_1
    return-void
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMax()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Landroidx/preference/SeekBarPreference;->getMax()I

    move-result p0

    return p0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->getMaxVibrationIntensity()I

    move-result p0

    return p0
.end method

.method protected getMaxVibrationIntensity()I
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/VibUtils;->isSupportDcHaptic(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0
.end method

.method public getMin()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract getRingtone()Landroid/media/Ringtone;
.end method

.method protected abstract getSALogID()I
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public getSliderPosition()I
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Landroidx/preference/SeekBarPreference;->getValue()I

    move-result p0

    return p0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->getSystemDBName()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->getMaxVibrationIntensity()I

    move-result p0

    .line 96
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getStream()I
.end method

.method protected abstract getSystemDBName()Ljava/lang/String;
.end method

.method protected abstract getTitle()I
.end method

.method protected abstract getVibrationAttributes()Landroid/os/VibrationAttributes;
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->mPrefObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->mPrefObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->mPrefObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->getSystemDBName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->mPrefObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x2

    .line 75
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setSliderPosition(I)Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Landroidx/preference/SeekBarPreference;->setValue(I)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->getSystemDBName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public abstract updatePreferenceIcon(I)V
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 41
    instance-of p0, p1, Lcom/android/settingslib/RestrictedPreference;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
