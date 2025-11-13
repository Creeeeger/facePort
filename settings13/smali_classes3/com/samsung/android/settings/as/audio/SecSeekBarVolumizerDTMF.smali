.class public Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;
.super Ljava/lang/Object;
.source "SecSeekBarVolumizerDTMF.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF$Callback;
    }
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCallback:Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF$Callback;

.field private final mContext:Landroid/content/Context;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mToneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF$Callback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF$Callback;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->mAudioManager:Landroid/media/AudioManager;

    .line 50
    iput-object p2, p0, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->mCallback:Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF$Callback;

    return-void
.end method

.method private stopToneGenerator()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 113
    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->setVolume(F)V

    .line 114
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {p0}, Landroid/media/ToneGenerator;->stopTone()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->mCallback:Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF$Callback;

    if-eqz p3, :cond_1

    .line 75
    invoke-interface {p3, p0}, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF$Callback;->onSampleStarting(Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;)V

    .line 76
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->mCallback:Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF$Callback;

    const/4 p3, 0x1

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF$Callback;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 82
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/widget/SeekBar;->setProgress(IZ)V

    .line 83
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->mCallback:Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF$Callback;

    if-eqz p1, :cond_0

    .line 84
    invoke-interface {p1, p0}, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF$Callback;->onStartTrackingTouch(Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    .line 90
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/widget/SeekBar;->setProgress(IZ)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 95
    :cond_0
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SITUATION_EXTENSION:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 96
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    sub-int/2addr v4, v0

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 98
    iget-object v2, p0, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    iget-object v3, p0, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->mAudioManager:Landroid/media/AudioManager;

    const/16 v4, 0xf

    .line 99
    invoke-virtual {v3, v4, v1}, Landroid/media/AudioManager;->semGetSituationVolume(II)F

    move-result v1

    mul-float/2addr v1, v0

    .line 98
    invoke-virtual {v2, v1}, Landroid/media/ToneGenerator;->setVolume(F)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    const-string v1, "stv_call_waiting"

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->semSetSituationType(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    const-string v1, "volume_waiting_tone"

    .line 102
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v0, 0x16

    const/16 v1, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 106
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->mCallback:Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF$Callback;

    if-eqz p1, :cond_2

    .line 107
    invoke-interface {p1, p0}, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF$Callback;->onStopTrackingTouch(Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;)V

    :cond_2
    return-void
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)V
    .locals 2

    .line 123
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    .line 124
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "volume_waiting_tone"

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 129
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->stopToneGenerator()V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 61
    iput-object v1, p0, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 64
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method
