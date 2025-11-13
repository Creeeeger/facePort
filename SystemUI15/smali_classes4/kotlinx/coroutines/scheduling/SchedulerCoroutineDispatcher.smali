.class public Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;
.super Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final coroutineScheduler:Lkotlinx/coroutines/scheduling/CoroutineScheduler;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;-><init>(IIJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;-><init>()V

    new-instance v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;-><init>(IIJLjava/lang/String;)V

    iput-object v6, p0, Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;->coroutineScheduler:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    return-void
.end method

.method public synthetic constructor <init>(IIJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    sget p1, Lkotlinx/coroutines/scheduling/TasksKt;->CORE_POOL_SIZE:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    sget p2, Lkotlinx/coroutines/scheduling/TasksKt;->MAX_POOL_SIZE:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    sget-wide p3, Lkotlinx/coroutines/scheduling/TasksKt;->IDLE_WORKER_KEEP_ALIVE_NS:J

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    const-string p5, "CoroutineScheduler"

    :cond_3
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move-wide p5, v0

    move-object p7, v2

    invoke-direct/range {p2 .. p7}, Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;-><init>(IIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;->coroutineScheduler:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->close()V

    return-void
.end method

.method public final dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;->coroutineScheduler:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const/4 p1, 0x6

    const/4 v0, 0x0

    invoke-static {p0, p2, v0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->dispatch$default(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;ZI)V

    return-void
.end method

.method public final dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;->coroutineScheduler:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const/4 p1, 0x2

    const/4 v0, 0x1

    invoke-static {p0, p2, v0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->dispatch$default(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;ZI)V

    return-void
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;->coroutineScheduler:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    return-object p0
.end method
