.class public abstract Lkotlinx/coroutines/sync/SemaphoreImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final _availablePermits:Lkotlinx/atomicfu/AtomicInt;

.field public final deqIdx:Lkotlinx/atomicfu/AtomicLong;

.field public final enqIdx:Lkotlinx/atomicfu/AtomicLong;

.field public final head:Lkotlinx/atomicfu/AtomicRef;

.field public final onCancellationRelease:Lkotlin/jvm/functions/Function1;

.field public final permits:I

.field public final tail:Lkotlinx/atomicfu/AtomicRef;


# direct methods
.method public constructor <init>(I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    new-instance v1, Lkotlinx/atomicfu/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lkotlinx/atomicfu/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->deqIdx:Lkotlinx/atomicfu/AtomicLong;

    new-instance v1, Lkotlinx/atomicfu/AtomicLong;

    invoke-direct {v1, v2, v3}, Lkotlinx/atomicfu/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->enqIdx:Lkotlinx/atomicfu/AtomicLong;

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    new-instance v1, Lkotlinx/coroutines/sync/SemaphoreSegment;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlinx/coroutines/sync/SemaphoreSegment;-><init>(JLkotlinx/coroutines/sync/SemaphoreSegment;I)V

    new-instance v2, Lkotlinx/atomicfu/AtomicRef;

    invoke-direct {v2, v1}, Lkotlinx/atomicfu/AtomicRef;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->head:Lkotlinx/atomicfu/AtomicRef;

    new-instance v2, Lkotlinx/atomicfu/AtomicRef;

    invoke-direct {v2, v1}, Lkotlinx/atomicfu/AtomicRef;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->tail:Lkotlinx/atomicfu/AtomicRef;

    sub-int/2addr v0, p1

    new-instance p1, Lkotlinx/atomicfu/AtomicInt;

    invoke-direct {p1, v0}, Lkotlinx/atomicfu/AtomicInt;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits:Lkotlinx/atomicfu/AtomicInt;

    new-instance p1, Lkotlinx/coroutines/sync/SemaphoreImpl$onCancellationRelease$1;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/sync/SemaphoreImpl$onCancellationRelease$1;-><init>(Lkotlinx/coroutines/sync/SemaphoreImpl;)V

    iput-object p1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->onCancellationRelease:Lkotlin/jvm/functions/Function1;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The number of acquired permits should be in 0..1"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final acquire(Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :cond_0
    iget-object v2, v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    move-result v3

    sget-object v4, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    iget-object v2, v2, Lkotlinx/atomicfu/AtomicInt;->trace:Lkotlinx/atomicfu/TraceBase$None;

    if-eq v2, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getAndDec():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lkotlinx/atomicfu/TraceBase$None;->append(Ljava/lang/Object;)V

    :cond_1
    iget v2, v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    if-gt v3, v2, :cond_0

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-lez v3, :cond_2

    iget-object v0, v1, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object v3, v0, Lkotlinx/coroutines/sync/MutexImpl;->owner:Lkotlinx/atomicfu/AtomicRef;

    iget-object v4, v1, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->owner:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    new-instance v3, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$resume$2;

    invoke-direct {v3, v0, v1}, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$resume$2;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;)V

    iget-object v0, v1, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {v0, v2, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_3

    :cond_2
    iget-object v3, v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->tail:Lkotlinx/atomicfu/AtomicRef;

    iget-object v3, v3, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/sync/SemaphoreSegment;

    iget-object v4, v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->enqIdx:Lkotlinx/atomicfu/AtomicLong;

    invoke-virtual {v4}, Lkotlinx/atomicfu/AtomicLong;->getAndIncrement()J

    move-result-wide v4

    sget-object v6, Lkotlinx/coroutines/sync/SemaphoreImpl$addAcquireToQueue$createNewSegment$1;->INSTANCE:Lkotlinx/coroutines/sync/SemaphoreImpl$addAcquireToQueue$createNewSegment$1;

    iget-object v7, v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->tail:Lkotlinx/atomicfu/AtomicRef;

    sget v8, Lkotlinx/coroutines/sync/SemaphoreKt;->SEGMENT_SIZE:I

    int-to-long v8, v8

    div-long v8, v4, v8

    :goto_0
    invoke-static {v3, v8, v9, v6}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-static {v10}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v11

    :goto_1
    iget-object v12, v7, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/internal/Segment;

    iget-wide v13, v12, Lkotlinx/coroutines/internal/Segment;->id:J

    move-wide v15, v8

    iget-wide v8, v11, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v8, v13, v8

    if-ltz v8, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()Z

    move-result v8

    if-nez v8, :cond_4

    move-wide v8, v15

    goto :goto_0

    :cond_4
    invoke-virtual {v7, v12, v11}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v12}, Lkotlinx/coroutines/internal/Segment;->decPointers$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v12}, Lkotlinx/coroutines/internal/Segment;->remove()V

    goto :goto_2

    :cond_5
    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->decPointers$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->remove()V

    :cond_6
    move-wide v8, v15

    goto :goto_1

    :cond_7
    :goto_2
    invoke-static {v10}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/sync/SemaphoreSegment;

    sget v6, Lkotlinx/coroutines/sync/SemaphoreKt;->SEGMENT_SIZE:I

    int-to-long v6, v6

    rem-long/2addr v4, v6

    long-to-int v4, v4

    iget-object v5, v3, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Lkotlinx/atomicfu/AtomicArray;

    iget-object v5, v5, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    aget-object v5, v5, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1, v3, v4}, Lkotlinx/coroutines/Waiter;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    goto :goto_3

    :cond_8
    sget-object v5, Lkotlinx/coroutines/sync/SemaphoreKt;->PERMIT:Lkotlinx/coroutines/internal/Symbol;

    sget-object v6, Lkotlinx/coroutines/sync/SemaphoreKt;->TAKEN:Lkotlinx/coroutines/internal/Symbol;

    iget-object v3, v3, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Lkotlinx/atomicfu/AtomicArray;

    iget-object v3, v3, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    aget-object v3, v3, v4

    invoke-virtual {v3, v5, v6}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v1, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object v3, v0, Lkotlinx/coroutines/sync/MutexImpl;->owner:Lkotlinx/atomicfu/AtomicRef;

    iget-object v4, v1, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->owner:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    new-instance v3, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$resume$2;

    invoke-direct {v3, v0, v1}, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$resume$2;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;)V

    iget-object v0, v1, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {v0, v2, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    :goto_3
    return-void
.end method

.method public final release()V
    .locals 14

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    move-result v1

    sget-object v2, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicInt;->trace:Lkotlinx/atomicfu/TraceBase$None;

    if-eq v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAndInc():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lkotlinx/atomicfu/TraceBase$None;->append(Ljava/lang/Object;)V

    :cond_1
    iget v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    if-ge v1, v0, :cond_10

    if-ltz v1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->head:Lkotlinx/atomicfu/AtomicRef;

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/SemaphoreSegment;

    iget-object v1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->deqIdx:Lkotlinx/atomicfu/AtomicLong;

    invoke-virtual {v1}, Lkotlinx/atomicfu/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    sget v3, Lkotlinx/coroutines/sync/SemaphoreKt;->SEGMENT_SIZE:I

    int-to-long v3, v3

    div-long v3, v1, v3

    sget-object v5, Lkotlinx/coroutines/sync/SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1;->INSTANCE:Lkotlinx/coroutines/sync/SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1;

    iget-object v6, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->head:Lkotlinx/atomicfu/AtomicRef;

    :goto_0
    invoke-static {v0, v3, v4, v5}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {v7}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v8

    :cond_3
    :goto_1
    iget-object v9, v6, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/internal/Segment;

    iget-wide v10, v9, Lkotlinx/coroutines/internal/Segment;->id:J

    iget-wide v12, v8, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v10, v10, v12

    if-ltz v10, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v6, v9, v8}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v9}, Lkotlinx/coroutines/internal/Segment;->decPointers$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v9}, Lkotlinx/coroutines/internal/Segment;->remove()V

    goto :goto_2

    :cond_6
    invoke-virtual {v8}, Lkotlinx/coroutines/internal/Segment;->decPointers$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lkotlinx/coroutines/internal/Segment;->remove()V

    goto :goto_1

    :cond_7
    :goto_2
    invoke-static {v7}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/sync/SemaphoreSegment;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/Segment;->cleanPrev()V

    iget-wide v5, v0, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v3, v5, v3

    const/4 v4, 0x0

    if-lez v3, :cond_8

    goto :goto_5

    :cond_8
    sget v3, Lkotlinx/coroutines/sync/SemaphoreKt;->SEGMENT_SIZE:I

    int-to-long v5, v3

    rem-long/2addr v1, v5

    long-to-int v1, v1

    sget-object v2, Lkotlinx/coroutines/sync/SemaphoreKt;->PERMIT:Lkotlinx/coroutines/internal/Symbol;

    iget-object v3, v0, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Lkotlinx/atomicfu/AtomicArray;

    iget-object v3, v3, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lkotlinx/atomicfu/AtomicRef;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_b

    sget v2, Lkotlinx/coroutines/sync/SemaphoreKt;->MAX_SPIN_CYCLES:I

    :goto_3
    if-ge v4, v2, :cond_a

    iget-object v5, v0, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Lkotlinx/atomicfu/AtomicArray;

    iget-object v5, v5, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    aget-object v5, v5, v1

    iget-object v5, v5, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    sget-object v6, Lkotlinx/coroutines/sync/SemaphoreKt;->TAKEN:Lkotlinx/coroutines/internal/Symbol;

    if-ne v5, v6, :cond_9

    :goto_4
    move v4, v3

    goto :goto_5

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    sget-object v2, Lkotlinx/coroutines/sync/SemaphoreKt;->PERMIT:Lkotlinx/coroutines/internal/Symbol;

    sget-object v4, Lkotlinx/coroutines/sync/SemaphoreKt;->BROKEN:Lkotlinx/coroutines/internal/Symbol;

    iget-object v0, v0, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Lkotlinx/atomicfu/AtomicArray;

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, v4}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    goto :goto_5

    :cond_b
    sget-object v0, Lkotlinx/coroutines/sync/SemaphoreKt;->CANCELLED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v2, v0, :cond_c

    goto :goto_5

    :cond_c
    instance-of v0, v2, Lkotlinx/coroutines/CancellableContinuation;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-eqz v0, :cond_d

    check-cast v2, Lkotlinx/coroutines/CancellableContinuation;

    iget-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->onCancellationRelease:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v1, v0}, Lkotlinx/coroutines/CancellableContinuation;->tryResume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v2, v0}, Lkotlinx/coroutines/CancellableContinuation;->completeResume(Ljava/lang/Object;)V

    goto :goto_4

    :cond_d
    instance-of v0, v2, Lkotlinx/coroutines/selects/SelectInstance;

    if-eqz v0, :cond_f

    check-cast v2, Lkotlinx/coroutines/selects/SelectInstance;

    check-cast v2, Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-virtual {v2, p0, v1}, Lkotlinx/coroutines/selects/SelectImplementation;->trySelectInternal(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_4

    :cond_e
    :goto_5
    if-eqz v4, :cond_0

    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unexpected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_6
    iget-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits:Lkotlinx/atomicfu/AtomicInt;

    iget v0, v0, Lkotlinx/atomicfu/AtomicInt;->value:I

    iget v1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    if-le v0, v1, :cond_11

    iget-object v2, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v2, v0, v1}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_6

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    iget p0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The number of released permits cannot be greater than "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
