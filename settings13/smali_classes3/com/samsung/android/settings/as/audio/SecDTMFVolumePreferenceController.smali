.class public Lcom/samsung/android/settings/as/audio/SecDTMFVolumePreferenceController;
.super Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;
.source "SecDTMFVolumePreferenceController.java"


# static fields
.field private static final KEY_DTMF_VOLUME:Ljava/lang/String; = "waiting_tone_volume"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "waiting_tone_volume"

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAudioStream()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
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

.method protected getNormalIcon()I
    .locals 0

    .line 25
    sget p0, Lcom/android/settings/R$drawable;->tw_ic_audio_call_mtrl:I

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
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

.method public onResume()V
    .locals 2

    .line 30
    invoke-super {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->onResume()V

    .line 31
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecDTMFVolumePreferenceController;->getAudioStream()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AudioHelper;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/audio/SecDTMFVolumePreferenceController;->updatePreferenceIcon(I)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public updatePreferenceIcon(I)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecDTMFVolumePreferenceController;->getNormalIcon()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
