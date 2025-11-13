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

.field public blacklist mLocale:Ljava/lang/String;

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

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/speech/AudioTask;-><init>(Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V

    const-class v0, Lcom/samsung/android/speech/PDTAudioTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->block_size:I

    iput-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->consoleInitReturn:J

    iput v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->numRecogResult:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->CMscore:F

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->speech:[S

    iput-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->isMakePCM:Z

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->loadPath:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->mCommandType:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->mLanguage:I

    iget v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->mLanguage:I

    invoke-static {v2}, Lcom/samsung/android/speech/Config;->GetLocale(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->mLocale:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->totalReadCount:I

    iput v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->AUDIO_START:I

    iput v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->recogAfterReadCount:I

    const/16 v2, 0x32

    iput v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->RECOGNITION_WAIT_TIME:I

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->f:Ljava/io/File;

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;

    const-wide/high16 v2, -0x4008000000000000L    # -1.5

    iput-wide v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->THscore:D

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

    iput-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    iput-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->isCameraBargeIn:Z

    iput-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->isCancelBargeIn:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    iput-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->isSensoryResult:Z

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->mStopHandler:Landroid/os/Handler;

    iput v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->dualThresholdFlag:I

    new-instance v0, Lcom/samsung/android/speech/PDTAudioTask$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/speech/PDTAudioTask$1;-><init>(Lcom/samsung/android/speech/PDTAudioTask;)V

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->handler:Landroid/os/Handler;

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

    return-void
.end method

.method private blacklist SendHandlerMessage([Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "recognition_result"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

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

    invoke-virtual {p0}, Lcom/samsung/android/speech/PDTAudioTask;->stop()V

    :goto_0
    return-void
.end method

.method private blacklist getPDTBargeInAct(ILjava/lang/String;)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    const-string v2, "Smile"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const-string v1, "Cheese"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const-string v0, "Capture"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const-string v0, "Shoot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    return v0

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

    :cond_6
    const-string v0, "timer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    return v0

    :cond_7
    const-string v0, "zoom in"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "zoom_in"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "zoomin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_4

    :cond_8
    const-string v0, "zoom out"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "zoom_out"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "zoomout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

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

    :cond_b
    const-string v0, "upload pics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "upload_pics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "uploadpics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_0

    :cond_c
    const-string v0, "gallery"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0xe

    return v0

    :cond_d
    :goto_0
    const/16 v0, 0xd

    return v0

    :cond_e
    :goto_1
    const/16 v0, 0xc

    return v0

    :cond_f
    :goto_2
    const/16 v0, 0xb

    return v0

    :cond_10
    :goto_3
    const/16 v0, 0xa

    return v0

    :cond_11
    :goto_4
    const/16 v0, 0x9

    return v0

    :cond_12
    :goto_5
    const/4 v0, 0x7

    return v0

    :cond_13
    :goto_6
    const/4 v0, 0x6

    return v0

    :cond_14
    :goto_7
    const/4 v0, 0x5

    return v0

    :pswitch_1
    const-string v2, "Answer"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    return v1

    :cond_15
    const-string v1, "Reject"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    return v0

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

    const/4 v0, 0x0

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/high16 v11, -0x40800000    # -1.0f

    iget-object v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

    const-wide/16 v6, 0x140

    const-wide/16 v8, 0x3e80

    move-wide v3, p1

    move-object v5, p3

    move-object v10, v1

    invoke-virtual/range {v2 .. v10}, Lcom/samsung/voicebargein/BargeInEngine;->phrasespotPipe(J[SJJ[F)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->BargeinAct:[S

    iget v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->mCommandType:I

    invoke-direct {p0, v4, v0}, Lcom/samsung/android/speech/PDTAudioTask;->getPDTBargeInAct(ILjava/lang/String;)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v3, v2

    iget-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->strResult:[Ljava/lang/String;

    aput-object v0, v3, v2

    aget v11, v1, v2

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

    iget-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strResult[0] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/speech/PDTAudioTask;->strResult:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    iget-boolean v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->isCameraBargeIn:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->strResult:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/speech/PDTAudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    return v4

    :cond_0
    iget v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->recogAfterReadCount:I

    if-nez v3, :cond_1

    iput v4, p0, Lcom/samsung/android/speech/PDTAudioTask;->recogAfterReadCount:I

    iget-object v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->strResult:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/speech/PDTAudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    return v4

    :cond_1
    return v2
.end method

.method private blacklist setPDTFilePath(II)V
    .locals 4

    invoke-static {p1, p2}, Lcom/samsung/android/speech/Config;->GetPDTAM(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/lib/libVoiceCommandEngine.so"

    invoke-virtual {p0, v1}, Lcom/samsung/android/speech/PDTAudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v1, "/system/lib64/libVoiceCommandEngine.so"

    invoke-virtual {p0, v1}, Lcom/samsung/android/speech/PDTAudioTask;->isBargeInFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->acousticModelPathname:Ljava/lang/String;

    :cond_1
    iget v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->mCommandType:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_2

    iput-boolean v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->isCameraBargeIn:Z

    iget-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->mCommandType:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_3

    iput-boolean v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->isCancelBargeIn:Z

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method blacklist init(Ljava/util/concurrent/LinkedBlockingQueue;ILcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V
    .locals 5
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

    const-class v0, Lcom/samsung/android/speech/PDTAudioTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "PDTAudioTask init()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    iput-object p1, p0, Lcom/samsung/android/speech/PDTAudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    iput p2, p0, Lcom/samsung/android/speech/PDTAudioTask;->block_size:I

    iput p5, p0, Lcom/samsung/android/speech/PDTAudioTask;->mCommandType:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    iput-object p3, p0, Lcom/samsung/android/speech/PDTAudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    iput-object p4, p0, Lcom/samsung/android/speech/PDTAudioTask;->loadPath:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/speech/PDTAudioTask;->mLanguage:I

    iget v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->mLanguage:I

    invoke-static {v1}, Lcom/samsung/android/speech/Config;->GetLocale(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->mLocale:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->BargeinAct:[S

    const/4 v2, -0x1

    aput-short v2, v1, v0

    const/4 v1, 0x7

    if-ne p5, v1, :cond_0

    if-nez p6, :cond_0

    iput v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->dualThresholdFlag:I

    :cond_0
    invoke-direct {p0, p6, p5}, Lcom/samsung/android/speech/PDTAudioTask;->setPDTFilePath(II)V

    const/16 v1, 0x140

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->speech:[S

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

    iput v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->totalReadCount:I

    iput v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->recogAfterReadCount:I

    iget-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->isMakePCM:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/Documents/"

    const-string v3, "testPCM.pcm"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->f:Ljava/io/File;

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

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->isCameraBargeIn:Z

    const-string v2, "new AudioRecord : "

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->isCancelBargeIn:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->AUDIO_START:I

    iget v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->AUDIO_RECORD_FOR_BARGE_IN_OEM:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/speech/PDTAudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_4

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

    :cond_3
    :goto_1
    iput v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->AUDIO_START:I

    iget v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/speech/PDTAudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_4

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

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    if-nez v0, :cond_5

    iget v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/speech/PDTAudioTask;->getAudioRecord(I)Landroid/media/AudioRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

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

    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/samsung/voicebargein/BargeInEngineWrapper;->getInstance()Lcom/samsung/voicebargein/BargeInEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->acousticModelPathname:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/voicebargein/BargeInEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->consoleInitReturn:J

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "BargeInEngineWrapper.getInstance() is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    return-void
.end method

.method public blacklist isPDTBargeinEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    return v0
.end method

.method blacklist readShortBlock()I
    .locals 6

    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v2, "readByteBlock return -1 : Section1 "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    iget-object v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->speech:[S

    iget-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->speech:[S

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v2, "readByteBlock return -1 : Section2 "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    return v1

    :cond_2
    iget v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    const/16 v2, 0x140

    const-string v3, " language : "

    const-string v4, " command = "

    if-ge v0, v2, :cond_3

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

    :cond_3
    iget v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->totalReadCount:I

    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_4

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

    :cond_4
    iget v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->totalReadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->totalReadCount:I

    iget v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->recogAfterReadCount:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->recogAfterReadCount:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x32

    iput v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->recogAfterReadCount:I

    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v2, "readByteBlock return -1 : Section3 "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    return v1

    :cond_6
    iget v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    if-lez v0, :cond_c

    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v2, "readByteBlock return -1 : Section4 "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    return v1

    :cond_7
    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->isPDTBargeInEnable:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v3, "readByteBlock return -1 : Section5 "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    return v1

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->totalReadCount:I

    iget v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->AUDIO_START:I

    if-le v1, v2, :cond_9

    nop

    iget-wide v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->consoleInitReturn:J

    iget-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->speech:[S

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/speech/PDTAudioTask;->getPDTRecognitionResult(J[S)Z

    :cond_9
    iget-boolean v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->isMakePCM:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->speech:[S

    invoke-static {v1}, Lcom/samsung/android/speech/AudioTask;->swap([S)V

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->speech:[S

    array-length v2, v2

    if-ge v1, v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/speech/PDTAudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;

    iget-object v3, p0, Lcom/samsung/android/speech/PDTAudioTask;->speech:[S

    aget-short v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_a
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_1
    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readNshorts is "

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

    :goto_2
    iget v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    return v0
.end method

.method public whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "PDTAudioTask run() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.startRecording start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call startRecording end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/speech/PDTAudioTask;->readShortBlock()I

    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Bargein fail to start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "run end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->mStopHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->mStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    return-void
.end method

.method public blacklist stop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "PDTAudioTask : stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->mStopHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->done:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->readNshorts:I

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "PDTAudioTask : stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist stopBargeInAudioRecord()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "stopBargeInAudioRecord start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->isMakePCM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.release start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "Call rec.release end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->rec:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "rec = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "stopBargeInAudioRecord end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist stopPhraseSpotter()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/speech/PDTAudioTask;->stopBargeInAudioRecord()V

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "PDT phrasespotClose start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->consoleInitReturn:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

    iget-wide v1, p0, Lcom/samsung/android/speech/PDTAudioTask;->consoleInitReturn:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/voicebargein/BargeInEngine;->phrasespotClose(J)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "PDT phrasespotClose end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->aPDTBargeInEngine:Lcom/samsung/voicebargein/BargeInEngine;

    iput-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "aPDTBargeInEngine = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/PDTAudioTask;->TAG:Ljava/lang/String;

    const-string v1, "m_listener = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
