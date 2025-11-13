.class public abstract Lkotlinx/coroutines/CancellableContinuationKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final disposeOnCancellation(Lkotlinx/coroutines/CancellableContinuationImpl;Lkotlinx/coroutines/DisposableHandle;)V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/DisposeOnCancel;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/DisposeOnCancel;-><init>(Lkotlinx/coroutines/DisposableHandle;)V

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;
    .locals 6

    instance-of v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    if-nez v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    return-object v0

    :cond_0
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    iget-object v1, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    :cond_1
    :goto_0
    iget-object v2, v1, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-object v0, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    sget-object v1, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v0, v1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    move-object v2, v3

    goto :goto_1

    :cond_2
    instance-of v4, v2, Lkotlinx/coroutines/CancellableContinuationImpl;

    if-eqz v4, :cond_6

    iget-object v4, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    sget-object v5, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v4, v2, v5}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v2, Lkotlinx/coroutines/CancellableContinuationImpl;

    :goto_1
    if-eqz v2, :cond_5

    iget-object v0, v2, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/CompletedContinuation;

    if-eqz v1, :cond_3

    check-cast v0, Lkotlinx/coroutines/CompletedContinuation;

    iget-object v0, v0, Lkotlinx/coroutines/CompletedContinuation;->idempotentResume:Ljava/lang/Object;

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChild$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()V

    goto :goto_2

    :cond_3
    iget-object v0, v2, Lkotlinx/coroutines/CancellableContinuationImpl;->_decisionAndIndex:Lkotlinx/atomicfu/AtomicInt;

    const v1, 0x1fffffff

    invoke-virtual {v0, v1}, Lkotlinx/atomicfu/AtomicInt;->setValue(I)V

    iget-object v0, v2, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    sget-object v1, Lkotlinx/coroutines/Active;->INSTANCE:Lkotlinx/coroutines/Active;

    invoke-virtual {v0, v1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    move-object v3, v2

    :goto_2
    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    return-object v3

    :cond_5
    :goto_3
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    return-object v0

    :cond_6
    sget-object v3, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    if-eq v2, v3, :cond_1

    instance-of v3, v2, Ljava/lang/Throwable;

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
