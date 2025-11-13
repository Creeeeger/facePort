.class public final Lkotlinx/coroutines/ChildContinuation;
.super Lkotlinx/coroutines/JobCancellingNode;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final child:Lkotlinx/coroutines/CancellableContinuationImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuationImpl;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lkotlinx/coroutines/JobCancellingNode;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/ChildContinuation;->child:Lkotlinx/coroutines/CancellableContinuationImpl;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/ChildContinuation;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 6

    iget-object p1, p0, Lkotlinx/coroutines/ChildContinuation;->child:Lkotlinx/coroutines/CancellableContinuationImpl;

    iget-object p0, p0, Lkotlinx/coroutines/JobNode;->job:Lkotlinx/coroutines/JobSupport;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContinuationCancellationCause(Lkotlinx/coroutines/JobSupport;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->isReusable()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    check-cast v1, Lkotlinx/coroutines/internal/DispatchedContinuation;

    iget-object v2, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    :cond_2
    iget-object v3, v2, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    sget-object v4, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v3, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v3, v4, p0}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_3
    instance-of v4, v3, Ljava/lang/Throwable;

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    iget-object v4, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v4, v3, v0}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancel(Ljava/lang/Throwable;)Z

    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->isReusable()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChild$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()V

    :cond_5
    :goto_2
    return-void
.end method
