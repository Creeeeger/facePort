.class public final Lcom/android/systemui/util/kotlin/DisposableHandleExtKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final awaitCancellationThenDispose(Lkotlinx/coroutines/DisposableHandle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/DisposableHandle;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/android/systemui/util/kotlin/DisposableHandleExtKt$awaitCancellationThenDispose$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/util/kotlin/DisposableHandleExtKt$awaitCancellationThenDispose$1;

    iget v1, v0, Lcom/android/systemui/util/kotlin/DisposableHandleExtKt$awaitCancellationThenDispose$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/util/kotlin/DisposableHandleExtKt$awaitCancellationThenDispose$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/util/kotlin/DisposableHandleExtKt$awaitCancellationThenDispose$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/util/kotlin/DisposableHandleExtKt$awaitCancellationThenDispose$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/systemui/util/kotlin/DisposableHandleExtKt$awaitCancellationThenDispose$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/util/kotlin/DisposableHandleExtKt$awaitCancellationThenDispose$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, v0, Lcom/android/systemui/util/kotlin/DisposableHandleExtKt$awaitCancellationThenDispose$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/DisposableHandle;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iput-object p0, v0, Lcom/android/systemui/util/kotlin/DisposableHandleExtKt$awaitCancellationThenDispose$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/util/kotlin/DisposableHandleExtKt$awaitCancellationThenDispose$1;->label:I

    invoke-static {v0}, Lkotlinx/coroutines/DelayKt;->awaitCancellation(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-interface {p0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    throw p1
.end method

.method public static final launchAndDispose(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlinx/coroutines/CoroutineStart;",
            "Lkotlin/jvm/functions/Function0;",
            ")",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/kotlin/DisposableHandleExtKt$launchAndDispose$1;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/android/systemui/util/kotlin/DisposableHandleExtKt$launchAndDispose$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, p1, p2, v0}, Lkotlinx/coroutines/BuildersKt;->launch(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic launchAndDispose$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    sget-object p2, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    :cond_1
    new-instance p4, Lcom/android/systemui/util/kotlin/DisposableHandleExtKt$launchAndDispose$1;

    const/4 p5, 0x0

    invoke-direct {p4, p3, p5}, Lcom/android/systemui/util/kotlin/DisposableHandleExtKt$launchAndDispose$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, p1, p2, p4}, Lkotlinx/coroutines/BuildersKt;->launch(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object p0

    return-object p0
.end method
