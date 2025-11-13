.class final Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/compose/animation/scene/MultiPointerDraggableNode;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/compose/animation/scene/MultiPointerDraggableNode;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/compose/animation/scene/MultiPointerDraggableNode;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1;->this$0:Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1;

    iget-object v1, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1;->this$0:Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    invoke-direct {v0, v1, p0, p2}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/compose/animation/scene/MultiPointerDraggableNode;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    move-object v1, p1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    if-eqz p1, :cond_4

    :try_start_1
    iget-object v3, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1;->this$0:Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    iget-object v5, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v6, v3, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->startDragImmediately:Lkotlin/jvm/functions/Function1;

    new-instance v7, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1$1;

    invoke-direct {v7, v3}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1$1;-><init>(Lcom/android/compose/animation/scene/MultiPointerDraggableNode;)V

    new-instance v8, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1$2;

    iget-object p1, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1;->this$0:Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    invoke-direct {v8, p1}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1$2;-><init>(Lcom/android/compose/animation/scene/MultiPointerDraggableNode;)V

    new-instance v9, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1$3;

    iget-object p1, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1;->this$0:Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    invoke-direct {v9, p1}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1$3;-><init>(Lcom/android/compose/animation/scene/MultiPointerDraggableNode;)V

    sget-object v10, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1$4;->INSTANCE:Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1$4;

    iget-object p1, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1;->this$0:Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    iget-object v11, p1, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->swipeDetector:Lcom/android/compose/animation/scene/SwipeDetector;

    iput-object v1, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1;->label:I

    move-object v4, v1

    move-object v12, p0

    invoke-static/range {v3 .. v12}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->access$detectDragGestures(Lcom/android/compose/animation/scene/MultiPointerDraggableNode;Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/android/compose/animation/scene/SwipeDetector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_2

    return-object v0

    :goto_1
    iget-object v3, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    throw p1

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
