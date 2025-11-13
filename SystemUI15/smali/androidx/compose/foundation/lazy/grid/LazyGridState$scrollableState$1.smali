.class final Landroidx/compose/foundation/lazy/grid/LazyGridState$scrollableState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/lazy/grid/LazyGridState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scrollableState$1;->this$0:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    const/4 v0, 0x1

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    move-object/from16 v2, p0

    iget-object v2, v2, Landroidx/compose/foundation/lazy/grid/LazyGridState$scrollableState$1;->this$0:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    neg-float v1, v1

    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    if-gez v4, :cond_0

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getCanScrollForward()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    cmpl-float v4, v1, v3

    if-lez v4, :cond_2

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getCanScrollBackward()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move v1, v3

    goto/16 :goto_d

    :cond_2
    iget v4, v2, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_12

    iget v4, v2, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    add-float/2addr v4, v1

    iput v4, v2, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-lez v4, :cond_10

    iget-object v4, v2, Landroidx/compose/foundation/lazy/grid/LazyGridState;->layoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    iget v6, v2, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    invoke-static {v6}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v7

    iget-boolean v8, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->remeasureNeeded:Z

    if-nez v8, :cond_4

    iget-object v8, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->firstVisibleLine:Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    if-eqz v8, :cond_4

    iget v9, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->firstVisibleLineScrollOffset:I

    sub-int/2addr v9, v7

    if-ltz v9, :cond_4

    iget v8, v8, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    if-ge v9, v8, :cond_4

    iget-object v8, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/util/List;

    invoke-static {v8}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget-object v9, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/util/List;

    invoke-static {v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget-boolean v10, v8, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->nonScrollableItem:Z

    if-nez v10, :cond_4

    iget-boolean v10, v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->nonScrollableItem:Z

    if-eqz v10, :cond_3

    goto :goto_0

    :cond_3
    iget v10, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->viewportEndOffset:I

    iget v11, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->viewportStartOffset:I

    iget-object v12, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    if-gez v7, :cond_5

    invoke-static {v8, v12}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->offsetOnMainAxis(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I

    move-result v13

    iget v8, v8, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v13, v8

    sub-int/2addr v13, v11

    invoke-static {v9, v12}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->offsetOnMainAxis(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I

    move-result v8

    iget v9, v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v8, v9

    sub-int/2addr v8, v10

    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    neg-int v9, v7

    if-le v8, v9, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    move/from16 v17, v6

    goto/16 :goto_b

    :cond_5
    invoke-static {v8, v12}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->offsetOnMainAxis(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I

    move-result v8

    sub-int/2addr v11, v8

    invoke-static {v9, v12}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->offsetOnMainAxis(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I

    move-result v8

    sub-int/2addr v10, v8

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-le v8, v7, :cond_4

    :goto_1
    iget v8, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->firstVisibleLineScrollOffset:I

    sub-int/2addr v8, v7

    iput v8, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->firstVisibleLineScrollOffset:I

    iget-object v8, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->visibleItemsInfo:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v9, :cond_d

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget-boolean v13, v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->nonScrollableItem:Z

    if-eqz v13, :cond_6

    move-object v14, v4

    move/from16 v17, v6

    :goto_3
    move/from16 v21, v11

    goto/16 :goto_a

    :cond_6
    iget-wide v13, v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    iget-boolean v15, v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical:Z

    const/16 v16, 0x20

    if-eqz v15, :cond_7

    sget-object v17, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    move/from16 v17, v6

    shr-long v5, v13, v16

    long-to-int v5, v5

    goto :goto_4

    :cond_7
    move/from16 v17, v6

    sget-object v5, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    shr-long v5, v13, v16

    long-to-int v5, v5

    add-int/2addr v5, v7

    :goto_4
    const-wide v18, 0xffffffffL

    if-eqz v15, :cond_8

    and-long v13, v13, v18

    long-to-int v6, v13

    add-int/2addr v6, v7

    goto :goto_5

    :cond_8
    and-long v13, v13, v18

    long-to-int v6, v13

    :goto_5
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v5

    iput-wide v5, v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    iget-object v5, v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_c

    iget-object v13, v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->animator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    iget-object v14, v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->key:Ljava/lang/Object;

    invoke-virtual {v13, v6, v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getAnimation(ILjava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v13

    move-object v14, v4

    if-eqz v13, :cond_b

    iget-wide v3, v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    if-eqz v15, :cond_9

    sget-object v20, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    move/from16 v21, v11

    shr-long v10, v3, v16

    long-to-int v10, v10

    goto :goto_7

    :cond_9
    move/from16 v21, v11

    sget-object v10, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    shr-long v10, v3, v16

    long-to-int v10, v10

    add-int/2addr v10, v7

    :goto_7
    if-eqz v15, :cond_a

    and-long v3, v3, v18

    long-to-int v3, v3

    add-int/2addr v3, v7

    goto :goto_8

    :cond_a
    and-long v3, v3, v18

    long-to-int v3, v3

    :goto_8
    invoke-static {v10, v3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v3

    iput-wide v3, v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    goto :goto_9

    :cond_b
    move/from16 v21, v11

    :goto_9
    add-int/2addr v6, v0

    move-object v4, v14

    move/from16 v11, v21

    const/4 v3, 0x0

    goto :goto_6

    :cond_c
    move-object v14, v4

    goto :goto_3

    :goto_a
    add-int/lit8 v11, v21, 0x1

    move-object v4, v14

    move/from16 v6, v17

    const/4 v3, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    goto/16 :goto_2

    :cond_d
    move-object v14, v4

    move/from16 v17, v6

    int-to-float v3, v7

    iput v3, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->consumedScroll:F

    iget-boolean v3, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->canScrollForward:Z

    if-nez v3, :cond_e

    if-lez v7, :cond_e

    iput-boolean v0, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->canScrollForward:Z

    :cond_e
    invoke-virtual {v2, v4, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->applyMeasureResult$foundation_release(Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v3, v2, Landroidx/compose/foundation/lazy/grid/LazyGridState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    invoke-interface {v3, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget v0, v2, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    sub-float v6, v17, v0

    invoke-virtual {v2, v6, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->notifyPrefetchOnScroll(FLandroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V

    goto :goto_c

    :goto_b
    iget-object v0, v2, Landroidx/compose/foundation/lazy/grid/LazyGridState;->remeasurement:Landroidx/compose/ui/layout/Remeasurement;

    if-eqz v0, :cond_f

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->forceRemeasure()V

    :cond_f
    iget v0, v2, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    sub-float v6, v17, v0

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->notifyPrefetchOnScroll(FLandroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V

    :cond_10
    :goto_c
    iget v0, v2, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_11

    goto :goto_d

    :cond_11
    iget v0, v2, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    sub-float/2addr v1, v0

    const/4 v0, 0x0

    iput v0, v2, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    :goto_d
    neg-float v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "entered drag with non-zero pending scroll: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v2, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollToBeConsumed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
