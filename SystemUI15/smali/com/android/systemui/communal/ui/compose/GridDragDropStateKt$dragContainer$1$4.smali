.class final Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1$4;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $dragDropState:Lcom/android/systemui/communal/ui/compose/GridDragDropState;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/ui/compose/GridDragDropState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1$4;->$dragDropState:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    iget-wide v0, p2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropStateKt$dragContainer$1$4;->$dragDropState:Lcom/android/systemui/communal/ui/compose/GridDragDropState;

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->draggingItemDraggedDelta$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    iget-wide p1, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->draggingItemDraggedDelta$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->getDraggingItemLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    move-result-object v5

    if-nez v5, :cond_0

    goto/16 :goto_7

    :cond_0
    move-object p1, v5

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget-wide v0, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    sget-object v2, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    int-to-float v2, v2

    const-wide v3, 0xffffffffL

    and-long/2addr v0, v3

    long-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v2, v0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->getDraggingItemOffset-F1C5BW0$frameworks__base__packages__SystemUI__android_common__SystemUI_core()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v0

    iget-wide v2, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->size:J

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v2

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v4

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v6

    add-float/2addr v6, v4

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v4

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v2

    add-float/2addr v2, v4

    invoke-static {v6, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v6

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4, v6, v7}, Landroidx/compose/ui/geometry/Offset;->div-tuRUvjQ(FJ)J

    move-result-wide v6

    invoke-static {v0, v1, v6, v7}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v6

    iget-object v4, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object v8

    iget-object v8, v8, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v9, v8}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    new-instance v8, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$targetItem$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$targetItem$1;-><init>(Lcom/android/systemui/communal/ui/compose/GridDragDropState;)V

    invoke-static {v9, v8}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$targetItem$2;

    invoke-direct {v9, v5}, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$targetItem$2;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;)V

    invoke-static {v8, v9}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v8

    new-instance v9, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {v9, v8}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    :cond_1
    invoke-virtual {v9}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result v8

    const/4 v10, 0x0

    if-eqz v8, :cond_2

    invoke-virtual {v9}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    invoke-static {v11, v6, v7}, Lcom/android/systemui/communal/ui/compose/extensions/LazyGridStateExtKt;->isItemAtOffset-Uv8p0NA(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;J)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_0

    :cond_2
    move-object v8, v10

    :goto_0
    move-object v6, v8

    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    iget-object v8, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->isDraggingToRemove$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    if-eqz v6, :cond_6

    move-object p2, v6

    check-cast p2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget-object v0, v4, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->index$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->getIntValue()I

    move-result v1

    iget p1, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    iget p2, p2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    if-ne p2, v1, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    move-object v4, v0

    goto :goto_2

    :cond_3
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->index$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->getIntValue()I

    move-result v0

    if-ne p1, v0, :cond_4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v4, v10

    :goto_2
    if-eqz v4, :cond_5

    new-instance p1, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$1;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/communal/ui/compose/GridDragDropState$onDrag$1;-><init>(Lcom/android/systemui/communal/ui/compose/GridDragDropState;Ljava/lang/Integer;Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v1, v10, v10, p1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iget-object v0, v0, Lcom/android/systemui/communal/ui/compose/ContentListState;->list:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(ILjava/lang/Object;)V

    :goto_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->draggingItemIndex$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_6
    invoke-virtual {p2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    iget-wide v5, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p1

    const/4 v5, 0x0

    cmpl-float p1, p1, v5

    if-lez p1, :cond_7

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p1

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object v2

    iget v2, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->viewportEndOffset:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    invoke-static {p1, v5}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result p1

    goto :goto_4

    :cond_7
    invoke-virtual {p2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    iget-wide v2, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p1

    cmpg-float p1, p1, v5

    if-gez p1, :cond_8

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p1

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object v2

    iget v2, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->viewportStartOffset:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    invoke-static {p1, v5}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtMost(FF)F

    move-result p1

    goto :goto_4

    :cond_8
    move p1, v5

    :goto_4
    cmpg-float v2, p1, v5

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->scrollChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {v2, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    invoke-virtual {p2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    iget-wide p1, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    cmpg-float p1, p1, v5

    if-gez p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->dragStartPointerOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    iget-wide p1, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->updateDragPositionForRemove:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_6

    :cond_a
    const/4 p0, 0x0

    :goto_6
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v8, p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    :goto_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
