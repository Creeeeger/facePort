.class public Lkotlinx/coroutines/CancellableContinuationImpl;
.super Lkotlinx/coroutines/DispatchedTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/CancellableContinuation;
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
.implements Lkotlinx/coroutines/Waiter;


# instance fields
.field public final _decisionAndIndex:Lkotlinx/atomicfu/AtomicInt;

.field public final _parentHandle:Lkotlinx/atomicfu/AtomicRef;

.field public final _state:Lkotlinx/atomicfu/AtomicRef;

.field public final context:Lkotlin/coroutines/CoroutineContext;

.field public final delegate:Lkotlin/coroutines/Continuation;


# direct methods
.method public constructor <init>(ILkotlin/coroutines/Continuation;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/DispatchedTask;-><init>(I)V

    iput-object p2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Lkotlinx/atomicfu/AtomicInt;

    const p2, 0x1fffffff

    invoke-direct {p1, p2}, Lkotlinx/atomicfu/AtomicInt;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decisionAndIndex:Lkotlinx/atomicfu/AtomicInt;

    sget-object p1, Lkotlinx/coroutines/Active;->INSTANCE:Lkotlinx/coroutines/Active;

    new-instance p2, Lkotlinx/atomicfu/AtomicRef;

    invoke-direct {p2, p1}, Lkotlinx/atomicfu/AtomicRef;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    new-instance p1, Lkotlinx/atomicfu/AtomicRef;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lkotlinx/atomicfu/AtomicRef;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_parentHandle:Lkotlinx/atomicfu/AtomicRef;

    return-void
.end method

.method public static multipleHandlersError(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", already has "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static resumedState(Lkotlinx/coroutines/NotCompleted;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p2}, Lkotlinx/coroutines/DispatchedTaskKt;->isCancellableMode(I)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    if-nez p3, :cond_2

    instance-of p2, p0, Lkotlinx/coroutines/CancelHandler;

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p2, Lkotlinx/coroutines/CompletedContinuation;

    instance-of v0, p0, Lkotlinx/coroutines/CancelHandler;

    if-eqz v0, :cond_3

    check-cast p0, Lkotlinx/coroutines/CancelHandler;

    :goto_0
    move-object v2, p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    const/16 v5, 0x10

    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/CompletedContinuation;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;I)V

    move-object p1, p2

    :goto_2
    return-object p1
.end method


# virtual methods
.method public final callCancelHandler(Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/CancelHandler;->invoke(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, p2}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    :goto_0
    return-void
.end method

.method public final callOnCancellation(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "onCancellation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cause"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in resume onCancellation handler for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, p2}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    :goto_0
    return-void
.end method

.method public final callSegmentOnCancellation(Lkotlinx/coroutines/internal/Segment;Ljava/lang/Throwable;)V
    .locals 3

    iget-object p2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decisionAndIndex:Lkotlinx/atomicfu/AtomicInt;

    iget p2, p2, Lkotlinx/atomicfu/AtomicInt;->value:I

    const v0, 0x1fffffff

    and-int/2addr p2, v0

    if-eq p2, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p1, p2, v0}, Lkotlinx/coroutines/internal/Segment;->onCancellation(ILkotlin/coroutines/CoroutineContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, p2}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    :goto_0
    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The index for Segment.onCancellation(..) is broken"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final cancel(Ljava/lang/Throwable;)Z
    .locals 6

    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    :cond_0
    iget-object v1, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    instance-of v2, v1, Lkotlinx/coroutines/NotCompleted;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    :cond_1
    new-instance v2, Lkotlinx/coroutines/CancelledContinuation;

    instance-of v4, v1, Lkotlinx/coroutines/CancelHandler;

    const/4 v5, 0x1

    if-nez v4, :cond_2

    instance-of v4, v1, Lkotlinx/coroutines/internal/Segment;

    if-eqz v4, :cond_3

    :cond_2
    move v3, v5

    :cond_3
    invoke-direct {v2, p0, p1, v3}, Lkotlinx/coroutines/CancelledContinuation;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Throwable;Z)V

    iget-object v3, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v3, v1, v2}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lkotlinx/coroutines/NotCompleted;

    instance-of v2, v0, Lkotlinx/coroutines/CancelHandler;

    if-eqz v2, :cond_4

    check-cast v1, Lkotlinx/coroutines/CancelHandler;

    invoke-virtual {p0, v1, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->callCancelHandler(Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    instance-of v0, v0, Lkotlinx/coroutines/internal/Segment;

    if-eqz v0, :cond_5

    check-cast v1, Lkotlinx/coroutines/internal/Segment;

    invoke-virtual {p0, v1, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->callSegmentOnCancellation(Lkotlinx/coroutines/internal/Segment;Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isReusable()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChild$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()V

    :cond_6
    iget p1, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->dispatchResume(I)V

    return v5
.end method

.method public final cancelCompletedResult$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 9

    const-string p1, "cause"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    :cond_0
    iget-object v6, p1, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    instance-of v0, v6, Lkotlinx/coroutines/NotCompleted;

    if-nez v0, :cond_7

    instance-of v0, v6, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    instance-of v0, v6, Lkotlinx/coroutines/CompletedContinuation;

    if-eqz v0, :cond_6

    move-object v0, v6

    check-cast v0, Lkotlinx/coroutines/CompletedContinuation;

    iget-object v1, v0, Lkotlinx/coroutines/CompletedContinuation;->cancelCause:Ljava/lang/Throwable;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v1, v2

    if-eqz v1, :cond_5

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-static {v0, v2, p2, v1}, Lkotlinx/coroutines/CompletedContinuation;->copy$default(Lkotlinx/coroutines/CompletedContinuation;Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;I)Lkotlinx/coroutines/CompletedContinuation;

    move-result-object v1

    iget-object v2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v2, v6, v1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, v0, Lkotlinx/coroutines/CompletedContinuation;->cancelHandler:Lkotlinx/coroutines/CancelHandler;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->callCancelHandler(Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;)V

    :cond_3
    iget-object p1, v0, Lkotlinx/coroutines/CompletedContinuation;->onCancellation:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->callOnCancellation(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must be called at most once"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    iget-object v7, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    new-instance v8, Lkotlinx/coroutines/CompletedContinuation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0xe

    move-object v0, v8

    move-object v1, v6

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/CompletedContinuation;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;I)V

    invoke-virtual {v7, v6, v8}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not completed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final completeResume(Ljava/lang/Object;)V
    .locals 0

    iget p1, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->dispatchResume(I)V

    return-void
.end method

.method public final detachChild$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_parentHandle:Lkotlinx/atomicfu/AtomicRef;

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/DisposableHandle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    iget-object p0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_parentHandle:Lkotlinx/atomicfu/AtomicRef;

    sget-object v0, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    invoke-virtual {p0, v0}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final dispatchResume(I)V
    .locals 5

    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decisionAndIndex:Lkotlinx/atomicfu/AtomicInt;

    :cond_0
    iget v1, v0, Lkotlinx/atomicfu/AtomicInt;->value:I

    shr-int/lit8 v2, v1, 0x1d

    if-eqz v2, :cond_7

    const/4 v0, 0x1

    if-ne v2, v0, :cond_6

    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_5

    instance-of v3, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;

    if-eqz v3, :cond_5

    invoke-static {p1}, Lkotlinx/coroutines/DispatchedTaskKt;->isCancellableMode(I)Z

    move-result p1

    iget v3, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    invoke-static {v3}, Lkotlinx/coroutines/DispatchedTaskKt;->isCancellableMode(I)Z

    move-result v3

    if-ne p1, v3, :cond_5

    move-object p1, v1

    check-cast p1, Lkotlinx/coroutines/internal/DispatchedContinuation;

    iget-object p1, p1, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v1, Lkotlinx/coroutines/internal/DispatchedContinuation;

    iget-object v1, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    invoke-interface {v1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/ThreadLocalEventLoop;->getEventLoop$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()Lkotlinx/coroutines/EventLoopImplBase;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/coroutines/EventLoopImplBase;->isUnconfinedLoopActive()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/EventLoopImplBase;->dispatchUnconfined(Lkotlinx/coroutines/DispatchedTask;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/EventLoopImplBase;->incrementUseCount(Z)V

    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    invoke-static {p0, v1, v0}, Lkotlinx/coroutines/DispatchedTaskKt;->resume(Lkotlinx/coroutines/DispatchedTask;Lkotlin/coroutines/Continuation;Z)V

    :cond_4
    invoke-virtual {p1}, Lkotlinx/coroutines/EventLoopImplBase;->processUnconfinedEvent()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    :goto_1
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/EventLoopImplBase;->decrementUseCount(Z)V

    goto :goto_2

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v1, v2}, Lkotlinx/coroutines/DispatchedTask;->handleFatalException$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/EventLoopImplBase;->decrementUseCount(Z)V

    throw p0

    :cond_5
    invoke-static {p0, v1, v2}, Lkotlinx/coroutines/DispatchedTaskKt;->resume(Lkotlinx/coroutines/DispatchedTask;Lkotlin/coroutines/Continuation;Z)V

    :goto_2
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already resumed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iget-object v2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decisionAndIndex:Lkotlinx/atomicfu/AtomicInt;

    const v3, 0x1fffffff

    and-int/2addr v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    add-int/2addr v4, v3

    invoke-virtual {v2, v1, v4}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public final getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public getContinuationCancellationCause(Lkotlinx/coroutines/JobSupport;)Ljava/lang/Throwable;
    .locals 0

    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0
.end method

.method public final getDelegate$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()Lkotlin/coroutines/Continuation;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    return-object p0
.end method

.method public final getExceptionalResult$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    invoke-super {p0, p1}, Lkotlinx/coroutines/DispatchedTask;->getExceptionalResult$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isReusable()Z

    move-result v0

    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decisionAndIndex:Lkotlinx/atomicfu/AtomicInt;

    :cond_0
    iget v2, v1, Lkotlinx/atomicfu/AtomicInt;->value:I

    shr-int/lit8 v3, v2, 0x1d

    if-eqz v3, :cond_6

    const/4 v1, 0x2

    if-ne v3, v1, :cond_5

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()V

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-nez v1, :cond_4

    iget v1, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    invoke-static {v1}, Lkotlinx/coroutines/DispatchedTaskKt;->isCancellableMode(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    sget-object v2, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lkotlinx/coroutines/Job;->isActive$1()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancelCompletedResult$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host(Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getSuccessfulResult$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object p0, v0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already suspended"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    iget-object v3, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decisionAndIndex:Lkotlinx/atomicfu/AtomicInt;

    const v4, 0x1fffffff

    and-int/2addr v4, v2

    const/high16 v5, 0x20000000

    add-int/2addr v5, v4

    invoke-virtual {v3, v2, v5}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_parentHandle:Lkotlinx/atomicfu/AtomicRef;

    iget-object v1, v1, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/DisposableHandle;

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->installParentHandle()Lkotlinx/coroutines/DisposableHandle;

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()V

    :cond_8
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0
.end method

.method public final getSuccessfulResult$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    instance-of p0, p1, Lkotlinx/coroutines/CompletedContinuation;

    if-eqz p0, :cond_0

    check-cast p1, Lkotlinx/coroutines/CompletedContinuation;

    iget-object p1, p1, Lkotlinx/coroutines/CompletedContinuation;->result:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final initCancellability()V
    .locals 2

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->installParentHandle()Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    iget-object p0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_parentHandle:Lkotlinx/atomicfu/AtomicRef;

    sget-object v0, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    invoke-virtual {p0, v0}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final installParentHandle()Lkotlinx/coroutines/DisposableHandle;
    .locals 5

    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    sget-object v1, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lkotlinx/coroutines/ChildContinuation;

    invoke-direct {v2, p0}, Lkotlinx/coroutines/ChildContinuation;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v0, v4, v2, v3}, Lkotlinx/coroutines/Job$DefaultImpls;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZLkotlinx/coroutines/JobNode;I)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    iget-object p0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_parentHandle:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {p0, v1, v0}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lkotlinx/coroutines/CancelHandler;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/CancelHandler;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/InvokeOnCancel;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/InvokeOnCancel;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellationImpl(Ljava/lang/Object;)V

    return-void
.end method

.method public final invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V
    .locals 4

    const-string/jumbo v0, "segment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decisionAndIndex:Lkotlinx/atomicfu/AtomicInt;

    :cond_0
    iget v1, v0, Lkotlinx/atomicfu/AtomicInt;->value:I

    const v2, 0x1fffffff

    and-int v3, v1, v2

    if-ne v3, v2, :cond_1

    shr-int/lit8 v2, v1, 0x1d

    shl-int/lit8 v2, v2, 0x1d

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellationImpl(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "invokeOnCancellation should be called at most once"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final invokeOnCancellationImpl(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    :cond_0
    iget-object v7, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    instance-of v1, v7, Lkotlinx/coroutines/Active;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v1, v7, p1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_1
    instance-of v1, v7, Lkotlinx/coroutines/CancelHandler;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    instance-of v1, v7, Lkotlinx/coroutines/internal/Segment;

    :goto_0
    const/4 v3, 0x0

    if-nez v1, :cond_e

    instance-of v1, v7, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v1, :cond_8

    move-object v0, v7

    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v1, v0, Lkotlinx/coroutines/CompletedExceptionally;->_handled:Lkotlinx/atomicfu/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_7

    instance-of v1, v7, Lkotlinx/coroutines/CancelledContinuation;

    if-eqz v1, :cond_6

    instance-of v1, v7, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_4

    iget-object v3, v0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    :cond_4
    instance-of v0, p1, Lkotlinx/coroutines/CancelHandler;

    if-eqz v0, :cond_5

    check-cast p1, Lkotlinx/coroutines/CancelHandler;

    invoke-virtual {p0, p1, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->callCancelHandler(Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/coroutines/internal/Segment;

    invoke-virtual {p0, p1, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->callSegmentOnCancellation(Lkotlinx/coroutines/internal/Segment;Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    invoke-static {p1, v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->multipleHandlersError(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v3

    :cond_8
    instance-of v1, v7, Lkotlinx/coroutines/CompletedContinuation;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler"

    if-eqz v1, :cond_c

    move-object v1, v7

    check-cast v1, Lkotlinx/coroutines/CompletedContinuation;

    iget-object v4, v1, Lkotlinx/coroutines/CompletedContinuation;->cancelHandler:Lkotlinx/coroutines/CancelHandler;

    if-nez v4, :cond_b

    instance-of v4, p1, Lkotlinx/coroutines/internal/Segment;

    if-eqz v4, :cond_9

    return-void

    :cond_9
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/CancelHandler;

    iget-object v4, v1, Lkotlinx/coroutines/CompletedContinuation;->cancelCause:Ljava/lang/Throwable;

    if-eqz v4, :cond_a

    invoke-virtual {p0, v2, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->callCancelHandler(Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;)V

    return-void

    :cond_a
    const/16 v4, 0x1d

    invoke-static {v1, v2, v3, v4}, Lkotlinx/coroutines/CompletedContinuation;->copy$default(Lkotlinx/coroutines/CompletedContinuation;Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;I)Lkotlinx/coroutines/CompletedContinuation;

    move-result-object v1

    iget-object v2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v2, v7, v1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_b
    invoke-static {p1, v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->multipleHandlersError(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v3

    :cond_c
    instance-of v1, p1, Lkotlinx/coroutines/internal/Segment;

    if-eqz v1, :cond_d

    return-void

    :cond_d
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/CancelHandler;

    new-instance v8, Lkotlinx/coroutines/CompletedContinuation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    move-object v1, v8

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lkotlinx/coroutines/CompletedContinuation;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;I)V

    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v1, v7, v8}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_e
    invoke-static {p1, v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->multipleHandlersError(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v3
.end method

.method public final isCompleted()Z
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    instance-of p0, p0, Lkotlinx/coroutines/NotCompleted;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isReusable()Z
    .locals 2

    iget v0, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    iget-object p0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public nameString()Ljava/lang/String;
    .locals 0

    const-string p0, "CancellableContinuation"

    return-object p0
.end method

.method public final releaseClaimedReusableContinuation$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()V
    .locals 5

    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_6

    iget-object v1, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    :cond_1
    iget-object v3, v1, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    sget-object v4, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v3, v4, :cond_2

    iget-object v3, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v3, v4, p0}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_2
    instance-of v1, v3, Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    iget-object v0, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_reusableCancellableContinuation:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v0, v3, v2}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v2, v3

    check-cast v2, Ljava/lang/Throwable;

    :goto_1
    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChild$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()V

    invoke-virtual {p0, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancel(Ljava/lang/Throwable;)Z

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    return-void
.end method

.method public final resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    iget v0, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    invoke-virtual {p0, p1, v0, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final resumeImpl(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    :cond_0
    iget-object v1, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    instance-of v2, v1, Lkotlinx/coroutines/NotCompleted;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/NotCompleted;

    invoke-static {v2, p1, p2, p3}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumedState(Lkotlinx/coroutines/NotCompleted;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v3, v1, v2}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isReusable()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChild$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()V

    :cond_1
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->dispatchResume(I)V

    return-void

    :cond_2
    instance-of p2, v1, Lkotlinx/coroutines/CancelledContinuation;

    if-eqz p2, :cond_4

    check-cast v1, Lkotlinx/coroutines/CancelledContinuation;

    iget-object p2, v1, Lkotlinx/coroutines/CancelledContinuation;->_resumed:Lkotlinx/atomicfu/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    iget-object p1, v1, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    invoke-virtual {p0, p3, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->callOnCancellation(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Already resumed, but proposed with update "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 4

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v1, "<this>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    instance-of v2, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lkotlinx/coroutines/internal/DispatchedContinuation;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    if-ne v1, p1, :cond_2

    const/4 p1, 0x4

    goto :goto_2

    :cond_2
    iget p1, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    :goto_2
    invoke-virtual {p0, v0, p1, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;Z)V

    :goto_0
    iget v0, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final takeState$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->nameString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlinx/coroutines/DebugStringsKt;->toDebugString(Lkotlin/coroutines/Continuation;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    iget-object v2, v2, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    instance-of v3, v2, Lkotlinx/coroutines/NotCompleted;

    if-eqz v3, :cond_0

    const-string v2, "Active"

    goto :goto_0

    :cond_0
    instance-of v2, v2, Lkotlinx/coroutines/CancelledContinuation;

    if-eqz v2, :cond_1

    const-string v2, "Cancelled"

    goto :goto_0

    :cond_1
    const-string v2, "Completed"

    :goto_0
    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "){"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}@"

    invoke-static {v3, v0, p0}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final tryResume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->tryResumeImpl(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object p0

    return-object p0
.end method

.method public final tryResumeImpl(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    :cond_0
    iget-object v1, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    instance-of v2, v1, Lkotlinx/coroutines/NotCompleted;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/NotCompleted;

    iget v3, p0, Lkotlinx/coroutines/DispatchedTask;->resumeMode:I

    invoke-static {v2, p1, v3, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumedState(Lkotlinx/coroutines/NotCompleted;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v3, v1, v2}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isReusable()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChild$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()V

    :cond_1
    sget-object p0, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    return-object p0

    :cond_2
    instance-of p0, v1, Lkotlinx/coroutines/CompletedContinuation;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final tryResumeWithException(Ljava/lang/Throwable;)Lkotlinx/coroutines/internal/Symbol;
    .locals 2

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->tryResumeImpl(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object p0

    return-object p0
.end method
