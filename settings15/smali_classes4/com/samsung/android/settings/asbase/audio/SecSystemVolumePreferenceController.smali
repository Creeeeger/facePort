.class public Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;
.super Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final KEY_SYSTEM_VOLUME:Ljava/lang/String; = "system_volume"

.field private static final UPDATE_RINGER_MODE:I = 0x1


# instance fields
.field mHandler:Landroid/os/Handler;

.field private final mReceiver:Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController$RingReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "system_volume"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController$RingReceiver;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController$RingReceiver;-><init>(Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;)V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;->mReceiver:Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController$RingReceiver;

    new-instance p1, Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController$1;-><init>(Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getAudioStream()I
    .locals 0

    const/4 p0, 0x1

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

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMuteIcon()I
    .locals 0

    const p0, 0x7f080e02

    return p0
.end method

.method public getNormalIcon()I
    .locals 0

    const p0, 0x7f080e01

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "system_volume"

    return-object p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->getStatusText()Ljava/lang/String;

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

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSliceable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "system_volume"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->onPause()V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;->mReceiver:Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController$RingReceiver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController$RingReceiver;->register(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;->mReceiver:Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController$RingReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController$RingReceiver;->register(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;->getAudioStream()I

    move-result v1

    iget-object v0, v0, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;->updatePreferenceIcon(I)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public updatePreferenceIcon(I)V
    .locals 0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;->getNormalIcon()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecSystemVolumePreferenceController;->getMuteIcon()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    :goto_0
    return-void
.end method

.method public useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
