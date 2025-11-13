.class public Lkotlinx/coroutines/internal/ThreadSafeHeap;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _size:Lkotlinx/atomicfu/AtomicInt;

.field public a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->_size:Lkotlinx/atomicfu/AtomicInt;

    return-void
.end method


# virtual methods
.method public final addImpl(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V
    .locals 4

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->setHeap(Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;)V

    iget-object v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    iput-object v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->_size:Lkotlinx/atomicfu/AtomicInt;

    iget v1, v1, Lkotlinx/atomicfu/AtomicInt;->value:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->_size:Lkotlinx/atomicfu/AtomicInt;

    iget v1, v1, Lkotlinx/atomicfu/AtomicInt;->value:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    iput-object v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    :cond_1
    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->_size:Lkotlinx/atomicfu/AtomicInt;

    iget v1, v1, Lkotlinx/atomicfu/AtomicInt;->value:I

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->_size:Lkotlinx/atomicfu/AtomicInt;

    iput v2, v3, Lkotlinx/atomicfu/AtomicInt;->value:I

    iget-object v2, v3, Lkotlinx/atomicfu/AtomicInt;->trace:Lkotlinx/atomicfu/TraceBase;

    sget-object v3, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    if-eq v2, v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    aput-object p1, v0, v1

    iput v1, p1, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->index:I

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->siftUpFrom(I)V

    return-void
.end method

.method public final removeAtImpl(I)Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;
    .locals 7

    iget-object v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->_size:Lkotlinx/atomicfu/AtomicInt;

    iget v1, v1, Lkotlinx/atomicfu/AtomicInt;->value:I

    const/4 v2, -0x1

    add-int/2addr v1, v2

    iget-object v3, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->_size:Lkotlinx/atomicfu/AtomicInt;

    iput v1, v3, Lkotlinx/atomicfu/AtomicInt;->value:I

    iget-object v1, v3, Lkotlinx/atomicfu/AtomicInt;->trace:Lkotlinx/atomicfu/TraceBase;

    sget-object v3, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    if-eq v1, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->_size:Lkotlinx/atomicfu/AtomicInt;

    iget v1, v1, Lkotlinx/atomicfu/AtomicInt;->value:I

    if-ge p1, v1, :cond_5

    iget-object v1, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->_size:Lkotlinx/atomicfu/AtomicInt;

    iget v1, v1, Lkotlinx/atomicfu/AtomicInt;->value:I

    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->swap(II)V

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    if-lez p1, :cond_1

    aget-object v3, v0, p1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v4, v0, v1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->swap(II)V

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->siftUpFrom(I)V

    goto :goto_2

    :cond_1
    :goto_0
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->_size:Lkotlinx/atomicfu/AtomicInt;

    iget v4, v4, Lkotlinx/atomicfu/AtomicInt;->value:I

    if-lt v3, v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x2

    iget-object v5, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->_size:Lkotlinx/atomicfu/AtomicInt;

    iget v5, v5, Lkotlinx/atomicfu/AtomicInt;->value:I

    if-ge v1, v5, :cond_3

    aget-object v5, v4, v1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v6, v4, v3

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    aget-object v3, v4, p1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v4, v4, v1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->swap(II)V

    move p1, v1

    goto :goto_0

    :cond_5
    :goto_2
    iget-object p1, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->_size:Lkotlinx/atomicfu/AtomicInt;

    iget p1, p1, Lkotlinx/atomicfu/AtomicInt;->value:I

    aget-object p1, v0, p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->setHeap(Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;)V

    iput v2, p1, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->index:I

    iget-object p0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->_size:Lkotlinx/atomicfu/AtomicInt;

    iget p0, p0, Lkotlinx/atomicfu/AtomicInt;->value:I

    aput-object v1, v0, p0

    return-object p1
.end method

.method public final siftUpFrom(I)V
    .locals 3

    :goto_0
    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    aget-object v2, v0, v1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v0, v0, p1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->swap(II)V

    move p1, v1

    goto :goto_0
.end method

.method public final swap(II)V
    .locals 2

    iget-object p0, p0, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a:[Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v0, p0, p2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v1, p0, p1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aput-object v0, p0, p1

    aput-object v1, p0, p2

    iput p1, v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->index:I

    iput p2, v1, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->index:I

    return-void
.end method
