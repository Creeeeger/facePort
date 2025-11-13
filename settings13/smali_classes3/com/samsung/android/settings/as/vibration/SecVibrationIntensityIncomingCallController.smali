.class public Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityIncomingCallController;
.super Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;
.source "SecVibrationIntensityIncomingCallController.java"


# static fields
.field private static final RING_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final SEP_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 28
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x6

    .line 29
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setHapticChannelsMuted(Z)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const-string v1, "VIRTUAL_VIB_SOUND"

    .line 31
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityIncomingCallController;->RING_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 34
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    const/16 v2, 0x21

    .line 36
    invoke-virtual {v0, v2}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->semAddTag(Ljava/lang/String;)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityIncomingCallController;->SEP_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/as/utils/VibUtils;->isSupportDcHaptic(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    return v1

    .line 81
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :cond_1
    return v1
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

.method protected getRingtone()Landroid/media/Ringtone;
    .locals 2

    .line 51
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/AudioManager;->hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/media/RingtoneManager;->semGetRingtone(Landroid/content/Context;ILandroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 56
    sget-object v0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityIncomingCallController;->RING_VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->setVolume(F)V

    .line 58
    invoke-virtual {p0, v1}, Landroid/media/Ringtone;->setLooping(Z)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getSALogID()I
    .locals 0

    const/16 p0, 0xfa3

    return p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getStream()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method protected getSystemDBName()Ljava/lang/String;
    .locals 0

    const-string p0, "VIB_RECVCALL_MAGNITUDE"

    return-object p0
.end method

.method public getTitle()I
    .locals 0

    .line 86
    sget p0, Lcom/android/settings/R$string;->sec_vibration_call:I

    return p0
.end method

.method protected getVibrationAttributes()Landroid/os/VibrationAttributes;
    .locals 0

    .line 68
    sget-object p0, Lcom/samsung/android/settings/as/vibration/SecVibrationIntensityIncomingCallController;->SEP_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

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

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public updatePreferenceIcon(I)V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/SecVibrationSeekBarPreference;->updateIconView()V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
