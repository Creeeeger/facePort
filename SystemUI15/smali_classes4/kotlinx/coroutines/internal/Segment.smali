.class public abstract Lkotlinx/coroutines/internal/Segment;
.super Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/NotCompleted;


# instance fields
.field public final cleanedAndPointers:Lkotlinx/atomicfu/AtomicInt;

.field public final id:J


# direct methods
.method public constructor <init>(JLkotlinx/coroutines/internal/Segment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/internal/Segment;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;-><init>(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)V

    iput-wide p1, p0, Lkotlinx/coroutines/internal/Segment;->id:J

    shl-int/lit8 p1, p4, 0x10

    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/internal/Segment;->cleanedAndPointers:Lkotlinx/atomicfu/AtomicInt;

    return-void
.end method


# virtual methods
.method public final decPointers$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()Z
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/internal/Segment;->cleanedAndPointers:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->addAndGet(Ljava/lang/Object;I)I

    move-result v1

    sget-object v2, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicInt;->trace:Lkotlinx/atomicfu/TraceBase;

    if-eq v0, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->getNumberOfSlots()I

    move-result v0

    if-ne v1, v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

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

.method public abstract getNumberOfSlots()I
.end method

.method public final isRemoved()Z
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/internal/Segment;->cleanedAndPointers:Lkotlinx/atomicfu/AtomicInt;

    iget v0, v0, Lkotlinx/atomicfu/AtomicInt;->value:I

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->getNumberOfSlots()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

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

.method public abstract onCancellation(Lkotlin/coroutines/CoroutineContext;I)V
.end method

.method public final onSlotCleaned()V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/internal/Segment;->cleanedAndPointers:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->incrementAndGet()I

    move-result v0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->getNumberOfSlots()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->remove()V

    :cond_0
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

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

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
