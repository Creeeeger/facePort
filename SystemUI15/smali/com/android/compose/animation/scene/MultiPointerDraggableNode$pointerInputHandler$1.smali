.class final Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInputHandler$1;
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
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/compose/animation/scene/MultiPointerDraggableNode;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/MultiPointerDraggableNode;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/compose/animation/scene/MultiPointerDraggableNode;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInputHandler$1;->this$0:Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInputHandler$1;

    iget-object p0, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInputHandler$1;->this$0:Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    invoke-direct {v0, p0, p2}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInputHandler$1;-><init>(Lcom/android/compose/animation/scene/MultiPointerDraggableNode;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInputHandler$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInputHandler$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInputHandler$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInputHandler$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInputHandler$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInputHandler$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    iget-object v1, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInputHandler$1;->this$0:Lcom/android/compose/animation/scene/MultiPointerDraggableNode;

    iput v2, p0, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInputHandler$1;->label:I

    iget-object v2, v1, Lcom/android/compose/animation/scene/MultiPointerDraggableNode;->enabled:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v1, v3}, Lcom/android/compose/animation/scene/MultiPointerDraggableNode$pointerInput$2;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Lcom/android/compose/animation/scene/MultiPointerDraggableNode;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, p0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
