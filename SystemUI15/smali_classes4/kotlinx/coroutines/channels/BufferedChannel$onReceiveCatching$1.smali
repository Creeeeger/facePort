.class final synthetic Lkotlinx/coroutines/channels/BufferedChannel$onReceiveCatching$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceiveCatching$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/channels/BufferedChannel$onReceiveCatching$1;

    invoke-direct {v0}, Lkotlinx/coroutines/channels/BufferedChannel$onReceiveCatching$1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannel$onReceiveCatching$1;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannel$onReceiveCatching$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "registerSelectForReceive(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, Lkotlinx/coroutines/channels/BufferedChannel;

    const-string v3, "registerSelectForReceive"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Lkotlinx/coroutines/channels/BufferedChannel;

    check-cast p2, Lkotlinx/coroutines/selects/SelectInstance;

    iget-object p0, p1, Lkotlinx/coroutines/channels/BufferedChannel;->receiveSegment:Lkotlinx/atomicfu/AtomicRef;

    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelSegment;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    check-cast p2, Lkotlinx/coroutines/selects/SelectImplementation;

    iput-object p0, p2, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    goto :goto_2

    :cond_1
    iget-object p3, p1, Lkotlinx/coroutines/channels/BufferedChannel;->receivers:Lkotlinx/atomicfu/AtomicLong;

    invoke-virtual {p3}, Lkotlinx/atomicfu/AtomicLong;->getAndIncrement()J

    move-result-wide v6

    sget p3, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v0, p3

    div-long v2, v6, v0

    rem-long v0, v6, v0

    long-to-int p3, v0

    iget-wide v0, p0, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    invoke-virtual {p1, v2, v3, p0}, Lkotlinx/coroutines/channels/BufferedChannel;->findSegmentReceive(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v0

    :cond_3
    move-object v0, p1

    move-object v1, p0

    move v2, p3

    move-wide v3, v6

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lkotlinx/coroutines/channels/BufferedChannel;->updateCellReceive(Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SUSPEND:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_5

    instance-of p1, p2, Lkotlinx/coroutines/Waiter;

    if-eqz p1, :cond_4

    check-cast p2, Lkotlinx/coroutines/Waiter;

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_7

    invoke-interface {p2, p0, p3}, Lkotlinx/coroutines/Waiter;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    goto :goto_2

    :cond_5
    sget-object p3, Lkotlinx/coroutines/channels/BufferedChannelKt;->FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, p3, :cond_6

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()J

    move-result-wide v0

    cmp-long p3, v6, v0

    if-gez p3, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    goto :goto_0

    :cond_6
    sget-object p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SUSPEND_NO_WAITER:Lkotlinx/coroutines/internal/Symbol;

    if-eq v0, p1, :cond_8

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->cleanPrev()V

    check-cast p2, Lkotlinx/coroutines/selects/SelectImplementation;

    iput-object v0, p2, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    :cond_7
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
