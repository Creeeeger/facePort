.class public final Landroid/companion/virtual/audio/AudioInjection;
.super Ljava/lang/Object;
.source "AudioInjection.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AudioInjection"


# instance fields
.field private final blacklist mAudioFormat:Landroid/media/AudioFormat;

.field private blacklist mAudioTrack:Landroid/media/AudioTrack;

.field private blacklist mIsSilent:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mPlayState:I


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioFormat;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mPlayState:I

    iput-object p1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioFormat:Landroid/media/AudioFormat;

    return-void
.end method


# virtual methods
.method blacklist close()V
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getFormat()Landroid/media/AudioFormat;
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public whitelist getPlayState()I
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mPlayState:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist play()V
    .locals 3

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_0
    iput v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mPlayState:I

    iget-object v2, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist setAudioTrack(Landroid/media/AudioTrack;)V
    .locals 4

    const-string v0, "AudioInjection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set AudioTrack with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mPlayState:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioTrack;->play()V

    :cond_0
    iget v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mPlayState:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/media/AudioTrack;->stop()V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "set an uninitialized AudioTrack."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    :cond_3
    iput-object p1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist setSilent(Z)V
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Landroid/companion/virtual/audio/AudioInjection;->mIsSilent:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist stop()V
    .locals 3

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mPlayState:I

    iget-object v2, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist write(Ljava/nio/ByteBuffer;II)I
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mIsSilent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist write(Ljava/nio/ByteBuffer;IIJ)I
    .locals 8

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mIsSilent:Z

    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist write([BII)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/companion/virtual/audio/AudioInjection;->write([BIII)I

    move-result v0

    return v0
.end method

.method public whitelist write([BIII)I
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mIsSilent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/AudioTrack;->write([BIII)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist write([FIII)I
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mIsSilent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/AudioTrack;->write([FIII)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist write([SII)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/companion/virtual/audio/AudioInjection;->write([SIII)I

    move-result v0

    return v0
.end method

.method public whitelist write([SIII)I
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioInjection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mIsSilent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/companion/virtual/audio/AudioInjection;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/AudioTrack;->write([SIII)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
