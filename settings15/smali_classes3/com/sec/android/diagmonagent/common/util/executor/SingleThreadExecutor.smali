.class public final Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static executorService:Ljava/util/concurrent/ExecutorService;

.field public static singleThreadExecutor:Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;


# direct methods
.method public static execute(Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V
    .locals 2

    sget-object v0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor$2;

    invoke-direct {v1, p0}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor$2;-><init>(Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static getInstance()Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;
    .locals 2

    sget-object v0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->singleThreadExecutor:Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor$1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    sput-object v0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->singleThreadExecutor:Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    :cond_0
    sget-object v0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->singleThreadExecutor:Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    return-object v0
.end method
