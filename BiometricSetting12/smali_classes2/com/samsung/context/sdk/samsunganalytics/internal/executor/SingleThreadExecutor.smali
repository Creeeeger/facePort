.class public Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;
.super Ljava/lang/Object;
.source "SingleThreadExecutor.java"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;


# static fields
.field private static executorService:Ljava/util/concurrent/ExecutorService;

.field private static singleThreadExecutor:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static getInstance()Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;
    .locals 1

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->singleThreadExecutor:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;-><init>()V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->singleThreadExecutor:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;

    :cond_0
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->singleThreadExecutor:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;

    return-object v0
.end method


# virtual methods
.method public execute(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V
    .locals 2

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor$2;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
