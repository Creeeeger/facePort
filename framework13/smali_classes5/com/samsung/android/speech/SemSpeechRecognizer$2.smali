.class Lcom/samsung/android/speech/SemSpeechRecognizer$2;
.super Landroid/os/Handler;
.source "SemSpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/speech/SemSpeechRecognizer;->start(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/speech/SemSpeechRecognizer;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/speech/SemSpeechRecognizer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/speech/SemSpeechRecognizer;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 173
    iput-object p1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer$2;->this$0:Lcom/samsung/android/speech/SemSpeechRecognizer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 175
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "commandType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 176
    .local v0, "result":I
    iget-object v1, p0, Lcom/samsung/android/speech/SemSpeechRecognizer$2;->this$0:Lcom/samsung/android/speech/SemSpeechRecognizer;

    invoke-static {v1}, Lcom/samsung/android/speech/SemSpeechRecognizer;->-$$Nest$fgetmStopHandler(Lcom/samsung/android/speech/SemSpeechRecognizer;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/samsung/android/speech/SemSpeechRecognizer;->-$$Nest$mdelayedStartBargeIn(Lcom/samsung/android/speech/SemSpeechRecognizer;ILandroid/os/Handler;)V

    .line 177
    return-void
.end method
