.class Landroid/speech/tts/TextToSpeechService$SynthThread;
.super Landroid/os/HandlerThread;
.source "TextToSpeechService.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynthThread"
.end annotation


# instance fields
.field private greylist-max-o mFirstIdle:Z

.field final synthetic blacklist this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService;)V
    .locals 1

    .line 444
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthThread;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 445
    const-string p1, "SynthThread"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 442
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/speech/tts/TextToSpeechService$SynthThread;->mFirstIdle:Z

    .line 446
    return-void
.end method

.method private greylist-max-o broadcastTtsQueueProcessingCompleted()V
    .locals 2

    .line 464
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.tts.TTS_QUEUE_PROCESSING_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthThread;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeechService;->sendBroadcast(Landroid/content/Intent;)V

    .line 467
    return-void
.end method


# virtual methods
.method protected whitelist onLooperPrepared()V
    .locals 1

    .line 450
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 451
    return-void
.end method

.method public whitelist queueIdle()Z
    .locals 1

    .line 455
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SynthThread;->mFirstIdle:Z

    if-eqz v0, :cond_0

    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SynthThread;->mFirstIdle:Z

    goto :goto_0

    .line 458
    :cond_0
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthThread;->broadcastTtsQueueProcessingCompleted()V

    .line 460
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
