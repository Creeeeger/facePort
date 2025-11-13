.class public final Lkotlinx/coroutines/scheduling/WorkQueue;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final blockingTasksInBuffer:Lkotlinx/atomicfu/AtomicInt;

.field public final buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field public final consumerIndex:Lkotlinx/atomicfu/AtomicInt;

.field public final lastScheduledTask:Lkotlinx/atomicfu/AtomicRef;

.field public final producerIndex:Lkotlinx/atomicfu/AtomicInt;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask:Lkotlinx/atomicfu/AtomicRef;

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:Lkotlinx/atomicfu/AtomicInt;

    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex:Lkotlinx/atomicfu/AtomicInt;

    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->blockingTasksInBuffer:Lkotlinx/atomicfu/AtomicInt;

    return-void
.end method


# virtual methods
.method public final addLast(Lkotlinx/coroutines/scheduling/Task;)Lkotlinx/coroutines/scheduling/Task;
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:Lkotlinx/atomicfu/AtomicInt;

    iget v0, v0, Lkotlinx/atomicfu/AtomicInt;->value:I

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex:Lkotlinx/atomicfu/AtomicInt;

    iget v1, v1, Lkotlinx/atomicfu/AtomicInt;->value:I

    sub-int/2addr v0, v1

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    check-cast v0, Lkotlinx/coroutines/scheduling/TaskContextImpl;

    iget v0, v0, Lkotlinx/coroutines/scheduling/TaskContextImpl;->taskMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->blockingTasksInBuffer:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->incrementAndGet()I

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:Lkotlinx/atomicfu/AtomicInt;

    iget v0, v0, Lkotlinx/atomicfu/AtomicInt;->value:I

    and-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {p0}, Lkotlinx/atomicfu/AtomicInt;->incrementAndGet()I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final pollBuffer()Lkotlinx/coroutines/scheduling/Task;
    .locals 5

    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex:Lkotlinx/atomicfu/AtomicInt;

    iget v0, v0, Lkotlinx/atomicfu/AtomicInt;->value:I

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:Lkotlinx/atomicfu/AtomicInt;

    iget v1, v1, Lkotlinx/atomicfu/AtomicInt;->value:I

    sub-int v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    and-int/lit8 v1, v0, 0x7f

    iget-object v3, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex:Lkotlinx/atomicfu/AtomicInt;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v0, v4}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    check-cast v1, Lkotlinx/coroutines/scheduling/TaskContextImpl;

    iget v1, v1, Lkotlinx/coroutines/scheduling/TaskContextImpl;->taskMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->blockingTasksInBuffer:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {p0}, Lkotlinx/atomicfu/AtomicInt;->decrementAndGet()I

    :cond_3
    return-object v0
.end method

.method public final tryExtractFromTheMiddle(IZ)Lkotlinx/coroutines/scheduling/Task;
    .locals 4

    and-int/lit8 p1, p1, 0x7f

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    check-cast v2, Lkotlinx/coroutines/scheduling/TaskContextImpl;

    iget v2, v2, Lkotlinx/coroutines/scheduling/TaskContextImpl;->taskMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ne v3, p2, :cond_2

    iget-object v2, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->blockingTasksInBuffer:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {p0}, Lkotlinx/atomicfu/AtomicInt;->decrementAndGet()I

    :cond_1
    return-object v0

    :cond_2
    return-object v1
.end method
