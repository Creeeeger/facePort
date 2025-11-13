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

.field public blacklist isEnableBargeIn:Z

.field private blacklist isEnableChineseBargeIn:Z

.field private blacklist isEnableExtraRussian:Z

.field private blacklist isEnableExtraSpanish:Z

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

    .line 21
    const-class v0, Lcom/samsung/android/speech/SemSpeechRecognizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    .line 35
    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    .line 45
    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mListener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    .line 46
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    .line 51
    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableBargeIn:Z

    .line 52
    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableChineseBargeIn:Z

    .line 53
    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraSpanish:Z

    .line 54
    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraRussian:Z

    .line 56
    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->samsungOOVResult:Z

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->intBargeInResult:I

    .line 59
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    .line 61
    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    .line 62
    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    .line 64
    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mContext:Landroid/content/Context;

    .line 66
    const-string v1, "/data/data/com.vlingo.midas/files/language.bin"

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->SVOICE_LANGUAGE_FILE:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mContext:Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->init()V

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    .line 35
    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    .line 45
    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mListener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    .line 46
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    .line 51
    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableBargeIn:Z

    .line 52
    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableChineseBargeIn:Z

    .line 53
    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraSpanish:Z

    .line 54
    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraRussian:Z

    .line 56
    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->samsungOOVResult:Z

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->intBargeInResult:I

    .line 59
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    .line 61
    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    .line 62
    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    .line 64
    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mContext:Landroid/content/Context;

    .line 66
    const-string v0, "/data/data/com.vlingo.midas/files/language.bin"

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->SVOICE_LANGUAGE_FILE:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mContext:Landroid/content/Context;

    .line 83
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

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->init()V

    .line 85
    return-void
.end method

.method private blacklist SendHandlerMessage(I)V
    .locals 5
    .param p1, "type"    # I

    .line 137
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 141
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 142
    .local v1, "b":Landroid/os/Bundle;
    const-string v2, "commandType"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 145
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 146
    sget-object v2, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMessageDelayed : 1500"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 149
    :cond_0
    sget-object v2, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMessageDelayed : 700"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x2bc

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 153
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "b":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist delayedStartBargeIn(ILandroid/os/Handler;)V
    .locals 8
    .param p1, "commandType"    # I
    .param p2, "stopHandler"    # Landroid/os/Handler;

    .line 227
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "delayedStartBargeIn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    if-eqz v1, :cond_0

    .line 231
    const-string v1, "BargeIn is running. So Do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    iget-object v0, v0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-short v2, v0, v1

    goto :goto_1

    .line 234
    :cond_0
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isPDTModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    const-string v1, "Load PDTAudioTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v1, Lcom/samsung/android/speech/PDTAudioTask;

    iget-object v3, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mListener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    const-string v4, "/system/voicecommanddata"

    iget v6, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    iget-boolean v7, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->samsungOOVResult:Z

    move-object v2, v1

    move v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/speech/PDTAudioTask;-><init>(Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;Ljava/lang/String;IIZ)V

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    goto :goto_0

    .line 241
    :cond_1
    const-string v1, "Load OEMAudioTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/samsung/android/speech/AudioTask;->rec:Landroid/media/AudioRecord;

    if-eqz v1, :cond_2

    .line 247
    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    invoke-virtual {v1, p2}, Lcom/samsung/android/speech/AudioTask;->setHandler(Landroid/os/Handler;)V

    .line 249
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    .line 250
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 252
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    .line 253
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

    goto :goto_1

    .line 255
    :cond_2
    const-string v1, "fail to running Bargein"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    if-eqz v1, :cond_3

    .line 257
    invoke-virtual {v1}, Lcom/samsung/android/speech/AudioTask;->stop()V

    .line 258
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    if-eqz v1, :cond_4

    .line 259
    const-string/jumbo v1, "why running empty audio_thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    .line 264
    :goto_1
    monitor-exit p0

    .line 265
    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist init()V
    .locals 3

    .line 88
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "make new SemSpeechRecognizer VER 18.11.13"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isUseModel()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableBargeIn:Z

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isChineseMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableChineseBargeIn:Z

    .line 91
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isPDTModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraSpanish:Z

    .line 94
    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraRussian:Z

    goto :goto_0

    .line 98
    :cond_0
    const-string v1, "/system/voicecommanddata/include/bargein_language_extra_es"

    invoke-static {v1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraSpanish:Z

    .line 99
    const-string v1, "/system/voicecommanddata/include/bargein_language_extra_ru"

    invoke-static {v1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraRussian:Z

    .line 101
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->setLanguage()V

    .line 103
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    .line 105
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

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uselanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
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

    .line 108
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

    .line 109
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

    .line 110
    return-void
.end method

.method private static blacklist isBargeInFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mFilePath"    # Ljava/lang/String;

    .line 678
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    const/4 v0, 0x1

    return v0

    .line 680
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist isOEMModel()Z
    .locals 1

    .line 357
    const-string v0, "/system/lib/libOemBargeInEngine.so"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/system/lib64/libOemBargeInEngine.so"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 358
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist isPDTModel()Z
    .locals 1

    .line 350
    const-string v0, "/system/lib/libVoiceCommandEngine.so"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/system/lib64/libVoiceCommandEngine.so"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 351
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist isSamsungModel()Z
    .locals 3

    .line 341
    const-string v0, "/system/lib/libsasr-jni.so"

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 342
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/speech/Config;->GetSamsungModels(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    invoke-static {v1}, Lcom/samsung/android/speech/Config;->GetSamsungModels(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    return v0

    .line 346
    :cond_0
    return v1
.end method

.method private blacklist isUseModel()Z
    .locals 3

    .line 321
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isPDTModel()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 323
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "use libVoiceCommandEngine.so"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return v1

    .line 326
    :cond_0
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isSamsungModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iput-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->samsungOOVResult:Z

    .line 328
    return v1

    .line 329
    :cond_1
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isOEMModel()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 330
    iput-boolean v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->samsungOOVResult:Z

    .line 331
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "Could not find libsasr-jni.so use only libOemBargeInEngine.so"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return v1

    .line 335
    :cond_2
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "Error : Could not find libsasr-jni.so && libOemBargeInEngine.so"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return v2
.end method

.method private blacklist readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;

    .line 573
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 574
    .local v0, "mFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 575
    .local v1, "mFileInputStream":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 577
    .local v2, "data":[B
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 579
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 580
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    move-object v2, v3

    .line 581
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 582
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 584
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 586
    :catch_0
    move-exception v3

    .line 588
    .local v3, "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 590
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 594
    goto :goto_0

    .line 591
    :catch_1
    move-exception v5

    .line 593
    .local v5, "e1":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 596
    .end local v5    # "e1":Ljava/io/IOException;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 598
    return-object v4

    .line 602
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    return-object v4
.end method

.method private blacklist setLanguage()V
    .locals 8

    .line 473
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 477
    .local v0, "currentLocale":Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 479
    const-string v1, "en_US"

    .line 480
    .local v1, "defaultLanguage":Ljava/lang/String;
    const-string v2, "en"

    .line 481
    .local v2, "stringLanguage":Ljava/lang/String;
    const-string v3, "US"

    .local v3, "stringCountry":Ljava/lang/String;
    goto :goto_0

    .line 485
    .end local v1    # "defaultLanguage":Ljava/lang/String;
    .end local v2    # "stringLanguage":Ljava/lang/String;
    .end local v3    # "stringCountry":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 486
    .restart local v1    # "defaultLanguage":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 487
    .restart local v2    # "stringLanguage":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 490
    .restart local v3    # "stringCountry":Ljava/lang/String;
    :goto_0
    sget-object v4, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stringLanguage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stringCountry : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    if-eqz v2, :cond_16

    .line 495
    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 496
    const/4 v4, 0x0

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    .line 497
    :cond_1
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 498
    const-string v4, "GB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 499
    const/16 v4, 0xa

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    .line 501
    :cond_2
    iput v6, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    .line 503
    :cond_3
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableChineseBargeIn:Z

    if-eqz v5, :cond_8

    .line 504
    const-string v4, "CN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 505
    const/4 v4, 0x2

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    .line 506
    :cond_4
    const-string v4, "TW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 507
    const/16 v4, 0xc

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    .line 508
    :cond_5
    const-string v4, "HK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 509
    const/16 v4, 0xd

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    .line 510
    :cond_6
    const-string v4, "SG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 511
    const/16 v4, 0xe

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    .line 513
    :cond_7
    iput v6, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    .line 515
    :cond_8
    const-string v5, "ES"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "es"

    if-eqz v5, :cond_a

    .line 516
    const/4 v5, 0x3

    iput v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    .line 517
    iget-boolean v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraSpanish:Z

    if-nez v5, :cond_9

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 518
    iput v6, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    .line 520
    :cond_9
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

    .line 523
    :cond_a
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 524
    const/16 v4, 0xb

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    .line 525
    :cond_b
    sget-object v5, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 526
    const/4 v4, 0x4

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    .line 527
    :cond_c
    sget-object v5, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 528
    const/4 v4, 0x5

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    .line 529
    :cond_d
    sget-object v5, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 530
    const/4 v4, 0x6

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    .line 531
    :cond_e
    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 532
    const/4 v4, 0x7

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    .line 533
    :cond_f
    const-string/jumbo v5, "ru"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v7, 0x8

    if-eqz v5, :cond_10

    .line 534
    iput v7, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto/16 :goto_2

    .line 535
    :cond_10
    const-string/jumbo v5, "pt"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 536
    const-string v4, "BR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 537
    const/16 v4, 0x9

    iput v4, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto :goto_2

    .line 539
    :cond_11
    iput v6, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto :goto_2

    .line 541
    :cond_12
    iget-boolean v5, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableExtraRussian:Z

    if-eqz v5, :cond_15

    .line 542
    const-string v5, "az_AZ"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string v5, "kk_KZ"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string/jumbo v5, "uz_UZ"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 543
    const-string v5, "ky_KZ"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string/jumbo v5, "tg_TJ"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string/jumbo v5, "tk_TM"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 544
    const-string v5, "be_BY"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_1

    .line 548
    :cond_13
    iput v6, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    goto :goto_2

    .line 545
    :cond_14
    :goto_1
    iput v7, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    .line 546
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

    .line 550
    :cond_15
    iput v6, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    .line 553
    :cond_16
    :goto_2
    return-void
.end method

.method private blacklist start(I)V
    .locals 3
    .param p1, "commandType"    # I

    .line 156
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0, p1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    .line 161
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

    .line 163
    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 164
    new-instance v1, Lcom/samsung/android/speech/SemSpeechRecognizer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/speech/SemSpeechRecognizer$1;-><init>(Lcom/samsung/android/speech/SemSpeechRecognizer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    .line 170
    const-string v1, "StopHandler create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 173
    new-instance v1, Lcom/samsung/android/speech/SemSpeechRecognizer$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/speech/SemSpeechRecognizer$2;-><init>(Lcom/samsung/android/speech/SemSpeechRecognizer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    .line 180
    const-string v1, "handler create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->SendHandlerMessage(I)V

    .line 185
    :cond_2
    return-void
.end method


# virtual methods
.method public blacklist getBargeInCmdLanguage()Ljava/lang/String;
    .locals 2

    .line 384
    iget v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    const-string v1, "en-US"

    packed-switch v0, :pswitch_data_0

    .line 414
    return-object v1

    .line 412
    :pswitch_0
    const-string/jumbo v0, "zh-HK"

    return-object v0

    .line 410
    :pswitch_1
    const-string/jumbo v0, "zh-TW"

    return-object v0

    .line 408
    :pswitch_2
    const-string/jumbo v0, "v-es-LA"

    return-object v0

    .line 406
    :pswitch_3
    const-string v0, "en-GB"

    return-object v0

    .line 404
    :pswitch_4
    const-string/jumbo v0, "pt-BR"

    return-object v0

    .line 402
    :pswitch_5
    const-string/jumbo v0, "ru-RU"

    return-object v0

    .line 400
    :pswitch_6
    const-string v0, "ja-JP"

    return-object v0

    .line 398
    :pswitch_7
    const-string v0, "it-IT"

    return-object v0

    .line 396
    :pswitch_8
    const-string v0, "de-DE"

    return-object v0

    .line 394
    :pswitch_9
    const-string v0, "fr-FR"

    return-object v0

    .line 392
    :pswitch_a
    const-string v0, "es-ES"

    return-object v0

    .line 390
    :pswitch_b
    const-string/jumbo v0, "zh-CN"

    return-object v0

    .line 388
    :pswitch_c
    return-object v1

    .line 386
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

    .line 468
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

    .line 469
    iget v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    return v0
.end method

.method public whitelist getCommandStringArray(I)[Ljava/lang/String;
    .locals 1
    .param p1, "CommandType"    # I

    .line 426
    iget v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->getCommandStringArray(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCommandStringArray(II)[Ljava/lang/String;
    .locals 4
    .param p1, "CommandType"    # I
    .param p2, "Language"    # I

    .line 431
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

    .line 433
    const/16 v1, 0xf

    if-lt p2, v1, :cond_0

    .line 434
    const/4 p2, 0x1

    .line 436
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnabled(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 437
    const/4 p2, 0x1

    .line 438
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

    .line 441
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 457
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 454
    :pswitch_1
    sget-object v0, Lcom/samsung/android/speech/CommandLanguage;->CANCEL:[[Ljava/lang/String;

    aget-object v0, v0, p2

    return-object v0

    .line 452
    :pswitch_2
    sget-object v0, Lcom/samsung/android/speech/CommandLanguage;->CAMERA:[[Ljava/lang/String;

    aget-object v0, v0, p2

    return-object v0

    .line 450
    :pswitch_3
    sget-object v0, Lcom/samsung/android/speech/CommandLanguage;->MUSIC:[[Ljava/lang/String;

    aget-object v0, v0, p2

    return-object v0

    .line 448
    :pswitch_4
    sget-object v0, Lcom/samsung/android/speech/CommandLanguage;->ALARM:[[Ljava/lang/String;

    aget-object v0, v0, p2

    return-object v0

    .line 443
    :pswitch_5
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isPDTModel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    sget-object v0, Lcom/samsung/android/speech/CommandLanguage;->CALL_PDT:[[Ljava/lang/String;

    aget-object v0, v0, p2

    return-object v0

    .line 446
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

    .line 563
    monitor-enter p0

    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, v0, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    monitor-exit p0

    return v0

    .line 567
    :cond_0
    iget v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->intBargeInResult:I

    monitor-exit p0

    return v0

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getState()I
    .locals 3

    .line 132
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

    .line 133
    iget v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    return v0
.end method

.method public whitelist isChineseMode()Z
    .locals 2

    .line 370
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isPDTModel()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 372
    return v1

    .line 374
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/samsung/android/speech/Config;->GetSamsungModels(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    return v1

    .line 377
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 1

    .line 612
    iget-boolean v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableBargeIn:Z

    return v0
.end method

.method public whitelist isEnabled(I)Z
    .locals 3
    .param p1, "commandType"    # I

    .line 625
    iget v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    .line 627
    .local v0, "language":I
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnabled(II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 629
    :cond_0
    if-eq v0, v2, :cond_1

    .line 630
    iput v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    .line 631
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnabled(II)Z

    move-result v1

    return v1

    .line 634
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isEnabled(II)Z
    .locals 8
    .param p1, "commandType"    # I
    .param p2, "language"    # I

    .line 639
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isPDTModel()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ".bin"

    const/4 v3, 0x1

    const-string v4, ")"

    const-string v5, ") uselanguage("

    if-eqz v0, :cond_1

    .line 640
    invoke-static {p2, p1}, Lcom/samsung/android/speech/Config;->GetPDTAM(II)Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "PDTModelPath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 644
    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 645
    sget-object v1, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEnabled: PDTBargeIn is available in commandType ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    return v3

    .line 649
    :cond_0
    return v1

    .line 651
    .end local v0    # "PDTModelPath":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isOEMModel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 652
    invoke-static {p2, p1}, Lcom/samsung/android/speech/Config;->GetOEMAM(II)Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, "OEMModelPath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 656
    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 657
    sget-object v1, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEnabled: OEMBargeIn is available in commandType ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    return v3

    .line 662
    .end local v0    # "OEMModelPath":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isSamsungModel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 663
    invoke-static {p2}, Lcom/samsung/android/speech/Config;->GetSamsungModels(I)Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, "samsungModelPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/samsung/android/speech/Config;->GetSamsungPath(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/speech/Config;->GetSamsungNameList(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 666
    .local v2, "samsungNameList":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v2}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isBargeInFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 667
    sget-object v1, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isEnabled: SamsungBargeIn is available in commandType ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return v3

    .line 672
    .end local v0    # "samsungModelPath":Ljava/lang/String;
    .end local v2    # "samsungNameList":Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnabled: BargeIn is not available in commandType ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    return v1
.end method

.method public blacklist setContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 124
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setContext"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iput-object p1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mContext:Landroid/content/Context;

    .line 126
    return-void
.end method

.method public whitelist setListener(Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    .line 116
    iput-object p1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mListener:Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    .line 118
    return-void
.end method

.method public whitelist startRecognition(I)V
    .locals 3
    .param p1, "commandType"    # I

    .line 196
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startRecognition"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
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

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->intBargeInResult:I

    .line 200
    invoke-direct {p0}, Lcom/samsung/android/speech/SemSpeechRecognizer;->setLanguage()V

    .line 202
    invoke-direct {p0, p1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->start(I)V

    .line 203
    return-void
.end method

.method public whitelist startRecognition(II)V
    .locals 3
    .param p1, "commandType"    # I
    .param p2, "setLang"    # I

    .line 216
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startRecognition Type2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
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

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLanguage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->intBargeInResult:I

    .line 221
    iput p2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->uselanguage:I

    .line 223
    invoke-direct {p0, p1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->start(I)V

    .line 224
    return-void
.end method

.method public whitelist stopRecognition()V
    .locals 6

    .line 271
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopRecognition"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    monitor-enter p0

    .line 274
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnableBargeIn:Z

    if-eqz v1, :cond_4

    .line 275
    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 277
    iput-object v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->handler:Landroid/os/Handler;

    .line 279
    const-string v1, "handler = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 282
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 283
    iput-object v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mStopHandler:Landroid/os/Handler;

    .line 284
    const-string v1, "Stop Handler = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    if-eqz v1, :cond_3

    .line 287
    iget-object v1, v1, Lcom/samsung/android/speech/AudioTask;->BargeinAct:[S

    aget-short v1, v1, v3

    iput v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->intBargeInResult:I

    .line 289
    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    invoke-virtual {v1}, Lcom/samsung/android/speech/AudioTask;->stop()V

    .line 291
    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 293
    :try_start_1
    const-string/jumbo v1, "wait for audio to stop: begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    const-wide/16 v4, 0x2bc

    invoke-virtual {v0, v4, v5}, Ljava/lang/Thread;->join(J)V

    .line 295
    iget-object v0, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    invoke-virtual {v0}, Lcom/samsung/android/speech/AudioTask;->stopPhraseSpotter()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 298
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :goto_0
    goto :goto_1

    .line 300
    :cond_2
    const-string v1, "audio_thread was not working"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_1
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "wait for audio to stop: end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iput-object v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio:Lcom/samsung/android/speech/AudioTask;

    .line 306
    const-string v1, "audio = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_3
    iput-object v2, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->audio_thread:Ljava/lang/Thread;

    .line 311
    sget-object v0, Lcom/samsung/android/speech/SemSpeechRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "audio_thread = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iput v3, p0, Lcom/samsung/android/speech/SemSpeechRecognizer;->mState:I

    .line 315
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

    .line 317
    :cond_4
    monitor-exit p0

    .line 318
    return-void

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
