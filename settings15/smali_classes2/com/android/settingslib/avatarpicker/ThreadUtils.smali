.class public abstract Lcom/android/settingslib/avatarpicker/ThreadUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static volatile sListeningService:Lcom/google/common/util/concurrent/ListeningExecutorService;


# direct methods
.method public static declared-synchronized getBackgroundExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;
    .locals 2

    const-class v0, Lcom/android/settingslib/avatarpicker/ThreadUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settingslib/avatarpicker/ThreadUtils;->sListeningService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/util/concurrent/MoreExecutors;->listeningDecorator(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v1

    sput-object v1, Lcom/android/settingslib/avatarpicker/ThreadUtils;->sListeningService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/settingslib/avatarpicker/ThreadUtils;->sListeningService:Lcom/google/common/util/concurrent/ListeningExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method
