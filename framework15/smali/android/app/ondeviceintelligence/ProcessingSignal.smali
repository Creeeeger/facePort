.class public final Landroid/app/ondeviceintelligence/ProcessingSignal;
.super Ljava/lang/Object;
.source "ProcessingSignal.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;,
        Landroid/app/ondeviceintelligence/ProcessingSignal$Transport;
    }
.end annotation


# static fields
.field private static final blacklist MAX_QUEUE_SIZE:I = 0xa


# instance fields
.field private final blacklist mActionParamsQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mOnProcessingSignalCallback:Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;

.field private blacklist mRemote:Landroid/app/ondeviceintelligence/IProcessingSignal;


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    return-void
.end method

.method public static blacklist createTransport()Landroid/app/ondeviceintelligence/IProcessingSignal;
    .locals 2

    new-instance v0, Landroid/app/ondeviceintelligence/ProcessingSignal$Transport;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ondeviceintelligence/ProcessingSignal$Transport;-><init>(Landroid/app/ondeviceintelligence/ProcessingSignal$Transport-IA;)V

    return-object v0
.end method

.method public static blacklist fromTransport(Landroid/app/ondeviceintelligence/IProcessingSignal;)Landroid/app/ondeviceintelligence/ProcessingSignal;
    .locals 1

    instance-of v0, p0, Landroid/app/ondeviceintelligence/ProcessingSignal$Transport;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/ondeviceintelligence/ProcessingSignal$Transport;

    iget-object v0, v0, Landroid/app/ondeviceintelligence/ProcessingSignal$Transport;->mProcessingSignal:Landroid/app/ondeviceintelligence/ProcessingSignal;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic blacklist lambda$sendSignal$0(Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;Landroid/os/PersistableBundle;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;->onSignalReceived(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method static synthetic blacklist lambda$setOnProcessingSignalCallback$1(Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;Landroid/os/PersistableBundle;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;->onSignalReceived(Landroid/os/PersistableBundle;)V

    return-void
.end method


# virtual methods
.method public whitelist sendSignal(Landroid/os/PersistableBundle;)V
    .locals 6

    iget-object v0, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v2, 0xa

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mOnProcessingSignalCallback:Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;

    iget-object v2, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mRemote:Landroid/app/ondeviceintelligence/IProcessingSignal;

    if-eqz v1, :cond_0

    :goto_0
    iget-object v3, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    iget-object v4, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Landroid/app/ondeviceintelligence/ProcessingSignal$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1, v3}, Landroid/app/ondeviceintelligence/ProcessingSignal$$ExternalSyntheticLambda1;-><init>(Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;Landroid/os/PersistableBundle;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    :goto_1
    iget-object v3, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    :try_start_1
    iget-object v3, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    invoke-interface {v2, v3}, Landroid/app/ondeviceintelligence/IProcessingSignal;->sendSignal(Landroid/os/PersistableBundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Maximum actions that can be queued are : 10"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist setOnProcessingSignalCallback(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;)V
    .locals 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mOnProcessingSignalCallback:Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;

    if-ne v1, p2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-object p2, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mOnProcessingSignalCallback:Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;

    iput-object p1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz p2, :cond_3

    iget-object v1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    iget-object v2, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/app/ondeviceintelligence/ProcessingSignal$$ExternalSyntheticLambda0;

    invoke-direct {v3, p2, v1}, Landroid/app/ondeviceintelligence/ProcessingSignal$$ExternalSyntheticLambda0;-><init>(Landroid/app/ondeviceintelligence/ProcessingSignal$OnProcessingSignalCallback;Landroid/os/PersistableBundle;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist setRemote(Landroid/app/ondeviceintelligence/IProcessingSignal;)V
    .locals 4

    iget-object v0, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mRemote:Landroid/app/ondeviceintelligence/IProcessingSignal;

    iget-object v1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    iget-object v1, p0, Landroid/app/ondeviceintelligence/ProcessingSignal;->mActionParamsQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    invoke-interface {p1, v1}, Landroid/app/ondeviceintelligence/IProcessingSignal;->sendSignal(Landroid/os/PersistableBundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to send action to remote signal"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
