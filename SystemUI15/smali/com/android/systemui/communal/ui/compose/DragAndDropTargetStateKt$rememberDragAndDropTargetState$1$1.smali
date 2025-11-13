.class final Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$rememberDragAndDropTargetState$1$1;
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
.field final synthetic $autoScrollSpeed:Landroidx/compose/runtime/MutableFloatState;

.field final synthetic $gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableFloatState;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$rememberDragAndDropTargetState$1$1;->$autoScrollSpeed:Landroidx/compose/runtime/MutableFloatState;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$rememberDragAndDropTargetState$1$1;->$gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$rememberDragAndDropTargetState$1$1;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$rememberDragAndDropTargetState$1$1;->$autoScrollSpeed:Landroidx/compose/runtime/MutableFloatState;

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$rememberDragAndDropTargetState$1$1;->$gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-direct {v0, v1, p0, p2}, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$rememberDragAndDropTargetState$1$1;-><init>(Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$rememberDragAndDropTargetState$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$rememberDragAndDropTargetState$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$rememberDragAndDropTargetState$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$rememberDragAndDropTargetState$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$rememberDragAndDropTargetState$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$rememberDragAndDropTargetState$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_0
    move-object p1, v1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$rememberDragAndDropTargetState$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$rememberDragAndDropTargetState$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$rememberDragAndDropTargetState$1$1;->$autoScrollSpeed:Landroidx/compose/runtime/MutableFloatState;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v1

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_0
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$rememberDragAndDropTargetState$1$1;->$gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object v4, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$rememberDragAndDropTargetState$1$1;->$autoScrollSpeed:Landroidx/compose/runtime/MutableFloatState;

    check-cast v4, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v4

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$rememberDragAndDropTargetState$1$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$rememberDragAndDropTargetState$1$1;->label:I

    invoke-static {v1, v4, p0}, Landroidx/compose/foundation/gestures/ScrollExtensionsKt;->scrollBy(Landroidx/compose/foundation/gestures/ScrollableState;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v1, p1

    :goto_1
    iput-object v1, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$rememberDragAndDropTargetState$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/communal/ui/compose/DragAndDropTargetStateKt$rememberDragAndDropTargetState$1$1;->label:I

    const-wide/16 v4, 0xa

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
