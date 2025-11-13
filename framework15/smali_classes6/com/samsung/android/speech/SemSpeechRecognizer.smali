.class public Lcom/samsung/android/speech/SemSpeechRecognizer;
.super Ljava/lang/Object;
.source "SemSpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;
    }
.end annotation


# static fields
.field public static final whitelist STATE_READY:I = 0x0

.field public static final whitelist STATE_RUNNING:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist SVOICE_LANGUAGE_FILE:Ljava/lang/String;

.field private blacklist audio:Lcom/samsung/android/speech/AudioTask;

.field private blacklist audio_thread:Ljava/lang/Thread;

.field private blacklist handler:Landroid/os/Handler;

.field private blacklist intBargeInResult:I

.field private blacklist isCallStopRecognition:Z

.field public blacklist isEnableBargeIn:Z

.field private blacklist isEnableChineseBargeIn:Z

.field private blacklist isEnableExtraRussian:Z

.field private blacklist isEnableExtraSpanish:Z

.field private blacklist isStartBargeIn:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mListener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

.field private blacklist mState:I

.field private blacklist mStopHandler:Landroid/os/Handler;

.field private blacklist samsungOOVResult:Z

.field private blacklist uselanguage:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmStopHandler(Lcom/samsung/android/speech/SemSpeechRecognizer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdelayedStartBargeIn(Lcom/samsung/android/speech/SemSpeechRecognizer;ILandroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/speech/SemSpeechRecognizer;->delayedStartBargeIn(ILandroid/os/Handler;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/speech/SemSpeechRecognizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mListener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableBargeIn:Z

    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableChineseBargeIn:Z

    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraSpanish:Z

    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraRussian:Z

    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->samsungOOVResult:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->intBargeInResult:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mContext:Landroid/content/Context;

    const-string v1, "/data/data/com.vlingo.midas/files/language.bin"

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->SVOICE_LANGUAGE_FILE:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->init()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mListener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableBargeIn:Z

    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableChineseBargeIn:Z

    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraSpanish:Z

    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraRussian:Z

    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->samsungOOVResult:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->intBargeInResult:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mContext:Landroid/content/Context;

    const-string v0, "/data/data/com.vlingo.midas/files/language.bin"

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->SVOICE_LANGUAGE_FILE:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BargeInRecognizer get Context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->init()V

    return-void
.end method

.method private blacklist SendHandlerMessage(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "commandType"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    sget-object v2, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "sendMessageDelayed : 1500"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "sendMessageDelayed : 700"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x2bc

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist delayedStartBargeIn(ILandroid/os/Handler;)V
    .locals 10

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "delayedStartBargeIn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isCallStopRecognition:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "Stop load PDTAudioTask after when stopRecognition() call first"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isCallStopRecognition:Z

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "BargeIn is running. So Do nothing"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    iget-object v0, v0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    const/4 v3, -0x1

    aput-short v3, v0, v1

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isPDTModel()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "Load PDTAudioTask"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/speech/PDTAudioTask;

    iget-object v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mListener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    const-string v6, "/system/voicecommanddata"

    iget v8, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    iget-boolean v9, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->samsungOOVResult:Z

    move-object v4, v0

    move v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/speech/PDTAudioTask;-><init>(Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "Load OEMAudioTask"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    iget-object v0, v0, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    invoke-virtual {v0, p2}, Lcom/samsung/android/speech/AudioTask;->setHandler(Landroid/os/Handler;)V

    new-instance v0, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iput v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mState change to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "fail to running Bargein"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    invoke-virtual {v0}, Lcom/samsung/android/speech/AudioTask;->stop()V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "why running empty audio_thread"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isStartBargeIn:Z

    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isCallStopRecognition:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist init()V
    .locals 3

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "make new SemSpeechRecognizer VER 18.11.13"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isUseModel()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableBargeIn:Z

    invoke-virtual {p0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isChineseMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableChineseBargeIn:Z

    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isPDTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraSpanish:Z

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraRussian:Z

    goto :goto_0

    :cond_0
    const-string v0, "/system/voicecommanddata/include/bargein_language_extra_es"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraSpanish:Z

    const-string v0, "/system/voicecommanddata/include/bargein_language_extra_ru"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraRussian:Z

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->setLanguage()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableBargeIn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableBargeIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uselanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableChineseBargeIn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableChineseBargeIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableExtraSpanish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraSpanish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableExtraRussian : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraRussian:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist isBargeInFile(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist isOEMModel()Z
    .locals 1

    const-string v0, "/system/lib/libOemBargeInEngine.so"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/system/lib64/libOemBargeInEngine.so"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist isPDTModel()Z
    .locals 1

    const-string v0, "/system/lib/libVoiceCommandEngine.so"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/system/lib64/libVoiceCommandEngine.so"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist isSamsungModel()Z
    .locals 3

    const-string v0, "/system/lib/libsasr-jni.so"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/speech/Config;->GetSamsungModels(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/samsung/android/speech/Config;->GetSamsungModels(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method private blacklist isUseModel()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isPDTModel()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "use libVoiceCommandEngine.so"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isSamsungModel()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->samsungOOVResult:Z

    return v1

    :cond_1
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isOEMModel()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->samsungOOVResult:Z

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "Could not find libsasr-jni.so use only libOemBargeInEngine.so"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "Error : Could not find libsasr-jni.so && libOemBargeInEngine.so"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private blacklist readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    move-object v2, v3

    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    return-object v4

    :cond_1
    return-object v4
.end method

.method private blacklist setLanguage()V
    .locals 7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "en_US"

    const-string v2, "en"

    const-string v3, "US"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    :goto_0
    sget-object v4, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stringLanguage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stringCountry : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_16

    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    :cond_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    const-string v4, "GB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xa

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    :cond_2
    iput v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    :cond_3
    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableChineseBargeIn:Z

    if-eqz v4, :cond_8

    const-string v4, "CN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x2

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    :cond_4
    const-string v4, "TW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0xc

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    :cond_5
    const-string v4, "HK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0xd

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    :cond_6
    const-string v4, "SG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0xe

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    :cond_7
    iput v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    :cond_8
    const-string v4, "ES"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "es"

    if-eqz v4, :cond_a

    const/4 v4, 0x3

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    iget-boolean v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraSpanish:Z

    if-nez v4, :cond_9

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    iput v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    :cond_9
    sget-object v4, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extra Sapnish is enabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v4, 0xb

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    :cond_b
    sget-object v4, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x4

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    :cond_c
    sget-object v4, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x5

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    :cond_d
    sget-object v4, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x6

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    :cond_e
    sget-object v4, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x7

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    :cond_f
    const-string v4, "ru"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v6, 0x8

    if-eqz v4, :cond_10

    iput v6, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    :cond_10
    const-string v4, "pt"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "BR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/16 v4, 0x9

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto :goto_2

    :cond_11
    iput v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto :goto_2

    :cond_12
    iget-boolean v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraRussian:Z

    if-eqz v4, :cond_15

    const-string v4, "az_AZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "kk_KZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "uz_UZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "ky_KZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "tg_TJ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "tk_TM"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "be_BY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_1

    :cond_13
    iput v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto :goto_2

    :cond_14
    :goto_1
    iput v6, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    sget-object v4, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extra Russian is enabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_15
    iput v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    :cond_16
    :goto_2
    return-void
.end method

.method private blacklist start(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mState change to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/speech/SemSpeechRecognizer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/speech/SemSpeechRecognizer$1;-><init>(Lcom/samsung/android/speech/SemSpeechRecognizer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "StopHandler create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/speech/SemSpeechRecognizer$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/speech/SemSpeechRecognizer$2;-><init>(Lcom/samsung/android/speech/SemSpeechRecognizer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "handler create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isCallStopRecognition:Z

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isStartBargeIn:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->SendHandlerMessage(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public blacklist getBargeInCmdLanguage()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    const-string v1, "en-US"

    packed-switch v0, :pswitch_data_0

    return-object v1

    :pswitch_0
    const-string v0, "zh-HK"

    return-object v0

    :pswitch_1
    const-string v0, "zh-TW"

    return-object v0

    :pswitch_2
    const-string v0, "v-es-LA"

    return-object v0

    :pswitch_3
    const-string v0, "en-GB"

    return-object v0

    :pswitch_4
    const-string v0, "pt-BR"

    return-object v0

    :pswitch_5
    const-string v0, "ru-RU"

    return-object v0

    :pswitch_6
    const-string v0, "ja-JP"

    return-object v0

    :pswitch_7
    const-string v0, "it-IT"

    return-object v0

    :pswitch_8
    const-string v0, "de-DE"

    return-object v0

    :pswitch_9
    const-string v0, "fr-FR"

    return-object v0

    :pswitch_a
    const-string v0, "es-ES"

    return-object v0

    :pswitch_b
    const-string v0, "zh-CN"

    return-object v0

    :pswitch_c
    return-object v1

    :pswitch_d
    const-string v0, "ko-KR"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getCommandLanguage()I
    .locals 3

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCommandLanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    return v0
.end method

.method public whitelist getCommandStringArray(I)[Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->getCommandStringArray(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCommandStringArray(II)[Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCommandStringArray : CommandType ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) Language ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf

    if-lt p2, v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnabled(II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p2, 0x1

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCommandStringArray : possible language is ( "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/speech/CommandLanguage;->CANCEL:[[Ljava/lang/String;

    aget-object v0, v0, p2

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/samsung/android/speech/CommandLanguage;->CAMERA:[[Ljava/lang/String;

    aget-object v0, v0, p2

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/samsung/android/speech/CommandLanguage;->MUSIC:[[Ljava/lang/String;

    aget-object v0, v0, p2

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/samsung/android/speech/CommandLanguage;->ALARM:[[Ljava/lang/String;

    aget-object v0, v0, p2

    return-object v0

    :pswitch_5
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isPDTModel()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/speech/CommandLanguage;->CALL_PDT:[[Ljava/lang/String;

    aget-object v0, v0, p2

    return-object v0

    :cond_2
    sget-object v0, Lcom/samsung/android/speech/CommandLanguage;->CALL:[[Ljava/lang/String;

    aget-object v0, v0, p2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist getRecognitionResult()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    iget-object v0, v0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    monitor-exit p0

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->intBargeInResult:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getState()I
    .locals 3

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getState mState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    return v0
.end method

.method public whitelist isChineseMode()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isPDTModel()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/samsung/android/speech/Config;->GetSamsungModels(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableBargeIn:Z

    return v0
.end method

.method public whitelist isEnabled(I)Z
    .locals 3

    iget v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnabled(II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    if-eq v0, v2, :cond_1

    iput v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    iget v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnabled(II)Z

    move-result v1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isEnabled(II)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isPDTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/16 v0, 0xf

    if-ge p2, v0, :cond_0

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnabled: PDTBargeIn is available in commandType ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") uselanguage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setContext(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "setContext"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mContext:Landroid/content/Context;

    return-void
.end method

.method public whitelist setListener(Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mListener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    return-void
.end method

.method public whitelist startRecognition(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "startRecognition"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commandType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->intBargeInResult:I

    invoke-direct {p0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->setLanguage()V

    invoke-direct {p0, p1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->start(I)V

    return-void
.end method

.method public whitelist startRecognition(II)V
    .locals 3

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "startRecognition Type2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commandType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->intBargeInResult:I

    iput p2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    invoke-direct {p0, p1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->start(I)V

    return-void
.end method

.method public whitelist stopRecognition()V
    .locals 5

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "stopRecognition"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isStartBargeIn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isCallStopRecognition:Z

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableBargeIn:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "handler removeCallbacksAndMessages; handler = null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "mStopHandler removeCallbacksAndMessages; Stop Handler = null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    iget-object v0, v0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aget-short v0, v0, v2

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->intBargeInResult:I

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    invoke-virtual {v0}, Lcom/samsung/android/speech/AudioTask;->stop()V

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    :try_start_1
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "wait for audio to stop: begin"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    const-wide/16 v3, 0x2bc

    invoke-virtual {v0, v3, v4}, Ljava/lang/Thread;->join(J)V

    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    invoke-virtual {v0}, Lcom/samsung/android/speech/AudioTask;->stopPhraseSpotter()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    goto :goto_1

    :cond_3
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "audio_thread was not working"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "wait for audio to stop: end"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "audio = null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "audio_thread = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mState change to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
