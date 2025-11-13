.class public abstract Lkotlinx/coroutines/internal/Segment;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/NotCompleted;


# instance fields
.field public final _next:Lkotlinx/atomicfu/AtomicRef;

.field public final _prev:Lkotlinx/atomicfu/AtomicRef;

.field public final cleanedAndPointers:Lkotlinx/atomicfu/AtomicInt;

.field public final id:J


# direct methods
.method public constructor <init>(JLkotlinx/coroutines/internal/Segment;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkotlinx/atomicfu/AtomicRef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/atomicfu/AtomicRef;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lkotlinx/coroutines/internal/Segment;->_next:Lkotlinx/atomicfu/AtomicRef;

    new-instance v0, Lkotlinx/atomicfu/AtomicRef;

    invoke-direct {v0, p3}, Lkotlinx/atomicfu/AtomicRef;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lkotlinx/coroutines/internal/Segment;->_prev:Lkotlinx/atomicfu/AtomicRef;

    iput-wide p1, p0, Lkotlinx/coroutines/internal/Segment;->id:J

    shl-int/lit8 p1, p4, 0x10

    new-instance p2, Lkotlinx/atomicfu/AtomicInt;

    invoke-direct {p2, p1}, Lkotlinx/atomicfu/AtomicInt;-><init>(I)V

    iput-object p2, p0, Lkotlinx/coroutines/internal/Segment;->cleanedAndPointers:Lkotlinx/atomicfu/AtomicInt;

    return-void
.end method


# virtual methods
.method public final cleanPrev()V
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/internal/Segment;->_prev:Lkotlinx/atomicfu/AtomicRef;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlinx/atomicfu/AtomicRef;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public final decPointers$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()Z
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/internal/Segment;->cleanedAndPointers:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->addAndGet(Ljava/lang/Object;I)I

    move-result v1

    sget-object v2, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicInt;->trace:Lkotlinx/atomicfu/TraceBase$None;

    if-eq v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addAndGet(-65536):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lkotlinx/atomicfu/TraceBase$None;->append(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->getNumberOfSlots()I

    move-result v0

    if-ne v1, v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->getNext()Lkotlinx/coroutines/internal/Segment;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final getNext()Lkotlinx/coroutines/internal/Segment;
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/internal/Segment;->_next:Lkotlinx/atomicfu/AtomicRef;

    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    sget-object v0, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->CLOSED:Lkotlinx/coroutines/internal/Symbol;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Lkotlinx/coroutines/internal/Segment;

    return-object p0
.end method

.method public abstract getNumberOfSlots()I
.end method

.method public final isRemoved()Z
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/internal/Segment;->cleanedAndPointers:Lkotlinx/atomicfu/AtomicInt;

    iget v0, v0, Lkotlinx/atomicfu/AtomicInt;->value:I

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->getNumberOfSlots()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->getNext()Lkotlinx/coroutines/internal/Segment;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public abstract onCancellation(ILkotlin/coroutines/CoroutineContext;)V
.end method

.method public final onSlotCleaned()V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/internal/Segment;->cleanedAndPointers:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->incrementAndGet()I

    move-result v0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->getNumberOfSlots()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->remove()V

    :cond_0
    return-void
.end method

.method public final remove()V
    .locals 5

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->getNext()Lkotlinx/coroutines/internal/Segment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/Segment;->_prev:Lkotlinx/atomicfu/AtomicRef;

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/Segment;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/Segment;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lkotlinx/coroutines/internal/Segment;->_prev:Lkotlinx/atomicfu/AtomicRef;

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/Segment;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->getNext()Lkotlinx/coroutines/internal/Segment;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/Segment;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/Segment;->getNext()Lkotlinx/coroutines/internal/Segment;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v2

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v2, v1, Lkotlinx/coroutines/internal/Segment;->_prev:Lkotlinx/atomicfu/AtomicRef;

    :cond_4
    iget-object v3, v2, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/internal/Segment;

    if-nez v4, :cond_5

    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    move-object v4, v0

    :goto_3
    invoke-virtual {v2, v3, v4}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_6

    iget-object v2, v0, Lkotlinx/coroutines/internal/Segment;->_next:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v2, v1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/Segment;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/Segment;->getNext()Lkotlinx/coroutines/internal/Segment;

    move-result-object v1

    if-nez v1, :cond_0

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/Segment;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    return-void
.end method

.method public final tryIncPointers$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()Z
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/internal/Segment;->cleanedAndPointers:Lkotlinx/atomicfu/AtomicInt;

    :cond_0
    iget v1, v0, Lkotlinx/atomicfu/AtomicInt;->value:I

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->getNumberOfSlots()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->getNext()Lkotlinx/coroutines/internal/Segment;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/high16 v2, 0x10000

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    :goto_1
    return p0
.end method
