.class Landroid/speech/RecognitionService$2;
.super Ljava/lang/Object;
.source "RecognitionService.java"

# interfaces
.implements Landroid/speech/ModelDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/RecognitionService;->dispatchTriggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mIsTerminated:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field final synthetic blacklist this$0:Landroid/speech/RecognitionService;

.field final synthetic blacklist val$listener:Landroid/speech/IModelDownloadListener;


# direct methods
.method constructor blacklist <init>(Landroid/speech/RecognitionService;Landroid/speech/IModelDownloadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/speech/RecognitionService$2;->this$0:Landroid/speech/RecognitionService;

    iput-object p2, p0, Landroid/speech/RecognitionService$2;->val$listener:Landroid/speech/IModelDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/speech/RecognitionService$2;->mLock:Ljava/lang/Object;

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z

    return-void
.end method


# virtual methods
.method public whitelist onError(I)V
    .locals 3

    iget-object v0, p0, Landroid/speech/RecognitionService$2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/speech/RecognitionService$2;->val$listener:Landroid/speech/IModelDownloadListener;

    invoke-interface {v1, p1}, Landroid/speech/IModelDownloadListener;->onError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist onProgress(I)V
    .locals 3

    iget-object v0, p0, Landroid/speech/RecognitionService$2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/speech/RecognitionService$2;->val$listener:Landroid/speech/IModelDownloadListener;

    invoke-interface {v1, p1}, Landroid/speech/IModelDownloadListener;->onProgress(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist onScheduled()V
    .locals 3

    iget-object v0, p0, Landroid/speech/RecognitionService$2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/speech/RecognitionService$2;->val$listener:Landroid/speech/IModelDownloadListener;

    invoke-interface {v1}, Landroid/speech/IModelDownloadListener;->onScheduled()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist onSuccess()V
    .locals 3

    iget-object v0, p0, Landroid/speech/RecognitionService$2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/speech/RecognitionService$2;->val$listener:Landroid/speech/IModelDownloadListener;

    invoke-interface {v1}, Landroid/speech/IModelDownloadListener;->onSuccess()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
