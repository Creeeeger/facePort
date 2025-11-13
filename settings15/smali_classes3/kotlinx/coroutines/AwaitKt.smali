.class public abstract Lkotlinx/coroutines/AwaitKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/AwaitAll;

    const/4 v2, 0x0

    new-array v3, v2, [Lkotlinx/coroutines/Deferred;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkotlinx/coroutines/Deferred;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/AwaitAll;-><init>([Lkotlinx/coroutines/Deferred;)V

    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-direct {v3, v0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    array-length p1, p0

    new-array v4, p1, [Lkotlinx/coroutines/AwaitAll$AwaitAllNode;

    move v5, v2

    :goto_0
    if-ge v5, p1, :cond_1

    aget-object v6, p0, v5

    check-cast v6, Lkotlinx/coroutines/JobSupport;

    invoke-virtual {v6}, Lkotlinx/coroutines/JobSupport;->start()Z

    new-instance v7, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;

    invoke-direct {v7, v1, v3}, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;-><init>(Lkotlinx/coroutines/AwaitAll;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    invoke-virtual {v6, v7}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v6

    iput-object v6, v7, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;->handle:Lkotlinx/coroutines/DisposableHandle;

    aput-object v7, v4, v5

    add-int/2addr v5, v0

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;

    invoke-direct {p0, v4}, Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;-><init>([Lkotlinx/coroutines/AwaitAll$AwaitAllNode;)V

    :goto_1
    if-ge v2, p1, :cond_2

    aget-object v1, v4, v2

    iget-object v1, v1, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;->_disposer:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v1, p0}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    add-int/2addr v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;->disposeAll()V

    goto :goto_2

    :cond_3
    invoke-virtual {v3, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    :goto_2
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0
.end method
