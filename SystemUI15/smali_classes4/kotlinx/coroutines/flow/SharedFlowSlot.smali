.class public final Lkotlinx/coroutines/flow/SharedFlowSlot;
.super Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public cont:Lkotlinx/coroutines/CancellableContinuationImpl;

.field public index:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    return-void
.end method


# virtual methods
.method public final allocateLocked(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)Z
    .locals 4

    check-cast p1, Lkotlinx/coroutines/flow/SharedFlowImpl;

    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    iget-wide v2, p1, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    iput-wide v0, p1, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    :cond_1
    iput-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final freeLocked(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)[Lkotlin/coroutines/Continuation;
    .locals 4

    check-cast p1, Lkotlinx/coroutines/flow/SharedFlowImpl;

    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    const/4 v2, 0x0

    iput-object v2, p0, Lkotlinx/coroutines/flow/SharedFlowSlot;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {p1, v0, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->updateCollectorIndexLocked$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host(J)[Lkotlin/coroutines/Continuation;

    move-result-object p0

    return-object p0
.end method
