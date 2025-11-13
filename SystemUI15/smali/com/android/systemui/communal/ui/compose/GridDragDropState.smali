.class public final Lcom/android/systemui/communal/ui/compose/GridDragDropState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

.field public final dragStartPointerOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final draggingItemDraggedDelta$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final draggingItemIndex$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final draggingItemInitialOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final isDraggingToRemove$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final scrollChannel:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field public final updateDragPositionForRemove:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Lcom/android/systemui/communal/ui/compose/ContentListState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Lcom/android/systemui/communal/ui/compose/ContentListState;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->updateDragPositionForRemove:Lkotlin/jvm/functions/Function1;

    sget-object p1, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    const/4 p2, 0x0

    invoke-static {p2, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->draggingItemIndex$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p3, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->isDraggingToRemove$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/4 p3, 0x0

    const/4 p4, 0x7

    invoke-static {p3, p2, p2, p4}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->scrollChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object p2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 p2, 0x0

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p4

    invoke-static {p4, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->draggingItemDraggedDelta$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p4

    invoke-static {p4, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->draggingItemInitialOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p2

    invoke-static {p2, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->dragStartPointerOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    return-void
.end method


# virtual methods
.method public final getDraggingItemLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget v2, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    iget-object v3, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->draggingItemIndex$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    return-object v1
.end method

.method public final getDraggingItemOffset-F1C5BW0$frameworks__base__packages__SystemUI__android_common__SystemUI_core()J
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->getDraggingItemLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->draggingItemInitialOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    iget-wide v1, v1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->draggingItemDraggedDelta$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    iget-wide v3, p0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v1

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget-wide v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    sget-object p0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    const/16 p0, 0x20

    shr-long v5, v3, p0

    long-to-int p0, v5

    int-to-float p0, p0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    long-to-int v0, v3

    int-to-float v0, v0

    invoke-static {p0, v0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final onDragInterrupted$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->draggingItemIndex$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->isDraggingToRemove$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->contentListState:Lcom/android/systemui/communal/ui/compose/ContentListState;

    if-eqz v5, :cond_0

    invoke-virtual {v6, v1}, Lcom/android/systemui/communal/ui/compose/ContentListState;->onRemove(I)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->updateDragPositionForRemove:Lkotlin/jvm/functions/Function1;

    invoke-interface {v4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v6, v1, v1, v1}, Lcom/android/systemui/communal/ui/compose/ContentListState;->onSaveList(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->draggingItemDraggedDelta$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->draggingItemInitialOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/GridDragDropState;->dragStartPointerOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method
