.class public Lcom/samsung/android/settings/as/audio/SecNotificationVolumePreferenceController;
.super Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;
.source "SecNotificationVolumePreferenceController.java"


# static fields
.field private static final KEY_NOTIFICATION_VOLUME:Ljava/lang/String; = "notification_volume"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "notification_volume"

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "audio"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecNotificationVolumePreferenceController;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 96
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecNotificationVolumePreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->shouldShowRingtoneVolume()Z

    move-result p1

    if-nez p1, :cond_0

    .line 97
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    :cond_0
    return-void
.end method

.method public getAudioStream()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

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

.method public getMuteIcon()I
    .locals 0

    .line 75
    sget p0, Lcom/android/settings/R$drawable;->tw_ic_audio_noti_mute_mtrl:I

    return p0
.end method

.method protected getNormalIcon()I
    .locals 0

    .line 85
    sget p0, Lcom/android/settings/R$drawable;->tw_ic_audio_noti_mtrl:I

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "notification_volume"

    return-object p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getVibrateIcon()I
    .locals 0

    .line 90
    sget p0, Lcom/android/settings/R$drawable;->tw_ic_audio_noti_vibrate_mtrl:I

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

.method public isPublicSlice()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSliceable()Z
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecNotificationVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "notification_volume"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

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
    .locals 0

    .line 103
    invoke-super {p0}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->onResume()V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public updatePreferenceIcon(I)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    if-eqz v0, :cond_5

    .line 109
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecNotificationVolumePreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->shouldShowRingtoneVolume()Z

    move-result v0

    if-eqz v0, :cond_2

    if-lez p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecNotificationVolumePreferenceController;->getNormalIcon()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->wasRingerModeVibrate()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 113
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecNotificationVolumePreferenceController;->getVibrateIcon()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecNotificationVolumePreferenceController;->getMuteIcon()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    goto :goto_0

    .line 119
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    invoke-virtual {p1}, Lcom/android/settings/notification/AudioHelper;->getRingerModeInternal()I

    move-result p1

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    if-eqz v0, :cond_5

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->wasRingerModeVibrate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecNotificationVolumePreferenceController;->getVibrateIcon()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    .line 124
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecNotificationVolumePreferenceController;->getMuteIcon()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    goto :goto_0

    .line 126
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecNotificationVolumePreferenceController;->getNormalIcon()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    :cond_5
    :goto_0
    return-void
.end method
