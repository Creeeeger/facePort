.class final Lcom/android/systemui/util/kotlin/ParallelKt$mapParallel$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $this_mapParallel:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $transform:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/util/kotlin/ParallelKt$mapParallel$2;->$this_mapParallel:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/android/systemui/util/kotlin/ParallelKt$mapParallel$2;->$transform:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Lkotlin/coroutines/Continuation;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/kotlin/ParallelKt$mapParallel$2;

    iget-object v1, p0, Lcom/android/systemui/util/kotlin/ParallelKt$mapParallel$2;->$this_mapParallel:Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/ParallelKt$mapParallel$2;->$transform:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, p0, p2}, Lcom/android/systemui/util/kotlin/ParallelKt$mapParallel$2;-><init>(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/util/kotlin/ParallelKt$mapParallel$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/kotlin/ParallelKt$mapParallel$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/kotlin/ParallelKt$mapParallel$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/kotlin/ParallelKt$mapParallel$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/kotlin/ParallelKt$mapParallel$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/android/systemui/util/kotlin/ParallelKt$mapParallel$2;->label:I

    if-eqz v3, :cond_1

    if-ne v3, v1, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/util/kotlin/ParallelKt$mapParallel$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, p0, Lcom/android/systemui/util/kotlin/ParallelKt$mapParallel$2;->$this_mapParallel:Ljava/lang/Iterable;

    iget-object v4, p0, Lcom/android/systemui/util/kotlin/ParallelKt$mapParallel$2;->$transform:Lkotlin/jvm/functions/Function2;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lkotlinx/coroutines/CoroutineStart;->LAZY:Lkotlinx/coroutines/CoroutineStart;

    new-instance v8, Lcom/android/systemui/util/kotlin/ParallelKt$mapParallel$2$1$1;

    const/4 v9, 0x0

    invoke-direct {v8, v4, v6, v9}, Lcom/android/systemui/util/kotlin/ParallelKt$mapParallel$2$1$1;-><init>(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v9, v7, v8, v1}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/android/systemui/util/kotlin/ParallelKt$mapParallel$2;->label:I

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_1
    move-object p1, p0

    goto :goto_5

    :cond_3
    new-instance p1, Lkotlinx/coroutines/AwaitAll;

    new-array v3, v0, [Lkotlinx/coroutines/Deferred;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lkotlinx/coroutines/Deferred;

    invoke-direct {p1, v3}, Lkotlinx/coroutines/AwaitAll;-><init>([Lkotlinx/coroutines/Deferred;)V

    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    invoke-direct {v3, p0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    iget-object p0, p1, Lkotlinx/coroutines/AwaitAll;->deferreds:[Lkotlinx/coroutines/Deferred;

    array-length v4, p0

    new-array v5, v4, [Lkotlinx/coroutines/AwaitAll$AwaitAllNode;

    move v6, v0

    :goto_2
    if-ge v6, v4, :cond_4

    aget-object v7, p0, v6

    check-cast v7, Lkotlinx/coroutines/JobSupport;

    invoke-virtual {v7}, Lkotlinx/coroutines/JobSupport;->start()Z

    new-instance v8, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;

    invoke-direct {v8, p1, v3}, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;-><init>(Lkotlinx/coroutines/AwaitAll;Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-virtual {v7, v0, v1, v8}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v7

    iput-object v7, v8, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;->handle:Lkotlinx/coroutines/DisposableHandle;

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    aput-object v8, v5, v6

    add-int/2addr v6, v1

    goto :goto_2

    :cond_4
    new-instance p0, Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;

    invoke-direct {p0, p1, v5}, Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;-><init>(Lkotlinx/coroutines/AwaitAll;[Lkotlinx/coroutines/AwaitAll$AwaitAllNode;)V

    :goto_3
    if-ge v0, v4, :cond_5

    aget-object p1, v5, v0

    iget-object p1, p1, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;->_disposer:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {p1, p0}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    add-int/2addr v0, v1

    goto :goto_3

    :cond_5
    iget-object p1, v3, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Lkotlinx/atomicfu/AtomicRef;

    iget-object p1, p1, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    instance-of p1, p1, Lkotlinx/coroutines/NotCompleted;

    xor-int/2addr p1, v1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;->disposeAll()V

    goto :goto_4

    :cond_6
    invoke-virtual {v3, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    :goto_4
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    goto :goto_1

    :goto_5
    if-ne p1, v2, :cond_7

    return-object v2

    :cond_7
    :goto_6
    return-object p1
.end method
