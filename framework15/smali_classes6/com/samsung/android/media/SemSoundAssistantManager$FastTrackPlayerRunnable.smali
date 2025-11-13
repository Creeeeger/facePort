.class Lcom/samsung/android/media/SemSoundAssistantManager$FastTrackPlayerRunnable;
.super Ljava/lang/Object;
.source "SemSoundAssistantManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemSoundAssistantManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FastTrackPlayerRunnable"
.end annotation


# instance fields
.field final blacklist mPlayTimeMs:I


# direct methods
.method constructor blacklist <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/16 v0, 0x12c

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    iput v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager$FastTrackPlayerRunnable;->mPlayTimeMs:I

    return-void
.end method

.method private blacklist playDummyAudio()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager$FastTrackPlayerRunnable;->mPlayTimeMs:I

    mul-int/lit16 v0, v0, 0xc0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/media/AudioTrack$Builder;

    invoke-direct {v2}, Landroid/media/AudioTrack$Builder;-><init>()V

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    const-string v5, "FAST_PRE_OPEN"

    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/AudioTrack$Builder;->setPerformanceMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    new-instance v4, Landroid/media/AudioFormat$Builder;

    invoke-direct {v4}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v4

    const v5, 0xbb80

    invoke-virtual {v4, v5}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/media/AudioTrack;->setVolume(F)I

    invoke-virtual {v2, v1, v3, v0, v3}, Landroid/media/AudioTrack;->write([BIII)I

    const/16 v3, 0x64

    iget v4, p0, Lcom/samsung/android/media/SemSoundAssistantManager$FastTrackPlayerRunnable;->mPlayTimeMs:I

    div-int/lit8 v4, v4, 0x64

    :goto_1
    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_1

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V

    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Lcom/samsung/android/media/SemSoundAssistantManager;->-$$Nest$smsleep(J)V

    invoke-virtual {v2}, Landroid/media/AudioTrack;->pause()V

    const-wide/16 v6, 0x9c4

    invoke-static {v6, v7}, Lcom/samsung/android/media/SemSoundAssistantManager;->-$$Nest$smsleep(J)V

    move v4, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager$FastTrackPlayerRunnable;->playDummyAudio()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemSoundAssistant"

    const-string v2, "Track fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->-$$Nest$sfputsIsRunning(Z)V

    return-void
.end method
