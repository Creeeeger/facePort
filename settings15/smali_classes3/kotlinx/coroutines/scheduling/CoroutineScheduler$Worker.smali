.class public final Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
.super Ljava/lang/Thread;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field private volatile indexInArray:I

.field public final localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

.field public mayHaveLocalTasks:Z

.field public minDelayUntilStealableTaskNs:J

.field private volatile nextParkedWorker:Ljava/lang/Object;

.field public rngState:I

.field public state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

.field public final stolenTask:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public terminationDeadline:J

.field public final synthetic this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

.field public final workerCtl:Lkotlinx/atomicfu/AtomicInt;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V
    .locals 1

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    new-instance p1, Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-direct {p1}, Lkotlinx/coroutines/scheduling/WorkQueue;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->stolenTask:Lkotlin/jvm/internal/Ref$ObjectRef;

    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    new-instance p1, Lkotlinx/atomicfu/AtomicInt;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lkotlinx/atomicfu/AtomicInt;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->workerCtl:Lkotlinx/atomicfu/AtomicInt;

    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    sget-object p1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/AbstractPlatformRandom;

    invoke-virtual {p1}, Lkotlin/random/AbstractPlatformRandom;->getImpl()Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->rngState:I

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->setIndexInArray(I)V

    return-void
.end method


# virtual methods
.method public final findTask(Z)Lkotlinx/coroutines/scheduling/Task;
    .locals 9

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:Lkotlinx/atomicfu/AtomicLong;

    :cond_1
    iget-wide v4, v1, Lkotlinx/atomicfu/AtomicLong;->value:J

    const-wide v6, 0x7ffffc0000000000L

    and-long/2addr v6, v4

    const/16 v8, 0x2a

    shr-long/2addr v6, v8

    long-to-int v6, v6

    if-nez v6, :cond_9

    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    :cond_2
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask:Lkotlinx/atomicfu/AtomicRef;

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContextImpl;

    iget v1, v1, Lkotlinx/coroutines/scheduling/TaskContextImpl;->taskMode:I

    if-ne v1, v3, :cond_4

    iget-object v1, p1, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v1, v0, v2}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v2, v0

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex:Lkotlinx/atomicfu/AtomicInt;

    iget v0, v0, Lkotlinx/atomicfu/AtomicInt;->value:I

    iget-object v1, p1, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:Lkotlinx/atomicfu/AtomicInt;

    iget v1, v1, Lkotlinx/atomicfu/AtomicInt;->value:I

    :cond_5
    if-eq v0, v1, :cond_7

    iget-object v4, p1, Lkotlinx/coroutines/scheduling/WorkQueue;->blockingTasksInBuffer:Lkotlinx/atomicfu/AtomicInt;

    iget v4, v4, Lkotlinx/atomicfu/AtomicInt;->value:I

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1, v3}, Lkotlinx/coroutines/scheduling/WorkQueue;->tryExtractFromTheMiddle(IZ)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object v2, v4

    :cond_7
    :goto_1
    if-nez v2, :cond_8

    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object p1, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/scheduling/Task;

    if-nez v2, :cond_8

    invoke-virtual {p0, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->trySteal(I)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v2

    :cond_8
    return-object v2

    :cond_9
    const-wide v6, 0x40000000000L

    sub-long v6, v4, v6

    iget-object v8, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:Lkotlinx/atomicfu/AtomicLong;

    invoke-virtual {v8, v4, v5, v6, v7}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    :goto_2
    if-eqz p1, :cond_e

    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget p1, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextInt(I)I

    move-result p1

    if-nez p1, :cond_a

    goto :goto_3

    :cond_a
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->pollGlobalQueues()Lkotlinx/coroutines/scheduling/Task;

    move-result-object p1

    if-eqz p1, :cond_b

    goto :goto_5

    :cond_b
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    iget-object v0, p1, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v0, v2}, Lkotlinx/atomicfu/AtomicRef;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->pollBuffer()Lkotlinx/coroutines/scheduling/Task;

    move-result-object p1

    goto :goto_4

    :cond_c
    move-object p1, v0

    :goto_4
    if-eqz p1, :cond_d

    goto :goto_5

    :cond_d
    if-nez v3, :cond_f

    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->pollGlobalQueues()Lkotlinx/coroutines/scheduling/Task;

    move-result-object p1

    if-eqz p1, :cond_f

    goto :goto_5

    :cond_e
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->pollGlobalQueues()Lkotlinx/coroutines/scheduling/Task;

    move-result-object p1

    if-eqz p1, :cond_f

    goto :goto_5

    :cond_f
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->trySteal(I)Lkotlinx/coroutines/scheduling/Task;

    move-result-object p1

    :goto_5
    return-object p1
.end method

.method public final getIndexInArray()I
    .locals 0

    iget p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->indexInArray:I

    return p0
.end method

.method public final getNextParkedWorker()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    return-object p0
.end method

.method public final nextInt(I)I
    .locals 2

    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->rngState:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->rngState:I

    add-int/lit8 p0, p1, -0x1

    and-int v1, p0, p1

    if-nez v1, :cond_0

    and-int/2addr p0, v0

    return p0

    :cond_0
    const p0, 0x7fffffff

    and-int/2addr p0, v0

    rem-int/2addr p0, p1

    return p0
.end method

.method public final pollGlobalQueues()Lkotlinx/coroutines/scheduling/Task;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/scheduling/Task;

    return-object p0

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/scheduling/Task;

    return-object p0
.end method

.method public final run()V
    .locals 16

    move-object/from16 v1, p0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    move v0, v2

    :goto_1
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v3, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated:Lkotlinx/atomicfu/AtomicBoolean;

    invoke-virtual {v3}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    move-result v3

    if-nez v3, :cond_17

    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-eq v3, v4, :cond_17

    iget-boolean v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->mayHaveLocalTasks:Z

    invoke-virtual {v1, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->findTask(Z)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v3

    const-wide/32 v5, -0x200000

    const-wide/16 v7, 0x0

    if-eqz v3, :cond_7

    iput-wide v7, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->minDelayUntilStealableTaskNs:J

    iget-object v0, v3, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContextImpl;

    iget v9, v0, Lkotlinx/coroutines/scheduling/TaskContextImpl;->taskMode:I

    iput-wide v7, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->terminationDeadline:J

    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v0, v7, :cond_1

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    :cond_1
    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryReleaseCpu(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryUnpark()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    iget-object v7, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:Lkotlinx/atomicfu/AtomicLong;

    iget-wide v7, v7, Lkotlinx/atomicfu/AtomicLong;->value:J

    invoke-virtual {v0, v7, v8}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryCreateWorker(J)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryUnpark()Z

    :cond_5
    :goto_2
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v7

    invoke-interface {v7, v0, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_3
    if-nez v9, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:Lkotlinx/atomicfu/AtomicLong;

    invoke-virtual {v0, v5, v6}, Lkotlinx/atomicfu/AtomicLong;->addAndGet(J)J

    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-eq v0, v4, :cond_0

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    goto :goto_0

    :cond_7
    iput-boolean v2, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->mayHaveLocalTasks:Z

    iget-wide v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->minDelayUntilStealableTaskNs:J

    cmp-long v3, v3, v7

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    if-nez v0, :cond_8

    move v0, v4

    goto/16 :goto_1

    :cond_8
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryReleaseCpu(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->minDelayUntilStealableTaskNs:J

    invoke-static {v3, v4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    iput-wide v7, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->minDelayUntilStealableTaskNs:J

    goto/16 :goto_0

    :cond_9
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    sget-object v9, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

    if-eq v3, v9, :cond_a

    move v3, v4

    goto :goto_4

    :cond_a
    move v3, v2

    :goto_4
    const-wide/32 v10, 0x1fffff

    if-nez v3, :cond_d

    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    if-eq v4, v9, :cond_b

    goto/16 :goto_9

    :cond_b
    iget-object v9, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack:Lkotlinx/atomicfu/AtomicLong;

    :cond_c
    iget-wide v7, v9, Lkotlinx/atomicfu/AtomicLong;->value:J

    and-long v12, v7, v10

    long-to-int v4, v12

    const-wide/32 v12, 0x200000

    add-long/2addr v12, v7

    and-long/2addr v12, v5

    iget v14, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->indexInArray:I

    iget-object v15, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    invoke-virtual {v15, v4}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    iget-object v4, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack:Lkotlinx/atomicfu/AtomicLong;

    int-to-long v14, v14

    or-long/2addr v12, v14

    invoke-virtual {v4, v7, v8, v12, v13}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_c

    goto/16 :goto_9

    :cond_d
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->workerCtl:Lkotlinx/atomicfu/AtomicInt;

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V

    :goto_5
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    sget-object v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

    if-eq v3, v6, :cond_16

    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->workerCtl:Lkotlinx/atomicfu/AtomicInt;

    iget v3, v3, Lkotlinx/atomicfu/AtomicInt;->value:I

    if-ne v3, v5, :cond_16

    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v3, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated:Lkotlinx/atomicfu/AtomicBoolean;

    invoke-virtual {v3}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    move-result v3

    if-nez v3, :cond_16

    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v3, v6, :cond_e

    goto/16 :goto_9

    :cond_e
    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {v1, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryReleaseCpu(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v12, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->terminationDeadline:J

    cmp-long v3, v12, v7

    if-nez v3, :cond_f

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-wide v14, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->idleWorkerKeepAliveNs:J

    add-long/2addr v12, v14

    iput-wide v12, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->terminationDeadline:J

    :cond_f
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-wide v12, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->idleWorkerKeepAliveNs:J

    invoke-static {v12, v13}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    iget-wide v14, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->terminationDeadline:J

    sub-long/2addr v12, v14

    cmp-long v3, v12, v7

    if-ltz v3, :cond_15

    iput-wide v7, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->terminationDeadline:J

    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v9, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    monitor-enter v9

    :try_start_1
    iget-object v12, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated:Lkotlinx/atomicfu/AtomicBoolean;

    invoke-virtual {v12}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v12, :cond_10

    monitor-exit v9

    goto :goto_8

    :cond_10
    :try_start_2
    iget-object v12, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:Lkotlinx/atomicfu/AtomicLong;

    iget-wide v12, v12, Lkotlinx/atomicfu/AtomicLong;->value:J

    and-long/2addr v12, v10

    long-to-int v12, v12

    iget v13, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-gt v12, v13, :cond_11

    monitor-exit v9

    goto :goto_8

    :cond_11
    :try_start_3
    iget-object v12, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->workerCtl:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v12, v5, v4}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    move-result v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v12, :cond_12

    monitor-exit v9

    goto :goto_8

    :cond_12
    :try_start_4
    iget v12, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->indexInArray:I

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->setIndexInArray(I)V

    invoke-virtual {v3, v1, v12, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStackTopUpdate(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V

    iget-object v13, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:Lkotlinx/atomicfu/AtomicLong;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Lkotlinx/atomicfu/AtomicLong;->FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v14, v13}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v14

    sget-object v2, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    iget-object v13, v13, Lkotlinx/atomicfu/AtomicLong;->trace:Lkotlinx/atomicfu/TraceBase$None;

    if-eq v13, v2, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "getAndDec():"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lkotlinx/atomicfu/TraceBase$None;->append(Ljava/lang/Object;)V

    :cond_13
    and-long v13, v14, v10

    long-to-int v2, v13

    if-eq v2, v12, :cond_14

    iget-object v4, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    invoke-virtual {v4, v2}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    iget-object v13, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    invoke-virtual {v13, v12, v4}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->setSynchronized(ILkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)V

    invoke-virtual {v4, v12}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->setIndexInArray(I)V

    invoke-virtual {v3, v4, v2, v12}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStackTopUpdate(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_14
    :goto_6
    iget-object v3, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->setSynchronized(ILkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v9

    iput-object v6, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    goto :goto_8

    :goto_7
    monitor-exit v9

    throw v0

    :cond_15
    :goto_8
    const/4 v2, 0x0

    const/4 v4, 0x1

    goto/16 :goto_5

    :cond_16
    :goto_9
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_17
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryReleaseCpu(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    return-void
.end method

.method public final setIndexInArray(I)V
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->schedulerName:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-worker-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->indexInArray:I

    return-void
.end method

.method public final setNextParkedWorker(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    return-void
.end method

.method public final tryReleaseCpu(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z
    .locals 5

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v2, v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:Lkotlinx/atomicfu/AtomicLong;

    const-wide v3, 0x40000000000L

    invoke-virtual {v2, v3, v4}, Lkotlinx/atomicfu/AtomicLong;->addAndGet(J)J

    :cond_1
    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    :cond_2
    return v1
.end method

.method public final trySteal(I)Lkotlinx/coroutines/scheduling/Task;
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v2, v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:Lkotlinx/atomicfu/AtomicLong;

    iget-wide v2, v2, Lkotlinx/atomicfu/AtomicLong;->value:J

    const-wide/32 v4, 0x1fffff

    and-long/2addr v2, v4

    long-to-int v2, v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextInt(I)I

    move-result v5

    iget-object v6, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const/4 v10, 0x0

    const-wide v11, 0x7fffffffffffffffL

    :goto_0
    if-ge v10, v2, :cond_f

    const/4 v15, 0x1

    add-int/2addr v5, v15

    if-le v5, v2, :cond_1

    move v5, v15

    :cond_1
    iget-object v3, v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    invoke-virtual {v3, v5}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    if-eqz v3, :cond_e

    if-eq v3, v0, :cond_e

    iget-object v3, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    iget-object v7, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->stolenTask:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v8, "stolenTaskRef"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x3

    if-ne v1, v8, :cond_2

    invoke-virtual {v3}, Lkotlinx/coroutines/scheduling/WorkQueue;->pollBuffer()Lkotlinx/coroutines/scheduling/Task;

    move-result-object v8

    goto :goto_2

    :cond_2
    iget-object v8, v3, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex:Lkotlinx/atomicfu/AtomicInt;

    iget v8, v8, Lkotlinx/atomicfu/AtomicInt;->value:I

    iget-object v9, v3, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:Lkotlinx/atomicfu/AtomicInt;

    iget v9, v9, Lkotlinx/atomicfu/AtomicInt;->value:I

    if-ne v1, v15, :cond_3

    move v13, v15

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    :goto_1
    if-eq v8, v9, :cond_4

    if-eqz v13, :cond_5

    iget-object v14, v3, Lkotlinx/coroutines/scheduling/WorkQueue;->blockingTasksInBuffer:Lkotlinx/atomicfu/AtomicInt;

    iget v14, v14, Lkotlinx/atomicfu/AtomicInt;->value:I

    if-nez v14, :cond_5

    :cond_4
    move-object v8, v4

    goto :goto_2

    :cond_5
    add-int/lit8 v14, v8, 0x1

    invoke-virtual {v3, v8, v13}, Lkotlinx/coroutines/scheduling/WorkQueue;->tryExtractFromTheMiddle(IZ)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v8

    if-nez v8, :cond_6

    move v8, v14

    goto :goto_1

    :cond_6
    :goto_2
    if-eqz v8, :cond_7

    iput-object v8, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-wide/16 v8, -0x1

    const-wide/16 v13, -0x1

    goto :goto_6

    :cond_7
    :goto_3
    iget-object v8, v3, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask:Lkotlinx/atomicfu/AtomicRef;

    iget-object v8, v8, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/scheduling/Task;

    const-wide/16 v18, -0x2

    if-nez v8, :cond_8

    goto :goto_5

    :cond_8
    iget-object v9, v8, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContextImpl;

    iget v9, v9, Lkotlinx/coroutines/scheduling/TaskContextImpl;->taskMode:I

    if-ne v9, v15, :cond_9

    move v9, v15

    goto :goto_4

    :cond_9
    const/4 v9, 0x2

    :goto_4
    and-int/2addr v9, v1

    if-nez v9, :cond_a

    goto :goto_5

    :cond_a
    sget-object v9, Lkotlinx/coroutines/scheduling/TasksKt;->schedulerTimeSource:Lkotlinx/coroutines/scheduling/NanoTimeSource;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    iget-wide v13, v8, Lkotlinx/coroutines/scheduling/Task;->submissionTime:J

    sub-long v18, v18, v13

    sget-wide v13, Lkotlinx/coroutines/scheduling/TasksKt;->WORK_STEALING_TIME_RESOLUTION_NS:J

    cmp-long v9, v18, v13

    if-gez v9, :cond_b

    sub-long v18, v13, v18

    goto :goto_5

    :cond_b
    iget-object v9, v3, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v9, v8, v4}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    iput-object v8, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-wide/16 v18, -0x1

    :goto_5
    move-wide/from16 v13, v18

    const-wide/16 v8, -0x1

    :goto_6
    cmp-long v3, v13, v8

    if-nez v3, :cond_c

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->stolenTask:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/scheduling/Task;

    iput-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v1

    :cond_c
    const-wide/16 v16, 0x0

    cmp-long v3, v13, v16

    if-lez v3, :cond_e

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    goto :goto_7

    :cond_d
    const-wide/16 v16, 0x0

    goto :goto_3

    :cond_e
    :goto_7
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_f
    const-wide v7, 0x7fffffffffffffffL

    const-wide/16 v16, 0x0

    cmp-long v1, v11, v7

    if-eqz v1, :cond_10

    goto :goto_8

    :cond_10
    move-wide/from16 v11, v16

    :goto_8
    iput-wide v11, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->minDelayUntilStealableTaskNs:J

    return-object v4
.end method
