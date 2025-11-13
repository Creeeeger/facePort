.class public final Lkotlinx/coroutines/channels/ChannelSegment;
.super Lkotlinx/coroutines/internal/Segment;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _channel:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final data:Lkotlinx/atomicfu/AtomicArray;


# direct methods
.method public constructor <init>(JLkotlinx/coroutines/channels/ChannelSegment;Lkotlinx/coroutines/channels/BufferedChannel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/channels/ChannelSegment;",
            "Lkotlinx/coroutines/channels/BufferedChannel;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p5}, Lkotlinx/coroutines/internal/Segment;-><init>(JLkotlinx/coroutines/internal/Segment;I)V

    iput-object p4, p0, Lkotlinx/coroutines/channels/ChannelSegment;->_channel:Lkotlinx/coroutines/channels/BufferedChannel;

    sget p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    mul-int/lit8 p1, p1, 0x2

    new-instance p2, Lkotlinx/atomicfu/AtomicArray;

    invoke-direct {p2, p1}, Lkotlinx/atomicfu/AtomicArray;-><init>(I)V

    iput-object p2, p0, Lkotlinx/coroutines/channels/ChannelSegment;->data:Lkotlinx/atomicfu/AtomicArray;

    return-void
.end method


# virtual methods
.method public final casState$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lkotlinx/coroutines/channels/ChannelSegment;->data:Lkotlinx/atomicfu/AtomicArray;

    iget-object p0, p0, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2, p3}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getElement$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/ChannelSegment;->data:Lkotlinx/atomicfu/AtomicArray;

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    aget-object p0, p0, p1

    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public final getNumberOfSlots()I
    .locals 0

    sget p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    return p0
.end method

.method public final getState$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/ChannelSegment;->data:Lkotlinx/atomicfu/AtomicArray;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    aget-object p0, p0, p1

    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public final onCancellation(Lkotlin/coroutines/CoroutineContext;I)V
    .locals 6

    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    if-lt p2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sub-int/2addr p2, v0

    :cond_1
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->getElement$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host(I)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lkotlinx/coroutines/Waiter;

    const/4 v4, 0x0

    iget-object v5, p0, Lkotlinx/coroutines/channels/ChannelSegment;->_channel:Lkotlinx/coroutines/channels/BufferedChannel;

    if-nez v3, :cond_b

    instance-of v3, v2, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_3
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_SEND:Lkotlinx/coroutines/internal/Symbol;

    if-eq v2, v3, :cond_9

    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_RCV:Lkotlinx/coroutines/internal/Symbol;

    if-ne v2, v3, :cond_4

    goto :goto_3

    :cond_4
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->RESUMING_BY_EB:Lkotlinx/coroutines/internal/Symbol;

    if-eq v2, v3, :cond_2

    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->RESUMING_BY_RCV:Lkotlinx/coroutines/internal/Symbol;

    if-ne v2, v3, :cond_5

    goto :goto_1

    :cond_5
    sget-object p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->DONE_RCV:Lkotlinx/coroutines/internal/Symbol;

    if-eq v2, p0, :cond_8

    sget-object p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v2, p0, :cond_6

    goto :goto_2

    :cond_6
    sget-object p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v2, p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "unexpected state: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    return-void

    :cond_9
    :goto_3
    invoke-virtual {p0, p2, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->setElementLazy(ILjava/lang/Object;)V

    if-eqz v1, :cond_a

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, v5, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_a

    invoke-static {p0, v0, v4}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-static {p0, p1}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    :cond_a
    return-void

    :cond_b
    :goto_4
    if-eqz v1, :cond_c

    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_SEND:Lkotlinx/coroutines/internal/Symbol;

    goto :goto_5

    :cond_c
    sget-object v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_RCV:Lkotlinx/coroutines/internal/Symbol;

    :goto_5
    invoke-virtual {p0, p2, v2, v3}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p2, v4}, Lkotlinx/coroutines/channels/ChannelSegment;->setElementLazy(ILjava/lang/Object;)V

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, p2, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    if-eqz v1, :cond_d

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, v5, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_d

    invoke-static {p0, v0, v4}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-static {p0, p1}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    :cond_d
    return-void
.end method

.method public final onCancelledRequest(IZ)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object p2, p0, Lkotlinx/coroutines/channels/ChannelSegment;->_channel:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v0, v0

    iget-wide v2, p0, Lkotlinx/coroutines/internal/Segment;->id:J

    mul-long/2addr v2, v0

    int-to-long v0, p1

    add-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Lkotlinx/coroutines/channels/BufferedChannel;->waitExpandBufferCompletion$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host(J)V

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    return-void
.end method

.method public final setElementLazy(ILjava/lang/Object;)V
    .locals 0

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lkotlinx/coroutines/channels/ChannelSegment;->data:Lkotlinx/atomicfu/AtomicArray;

    iget-object p0, p0, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Lkotlinx/atomicfu/AtomicRef;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public final setState$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host(ILjava/lang/Object;)V
    .locals 0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lkotlinx/coroutines/channels/ChannelSegment;->data:Lkotlinx/atomicfu/AtomicArray;

    iget-object p0, p0, Lkotlinx/atomicfu/AtomicArray;->array:[Lkotlinx/atomicfu/AtomicRef;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    return-void
.end method
