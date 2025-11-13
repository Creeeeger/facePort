.class Lcom/samsung/android/speech/AudioTask;
.super Ljava/lang/Object;
.source "AudioTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final blacklist DEFAULT_BLOCK_SIZE:I = 0x140


# instance fields
.field protected blacklist AUDIO_RECORD_FOR_BARGE_IN:I

.field protected blacklist AUDIO_RECORD_FOR_BARGE_IN_OEM:I

.field protected blacklist AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

.field private blacklist AUDIO_START:I

.field public blacklist BargeinAct:[S

.field private blacklist CMscore:F

.field private final blacklist RECOGNITION_WAIT_TIME:I

.field private blacklist THscore:D

.field private blacklist aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

.field private blacklist acousticModelPathname:Ljava/lang/String;

.field private blacklist acousticModelPathname_sub:Ljava/lang/String;

.field private blacklist block_size:I

.field public blacklist cmResult:[F

.field private blacklist consoleInitReturn:J

.field private blacklist defaultloadNameList:Ljava/lang/String;

.field private blacklist done:Z

.field private blacklist dualThresholdFlag:I

.field private blacklist f:Ljava/io/File;

.field private blacklist handler:Landroid/os/Handler;

.field private blacklist isEnableSamsungOOVResult:Z

.field private blacklist isMakePCM:Z

.field private blacklist isOEMCameraBargeIn:Z

.field private blacklist isOEMResult:Z

.field private blacklist loadNameList:Ljava/lang/String;

.field private blacklist loadPath:Ljava/lang/String;

.field private blacklist mCommandType:I

.field private blacklist mDataOutputStream:Ljava/io/DataOutputStream;

.field private blacklist mEmbeddedEngineLanguage:I

.field private blacklist mLanguage:I

.field private blacklist mStopHandler:Landroid/os/Handler;

.field private blacklist mTAG:Ljava/lang/String;

.field private blacklist m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

.field private blacklist modelPath:Ljava/lang/String;

.field private blacklist numRecogResult:I

.field private blacklist q:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "[S>;"
        }
    .end annotation
.end field

.field private blacklist readNshorts:I

.field public blacklist rec:Landroid/media/AudioRecord;

.field private blacklist recogAfterReadCount:I

.field public blacklist strResult:[Ljava/lang/String;

.field private blacklist totalReadCount:I

.field public blacklist utfResult:[Ljava/lang/String;

.field private blacklist wordListPath:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetm_listener(Lcom/samsung/android/speech/AudioTask;)Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/speech/AudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    return-object p0
.end method

.method constructor blacklist <init>(Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "command"    # I
    .param p4, "language"    # I
    .param p5, "samsungOOVResult"    # Z

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Lcom/samsung/android/speech/AudioTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 29
    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 30
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/speech/AudioTask;->block_size:I

    .line 31
    iput-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    .line 32
    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    .line 34
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/speech/AudioTask;->consoleInitReturn:J

    .line 38
    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v4, v3, v1

    iput-object v3, p0, Lcom/samsung/android/speech/AudioTask;->cmResult:[F

    .line 39
    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    .line 40
    new-array v5, v2, [Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/speech/AudioTask;->utfResult:[Ljava/lang/String;

    .line 41
    new-array v5, v2, [S

    const/4 v6, -0x1

    aput-short v6, v5, v1

    iput-object v5, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    .line 42
    iput v1, p0, Lcom/samsung/android/speech/AudioTask;->numRecogResult:I

    .line 43
    iput v4, p0, Lcom/samsung/android/speech/AudioTask;->CMscore:F

    .line 45
    iput-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isMakePCM:Z

    .line 47
    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    .line 48
    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->loadPath:Ljava/lang/String;

    .line 49
    iput v1, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    .line 50
    invoke-static {v1}, Lcom/samsung/android/speech/Config;->GetSamsungNameList(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/speech/AudioTask;->loadNameList:Ljava/lang/String;

    .line 51
    invoke-static {v1}, Lcom/samsung/android/speech/Config;->GetSamsungNameList(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/speech/AudioTask;->defaultloadNameList:Ljava/lang/String;

    .line 53
    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->mLanguage:I

    .line 54
    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/samsung/android/speech/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "param"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/speech/AudioTask;->modelPath:Ljava/lang/String;

    .line 57
    invoke-static {v2}, Lcom/samsung/android/speech/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/speech/AudioTask;->wordListPath:Ljava/lang/String;

    .line 59
    invoke-static {v3}, Landroid/media/MediaRecorder;->semGetInputSource(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN:I

    .line 60
    const/4 v2, 0x7

    invoke-static {v2}, Landroid/media/MediaRecorder;->semGetInputSource(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_BARGE_IN_OEM:I

    .line 61
    const/16 v2, 0x7cf

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_RECORD_FOR_VOICE_RECOGNITION:I

    .line 63
    iput v1, p0, Lcom/samsung/android/speech/AudioTask;->totalReadCount:I

    .line 64
    iput v1, p0, Lcom/samsung/android/speech/AudioTask;->AUDIO_START:I

    .line 65
    iput v1, p0, Lcom/samsung/android/speech/AudioTask;->recogAfterReadCount:I

    .line 66
    const/16 v2, 0x64

    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->RECOGNITION_WAIT_TIME:I

    .line 68
    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->f:Ljava/io/File;

    .line 69
    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mDataOutputStream:Ljava/io/DataOutputStream;

    .line 71
    const-wide/high16 v2, -0x4008000000000000L    # -1.5

    iput-wide v2, p0, Lcom/samsung/android/speech/AudioTask;->THscore:D

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/samsung/android/speech/Config;->GetOEMAM(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".bin"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/speech/AudioTask;->acousticModelPathname:Ljava/lang/String;

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v3}, Lcom/samsung/android/speech/Config;->GetOEMAM(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/speech/AudioTask;->acousticModelPathname_sub:Ljava/lang/String;

    .line 77
    iput v6, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    .line 78
    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mStopHandler:Landroid/os/Handler;

    .line 80
    iput-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isEnableSamsungOOVResult:Z

    .line 81
    iput-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isOEMCameraBargeIn:Z

    .line 82
    iput-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isOEMResult:Z

    .line 84
    iput v1, p0, Lcom/samsung/android/speech/AudioTask;->dualThresholdFlag:I

    .line 269
    new-instance v0, Lcom/samsung/android/speech/AudioTask$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/speech/AudioTask$1;-><init>(Lcom/samsung/android/speech/AudioTask;)V

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->handler:Landroid/os/Handler;

    .line 88
    return-void
.end method

.method private blacklist SendHandlerMessage([Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # [Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 282
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 283
    .local v1, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "recognition_result"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 287
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/speech/AudioTask;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    goto :goto_0

    .line 288
    :catch_0
    move-exception v2

    .line 289
    .local v2, "e":Ljava/lang/IllegalStateException;
    iget-object v3, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

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

    .line 290
    invoke-virtual {p0}, Lcom/samsung/android/speech/AudioTask;->stop()V

    .line 292
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method

.method private blacklist getMMUIRecognitionResult([SI)I
    .locals 9
    .param p1, "speech"    # [S
    .param p2, "readNshorts"    # I

    .line 160
    const/4 v0, 0x0

    .line 162
    .local v0, "result":I
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {v1, p1}, Lcom/samsung/android/speech/MMUIRecognizer;->RECThread([S)I

    move-result v0

    .line 166
    :cond_0
    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 167
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v2, "readByteBlock return -1 : getMMUIRecognitionResult - Section1"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 p2, -0x1

    .line 170
    return p2

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v1, :cond_2

    .line 174
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string v2, "Barge-in : Too long input so Reset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v1}, Lcom/samsung/android/speech/MMUIRecognizer;->ResetFx()I

    .line 176
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v1}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRReset()I

    .line 180
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v1, :cond_3

    .line 181
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v2, "readByteBlock return -1 : getMMUIRecognitionResult - Section2"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 p2, -0x1

    .line 183
    return p2

    .line 186
    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_e

    .line 187
    iget-object v3, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    if-eqz v3, :cond_e

    .line 188
    if-eqz v1, :cond_4

    .line 189
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v2, "readByteBlock return -1 : getMMUIRecognitionResult - Section3"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 p2, -0x1

    .line 191
    return p2

    .line 194
    :cond_4
    invoke-virtual {v3}, Lcom/samsung/android/speech/MMUIRecognizer;->ResetFx()I

    .line 196
    iget-object v3, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    iget-object v4, p0, Lcom/samsung/android/speech/AudioTask;->cmResult:[F

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    iget-object v8, p0, Lcom/samsung/android/speech/AudioTask;->utfResult:[Ljava/lang/String;

    const-string v6, "/system/voicecommanddata/sasr/input.txt"

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRDoRecognition([F[Ljava/lang/String;Ljava/lang/String;[S[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/speech/AudioTask;->numRecogResult:I

    .line 198
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v4, v1, v3

    const/16 v5, 0x5f

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 200
    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    if-eqz v1, :cond_5

    if-ne v1, v2, :cond_6

    .line 201
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->utfResult:[Ljava/lang/String;

    aget-object v4, v1, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 202
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/speech/AudioTask;->utfResult:[Ljava/lang/String;

    aget-object v4, v4, v3

    aput-object v4, v1, v3

    .line 205
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numResult[0] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->cmResult:[F

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "strResult[0] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BargeinAct[0] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aget-short v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget v1, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aget-short v4, v4, v3

    if-ne v4, v2, :cond_7

    .line 210
    const-wide v1, -0x4003333333333333L    # -1.8

    iput-wide v1, p0, Lcom/samsung/android/speech/AudioTask;->THscore:D

    goto :goto_0

    .line 211
    :cond_7
    const/4 v2, 0x7

    if-ne v1, v2, :cond_8

    .line 212
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    iput-wide v1, p0, Lcom/samsung/android/speech/AudioTask;->THscore:D

    goto :goto_0

    .line 214
    :cond_8
    const-wide/high16 v1, -0x4008000000000000L    # -1.5

    iput-wide v1, p0, Lcom/samsung/android/speech/AudioTask;->THscore:D

    .line 217
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "THscore : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/samsung/android/speech/AudioTask;->THscore:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_9

    .line 220
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v3, "readByteBlock return -1 : getMMUIRecognitionResult - Section4"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 p2, -0x1

    .line 222
    return v2

    .line 225
    :cond_9
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isOEMCameraBargeIn:Z

    const-string v4, "TH-Reject"

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v1, :cond_b

    .line 226
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isOEMResult:Z

    if-eqz v1, :cond_a

    .line 227
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string v2, "isOEMCameraBargeIn is true and isOEMResult is true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EmbeddedEngine Recognizer : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aget-short v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iput-boolean v3, p0, Lcom/samsung/android/speech/AudioTask;->isOEMResult:Z

    .line 230
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set isOEMResult = false. So isOEMResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/speech/AudioTask;->isOEMResult:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 232
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string v5, "isOEMCameraBargeIn is true and keyword is not detected by OEM and keyword or non-keyword is detected by embeddedEngine."

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    aput-object v4, v1, v3

    .line 235
    iget-object v4, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aput-short v2, v4, v3

    .line 236
    invoke-direct {p0, v1}, Lcom/samsung/android/speech/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_1

    .line 240
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->cmResult:[F

    aget v1, v1, v3

    float-to-double v5, v1

    iget-wide v7, p0, Lcom/samsung/android/speech/AudioTask;->THscore:D

    cmpl-double v1, v5, v7

    if-lez v1, :cond_c

    .line 241
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/speech/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    goto :goto_1

    .line 243
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->strResult:[Ljava/lang/String;

    aput-object v4, v1, v3

    .line 244
    iget-object v4, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aput-short v2, v4, v3

    .line 245
    invoke-direct {p0, v1}, Lcom/samsung/android/speech/AudioTask;->SendHandlerMessage([Ljava/lang/String;)V

    .line 249
    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    if-eqz v1, :cond_d

    .line 250
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v2, "readByteBlock return -1 : Section13"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 p2, -0x1

    .line 252
    return p2

    .line 254
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->aMMUIRecognizer:Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v1}, Lcom/samsung/android/speech/MMUIRecognizer;->SASRReset()I

    .line 258
    :cond_e
    return p2
.end method

.method public static blacklist swap(S)S
    .locals 4
    .param p0, "value"    # S

    .line 377
    and-int/lit16 v0, p0, 0xff

    .line 379
    .local v0, "b1":I
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 381
    .local v1, "b2":I
    shl-int/lit8 v2, v0, 0x8

    shl-int/lit8 v3, v1, 0x0

    or-int/2addr v2, v3

    int-to-short v2, v2

    return v2
.end method

.method public static blacklist swap([S)V
    .locals 2
    .param p0, "array"    # [S

    .line 370
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 372
    aget-short v1, p0, v0

    invoke-static {v1}, Lcom/samsung/android/speech/AudioTask;->swap(S)S

    move-result v1

    aput-short v1, p0, v0

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist twoBytesToShort(BB)S
    .locals 2
    .param p0, "b1"    # B
    .param p1, "b2"    # B

    .line 262
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method


# virtual methods
.method protected blacklist getAudioRecord(I)Landroid/media/AudioRecord;
    .locals 12
    .param p1, "source"    # I

    .line 301
    const-string v0, ", also "

    const-string v1, "getAudioRecord for "

    const-string v2, " "

    const/4 v3, 0x0

    .line 302
    .local v3, "retAudioRecord":Landroid/media/AudioRecord;
    iget-object v4, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string v5, "getAudioRecord modified by jy"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v4, 0x0

    const/16 v5, 0x2000

    const/16 v6, 0x3e80

    const/4 v7, 0x2

    const/16 v8, 0x10

    :try_start_0
    new-instance v9, Landroid/media/AudioRecord$Builder;

    invoke-direct {v9}, Landroid/media/AudioRecord$Builder;-><init>()V

    .line 305
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/media/AudioRecord$Builder;->semSetConcurrentCapture(Z)Landroid/media/AudioRecord$Builder;

    move-result-object v9

    new-instance v11, Landroid/media/AudioFormat$Builder;

    invoke-direct {v11}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 307
    invoke-virtual {v11, v8}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v11

    .line 308
    invoke-virtual {v11, v7}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v11

    .line 309
    invoke-virtual {v11, v6}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v11

    .line 310
    invoke-virtual {v11}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v11

    .line 306
    invoke-virtual {v9, v11}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object v9

    .line 311
    invoke-virtual {v9, v5}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object v9

    .line 312
    invoke-virtual {v9}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object v9

    move-object v3, v9

    .line 315
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v9

    if-eq v9, v10, :cond_0

    .line 316
    iget-object v9, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "=false, got !initialized"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 318
    return-object v4

    .line 320
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "got AudioRecord using source="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    nop

    .line 336
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-object v3

    .line 331
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 322
    :catch_0
    move-exception v9

    .line 323
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    iget-object v10, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "=false, IllegalArgumentException"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "got IllegalArgumentException using source="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    if-eqz v3, :cond_1

    .line 328
    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    :cond_1
    return-object v4

    .line 335
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    throw v0
.end method

.method public blacklist getBlockSize()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->block_size:I

    return v0
.end method

.method public blacklist getQueue()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "[S>;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method blacklist init(Ljava/util/concurrent/LinkedBlockingQueue;ILcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V
    .locals 3
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

    .line 92
    .local p1, "q":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<[S>;"
    const-class v0, Lcom/samsung/android/speech/AudioTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    .line 93
    const-string v1, "AudioTask init()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

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

    .line 95
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

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

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    .line 97
    iput-object p1, p0, Lcom/samsung/android/speech/AudioTask;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 98
    iput p2, p0, Lcom/samsung/android/speech/AudioTask;->block_size:I

    .line 99
    iput p5, p0, Lcom/samsung/android/speech/AudioTask;->mCommandType:I

    .line 101
    iput-object p3, p0, Lcom/samsung/android/speech/AudioTask;->m_listener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    .line 102
    iput-object p4, p0, Lcom/samsung/android/speech/AudioTask;->loadPath:Ljava/lang/String;

    .line 103
    iput p6, p0, Lcom/samsung/android/speech/AudioTask;->mLanguage:I

    .line 105
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    const/4 v2, -0x1

    aput-short v2, v1, v0

    .line 107
    return-void
.end method

.method protected blacklist isBargeInFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mFilePath"    # Ljava/lang/String;

    .line 363
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    const/4 v0, 0x1

    return v0

    .line 365
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api run()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "run start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method public blacklist setBlockSize(I)V
    .locals 0
    .param p1, "block_size"    # I

    .line 118
    iput p1, p0, Lcom/samsung/android/speech/AudioTask;->block_size:I

    .line 119
    return-void
.end method

.method public blacklist setEmbeddedEngineLanguage()V
    .locals 3

    .line 341
    iget v0, p0, Lcom/samsung/android/speech/AudioTask;->mLanguage:I

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    .line 343
    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isOEMCameraBargeIn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/speech/AudioTask;->isEnableSamsungOOVResult:Z

    if-eqz v1, :cond_0

    .line 344
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    .line 345
    :cond_0
    const/16 v1, 0xa

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 346
    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    .line 347
    :cond_1
    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 348
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    .line 349
    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 350
    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    .line 351
    :cond_3
    const/16 v1, 0xd

    const/4 v2, 0x2

    if-ne v0, v1, :cond_4

    .line 352
    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    .line 353
    :cond_4
    const/16 v1, 0xc

    if-ne v0, v1, :cond_5

    .line 354
    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    goto :goto_0

    .line 355
    :cond_5
    const/16 v1, 0xe

    if-ne v0, v1, :cond_6

    .line 356
    iput v2, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    .line 359
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEmbeddedEngineLanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/speech/AudioTask;->mEmbeddedEngineLanguage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void
.end method

.method public blacklist setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "stopHandler"    # Landroid/os/Handler;

    .line 266
    iput-object p1, p0, Lcom/samsung/android/speech/AudioTask;->mStopHandler:Landroid/os/Handler;

    .line 267
    return-void
.end method

.method public blacklist setSamsungFilePath(II)V
    .locals 2
    .param p1, "language"    # I
    .param p2, "domain"    # I

    .line 295
    invoke-static {p1}, Lcom/samsung/android/speech/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->wordListPath:Ljava/lang/String;

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask;->wordListPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "param"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->modelPath:Ljava/lang/String;

    .line 297
    invoke-static {p2}, Lcom/samsung/android/speech/Config;->GetSamsungNameList(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->loadNameList:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public blacklist stop()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string v1, "AudioTask : stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mStopHandler:Landroid/os/Handler;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/speech/AudioTask;->done:Z

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/AudioTask;->readNshorts:I

    .line 132
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string v1, "AudioTask : stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method public blacklist stopBargeInAudioRecord()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "stopBargeInAudioRecord start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string v1, "Call rec.stop start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string v1, "Call rec.stop end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string v1, "Call rec.release start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string v1, "Call rec.release end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    .line 149
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "rec = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/speech/AudioTask;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "stopBargeInAudioRecord end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method

.method public blacklist stopPhraseSpotter()V
    .locals 0

    .line 111
    return-void
.end method
