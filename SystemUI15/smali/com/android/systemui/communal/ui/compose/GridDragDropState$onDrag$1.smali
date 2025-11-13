.class final Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$1;
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
.field final synthetic $draggingItem:Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

.field final synthetic $scrollToIndex:Ljava/lang/Integer;

.field final synthetic $targetItem:Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/communal/ui/compose/GridDragDropState;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/ui/compose/GridDragDropState;Ljava/lang/Integer;Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/communal/ui/compose/GridDragDropState;",
            "Ljava/lang/Integer;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$1;->this$0:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$1;->$scrollToIndex:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$1;->$draggingItem:Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    iput-object p4, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$1;->$targetItem:Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$1;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$1;->this$0:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    iget-object v2, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$1;->$scrollToIndex:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$1;->$draggingItem:Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    iget-object v4, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$1;->$targetItem:Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$1;-><init>(Lcom/android/systemui/communal/ui/compose/GridDragDropState;Ljava/lang/Integer;Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$1;->this$0:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    iget-object p1, p1, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$1;->$scrollToIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$1;->this$0:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    iget-object v3, v3, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object v3, v3, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    iget-object v3, v3, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->scrollOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->getIntValue()I

    move-result v3

    iput v2, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$1;->label:I

    invoke-virtual {p1, v1, v3, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToItem(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$1;->this$0:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    iget-object p1, p1, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$1;->$draggingItem:Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$1;->$targetItem:Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    iget-object p1, p1, Lcom/android/systemui/communal/ui/compose/ContentListState;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(ILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
