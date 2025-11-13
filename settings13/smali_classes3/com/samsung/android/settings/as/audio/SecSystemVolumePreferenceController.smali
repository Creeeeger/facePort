.class public Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;
.super Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;
.source "SecSystemVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController$RingReceiver;
    }
.end annotation


# static fields
.field private static final KEY_SYSTEM_VOLUME:Ljava/lang/String; = "system_volume"

.field private static final UPDATE_RINGER_MODE:I = 0x1


# instance fields
.field mHandler:Landroid/os/Handler;

.field private final mReceiver:Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController$RingReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "system_volume"

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    new-instance p1, Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController$RingReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController$RingReceiver;-><init>(Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController$RingReceiver-IA;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;->mReceiver:Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController$RingReceiver;

    .line 25
    new-instance p1, Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController$1;-><init>(Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 17
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

.method protected getMuteIcon()I
    .locals 0

    .line 76
    sget p0, Lcom/android/settings/R$drawable;->tw_ic_audio_system_mute_mtrl:I

    return p0
.end method

.method protected getNormalIcon()I
    .locals 0

    .line 81
    sget p0, Lcom/android/settings/R$drawable;->tw_ic_audio_system_mtrl:I

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "system_volume"

    return-object p0
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

.method public isSliceable()Z
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "system_volume"

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

.method public onPause()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->onPause()V

    .line 71
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;->mReceiver:Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController$RingReceiver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController$RingReceiver;->register(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 48
    invoke-super {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->onResume()V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;->mReceiver:Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController$RingReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController$RingReceiver;->register(Z)V

    .line 50
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;->getAudioStream()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AudioHelper;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;->updatePreferenceIcon(I)V

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

    if-lez p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;->getNormalIcon()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;->getMuteIcon()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    :goto_0
    return-void
.end method

.method public useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
