.class final Landroidx/compose/foundation/pager/PagerState$scrollableState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "invoke",
        "(F)Ljava/lang/Float;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState$scrollableState$1;->this$0:Landroidx/compose/foundation/pager/PagerState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroidx/compose/foundation/pager/PagerState$scrollableState$1;->this$0:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation_release()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    iget-object v4, v1, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/compose/foundation/pager/PagerScrollPosition;

    invoke-virtual {v4}, Landroidx/compose/foundation/pager/PagerScrollPosition;->getCurrentPageOffsetFraction()F

    move-result v5

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation_release()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide v5

    add-long/2addr v5, v2

    iget v2, v1, Landroidx/compose/foundation/pager/PagerState;->accumulator:F

    add-float/2addr v2, v0

    float-to-double v7, v2

    invoke-static {v7, v8}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide v7

    long-to-float v3, v7

    sub-float/2addr v2, v3

    iput v2, v1, Landroidx/compose/foundation/pager/PagerState;->accumulator:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x38d1b717    # 1.0E-4f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    goto/16 :goto_c

    :cond_0
    add-long/2addr v7, v5

    iget-wide v11, v1, Landroidx/compose/foundation/pager/PagerState;->minScrollOffset:J

    iget-wide v13, v1, Landroidx/compose/foundation/pager/PagerState;->maxScrollOffset:J

    move-wide v9, v7

    invoke-static/range {v9 .. v14}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide v2

    cmp-long v7, v7, v2

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    move v7, v8

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    sub-long/2addr v2, v5

    long-to-float v5, v2

    iput v5, v1, Landroidx/compose/foundation/pager/PagerState;->previousPassDelta:F

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    const/4 v10, 0x0

    if-eqz v6, :cond_4

    cmpl-float v6, v5, v10

    if-lez v6, :cond_2

    move v6, v8

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v11, v1, Landroidx/compose/foundation/pager/PagerState;->isLastScrollForwardState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    cmpg-float v5, v5, v10

    if-gez v5, :cond_3

    move v5, v8

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, v1, Landroidx/compose/foundation/pager/PagerState;->isLastScrollBackwardState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    :cond_4
    iget-object v5, v1, Landroidx/compose/foundation/pager/PagerState;->pagerLayoutInfoState:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/pager/PagerMeasureResult;

    long-to-int v6, v2

    neg-int v11, v6

    iget v12, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSize:I

    iget v13, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSpacing:I

    add-int/2addr v12, v13

    iget-boolean v13, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->remeasureNeeded:Z

    if-nez v13, :cond_c

    iget-object v13, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_c

    iget-object v13, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->firstVisiblePage:Landroidx/compose/foundation/pager/MeasuredPage;

    if-eqz v13, :cond_c

    iget v13, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->firstVisiblePageScrollOffset:I

    sub-int/2addr v13, v11

    if-ltz v13, :cond_c

    if-ge v13, v12, :cond_c

    if-eqz v12, :cond_5

    int-to-float v13, v11

    int-to-float v14, v12

    div-float/2addr v13, v14

    goto :goto_3

    :cond_5
    move v13, v10

    :goto_3
    iget v14, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->currentPageOffsetFraction:F

    sub-float/2addr v14, v13

    iget-object v15, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->currentPage:Landroidx/compose/foundation/pager/MeasuredPage;

    if-eqz v15, :cond_c

    const/high16 v15, 0x3f000000    # 0.5f

    cmpl-float v15, v14, v15

    if-gez v15, :cond_c

    const/high16 v15, -0x41000000    # -0.5f

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_6

    goto/16 :goto_8

    :cond_6
    iget-object v14, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    invoke-static {v14}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/foundation/pager/MeasuredPage;

    iget-object v15, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    invoke-static {v15}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v9, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->viewportEndOffset:I

    iget v10, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->viewportStartOffset:I

    if-gez v11, :cond_7

    iget v14, v14, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    add-int/2addr v14, v12

    sub-int/2addr v14, v10

    iget v10, v15, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    add-int/2addr v10, v12

    sub-int/2addr v10, v9

    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    neg-int v10, v11

    if-le v9, v10, :cond_c

    goto :goto_4

    :cond_7
    iget v12, v14, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    sub-int/2addr v10, v12

    iget v12, v15, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    sub-int/2addr v9, v12

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-le v9, v11, :cond_c

    :goto_4
    iget v4, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->currentPageOffsetFraction:F

    sub-float/2addr v4, v13

    iput v4, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->currentPageOffsetFraction:F

    iget v4, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->firstVisiblePageScrollOffset:I

    sub-int/2addr v4, v11

    iput v4, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->firstVisiblePageScrollOffset:I

    iget-object v4, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v6, :cond_8

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v10, v11}, Landroidx/compose/foundation/pager/MeasuredPage;->applyScrollDelta(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_8
    iget-object v4, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->extraPagesBefore:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v6, :cond_9

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v10, v11}, Landroidx/compose/foundation/pager/MeasuredPage;->applyScrollDelta(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_9
    iget-object v4, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->extraPagesAfter:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v6, :cond_a

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v10, v11}, Landroidx/compose/foundation/pager/MeasuredPage;->applyScrollDelta(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_a
    iget-boolean v4, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->canScrollForward:Z

    if-nez v4, :cond_b

    if-lez v11, :cond_b

    iput-boolean v8, v5, Landroidx/compose/foundation/pager/PagerMeasureResult;->canScrollForward:Z

    :cond_b
    invoke-virtual {v1, v5, v8}, Landroidx/compose/foundation/pager/PagerState;->applyMeasureResult$foundation_release(Landroidx/compose/foundation/pager/PagerMeasureResult;Z)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v1, v1, Landroidx/compose/foundation/pager/PagerState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1, v4}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_a

    :cond_c
    :goto_8
    iget-object v5, v4, Landroidx/compose/foundation/pager/PagerScrollPosition;->state:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v5}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation_release()I

    move-result v8

    if-nez v8, :cond_d

    const/4 v10, 0x0

    goto :goto_9

    :cond_d
    int-to-float v6, v6

    invoke-virtual {v5}, Landroidx/compose/foundation/pager/PagerState;->getPageSizeWithSpacing$foundation_release()I

    move-result v5

    int-to-float v5, v5

    div-float v10, v6, v5

    :goto_9
    iget-object v4, v4, Landroidx/compose/foundation/pager/PagerScrollPosition;->currentPageOffsetFraction$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v5

    add-float/2addr v5, v10

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->setFloatValue(F)V

    iget-object v1, v1, Landroidx/compose/foundation/pager/PagerState;->remeasurement$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/layout/Remeasurement;

    if-eqz v1, :cond_e

    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->forceRemeasure()V

    :cond_e
    :goto_a
    if-eqz v7, :cond_f

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_b

    :cond_f
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    :goto_c
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
