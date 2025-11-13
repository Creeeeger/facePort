.class final Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/foundation/pager/PagerMeasureResult;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
        "containerConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "invoke-0kLqBqw",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/pager/PagerMeasureResult;"
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
.field final synthetic $beyondViewportPageCount:I

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

.field final synthetic $itemProviderLambda:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $orientation:Landroidx/compose/foundation/gestures/Orientation;

.field final synthetic $pageCount:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $pageSize:Landroidx/compose/foundation/pager/PageSize;

.field final synthetic $pageSpacing:F

.field final synthetic $reverseLayout:Z

.field final synthetic $snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

.field final synthetic $state:Landroidx/compose/foundation/pager/PagerState;

.field final synthetic $verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/layout/PaddingValues;ZFLandroidx/compose/foundation/pager/PageSize;Lkotlin/reflect/KProperty0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Horizontal;ILandroidx/compose/foundation/gestures/snapping/SnapPosition;Lkotlinx/coroutines/internal/ContextScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    iput-object p3, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iput-boolean p4, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$reverseLayout:Z

    iput p5, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageSpacing:F

    iput-object p6, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageSize:Landroidx/compose/foundation/pager/PageSize;

    iput-object p7, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageCount:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    iput-object p10, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    iput p11, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$beyondViewportPageCount:I

    iput-object p12, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    iput-object p13, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 57

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    move-object/from16 v1, p2

    check-cast v1, Landroidx/compose/ui/unit/Constraints;

    iget-wide v3, v1, Landroidx/compose/ui/unit/Constraints;->value:J

    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    iget-object v1, v1, Landroidx/compose/foundation/pager/PagerState;->measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v15, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v1, v15, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    move-object v2, v15

    goto :goto_1

    :cond_1
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_1
    invoke-static {v3, v4, v2}, Landroidx/compose/foundation/CheckScrollableContainerConstraintsKt;->checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V

    if-eqz v1, :cond_2

    iget-object v2, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    move-object v5, v14

    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    iget-object v6, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v6}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v6

    invoke-interface {v2, v6}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v2

    iget-object v5, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v5, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v2

    goto :goto_2

    :cond_2
    iget-object v2, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    move-object v5, v14

    check-cast v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    iget-object v6, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v6}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v6

    invoke-static {v2, v6}, Landroidx/compose/foundation/layout/PaddingKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v2

    iget-object v5, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v5, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v2

    :goto_2
    if-eqz v1, :cond_3

    iget-object v5, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    move-object v6, v14

    check-cast v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    iget-object v7, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v7}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v7

    invoke-interface {v5, v7}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v5

    iget-object v6, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v6, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v5

    goto :goto_3

    :cond_3
    iget-object v5, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    move-object v6, v14

    check-cast v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    iget-object v7, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v7}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v7

    invoke-static {v5, v7}, Landroidx/compose/foundation/layout/PaddingKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v5

    iget-object v6, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v6, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v5

    :goto_3
    iget-object v6, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v6}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v6

    move-object v7, v14

    check-cast v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    iget-object v8, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v8, v6}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v6

    iget-object v8, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v8}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v8

    iget-object v11, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v11, v8}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v7

    add-int v8, v6, v7

    add-int v9, v2, v5

    if-eqz v1, :cond_4

    move v10, v8

    goto :goto_4

    :cond_4
    move v10, v9

    :goto_4
    if-eqz v1, :cond_5

    iget-boolean v13, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$reverseLayout:Z

    if-nez v13, :cond_5

    move v13, v6

    goto :goto_5

    :cond_5
    if-eqz v1, :cond_6

    iget-boolean v13, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$reverseLayout:Z

    if-eqz v13, :cond_6

    move v13, v7

    goto :goto_5

    :cond_6
    if-nez v1, :cond_7

    iget-boolean v7, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$reverseLayout:Z

    if-nez v7, :cond_7

    move v13, v2

    goto :goto_5

    :cond_7
    move v13, v5

    :goto_5
    sub-int v20, v10, v13

    neg-int v5, v9

    neg-int v7, v8

    move/from16 v16, v13

    invoke-static {v5, v7, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IIJ)J

    move-result-wide v12

    iget-object v5, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    iput-object v14, v5, Landroidx/compose/foundation/pager/PagerState;->density:Landroidx/compose/ui/unit/Density;

    iget v5, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageSpacing:F

    invoke-interface {v11, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v10

    if-eqz v1, :cond_8

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v5

    sub-int/2addr v5, v8

    :goto_6
    move v7, v5

    goto :goto_7

    :cond_8
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v5

    sub-int/2addr v5, v9

    goto :goto_6

    :goto_7
    iget-boolean v5, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$reverseLayout:Z

    if-eqz v5, :cond_c

    if-lez v7, :cond_9

    goto :goto_a

    :cond_9
    if-eqz v1, :cond_a

    goto :goto_8

    :cond_a
    add-int/2addr v2, v7

    :goto_8
    if-eqz v1, :cond_b

    add-int/2addr v6, v7

    :cond_b
    invoke-static {v2, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v1

    :goto_9
    move-wide/from16 v17, v1

    goto :goto_b

    :cond_c
    :goto_a
    invoke-static {v2, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v1

    goto :goto_9

    :goto_b
    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageSize:Landroidx/compose/foundation/pager/PageSize;

    check-cast v1, Landroidx/compose/foundation/pager/PageSize$Fill;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-gez v7, :cond_d

    const/16 v19, 0x0

    goto :goto_c

    :cond_d
    move/from16 v19, v7

    :goto_c
    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    iget-object v2, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v2, v15, :cond_e

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    goto :goto_d

    :cond_e
    move/from16 v2, v19

    :goto_d
    iget-object v5, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    if-eq v5, v15, :cond_f

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v5

    goto :goto_e

    :cond_f
    move/from16 v5, v19

    :goto_e
    const/4 v6, 0x5

    move-object/from16 v21, v11

    move-wide/from16 v22, v12

    invoke-static {v2, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(III)J

    move-result-wide v11

    iput-wide v11, v1, Landroidx/compose/foundation/pager/PagerState;->premeasureConstraints:J

    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;

    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    iget-object v2, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v11

    goto :goto_f

    :cond_10
    const/4 v11, 0x0

    :goto_f
    invoke-static {v5}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v6

    :try_start_0
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v26, v15

    iget-object v15, v1, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Landroidx/compose/foundation/pager/PagerScrollPosition;

    move/from16 v27, v7

    :try_start_1
    iget-object v7, v15, Landroidx/compose/foundation/pager/PagerScrollPosition;->lastKnownCurrentPageKey:Ljava/lang/Object;

    invoke-static {v12, v13, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProviderKt;->findIndexByKey(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)I

    move-result v7

    if-eq v12, v7, :cond_11

    move/from16 v28, v8

    iget-object v8, v15, Landroidx/compose/foundation/pager/PagerScrollPosition;->currentPage$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->setIntValue(I)V

    iget-object v8, v15, Landroidx/compose/foundation/pager/PagerScrollPosition;->nearestRangeState:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    invoke-virtual {v8, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->update$1(I)V

    goto :goto_10

    :cond_11
    move/from16 v28, v8

    :goto_10
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    iget-object v8, v15, Landroidx/compose/foundation/pager/PagerScrollPosition;->currentPageOffsetFraction$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v8}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v8

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x0

    int-to-float v15, v12

    add-int v2, v19, v10

    int-to-float v1, v2

    mul-float/2addr v8, v1

    sub-float v1, v15, v8

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v5, v6, v11}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    iget-object v5, v1, Landroidx/compose/foundation/pager/PagerState;->pinnedPages:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    iget-object v1, v1, Landroidx/compose/foundation/pager/PagerState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    invoke-static {v13, v5, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsStateKt;->calculateLazyLayoutPinnedIndices(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Ljava/util/List;

    move-result-object v11

    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$pageCount:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v6

    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    iget-object v5, v1, Landroidx/compose/foundation/pager/PagerState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    move/from16 v29, v15

    iget-object v15, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    iget-object v12, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    move-object/from16 v30, v11

    iget-boolean v11, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$reverseLayout:Z

    move/from16 v31, v11

    iget v11, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$beyondViewportPageCount:I

    move-object/from16 v32, v15

    iget-object v15, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    new-instance v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1$measureResult$1;

    move-object/from16 v33, v1

    move-object v1, v0

    move/from16 v34, v2

    move-object v2, v14

    move-object/from16 v36, v5

    move v5, v9

    move v9, v6

    move/from16 v6, v28

    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1$measureResult$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JII)V

    if-ltz v16, :cond_5e

    if-ltz v20, :cond_5d

    if-gez v34, :cond_12

    const/4 v6, 0x0

    goto :goto_11

    :cond_12
    move/from16 v6, v34

    :goto_11
    if-gtz v9, :cond_13

    sget-object v17, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    move/from16 v5, v16

    neg-int v1, v5

    add-int v2, v27, v20

    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$4;->INSTANCE:Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$4;

    invoke-virtual {v0, v3, v4, v5}, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1$measureResult$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroidx/compose/ui/layout/MeasureResult;

    new-instance v0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-object/from16 v16, v0

    move/from16 v18, v19

    move/from16 v19, v10

    move-object/from16 v21, v33

    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v11

    move-object/from16 v25, v15

    invoke-direct/range {v16 .. v26}, Landroidx/compose/foundation/pager/PagerMeasureResult;-><init>(Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;IIILandroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/ui/layout/MeasureResult;)V

    move-object/from16 v1, p0

    goto/16 :goto_49

    :cond_13
    move/from16 v5, v16

    move-object/from16 v3, v26

    move-object/from16 v4, v33

    if-ne v4, v3, :cond_14

    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    goto :goto_12

    :cond_14
    move/from16 v1, v19

    :goto_12
    if-eq v4, v3, :cond_15

    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    move-object/from16 v26, v3

    :goto_13
    const/4 v3, 0x5

    goto :goto_14

    :cond_15
    move-object/from16 v26, v3

    move/from16 v2, v19

    goto :goto_13

    :goto_14
    invoke-static {v1, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(III)J

    move-result-wide v37

    :goto_15
    if-lez v7, :cond_16

    if-lez v8, :cond_16

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v8, v6

    goto :goto_15

    :cond_16
    mul-int/lit8 v8, v8, -0x1

    if-lt v7, v9, :cond_17

    add-int/lit8 v7, v9, -0x1

    const/4 v8, 0x0

    :cond_17
    new-instance v3, Lkotlin/collections/ArrayDeque;

    invoke-direct {v3}, Lkotlin/collections/ArrayDeque;-><init>()V

    neg-int v2, v5

    if-gez v10, :cond_18

    move v1, v10

    goto :goto_16

    :cond_18
    const/4 v1, 0x0

    :goto_16
    add-int/2addr v1, v2

    add-int/2addr v8, v1

    move-object/from16 v16, v0

    const/4 v0, 0x0

    :goto_17
    if-gez v8, :cond_19

    if-lez v7, :cond_19

    add-int/lit8 v24, v7, -0x1

    invoke-interface/range {v21 .. v21}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v28

    move v7, v1

    move-object v1, v14

    move/from16 v33, v2

    move/from16 v2, v24

    move-object/from16 v35, v15

    move-object/from16 v39, v26

    move-object v15, v3

    move-object/from16 v26, v4

    move-wide/from16 v3, v37

    move/from16 v40, v5

    move-object v5, v13

    move/from16 v43, v7

    move-object/from16 v41, v14

    move/from16 v42, v27

    move v14, v6

    move-wide/from16 v6, v17

    move/from16 v44, v8

    move-object/from16 v8, v26

    move/from16 v45, v9

    move-object v9, v12

    move/from16 v46, v10

    move-object/from16 v10, v32

    move/from16 v47, v11

    move-object/from16 v27, v21

    move-object/from16 v11, v28

    move/from16 v21, v14

    move-wide/from16 v49, v22

    const/4 v14, 0x0

    move-object/from16 v22, v12

    move/from16 v12, v31

    move-object/from16 v23, v13

    move/from16 v51, v40

    move/from16 v13, v19

    invoke-static/range {v1 .. v13}, Landroidx/compose/foundation/pager/PagerMeasureKt;->getAndMeasure-SGf7dI0(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v1

    invoke-virtual {v15, v14, v1}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    iget v1, v1, Landroidx/compose/foundation/pager/MeasuredPage;->crossAxisSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v8, v44

    add-int v8, v8, v21

    move-object v3, v15

    move/from16 v6, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move/from16 v7, v24

    move-object/from16 v4, v26

    move-object/from16 v21, v27

    move/from16 v2, v33

    move-object/from16 v15, v35

    move-object/from16 v26, v39

    move-object/from16 v14, v41

    move/from16 v27, v42

    move/from16 v1, v43

    move/from16 v9, v45

    move/from16 v10, v46

    move/from16 v11, v47

    move-wide/from16 v22, v49

    move/from16 v5, v51

    goto :goto_17

    :cond_19
    move/from16 v33, v2

    move/from16 v51, v5

    move/from16 v45, v9

    move/from16 v46, v10

    move/from16 v47, v11

    move-object/from16 v41, v14

    move-object/from16 v35, v15

    move-wide/from16 v49, v22

    move-object/from16 v39, v26

    move/from16 v42, v27

    const/4 v14, 0x0

    move-object v15, v3

    move-object/from16 v26, v4

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move-object/from16 v27, v21

    move/from16 v21, v6

    move v13, v1

    if-ge v8, v13, :cond_1a

    move v1, v13

    goto :goto_18

    :cond_1a
    move v1, v8

    :goto_18
    sub-int/2addr v1, v13

    move/from16 v12, v42

    add-int v24, v12, v20

    if-gez v24, :cond_1b

    move v11, v14

    goto :goto_19

    :cond_1b
    move/from16 v11, v24

    :goto_19
    neg-int v2, v1

    move v5, v7

    move v3, v14

    move v4, v3

    :goto_1a
    iget v6, v15, Lkotlin/collections/ArrayDeque;->size:I

    if-ge v3, v6, :cond_1d

    if-lt v2, v11, :cond_1c

    invoke-virtual {v15, v3}, Lkotlin/collections/ArrayDeque;->removeAt(I)Ljava/lang/Object;

    const/4 v4, 0x1

    goto :goto_1a

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    add-int v2, v2, v21

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_1d
    move/from16 v28, v1

    move v10, v2

    move/from16 v40, v4

    move v9, v5

    move/from16 v25, v7

    move/from16 v8, v45

    :goto_1b
    if-ge v9, v8, :cond_1e

    if-lt v10, v11, :cond_1f

    if-lez v10, :cond_1f

    invoke-virtual {v15}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_1c

    :cond_1e
    move v3, v0

    move v14, v8

    move v0, v10

    move-object v13, v15

    move v15, v9

    goto/16 :goto_1f

    :cond_1f
    :goto_1c
    invoke-interface/range {v27 .. v27}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v42

    move-object/from16 v1, v41

    move v2, v9

    move-wide/from16 v3, v37

    move-object/from16 v5, v23

    move-wide/from16 v6, v17

    move v14, v8

    move-object/from16 v8, v26

    move-object/from16 v43, v15

    move v15, v9

    move-object/from16 v9, v22

    move/from16 v44, v0

    move v0, v10

    move-object/from16 v10, v32

    move/from16 v45, v11

    move-object/from16 v11, v42

    move/from16 v52, v12

    move/from16 v12, v31

    move/from16 v53, v13

    move/from16 v13, v19

    invoke-static/range {v1 .. v13}, Landroidx/compose/foundation/pager/PagerMeasureKt;->getAndMeasure-SGf7dI0(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v1

    add-int/lit8 v6, v14, -0x1

    if-ne v15, v6, :cond_20

    move/from16 v2, v19

    goto :goto_1d

    :cond_20
    move/from16 v2, v21

    :goto_1d
    add-int v10, v0, v2

    move/from16 v2, v53

    if-gt v10, v2, :cond_21

    if-eq v15, v6, :cond_21

    add-int/lit8 v9, v15, 0x1

    sub-int v28, v28, v21

    move/from16 v25, v9

    move-object/from16 v13, v43

    move/from16 v0, v44

    const/16 v40, 0x1

    goto :goto_1e

    :cond_21
    iget v0, v1, Landroidx/compose/foundation/pager/MeasuredPage;->crossAxisSize:I

    move/from16 v3, v44

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move-object/from16 v13, v43

    invoke-virtual {v13, v1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :goto_1e
    add-int/lit8 v9, v15, 0x1

    move-object v15, v13

    move v8, v14

    move/from16 v11, v45

    move/from16 v12, v52

    const/4 v14, 0x0

    move v13, v2

    goto :goto_1b

    :goto_1f
    if-ge v0, v12, :cond_24

    sub-int v7, v12, v0

    sub-int v28, v28, v7

    add-int/2addr v0, v7

    move v11, v3

    move/from16 v10, v28

    move/from16 v9, v51

    :goto_20
    if-ge v10, v9, :cond_22

    if-lez v25, :cond_22

    add-int/lit8 v25, v25, -0x1

    invoke-interface/range {v27 .. v27}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v28

    move-object/from16 v1, v41

    move/from16 v2, v25

    move-wide/from16 v3, v37

    move-object/from16 v5, v23

    move-wide/from16 v6, v17

    move-object/from16 v8, v26

    move/from16 v42, v9

    move-object/from16 v9, v22

    move/from16 v43, v10

    move-object/from16 v10, v32

    move/from16 v44, v15

    move v15, v11

    move-object/from16 v11, v28

    move/from16 v54, v12

    move/from16 v12, v31

    move/from16 v45, v14

    move-object v14, v13

    move/from16 v13, v19

    invoke-static/range {v1 .. v13}, Landroidx/compose/foundation/pager/PagerMeasureKt;->getAndMeasure-SGf7dI0(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v14, v2, v1}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    iget v1, v1, Landroidx/compose/foundation/pager/MeasuredPage;->crossAxisSize:I

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int v10, v43, v21

    move-object v13, v14

    move/from16 v9, v42

    move/from16 v15, v44

    move/from16 v14, v45

    move/from16 v12, v54

    goto :goto_20

    :cond_22
    move/from16 v42, v9

    move/from16 v43, v10

    move/from16 v54, v12

    move/from16 v45, v14

    move/from16 v44, v15

    move v15, v11

    move-object v14, v13

    if-gez v43, :cond_23

    add-int v10, v0, v43

    move v13, v10

    move v0, v15

    const/4 v12, 0x0

    goto :goto_21

    :cond_23
    move v13, v0

    move v0, v15

    move/from16 v12, v43

    goto :goto_21

    :cond_24
    move/from16 v54, v12

    move/from16 v45, v14

    move/from16 v44, v15

    move/from16 v42, v51

    move-object v14, v13

    move v13, v0

    move v0, v3

    move/from16 v12, v28

    :goto_21
    if-ltz v12, :cond_5c

    neg-int v15, v12

    invoke-virtual {v14}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/pager/MeasuredPage;

    move/from16 v11, v46

    if-gtz v42, :cond_26

    if-gez v11, :cond_25

    goto :goto_22

    :cond_25
    move/from16 v42, v12

    move/from16 v10, v21

    move-object v12, v1

    goto :goto_24

    :cond_26
    :goto_22
    iget v2, v14, Lkotlin/collections/ArrayDeque;->size:I

    move v3, v12

    const/4 v12, 0x0

    :goto_23
    if-ge v12, v2, :cond_27

    if-eqz v3, :cond_27

    move/from16 v10, v21

    if-gt v10, v3, :cond_28

    invoke-static {v14}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    if-eq v12, v4, :cond_28

    sub-int/2addr v3, v10

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v14, v12}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/pager/MeasuredPage;

    move/from16 v21, v10

    goto :goto_23

    :cond_27
    move/from16 v10, v21

    :cond_28
    move-object v12, v1

    move/from16 v42, v3

    :goto_24
    new-instance v9, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$extraPagesBefore$1;

    move-object v1, v9

    move-object/from16 v2, v41

    move-wide/from16 v3, v37

    move-object/from16 v5, v23

    move-wide/from16 v6, v17

    move-object/from16 v8, v26

    move/from16 p1, v0

    move-object v0, v9

    move-object/from16 v9, v22

    move/from16 v55, v10

    move-object/from16 v10, v32

    move/from16 v56, v11

    move/from16 v11, v31

    move/from16 v21, v15

    move-object v15, v12

    move/from16 v12, v19

    invoke-direct/range {v1 .. v12}, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$extraPagesBefore$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;ZI)V

    sub-int v1, v25, v47

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v12, 0x1

    add-int/lit8 v2, v25, -0x1

    const/4 v3, 0x0

    if-gt v1, v2, :cond_2a

    :goto_25
    if-nez v3, :cond_29

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$extraPagesBefore$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v2, v1, :cond_2a

    add-int/lit8 v2, v2, -0x1

    goto :goto_25

    :cond_2a
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_26
    if-ge v4, v2, :cond_2d

    move-object/from16 v11, v30

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-ge v5, v1, :cond_2c

    if-nez v3, :cond_2b

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_2b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$extraPagesBefore$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v30, v11

    goto :goto_26

    :cond_2d
    move-object/from16 v11, v30

    if-nez v3, :cond_2e

    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_2e
    move-object v0, v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v10, p1

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v1, :cond_2f

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v3, v3, Landroidx/compose/foundation/pager/MeasuredPage;->crossAxisSize:I

    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_2f
    invoke-virtual {v14}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v9, v1, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    new-instance v8, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$extraPagesAfter$1;

    move-object v1, v8

    move-object/from16 v2, v41

    move-wide/from16 v3, v37

    move-object/from16 v5, v23

    move-wide/from16 v6, v17

    move/from16 v17, v13

    move-object v13, v8

    move-object/from16 v8, v26

    move/from16 v18, v9

    move-object/from16 v9, v22

    move/from16 v22, v10

    move-object/from16 v10, v32

    move-object/from16 v30, v11

    move/from16 v11, v31

    move-object/from16 p1, v0

    move v0, v12

    move/from16 v12, v19

    invoke-direct/range {v1 .. v12}, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$extraPagesAfter$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;ZI)V

    add-int v9, v18, v47

    add-int/lit8 v6, v45, -0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v9, v18, 0x1

    const/4 v12, 0x0

    if-gt v9, v1, :cond_31

    :goto_28
    if-nez v12, :cond_30

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v2

    :cond_30
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$extraPagesAfter$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v9, v1, :cond_31

    add-int/lit8 v9, v9, 0x1

    goto :goto_28

    :cond_31
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v2

    move-object v3, v12

    const/4 v12, 0x0

    :goto_29
    if-ge v12, v2, :cond_34

    move-object/from16 v4, v30

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    add-int/lit8 v6, v1, 0x1

    move/from16 v7, v45

    if-gt v6, v5, :cond_33

    if-ge v5, v7, :cond_33

    if-nez v3, :cond_32

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_32
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$extraPagesAfter$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_33
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v30, v4

    move/from16 v45, v7

    goto :goto_29

    :cond_34
    move/from16 v7, v45

    if-nez v3, :cond_35

    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_35
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v10, v22

    const/4 v12, 0x0

    :goto_2a
    if-ge v12, v1, :cond_36

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v2, v2, Landroidx/compose/foundation/pager/MeasuredPage;->crossAxisSize:I

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/lit8 v12, v12, 0x1

    goto :goto_2a

    :cond_36
    invoke-virtual {v14}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_37

    move v13, v0

    move-object/from16 v9, v26

    move-object/from16 v1, v39

    goto :goto_2b

    :cond_37
    move-object/from16 v9, v26

    move-object/from16 v1, v39

    const/4 v13, 0x0

    :goto_2b
    if-ne v9, v1, :cond_38

    move v4, v10

    :goto_2c
    move-wide/from16 v2, v49

    goto :goto_2d

    :cond_38
    move/from16 v4, v17

    goto :goto_2c

    :goto_2d
    invoke-static {v4, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v11

    if-ne v9, v1, :cond_39

    move/from16 v10, v17

    :cond_39
    invoke-static {v10, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result v10

    if-ne v9, v1, :cond_3a

    move v6, v10

    :goto_2e
    move/from16 v12, v54

    goto :goto_2f

    :cond_3a
    move v6, v11

    goto :goto_2e

    :goto_2f
    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v5, v17

    if-ge v5, v2, :cond_3b

    move v2, v0

    goto :goto_30

    :cond_3b
    const/4 v2, 0x0

    :goto_30
    if-eqz v2, :cond_3c

    if-nez v21, :cond_3d

    :cond_3c
    move/from16 v3, v21

    goto :goto_31

    :cond_3d
    const-string v0, "non-zero pagesScrollOffset="

    move/from16 v3, v21

    invoke-static {v3, v0}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_31
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v14}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v17

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v18

    add-int v18, v18, v17

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v17

    add-int v0, v17, v18

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v2, :cond_48

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {v14}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v0

    new-array v3, v0, [I

    const/4 v2, 0x0

    :goto_32
    if-ge v2, v0, :cond_3e

    aput v19, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_3e
    new-array v2, v0, [I

    move-object/from16 v17, v3

    const/4 v3, 0x0

    :goto_33
    if-ge v3, v0, :cond_3f

    move-object/from16 v18, v4

    const/4 v4, 0x0

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v18

    goto :goto_33

    :cond_3f
    move-object/from16 v18, v4

    move-object/from16 v3, v27

    move/from16 v4, v56

    invoke-interface {v3, v4}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v3

    move-object/from16 v21, v2

    new-instance v2, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move/from16 v46, v4

    move-object/from16 v26, v15

    const/4 v4, 0x0

    const/4 v15, 0x0

    invoke-direct {v2, v3, v4, v15}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLkotlin/jvm/functions/Function2;)V

    sget-object v22, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v9, v1, :cond_40

    move-object v1, v2

    move-object/from16 v2, v41

    move-object/from16 v4, v17

    move v3, v6

    move-object/from16 v15, v18

    move/from16 v23, v46

    move-object/from16 v25, v9

    move v9, v5

    move-object/from16 v5, v22

    move/from16 v17, v6

    move-object/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    goto :goto_34

    :cond_40
    move-object/from16 v25, v9

    move-object/from16 v4, v17

    move-object/from16 v15, v18

    move/from16 v23, v46

    move v9, v5

    move/from16 v17, v6

    move-object v1, v2

    move-object/from16 v2, v41

    move/from16 v3, v17

    move-object/from16 v5, v22

    move-object/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    :goto_34
    invoke-static/range {v21 .. v21}, Lkotlin/collections/ArraysKt___ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    move-result-object v1

    if-nez v31, :cond_41

    goto :goto_35

    :cond_41
    iget v2, v1, Lkotlin/ranges/IntProgression;->last:I

    iget v3, v1, Lkotlin/ranges/IntProgression;->first:I

    iget v1, v1, Lkotlin/ranges/IntProgression;->step:I

    neg-int v1, v1

    new-instance v4, Lkotlin/ranges/IntProgression;

    invoke-direct {v4, v2, v3, v1}, Lkotlin/ranges/IntProgression;-><init>(III)V

    move-object v1, v4

    :goto_35
    iget v2, v1, Lkotlin/ranges/IntProgression;->first:I

    iget v3, v1, Lkotlin/ranges/IntProgression;->last:I

    iget v1, v1, Lkotlin/ranges/IntProgression;->step:I

    if-lez v1, :cond_42

    if-le v2, v3, :cond_43

    :cond_42
    if-gez v1, :cond_46

    if-gt v3, v2, :cond_46

    :cond_43
    :goto_36
    aget v4, v21, v2

    if-nez v31, :cond_44

    move v5, v2

    goto :goto_37

    :cond_44
    sub-int v5, v0, v2

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_37
    invoke-virtual {v14, v5}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    if-eqz v31, :cond_45

    sub-int v6, v17, v4

    iget v4, v5, Landroidx/compose/foundation/pager/MeasuredPage;->size:I

    sub-int v4, v6, v4

    :cond_45
    invoke-virtual {v5, v4, v11, v10}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v2, v3, :cond_46

    add-int/2addr v2, v1

    goto :goto_36

    :cond_46
    move-object/from16 v4, p1

    goto :goto_3b

    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No extra pages"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    move-object/from16 v25, v9

    move-object/from16 v26, v15

    move/from16 v23, v56

    move-object v15, v4

    move v9, v5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v3

    const/4 v1, 0x0

    :goto_38
    if-ge v1, v0, :cond_49

    move-object/from16 v4, p1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    sub-int v2, v2, v34

    invoke-virtual {v5, v2, v11, v10}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_49
    move-object/from16 v4, p1

    invoke-virtual {v14}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v0

    const/4 v1, 0x0

    :goto_39
    if-ge v1, v0, :cond_4a

    invoke-virtual {v14, v1}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v2, v3, v11, v10}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int v3, v3, v34

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_4a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3a
    if-ge v1, v0, :cond_4b

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v2, v3, v11, v10}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int v3, v3, v34

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_4b
    :goto_3b
    if-eqz v13, :cond_4c

    move-object v0, v15

    goto :goto_3d

    :cond_4c
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_3c
    if-ge v2, v1, :cond_4e

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v6, v5, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    invoke-virtual {v14}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v13, v13, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    if-lt v6, v13, :cond_4d

    invoke-virtual {v14}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v6, v6, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    iget v5, v5, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    if-gt v5, v6, :cond_4d

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_4e
    :goto_3d
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_50

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_4f
    move-object/from16 v34, v1

    goto :goto_3f

    :cond_50
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_3e
    if-ge v3, v2, :cond_4f

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v5, v5, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    invoke-virtual {v14}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v6, v6, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    if-ge v5, v6, :cond_51

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :goto_3f
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_52

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_41

    :cond_52
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_40
    if-ge v3, v2, :cond_54

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v5, v5, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    invoke-virtual {v14}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v6, v6, Landroidx/compose/foundation/pager/MeasuredPage;->index:I

    if-le v5, v6, :cond_53

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_54
    :goto_41
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_55

    const/4 v5, 0x1

    const/16 v48, 0x0

    goto :goto_43

    :cond_55
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v2, v2, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float v2, v2

    sub-float v2, v2, v29

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    neg-float v2, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    const/4 v5, 0x1

    if-gt v5, v4, :cond_57

    move v13, v5

    :goto_42
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v8, v8, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    int-to-float v8, v8

    sub-float v8, v8, v29

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    neg-float v8, v8

    invoke-static {v2, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v14

    if-gez v14, :cond_56

    move-object v3, v6

    move v2, v8

    :cond_56
    if-eq v13, v4, :cond_57

    add-int/lit8 v13, v13, 0x1

    goto :goto_42

    :cond_57
    move-object/from16 v48, v3

    :goto_43
    move-object/from16 v2, v48

    check-cast v2, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_58

    iget v3, v2, Landroidx/compose/foundation/pager/MeasuredPage;->offset:I

    move/from16 v4, v55

    goto :goto_44

    :cond_58
    move/from16 v4, v55

    const/4 v3, 0x0

    :goto_44
    if-nez v4, :cond_59

    const/4 v3, 0x0

    :goto_45
    move/from16 v28, v3

    goto :goto_46

    :cond_59
    const/4 v6, 0x0

    rsub-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, -0x41000000    # -0.5f

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {v3, v4, v6}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v3

    goto :goto_45

    :goto_46
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$14;

    move-object/from16 v8, v36

    invoke-direct {v6, v15, v8}, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$14;-><init>(Ljava/util/List;Landroidx/compose/runtime/MutableState;)V

    move-object/from16 v8, v16

    invoke-virtual {v8, v3, v4, v6}, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1$measureResult$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v32, v3

    check-cast v32, Landroidx/compose/ui/layout/MeasureResult;

    move/from16 v3, v44

    if-lt v3, v7, :cond_5b

    if-le v9, v12, :cond_5a

    goto :goto_47

    :cond_5a
    const/16 v30, 0x0

    goto :goto_48

    :cond_5b
    :goto_47
    move/from16 v30, v5

    :goto_48
    new-instance v3, Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-object/from16 v16, v3

    move-object/from16 v17, v0

    move/from16 v18, v19

    move/from16 v19, v23

    move-object/from16 v21, v25

    move/from16 v22, v33

    move/from16 v23, v24

    move/from16 v24, v31

    move/from16 v25, v47

    move-object/from16 v27, v2

    move/from16 v29, v42

    move-object/from16 v31, v35

    move/from16 v33, v40

    move-object/from16 v35, v1

    invoke-direct/range {v16 .. v35}, Landroidx/compose/foundation/pager/PagerMeasureResult;-><init>(Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;IIZILandroidx/compose/foundation/pager/MeasuredPage;Landroidx/compose/foundation/pager/MeasuredPage;FIZLandroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/ui/layout/MeasureResult;ZLjava/util/List;Ljava/util/List;)V

    move-object/from16 v1, p0

    move-object v0, v3

    :goto_49
    iget-object v1, v1, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/compose/foundation/pager/PagerState;->applyMeasureResult$foundation_release(Landroidx/compose/foundation/pager/PagerMeasureResult;Z)V

    return-object v0

    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid currentFirstPageScrollOffset"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative afterContentPadding"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative beforeContentPadding"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    invoke-static {v5, v6, v11}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v0
.end method
