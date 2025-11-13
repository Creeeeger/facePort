.class public final Lkotlinx/coroutines/DispatchedCoroutine;
.super Lkotlinx/coroutines/internal/ScopeCoroutine;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final _decision:Lkotlinx/atomicfu/AtomicInt;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string/jumbo v0, "uCont"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/internal/ScopeCoroutine;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;)V

    new-instance p1, Lkotlinx/atomicfu/AtomicInt;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lkotlinx/atomicfu/AtomicInt;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/DispatchedCoroutine;->_decision:Lkotlinx/atomicfu/AtomicInt;

    return-void
.end method


# virtual methods
.method public final afterCompletion(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/DispatchedCoroutine;->afterResume(Ljava/lang/Object;)V

    return-void
.end method

.method public final afterResume(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/DispatchedCoroutine;->_decision:Lkotlinx/atomicfu/AtomicInt;

    :cond_0
    iget v1, v0, Lkotlinx/atomicfu/AtomicInt;->value:I

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/internal/ScopeCoroutine;->uCont:Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    iget-object p0, p0, Lkotlinx/coroutines/internal/ScopeCoroutine;->uCont:Lkotlin/coroutines/Continuation;

    invoke-static {p1, p0}, Lkotlinx/coroutines/CompletionStateKt;->recoverResult(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->resumeCancellableWith(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already resumed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v1, p0, Lkotlinx/coroutines/DispatchedCoroutine;->_decision:Lkotlinx/atomicfu/AtomicInt;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method
