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
    .param p1, "longOpen"    # Z

    .line 1336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1337
    if-eqz p1, :cond_0

    const/16 v0, 0x12c

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    iput v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager$FastTrackPlayerRunnable;->mPlayTimeMs:I

    .line 1338
    return-void
.end method

.method private blacklist playDummyAudio()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1351
    iget v0, p0, Lcom/samsung/android/media/SemSoundAssistantManager$FastTrackPlayerRunnable;->mPlayTimeMs:I

    mul-int/lit16 v0, v0, 0xc0

    .line 1352
    .local v0, "bufferSize":I
    new-array v1, v0, [B

    .line 1353
    .local v1, "dummyData":[B
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    .line 1354
    aput-byte v3, v1, v2

    .line 1353
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1357
    .end local v2    # "index":I
    :cond_0
    new-instance v2, Landroid/media/AudioTrack$Builder;

    invoke-direct {v2}, Landroid/media/AudioTrack$Builder;-><init>()V

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v5, 0x4

    .line 1359
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    const/16 v5, 0xd

    .line 1360
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 1361
    const-string v5, "FAST_PRE_OPEN"

    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 1362
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 1358
    invoke-virtual {v2, v4}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    .line 1363
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/AudioTrack$Builder;->setPerformanceMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    new-instance v4, Landroid/media/AudioFormat$Builder;

    invoke-direct {v4}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v5, 0x2

    .line 1365
    invoke-virtual {v4, v5}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v4

    const v5, 0xbb80

    .line 1366
    invoke-virtual {v4, v5}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v4

    const/16 v5, 0xc

    .line 1367
    invoke-virtual {v4, v5}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v4

    .line 1368
    invoke-virtual {v4}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v4

    .line 1364
    invoke-virtual {v2, v4}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    .line 1369
    invoke-virtual {v2, v0}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    .line 1370
    invoke-virtual {v2, v3}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    .line 1371
    invoke-virtual {v2}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v2

    .line 1372
    .local v2, "track":Landroid/media/AudioTrack;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 1373
    invoke-virtual {v2, v1, v3, v0, v3}, Landroid/media/AudioTrack;->write([BIII)I

    .line 1375
    const/16 v3, 0x64

    .line 1376
    .local v3, "oncePlayTime":I
    iget v4, p0, Lcom/samsung/android/media/SemSoundAssistantManager$FastTrackPlayerRunnable;->mPlayTimeMs:I

    div-int/lit8 v4, v4, 0x64

    .line 1377
    .local v4, "count":I
    :goto_1
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "count":I
    .local v5, "count":I
    if-lez v4, :cond_1

    .line 1378
    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V

    .line 1379
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Lcom/samsung/android/media/SemSoundAssistantManager;->-$$Nest$smsleep(J)V

    .line 1380
    invoke-virtual {v2}, Landroid/media/AudioTrack;->pause()V

    .line 1381
    const-wide/16 v6, 0x9c4

    invoke-static {v6, v7}, Lcom/samsung/android/media/SemSoundAssistantManager;->-$$Nest$smsleep(J)V

    move v4, v5

    goto :goto_1

    .line 1383
    :cond_1
    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V

    .line 1384
    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 1385
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 1343
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/media/SemSoundAssistantManager$FastTrackPlayerRunnable;->playDummyAudio()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1346
    goto :goto_0

    .line 1344
    :catch_0
    move-exception v0

    .line 1345
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v1, "SemSoundAssistant"

    const-string v2, "Track fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1347
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->-$$Nest$sfputsIsRunning(Z)V

    .line 1348
    return-void
.end method
