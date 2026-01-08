.class public final Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static executorService:Ljava/util/concurrent/ExecutorService;

.field public static singleThreadExecutor:Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;


# direct methods
.method public static execute(Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v1, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor$2;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor$2;-><init>(Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static getInstance()Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->singleThreadExecutor:Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor$1;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sput-object v1, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    sput-object v0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->singleThreadExecutor:Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    .line 22
    .line 23
    :cond_0
    sget-object v0, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->singleThreadExecutor:Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    .line 24
    .line 25
    return-object v0
.end method
