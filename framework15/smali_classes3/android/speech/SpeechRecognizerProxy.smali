.class Landroid/speech/SpeechRecognizerProxy;
.super Landroid/speech/SpeechRecognizer;
.source "SpeechRecognizerProxy.java"


# instance fields
.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private final blacklist mDelegate:Landroid/speech/SpeechRecognizer;


# direct methods
.method constructor blacklist <init>(Landroid/speech/SpeechRecognizer;)V
    .locals 2

    invoke-direct {p0}, Landroid/speech/SpeechRecognizer;-><init>()V

    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mCloseGuard:Landroid/util/CloseGuard;

    iput-object p1, p0, Landroid/speech/SpeechRecognizerProxy;->mDelegate:Landroid/speech/SpeechRecognizer;

    iget-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "SpeechRecognizer#destroy()"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .locals 1

    iget-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mDelegate:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    return-void
.end method

.method public whitelist checkRecognitionSupport(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mDelegate:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/speech/SpeechRecognizer;->checkRecognitionSupport(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/RecognitionSupportCallback;)V

    return-void
.end method

.method public whitelist destroy()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    iget-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mDelegate:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    invoke-virtual {p0}, Landroid/speech/SpeechRecognizerProxy;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public whitelist setRecognitionListener(Landroid/speech/RecognitionListener;)V
    .locals 1

    iget-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mDelegate:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, p1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    return-void
.end method

.method public blacklist setTemporaryOnDeviceRecognizer(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mDelegate:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, p1}, Landroid/speech/SpeechRecognizer;->setTemporaryOnDeviceRecognizer(Landroid/content/ComponentName;)V

    return-void
.end method

.method public whitelist startListening(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mDelegate:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, p1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    return-void
.end method

.method public whitelist stopListening()V
    .locals 1

    iget-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mDelegate:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    return-void
.end method

.method public whitelist triggerModelDownload(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mDelegate:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, p1}, Landroid/speech/SpeechRecognizer;->triggerModelDownload(Landroid/content/Intent;)V

    return-void
.end method

.method public whitelist triggerModelDownload(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V
    .locals 1

    iget-object v0, p0, Landroid/speech/SpeechRecognizerProxy;->mDelegate:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/speech/SpeechRecognizer;->triggerModelDownload(Landroid/content/Intent;Ljava/util/concurrent/Executor;Landroid/speech/ModelDownloadListener;)V

    return-void
.end method
