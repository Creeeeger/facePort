.class public final Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final LOG:Lcom/google/android/setupcompat/util/Logger;

.field public static final MAX_WAIT_TIME_FOR_CONNECTION_MS:J

.field public static instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;


# instance fields
.field public final context:Landroid/content/Context;

.field public final loggingExecutor:Ljava/util/concurrent/ExecutorService;

.field public final waitTimeInMillisForServiceConnection:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/setupcompat/util/Logger;

    const-string v1, "SetupCompatServiceInvoker"

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/util/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->LOG:Lcom/google/android/setupcompat/util/Logger;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->MAX_WAIT_TIME_FOR_CONNECTION_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->context:Landroid/content/Context;

    sget-object p1, Lcom/google/android/setupcompat/internal/ExecutorProvider;->setupCompatServiceInvoker:Lcom/google/android/setupcompat/internal/ExecutorProvider;

    iget-object v0, p1, Lcom/google/android/setupcompat/internal/ExecutorProvider;->injectedExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/google/android/setupcompat/internal/ExecutorProvider;->executor:Ljava/util/concurrent/Executor;

    :goto_0
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->loggingExecutor:Ljava/util/concurrent/ExecutorService;

    sget-wide v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->MAX_WAIT_TIME_FOR_CONNECTION_MS:J

    iput-wide v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->waitTimeInMillisForServiceConnection:J

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;
    .locals 2

    const-class v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static setInstanceForTesting(Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;)V
    .locals 0

    sput-object p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->instance:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    return-void
.end method


# virtual methods
.method public final logMetricEvent(ILandroid/os/Bundle;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->loggingExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;ILandroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Metric of type %d dropped since queue is full."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->LOG:Lcom/google/android/setupcompat/util/Logger;

    invoke-virtual {p2, p1, p0}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
