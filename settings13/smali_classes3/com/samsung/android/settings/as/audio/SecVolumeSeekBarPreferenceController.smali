.class public abstract Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;
.super Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;
.source "SecVolumeSeekBarPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field protected mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

.field protected mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

.field protected mVolumePreferenceCallback:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    new-instance p2, Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/as/utils/SecAudioHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->setAudioHelper(Lcom/samsung/android/settings/as/utils/SecAudioHelper;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    .line 63
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mVolumePreferenceCallback:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->setCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;)V

    .line 64
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->getAudioStream()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->setStream(I)V

    .line 65
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->getMuteIcon()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->setMuteIcon(I)V

    :cond_0
    return-void
.end method

.method public abstract getAudioStream()I
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

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMax()I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/android/settings/widget/SeekBarPreference;->getMax()I

    move-result p0

    return p0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->getAudioStream()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/AudioHelper;->getMaxVolume(I)I

    move-result p0

    return p0
.end method

.method public getMin()I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/android/settings/widget/SeekBarPreference;->getMin()I

    move-result p0

    return p0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->getAudioStream()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/AudioHelper;->getMinVolume(I)I

    move-result p0

    return p0
.end method

.method protected getMuteIcon()I
    .locals 0

    .line 129
    sget p0, Lcom/android/settings/R$drawable;->tw_ic_audio_mute_mtrl:I

    return p0
.end method

.method protected getNormalIcon()I
    .locals 0

    .line 133
    sget p0, Lcom/android/settings/R$drawable;->tw_ic_audio_sound_ringtone:I

    return p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 85
    sget p0, Lcom/android/settings/R$string;->menu_key_sound:I

    return p0
.end method

.method public getSliderPosition()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result p0

    return p0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->getAudioStream()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/AudioHelper;->getStreamVolume(I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getVibrateIcon()I
    .locals 0

    .line 137
    sget p0, Lcom/android/settings/R$drawable;->tw_ic_audio_vibrate_mtrl:I

    return p0
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

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

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
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 78
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    if-eqz p0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->onActivityPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 71
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->onActivityResume()V

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method setAudioHelper(Lcom/samsung/android/settings/as/utils/SecAudioHelper;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    return-void
.end method

.method public setCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mVolumePreferenceCallback:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;

    return-void
.end method

.method public setSliderPosition(I)Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->getAudioStream()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/notification/AudioHelper;->setStreamVolume(II)Z

    move-result p0

    return p0
.end method

.method public abstract updatePreferenceIcon(I)V
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
