.class public Lcom/samsung/android/settings/asbase/audio/SecNotificationVolumePreferenceController;
.super Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final KEY_NOTIFICATION_VOLUME:Ljava/lang/String; = "notification_volume"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "notification_volume"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecNotificationVolumePreferenceController;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecNotificationVolumePreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->shouldShowRingtoneVolume()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

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

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMuteIcon()I
    .locals 0

    const p0, 0x7f080dfc

    return p0
.end method

.method public getNormalIcon()I
    .locals 0

    const p0, 0x7f080dfb

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "notification_volume"

    return-object p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVibrateIcon()I
    .locals 0

    const p0, 0x7f080dfd

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isPublicSlice()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSliceable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecNotificationVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "notification_volume"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->onResume()V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public updatePreferenceIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecNotificationVolumePreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->shouldShowRingtoneVolume()Z

    move-result v0

    if-eqz v0, :cond_2

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecNotificationVolumePreferenceController;->getNormalIcon()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->wasRingerModeVibrate()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecNotificationVolumePreferenceController;->getVibrateIcon()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecNotificationVolumePreferenceController;->getMuteIcon()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    iget-object p1, p1, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->wasRingerModeVibrate()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecNotificationVolumePreferenceController;->getVibrateIcon()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecNotificationVolumePreferenceController;->getMuteIcon()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecNotificationVolumePreferenceController;->getNormalIcon()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    :cond_5
    :goto_0
    return-void
.end method
