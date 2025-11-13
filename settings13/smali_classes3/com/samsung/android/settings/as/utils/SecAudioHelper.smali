.class public Lcom/samsung/android/settings/as/utils/SecAudioHelper;
.super Lcom/android/settings/notification/AudioHelper;
.source "SecAudioHelper.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/notification/AudioHelper;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/settings/as/utils/SecAudioHelper;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/settings/as/utils/SecAudioHelper;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public getEarProtectLevel()I
    .locals 0

    .line 54
    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    mul-int/lit8 p0, p0, 0x64

    add-int/lit8 p0, p0, 0x9

    return p0
.end method

.method public isEarDeviceStatusOn()Z
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/samsung/android/settings/as/utils/SecAudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/as/utils/SecAudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/utils/SecAudioHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 47
    invoke-virtual {v0}, Landroid/media/AudioManager;->semIsFmRadioActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/as/utils/SecAudioHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 48
    invoke-virtual {v0}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/as/utils/SecAudioHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 49
    invoke-virtual {v0}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/as/utils/SecAudioHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 50
    invoke-virtual {p0}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSafeMediaVolumeDeviceOn()Z
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/samsung/android/settings/as/utils/SecAudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result p0

    return p0
.end method
