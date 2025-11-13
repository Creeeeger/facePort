.class public final Lcom/android/settingslib/utils/ThreadUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static volatile sListeningService:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field public static volatile sMainThread:Ljava/lang/Thread;

.field public static volatile sMainThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getBackgroundExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;
    .locals 3

    const-class v0, Lcom/android/settingslib/utils/ThreadUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settingslib/utils/ThreadUtils;->sListeningService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    instance-of v2, v1, Lcom/google/common/util/concurrent/ListeningExecutorService;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/common/util/concurrent/ListeningExecutorService;

    goto :goto_1

    :cond_0
    instance-of v2, v1, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator;

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v2, v1}, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;

    invoke-direct {v2, v1}, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;-><init>(Ljava/util/concurrent/ExecutorService;)V

    goto :goto_0

    :goto_1
    sput-object v1, Lcom/android/settingslib/utils/ThreadUtils;->sListeningService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_2
    :goto_2
    sget-object v1, Lcom/android/settingslib/utils/ThreadUtils;->sListeningService:Lcom/google/common/util/concurrent/ListeningExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_3
    monitor-exit v0

    throw v1
.end method

.method public static isMainThread()Z
    .locals 2

    sget-object v0, Lcom/android/settingslib/utils/ThreadUtils;->sMainThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/utils/ThreadUtils;->sMainThread:Ljava/lang/Thread;

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/utils/ThreadUtils;->sMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getBackgroundExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static postOnMainThread(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lcom/android/settingslib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/settingslib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/android/settingslib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
