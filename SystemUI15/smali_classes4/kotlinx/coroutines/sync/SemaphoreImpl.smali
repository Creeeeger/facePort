.class public Lkotlinx/coroutines/sync/SemaphoreImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _availablePermits:Lkotlinx/atomicfu/AtomicInt;

.field public final deqIdx:Lkotlinx/atomicfu/AtomicLong;

.field public final enqIdx:Lkotlinx/atomicfu/AtomicLong;

.field public final head:Lkotlinx/atomicfu/AtomicRef;

.field public final onCancellationRelease:Lkotlin/jvm/functions/Function1;

.field public final permits:I

.field public final tail:Lkotlinx/atomicfu/AtomicRef;


# direct methods
.method public constructor <init>(II)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->atomic(J)Lkotlinx/atomicfu/AtomicLong;

    move-result-object v2

    iput-object v2, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->deqIdx:Lkotlinx/atomicfu/AtomicLong;

    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->atomic(J)Lkotlinx/atomicfu/AtomicLong;

    move-result-object v2

    iput-object v2, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->enqIdx:Lkotlinx/atomicfu/AtomicLong;

    if-lez p1, :cond_1

    if-ltz p2, :cond_0

    if-gt p2, p1, :cond_0

    new-instance v2, Lkotlinx/coroutines/sync/SemaphoreSegment;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v0, v1, v3, v4}, Lkotlinx/coroutines/sync/SemaphoreSegment;-><init>(JLkotlinx/coroutines/sync/SemaphoreSegment;I)V

    invoke-static {v2}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->head:Lkotlinx/atomicfu/AtomicRef;

    invoke-static {v2}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->tail:Lkotlinx/atomicfu/AtomicRef;

    sub-int/2addr p1, p2

    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits:Lkotlinx/atomicfu/AtomicInt;

    new-instance p1, Lkotlinx/coroutines/sync/SemaphoreImpl$onCancellationRelease$1;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/sync/SemaphoreImpl$onCancellationRelease$1;-><init>(Lkotlinx/coroutines/sync/SemaphoreImpl;)V

    iput-object p1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->onCancellationRelease:Lkotlin/jvm/functions/Function1;

    return-void

    :cond_0
    const-string p0, "The number of acquired permits should be in 0.."

    invoke-static {p1, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p0, "Semaphore should have at least 1 permit, but had "

    invoke-static {p1, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final acquire(Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;)V
    .locals 14

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    move-result v1

    sget-object v2, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicInt;->trace:Lkotlinx/atomicfu/TraceBase;

    if-eq v0, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    iget v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    if-gt v1, v0, :cond_0

    if-lez v1, :cond_2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->onCancellationRelease:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_3

    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->tail:Lkotlinx/atomicfu/AtomicRef;

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/SemaphoreSegment;

    iget-object v1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->enqIdx:Lkotlinx/atomicfu/AtomicLong;

    invoke-virtual {v1}, Lkotlinx/atomicfu/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    sget-object v3, Lkotlinx/coroutines/sync/SemaphoreImpl$addAcquireToQueue$createNewSegment$1;->INSTANCE:Lkotlinx/coroutines/sync/SemaphoreImpl$addAcquireToQueue$createNewSegment$1;

    iget-object v4, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->tail:Lkotlinx/atomicfu/AtomicRef;

    sget v5, Lkotlinx/coroutines/sync/SemaphoreKt;->SEGMENT_SIZE:I

    int-to-long v5, v5

    div-long v5, v1, v5

    :goto_0
    invoke-static {v0, v5, v6, v3}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {v7}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v8

    :cond_3
    :goto_1
    iget-object v9, v4, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

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
    invoke-virtual {v4, v9, v8}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v9}, Lkotlinx/coroutines/internal/Segment;->decPointers$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v9}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    goto :goto_2

    :cond_6
    invoke-virtual {v8}, Lkotlinx/coroutines/internal/Segment;->decPointers$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    goto :goto_1

    :cond_7
    :goto_2
    invoke-static {v7}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/sync/SemaphoreSegment;

    sget v3, Lkotlinx/coroutines/sync/SemaphoreKt;->SEGMENT_SIZE:I

    int-to-long v3, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    iget-object v2, v0, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Lkotlinx/atomicfu/AtomicArray;

    iget-object v2, v2, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1, v0, v1}, Lkotlinx/coroutines/Waiter;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    goto :goto_3

    :cond_8
    sget-object v2, Lkotlinx/coroutines/sync/SemaphoreKt;->PERMIT:Lkotlinx/coroutines/internal/Symbol;

    sget-object v3, Lkotlinx/coroutines/sync/SemaphoreKt;->TAKEN:Lkotlinx/coroutines/internal/Symbol;

    iget-object v0, v0, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Lkotlinx/atomicfu/AtomicArray;

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, v3}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->onCancellationRelease:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0, p0}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

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

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicInt;->trace:Lkotlinx/atomicfu/TraceBase;

    if-eq v0, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    invoke-virtual {v9}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    goto :goto_2

    :cond_6
    invoke-virtual {v8}, Lkotlinx/coroutines/internal/Segment;->decPointers$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    goto :goto_1

    :cond_7
    :goto_2
    invoke-static {v7}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/sync/SemaphoreSegment;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

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

    if-eqz v0, :cond_d

    check-cast v2, Lkotlinx/coroutines/CancellableContinuation;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->onCancellationRelease:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v0, v1}, Lkotlinx/coroutines/CancellableContinuation;->tryResume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v2, v0}, Lkotlinx/coroutines/CancellableContinuation;->completeResume(Ljava/lang/Object;)V

    goto :goto_4

    :cond_d
    instance-of v0, v2, Lkotlinx/coroutines/selects/SelectInstance;

    if-eqz v0, :cond_f

    check-cast v2, Lkotlinx/coroutines/selects/SelectInstance;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v2, Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-virtual {v2, p0, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->trySelectInternal(Ljava/lang/Object;Ljava/lang/Object;)I

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

    const-string v1, "unexpected: "

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
