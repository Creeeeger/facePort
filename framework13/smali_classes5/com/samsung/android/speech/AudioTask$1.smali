.class Lcom/samsung/android/speech/AudioTask$1;
.super Landroid/os/Handler;
.source "AudioTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/speech/AudioTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/speech/AudioTask;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/speech/AudioTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/speech/AudioTask;

    .line 269
    iput-object p1, p0, Lcom/samsung/android/speech/AudioTask$1;->this$0:Lcom/samsung/android/speech/AudioTask;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 271
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "recognition_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "result":[Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask$1;->this$0:Lcom/samsung/android/speech/AudioTask;

    invoke-static {v1}, Lcom/samsung/android/speech/AudioTask;->-$$Nest$fgetm_listener(Lcom/samsung/android/speech/AudioTask;)Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/samsung/android/speech/AudioTask$1;->this$0:Lcom/samsung/android/speech/AudioTask;

    invoke-static {v1}, Lcom/samsung/android/speech/AudioTask;->-$$Nest$fgetm_listener(Lcom/samsung/android/speech/AudioTask;)Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/speech/SemSpeechRecognizer$ResultListener;->onResults([Ljava/lang/String;)V

    .line 275
    :cond_0
    return-void
.end method
