.class public final Lcom/android/settingslib/avatarpicker/ThreadUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static volatile sListeningService:Lcom/google/common/util/concurrent/ListeningExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getBackgroundExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;
    .locals 3

    const-class v0, Lcom/android/settingslib/avatarpicker/ThreadUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settingslib/avatarpicker/ThreadUtils;->sListeningService:Lcom/google/common/util/concurrent/ListeningExecutorService;

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
    sput-object v1, Lcom/android/settingslib/avatarpicker/ThreadUtils;->sListeningService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_2
    :goto_2
    sget-object v1, Lcom/android/settingslib/avatarpicker/ThreadUtils;->sListeningService:Lcom/google/common/util/concurrent/ListeningExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_3
    monitor-exit v0

    throw v1
.end method
