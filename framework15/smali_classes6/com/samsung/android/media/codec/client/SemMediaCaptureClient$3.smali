.class Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$3;
.super Ljava/lang/Object;
.source "SemMediaCaptureClient.java"

# interfaces
.implements Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->transcode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$3;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onError(Lcom/samsung/android/media/mediacapture/SemMediaCapture;II)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$3;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    iget-object v1, v1, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemVideoTranscodingService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$3;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mIsRunning:Z

    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$3;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    invoke-static {v0}, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->-$$Nest$fgetmCapture(Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;)Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->reset()V

    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$3;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    invoke-static {v0}, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->-$$Nest$fgetmCapture(Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;)Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->release()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$3;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFis:Ljava/io/FileInputStream;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$3;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFis:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$3;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    iput-object v3, v0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFis:Ljava/io/FileInputStream;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$3;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFos:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$3;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$3;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    iput-object v3, v0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mFos:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$3;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    iget-boolean v0, v0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mIgnoreError:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client has stopped "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$3;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    iget-object v3, v3, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", Ignore this error."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$3;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    invoke-virtual {v0}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onError()V

    iget-object v0, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$3;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mTranscodingService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    iget-object v1, p0, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient$3;->this$0:Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;

    iget-object v1, v1, Lcom/samsung/android/media/codec/client/SemMediaCaptureClient;->mID:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->stopTask(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return v2
.end method
