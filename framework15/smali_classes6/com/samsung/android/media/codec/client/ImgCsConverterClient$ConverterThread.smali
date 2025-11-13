.class Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;
.super Ljava/lang/Thread;
.source "ImgCsConverterClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/codec/client/ImgCsConverterClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConverterThread"
.end annotation


# static fields
.field private static final blacklist THREAD_PREFIX:Ljava/lang/String; = "converter"


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/media/codec/client/ImgCsConverterClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "converter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 7

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is running"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemVideoTranscodingService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mIsRunning:Z

    iget-object v2, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v2, v2, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    invoke-virtual {v2}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onStarted()V

    iget-object v2, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v2, v2, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mArgs:Ljava/util/Map;

    const-string v3, "input-path"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v3, v3, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mArgs:Ljava/util/Map;

    const-string v4, "output-path"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/media/codec/ImgCsConverter;->convertToSRGB(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v5, v5, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onProgressChanged(I)V

    iget-object v5, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v5, v5, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    invoke-virtual {v5}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onCompleted()V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v5, v5, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    invoke-virtual {v5}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onError()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iput-boolean v0, v1, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mIsRunning:Z

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mTranscodingService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    iget-object v1, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v1, v1, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mID:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->stopTask(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v4, v4, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") has been terminated unexpectedly"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-boolean v3, v3, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mIgnoreError:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client has stopped "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v4, v4, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Ignore this error."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v1, v1, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mProgressCallback:Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    invoke-virtual {v1}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;->onError()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iput-boolean v0, v1, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mIsRunning:Z

    :try_start_5
    iget-object v0, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mTranscodingService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    iget-object v1, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v1, v1, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mID:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->stopTask(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    iget-object v2, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iput-boolean v0, v2, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mIsRunning:Z

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v0, v0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mTranscodingService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    iget-object v2, p0, Lcom/samsung/android/media/codec/client/ImgCsConverterClient$ConverterThread;->this$0:Lcom/samsung/android/media/codec/client/ImgCsConverterClient;

    iget-object v2, v2, Lcom/samsung/android/media/codec/client/ImgCsConverterClient;->mID:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->stopTask(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_5
    throw v1
.end method
