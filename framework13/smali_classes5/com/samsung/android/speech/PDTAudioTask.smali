.class Lcom/samsung/android/speech/PDTAudioTask;
.super Lcom/samsung/android/speech/AudioTask;
.source "PDTAudioTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final blacklist DEFAULT_BLOCK_SIZE:I = 0x140


# instance fields
.field private blacklist AUDIO_START:I

.field public blacklist CMscore:F

.field private final blacklist RECOGNITION_WAIT_TIME:I

.field private blacklist TAG:Ljava/lang/String;

.field public blacklist THscore:D

.field private blacklist aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

.field private blacklist acousticModelPathname:Ljava/lang/String;

.field public blacklist block_size:I

.field public blacklist buf:[B

.field public blacklist consoleInitReturn:J

.field private blacklist done:Z

.field private blacklist dualThresholdFlag:I

.field public blacklist f:Ljava/io/File;

.field private blacklist handler:Landroid/os/Handler;

.field public blacklist isCameraBargeIn:Z

.field public blacklist isCancelBargeIn:Z

.field private blacklist isMakePCM:Z

.field public blacklist isPDTBargeInEnable:Z

.field public blacklist isSensoryResult:Z

.field public blacklist loadPath:Ljava/lang/String;

.field public blacklist mCommandType:I

.field public blacklist mDataOutputStream:Ljava/io/DataOutputStream;

.field public blacklist mLanguage:I

.field public blacklist mStopHandler:Landroid/os/Handler;

.field private blacklist m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

.field public blacklist numRecogResult:I

.field public blacklist q:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "[S>;"
        }
    .end annotation
.end field

.field private blacklist readNshorts:I

.field private blacklist recogAfterReadCount:I

.field public blacklist speech:[S

.field private blacklist totalReadCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetm_listener(Lcom/samsung/android/speech/PDTAudioTask;)Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/speech/PDTAudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    return-object p0
.end method

.method constructor blacklist <init>(Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V
    .locals 9
    .param p1, "listener"    # Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "command"    # I
    .param p4, "language"    # I
    .param p5, "samsungOOVResult"    # Z

    .line 73
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/speech/AudioTask;-><init>(Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V

    .line 23
    const-class v0, Lcom/samsung/android/speech/PDTAudioTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 27
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->block_size:I

    .line 28
    iput-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    .line 29
    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

    .line 31
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->consoleInitReturn:J

    .line 33
    iput v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->numRecogResult:I

    .line 34
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->CMscore:F

    .line 36
    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->speech:[S

    .line 41
    iput-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->isMakePCM:Z

    .line 43
    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    .line 44
    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->loadPath:Ljava/lang/String;

    .line 45
    iput v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->mCommandType:I

    .line 47
    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->mLanguage:I

    .line 49
    iput v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->totalReadCount:I

    .line 50
    iput v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->AUDIO_START:I

    .line 51
    iput v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->recogAfterReadCount:I

    .line 52
    const/16 v2, 0x32

    iput v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->RECOGNITION_WAIT_TIME:I

    .line 54
    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->f:Ljava/io/File;

    .line 55
    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;

    .line 57
    const-wide/high16 v2, -0x4008000000000000L    # -1.5

    iput-wide v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->THscore:D

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/samsung/android/speech/Config;->GetPDTAM(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->acousticModelPathname:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    .line 62
    iput-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->isCameraBargeIn:Z

    .line 63
    iput-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->isCancelBargeIn:Z

    .line 65
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    .line 66
    iput-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->isSensoryResult:Z

    .line 68
    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->mStopHandler:Landroid/os/Handler;

    .line 70
    iput v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->dualThresholdFlag:I

    .line 348
    new-instance v0, Lcom/samsung/android/speech/PDTAudioTask$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/speech/PDTAudioTask$1;-><init>(Lcom/samsung/android/speech/PDTAudioTask;)V

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->handler:Landroid/os/Handler;

    .line 74
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/16 v3, 0x140

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/speech/PDTAudioTask;->init(Ljava/util/concurrent/LinkedBlockingQueue;ILcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V

    .line 75
    return-void
.end method

.method private blacklist SendHandlerMessage([Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # [Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 361
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 362
    .local v1, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "recognition_result"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 366
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    goto :goto_0

    .line 367
    :catch_0
    move-exception v2

    .line 368
    .local v2, "e":Ljava/lang/IllegalStateException;
    iget-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalStateException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {p0}, Lcom/samsung/android/speech/PDTAudioTask;->stop()V

    .line 371
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method

.method private blacklist getPDTBargeInAct(ILjava/lang/String;)I
    .locals 3
    .param p1, "domain"    # I
    .param p2, "result"    # Ljava/lang/String;

    .line 400
    const/4 v0, 0x2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_8

    .line 415
    :pswitch_0
    const-string v2, "Smile"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    return v1

    .line 417
    :cond_0
    const-string v1, "Cheese"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    return v0

    .line 419
    :cond_1
    const-string v0, "Capture"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 420
    const/4 v0, 0x3

    return v0

    .line 421
    :cond_2
    const-string v0, "Shoot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 422
    const/4 v0, 0x4

    return v0

    .line 423
    :cond_3
    const-string v0, "Record Video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "Record_Video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "RecordVideo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_7

    .line 425
    :cond_4
    const-string v0, "auto settings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "auto_settings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "autosettings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_6

    .line 427
    :cond_5
    const-string v0, "beauty face"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "beauty_face"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "beautyface"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_5

    .line 429
    :cond_6
    const-string/jumbo v0, "timer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 430
    const/16 v0, 0x8

    return v0

    .line 431
    :cond_7
    const-string/jumbo v0, "zoom in"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "zoom_in"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "zoomin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_4

    .line 433
    :cond_8
    const-string/jumbo v0, "zoom out"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string/jumbo v0, "zoom_out"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string/jumbo v0, "zoomout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    .line 435
    :cond_9
    const-string v0, "flash on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "flash_on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "flashon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    .line 437
    :cond_a
    const-string v0, "flash off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "flash_off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "flashoff"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1

    .line 439
    :cond_b
    const-string/jumbo v0, "upload pics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "upload_pics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "uploadpics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_0

    .line 441
    :cond_c
    const-string v0, "gallery"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 442
    const/16 v0, 0xe

    return v0

    .line 440
    :cond_d
    :goto_0
    const/16 v0, 0xd

    return v0

    .line 438
    :cond_e
    :goto_1
    const/16 v0, 0xc

    return v0

    .line 436
    :cond_f
    :goto_2
    const/16 v0, 0xb

    return v0

    .line 434
    :cond_10
    :goto_3
    const/16 v0, 0xa

    return v0

    .line 432
    :cond_11
    :goto_4
    const/16 v0, 0x9

    return v0

    .line 428
    :cond_12
    :goto_5
    const/4 v0, 0x7

    return v0

    .line 426
    :cond_13
    :goto_6
    const/4 v0, 0x6

    return v0

    .line 424
    :cond_14
    :goto_7
    const/4 v0, 0x5

    return v0

    .line 404
    :pswitch_1
    const-string v2, "Answer"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 405
    return v1

    .line 406
    :cond_15
    const-string v1, "Reject"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 407
    return v0

    .line 452
    :cond_16
    :goto_8
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getPDTRecognitionResult(J[S)Z
    .locals 12
    .param p1, "consoleInitReturn"    # J
    .param p3, "speech"    # [S

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "consoleResult":Ljava/lang/String;
    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 323
    .local v1, "ResultValue":[F
    const/high16 v11, -0x40800000    # -1.0f

    .line 324
    .local v11, "CMscore":F
    iget-object v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

    const-wide/16 v6, 0x140

    const-wide/16 v8, 0x3e80

    move-wide v3, p1

    move-object v5, p3

    move-object v10, v1

    invoke-virtual/range {v2 .. v10}, Lcom/samsung/voicebargein/BargeInEngine;->phrasespotPipe(J[SJJ[F)Ljava/lang/String;

    move-result-object v0

    .line 326
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 327
    iget-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->BargeinAct:[S

    iget v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->mCommandType:I

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/speech/PDTAudioTask;->getPDTBargeInAct(ILjava/lang/String;)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v3, v2

    .line 328
    iget-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->strResult:[Ljava/lang/String;

    aput-object v0, v3, v2

    .line 329
    aget v11, v1, v2

    .line 331
    iget-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "consoleResult : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "strResult[0] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/speech/PDTAudioTask;->strResult:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BargeinAct[0] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/speech/PDTAudioTask;->BargeinAct:[S

    aget-short v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMscore : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-boolean v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->isCameraBargeIn:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 337
    iget-object v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->strResult:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/speech/PDTAudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    .line 338
    return v4

    .line 339
    :cond_0
    iget v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->recogAfterReadCount:I

    if-nez v3, :cond_1

    .line 340
    iput v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->recogAfterReadCount:I

    .line 341
    iget-object v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->strResult:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/speech/PDTAudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    .line 342
    return v4

    .line 345
    :cond_1
    return v2
.end method

.method private blacklist setPDTFilePath(II)V
    .locals 4
    .param p1, "language"    # I
    .param p2, "domain"    # I

    .line 374
    invoke-static {p1, p2}, Lcom/samsung/android/speech/Config;->GetPDTAM(II)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "PDTModelPath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    const-string v1, "/system/lib/libVoiceCommandEngine.so"

    invoke-virtual {p0, v1}, Lcom/samsung/android/speech/PDTAudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v1, "/system/lib64/libVoiceCommandEngine.so"

    invoke-virtual {p0, v1}, Lcom/samsung/android/speech/PDTAudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/speech/PDTAudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    iput-boolean v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    .line 381
    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->acousticModelPathname:Ljava/lang/String;

    .line 385
    :cond_1
    iget v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->mCommandType:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_2

    .line 386
    iput-boolean v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->isCameraBargeIn:Z

    .line 388
    iget-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    if-eqz v1, :cond_3

    .line 389
    iput-boolean v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    goto :goto_0

    .line 390
    :cond_2
    const/16 v3, 0x9

    if-ne v1, v3, :cond_3

    .line 391
    iput-boolean v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->isCancelBargeIn:Z

    .line 393
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method blacklist init(Ljava/util/concurrent/LinkedBlockingQueue;ILcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V
    .locals 5
    .param p2, "block_size"    # I
    .param p3, "listener"    # Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "command"    # I
    .param p6, "Language"    # I
    .param p7, "samsungOOVResult"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "[S>;I",
            "Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;",
            "Ljava/lang/String;",
            "IIZ)V"
        }
    .end annotation

    .line 80
    .local p1, "q":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<[S>;"
    const-class v0, Lcom/samsung/android/speech/PDTAudioTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    .line 81
    const-string v1, "PDTAudioTask init()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "command : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Language : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    .line 86
    iput-object p1, p0, Lcom/samsung/android/speech/PDTAudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 87
    iput p2, p0, Lcom/samsung/android/speech/PDTAudioTask;->block_size:I

    .line 88
    iput p5, p0, Lcom/samsung/android/speech/PDTAudioTask;->mCommandType:I

    .line 89
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    .line 91
    iput-object p3, p0, Lcom/samsung/android/speech/PDTAudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    .line 92
    iput-object p4, p0, Lcom/samsung/android/speech/PDTAudioTask;->loadPath:Ljava/lang/String;

    .line 93
    iput p6, p0, Lcom/samsung/android/speech/PDTAudioTask;->mLanguage:I

    .line 95
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->BargeinAct:[S

    const/4 v2, -0x1

    aput-short v2, v1, v0

    .line 97
    const/4 v1, 0x7

    if-ne p5, v1, :cond_0

    if-nez p6, :cond_0

    .line 99
    iput v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->dualThresholdFlag:I

    .line 102
    :cond_0
    invoke-direct {p0, p6, p5}, Lcom/samsung/android/speech/PDTAudioTask;->setPDTFilePath(II)V

    .line 104
    const/16 v1, 0x140

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->speech:[S

    .line 106
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPDTBargeInEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iput v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->totalReadCount:I

    .line 109
    iput v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->recogAfterReadCount:I

    .line 111
    iget-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->isMakePCM:Z

    if-eqz v1, :cond_1

    .line 112
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/Documents/"

    const-string/jumbo v3, "testPCM.pcm"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->f:Ljava/io/File;

    .line 115
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->f:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 122
    .end local v1    # "e1":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->isCameraBargeIn:Z

    const-string v2, "new AudioRecord : "

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->isCancelBargeIn:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 128
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    if-eqz v0, :cond_4

    .line 129
    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->AUDIO_START:I

    .line 130
    iget v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->AUDIO_RECORD_FOR_BARGE_IN_OEM:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/speech/PDTAudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    .line 131
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_4

    .line 132
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->AUDIO_RECORD_FOR_BARGE_IN_OEM:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 123
    :cond_3
    :goto_1
    iput v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->AUDIO_START:I

    .line 124
    iget v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/speech/PDTAudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    .line 125
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_4

    .line 126
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    if-nez v0, :cond_5

    .line 137
    iget v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/speech/PDTAudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    .line 138
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    if-eqz v0, :cond_7

    .line 142
    invoke-static {}, Lcom/samsung/voicebargein/BargeInEngineWrapper;->getInstance()Lcom/samsung/voicebargein/BargeInEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

    .line 144
    if-eqz v0, :cond_6

    .line 145
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->acousticModelPathname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/voicebargein/BargeInEngine;->phrasespotInit(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->consoleInitReturn:J

    goto :goto_3

    .line 147
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "BargeInEngineWrapper.getInstance() is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_7
    :goto_3
    return-void
.end method

.method public blacklist isPDTBargeinEnabled()Z
    .locals 1

    .line 396
    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    return v0
.end method

.method blacklist readShortBlock()I
    .locals 6

    .line 243
    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readByteBlock return -1 : Section1 "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iput v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    .line 246
    return v1

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    iget-object v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->speech:[S

    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    .line 253
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readByteBlock return -1 : Section2 "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iput v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    .line 256
    return v1

    .line 259
    :cond_2
    iget v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    const/16 v2, 0x140

    const-string v3, " language : "

    const-string v4, " command = "

    if-ge v0, v2, :cond_3

    .line 260
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioRecord Read problem : nshorts = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/speech/PDTAudioTask;->mCommandType:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/speech/PDTAudioTask;->mLanguage:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_3
    iget v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->totalReadCount:I

    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_4

    .line 264
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nshorts = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    mul-int/lit8 v5, v5, 0xa

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->mCommandType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->mLanguage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dualThr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->dualThresholdFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_4
    iget v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->totalReadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->totalReadCount:I

    .line 269
    iget v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->recogAfterReadCount:I

    if-eqz v2, :cond_5

    .line 270
    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x32

    iput v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->recogAfterReadCount:I

    .line 273
    :cond_5
    iget-boolean v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    if-eqz v2, :cond_6

    .line 274
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readByteBlock return -1 : Section3 "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iput v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    .line 276
    return v1

    .line 280
    :cond_6
    iget v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    if-lez v3, :cond_c

    .line 282
    if-eqz v2, :cond_7

    .line 283
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readByteBlock return -1 : Section4 "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iput v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    .line 285
    return v1

    .line 288
    :cond_7
    const/4 v3, 0x0

    .line 289
    .local v3, "result":I
    iget-boolean v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    if-eqz v4, :cond_9

    .line 290
    if-eqz v2, :cond_8

    .line 291
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readByteBlock return -1 : Section5 "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iput v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    .line 293
    return v1

    .line 296
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->AUDIO_START:I

    if-le v0, v1, :cond_9

    .line 297
    nop

    .line 299
    iget-wide v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->consoleInitReturn:J

    iget-object v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->speech:[S

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/speech/PDTAudioTask;->getPDTRecognitionResult(J[S)Z

    .line 303
    :cond_9
    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->isMakePCM:Z

    if-eqz v0, :cond_b

    .line 304
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->speech:[S

    invoke-static {v0}, Lcom/samsung/android/speech/AudioTask;->swap([S)V

    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->speech:[S

    array-length v2, v1

    if-ge v0, v2, :cond_a

    .line 307
    iget-object v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;

    aget-short v1, v1, v0

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    .end local v0    # "i":I
    :cond_a
    goto :goto_1

    .line 308
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 313
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "result":I
    :cond_b
    :goto_1
    goto :goto_2

    .line 314
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readNshorts is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " So do nothing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_2
    iget v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    return v0
.end method

.method public whitelist test-api run()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "PDTAudioTask run() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.startRecording start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call startRecording end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    if-nez v0, :cond_3

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/speech/PDTAudioTask;->readShortBlock()I

    .line 202
    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    if-eqz v0, :cond_1

    .line 203
    goto :goto_0

    .line 206
    :cond_1
    iget v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    if-gtz v0, :cond_0

    .line 207
    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Bargein fail to start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "run end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    if-nez v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->mStopHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 218
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 220
    :cond_4
    return-void
.end method

.method public blacklist stop()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "PDTAudioTask : stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->mStopHandler:Landroid/os/Handler;

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    .line 158
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "PDTAudioTask : stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method public blacklist stopBargeInAudioRecord()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopBargeInAudioRecord start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 168
    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->isMakePCM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    .line 170
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 177
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.release start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.release end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    .line 186
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "rec = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopBargeInAudioRecord end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void
.end method

.method public blacklist stopPhraseSpotter()V
    .locals 4

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/speech/PDTAudioTask;->stopBargeInAudioRecord()V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "PDT phrasespotClose start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-wide v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->consoleInitReturn:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/voicebargein/BargeInEngine;->phrasespotClose(J)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "PDT phrasespotClose end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

    .line 237
    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    .line 238
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "aPDTBargeInEngine = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "m_listener = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method
