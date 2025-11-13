.class public final Landroid/companion/virtual/audio/AudioCapture;
.super Ljava/lang/Object;
.source "AudioCapture.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AudioCapture"


# instance fields
.field private final blacklist mAudioFormat:Landroid/media/AudioFormat;

.field private blacklist mAudioRecord:Landroid/media/AudioRecord;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mRecordingState:I


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioFormat;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mRecordingState:I

    iput-object p1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioFormat:Landroid/media/AudioFormat;

    return-void
.end method


# virtual methods
.method blacklist close()V
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

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

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public whitelist getRecordingState()I
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mRecordingState:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist read(Ljava/nio/ByteBuffer;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/companion/virtual/audio/AudioCapture;->read(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method public whitelist read(Ljava/nio/ByteBuffer;II)I
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1, p1, p2, p3}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;II)I

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

.method public whitelist read([BII)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/companion/virtual/audio/AudioCapture;->read([BIII)I

    move-result v0

    return v0
.end method

.method public whitelist read([BIII)I
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/AudioRecord;->read([BIII)I

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

.method public whitelist read([FIII)I
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/AudioRecord;->read([FIII)I

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

.method public whitelist read([SII)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/companion/virtual/audio/AudioCapture;->read([SIII)I

    move-result v0

    return v0
.end method

.method public whitelist read([SIII)I
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/AudioRecord;->read([SIII)I

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

.method blacklist setAudioRecord(Landroid/media/AudioRecord;)V
    .locals 4

    const-string v0, "AudioCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set AudioRecord with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mRecordingState:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioRecord;->startRecording()V

    :cond_0
    iget v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mRecordingState:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/media/AudioRecord;->stop()V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "set an uninitialized AudioRecord."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    :cond_3
    iput-object p1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist startRecording()V
    .locals 3

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_0
    iput v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mRecordingState:I

    iget-object v2, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

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

.method public whitelist stop()V
    .locals 3

    iget-object v0, p0, Landroid/companion/virtual/audio/AudioCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mRecordingState:I

    iget-object v2, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v1, p0, Landroid/companion/virtual/audio/AudioCapture;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

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
