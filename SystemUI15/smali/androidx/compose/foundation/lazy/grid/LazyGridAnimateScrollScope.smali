.class public final Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateScrollScope;


# instance fields
.field public final state:Landroidx/compose/foundation/lazy/grid/LazyGridState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope;->state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    return-void
.end method


# virtual methods
.method public final calculateDistanceTo(I)F
    .locals 18

    move/from16 v0, p1

    const/4 v1, 0x1

    move-object/from16 v2, p0

    iget-object v3, v2, Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope;->state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object v4

    iget-object v5, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v5, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_2

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget v10, v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    if-ne v10, v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v8, v1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_1
    check-cast v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    const-wide v10, 0xffffffffL

    iget-object v6, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    if-nez v9, :cond_a

    iget-object v3, v3, Landroidx/compose/foundation/lazy/grid/LazyGridState;->layoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    iget v3, v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->slotsPerLine:I

    sget-object v8, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v6, v8, :cond_3

    move v6, v1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    iget-object v8, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/util/List;

    new-instance v9, Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope$calculateLineAverageMainAxisSize$lineOf$1;

    invoke-direct {v9, v6, v8}, Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope$calculateLineAverageMainAxisSize$lineOf$1;-><init>(ZLjava/util/List;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    const/4 v7, -0x1

    if-ge v12, v15, :cond_7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope$calculateLineAverageMainAxisSize$lineOf$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    if-ne v15, v7, :cond_4

    add-int/2addr v12, v1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope$calculateLineAverageMainAxisSize$lineOf$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ne v1, v15, :cond_6

    if-eqz v6, :cond_5

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move/from16 v17, v6

    iget-wide v5, v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->size:J

    sget-object v1, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    and-long/2addr v5, v10

    :goto_5
    long-to-int v1, v5

    goto :goto_6

    :cond_5
    move/from16 v17, v6

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget-wide v5, v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->size:J

    sget-object v1, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    const/16 v1, 0x20

    shr-long/2addr v5, v1

    goto :goto_5

    :goto_6
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v1, 0x1

    add-int/2addr v12, v1

    move/from16 v6, v17

    goto :goto_4

    :cond_6
    move/from16 v17, v6

    const/4 v1, 0x1

    add-int/2addr v13, v7

    add-int/2addr v14, v1

    move/from16 v6, v17

    goto :goto_3

    :cond_7
    div-int/2addr v13, v14

    iget v1, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->mainAxisItemSpacing:I

    add-int/2addr v13, v1

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope;->getFirstVisibleItemIndex()I

    move-result v1

    if-ge v0, v1, :cond_8

    const/16 v16, 0x1

    goto :goto_7

    :cond_8
    const/16 v16, 0x0

    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope;->getFirstVisibleItemIndex()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/lit8 v4, v3, -0x1

    if-eqz v16, :cond_9

    move v1, v7

    :cond_9
    mul-int/2addr v4, v1

    add-int/2addr v4, v0

    div-int/2addr v4, v3

    mul-int/2addr v4, v13

    int-to-float v0, v4

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope;->getFirstVisibleItemScrollOffset()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_a

    :cond_a
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v6, v0, :cond_b

    check-cast v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget-wide v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    sget-object v2, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    and-long/2addr v0, v10

    :goto_8
    long-to-int v0, v0

    goto :goto_9

    :cond_b
    check-cast v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget-wide v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    sget-object v2, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    goto :goto_8

    :goto_9
    int-to-float v0, v0

    :goto_a
    return v0
.end method

.method public final getFirstVisibleItemIndex()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope;->state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->getIndex()I

    move-result p0

    return p0
.end method

.method public final getFirstVisibleItemScrollOffset()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope;->state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->getScrollOffset()I

    move-result p0

    return p0
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope;->state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object p0

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->totalItemsCount:I

    return p0
.end method

.method public final getLastVisibleItemIndex()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope;->state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    if-eqz p0, :cond_0

    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final scroll(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/MutatePriority;->Default:Landroidx/compose/foundation/MutatePriority;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope;->state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final snapToItem(II)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridAnimateScrollScope;->state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->snapToItemIndexInternal$foundation_release(II)V

    return-void
.end method
