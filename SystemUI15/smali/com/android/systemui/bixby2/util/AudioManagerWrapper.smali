.class public Lcom/android/systemui/bixby2/util/AudioManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private getDefaultStream(Landroid/content/Context;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->isMediaVolumeOn(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method private isMediaVolumeOn(Landroid/content/Context;)Z
    .locals 0

    new-instance p0, Lcom/android/systemui/bixby2/util/SemSoundAssistantManagerWrapper;

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/util/SemSoundAssistantManagerWrapper;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    return p0
.end method

.method private isMusicActive()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result p0

    return p0
.end method

.method private isStreamValid(I)Z
    .locals 1

    const/4 p0, 0x2

    const/4 v0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public adjustStreamVolume(III)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return-void
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public getAdjustedStreamType(Landroid/content/Context;)I
    .locals 2

    invoke-static {}, Landroid/media/AudioManager;->semGetActiveStreamType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->isStreamValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->getDefaultStream(Landroid/content/Context;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getRingerMode()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p0

    return p0
.end method

.method public getStreamMaxVolume(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method public getStreamMinVolume(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    move-result p0

    return p0
.end method

.method public getStreamVolume(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    return p0
.end method

.method public isAllStreamMute()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->isStreamMute(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCurrentDeviceTypeBluetooth()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result p0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInCall()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getModeInternal()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStreamMute(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->getStreamMinVolume(I)I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setRingerMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    return-void
.end method

.method public setStreamVolume(III)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public shouldShowRingtoneVolume()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->shouldShowRingtoneVolume()Z

    move-result p0

    return p0
.end method
