.class final Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;
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
        "Landroidx/compose/foundation/lazy/LazyListMeasureResult;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
        "containerConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "invoke-0kLqBqw",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/lazy/LazyListMeasureResult;"
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
.field final synthetic $beyondBoundsItemCount:I

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

.field final synthetic $horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

.field final synthetic $horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field final synthetic $isVertical:Z

.field final synthetic $itemProviderLambda:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $reverseLayout:Z

.field final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;

.field final synthetic $stickyHeadersEnabled:Z

.field final synthetic $verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

.field final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;ZLandroidx/compose/foundation/layout/PaddingValues;ZLkotlin/reflect/KProperty0;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZILkotlinx/coroutines/internal/ContextScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iput-boolean p4, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p7, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput-boolean p8, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$stickyHeadersEnabled:Z

    iput p9, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$beyondBoundsItemCount:I

    iput-object p10, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p11, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    iput-object p12, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p13, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

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

    iget-wide v12, v1, Landroidx/compose/ui/unit/Constraints;->value:J

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v1, v1, Landroidx/compose/foundation/lazy/LazyListState;->measurementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iget-boolean v1, v1, Landroidx/compose/foundation/lazy/LazyListState;->hasLookaheadPassOccurred:Z

    const/16 v17, 0x1

    if-nez v1, :cond_1

    move-object v1, v14

    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    iget-object v1, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v18, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v18, v17

    :goto_1
    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    sget-object v19, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v20, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-eqz v1, :cond_2

    move-object/from16 v1, v20

    goto :goto_2

    :cond_2
    move-object/from16 v1, v19

    :goto_2
    invoke-static {v12, v13, v1}, Landroidx/compose/foundation/CheckScrollableContainerConstraintsKt;->checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V

    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    move-object v2, v14

    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    iget-object v3, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    invoke-interface {v1, v3}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v1

    iget-object v2, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v2, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v1

    goto :goto_3

    :cond_3
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    move-object v2, v14

    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    iget-object v3, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/PaddingKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v1

    iget-object v2, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v2, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v1

    :goto_3
    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    move-object v3, v14

    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    iget-object v4, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v4}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    invoke-interface {v2, v4}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v2

    iget-object v3, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v3, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v2

    goto :goto_4

    :cond_4
    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    move-object v3, v14

    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    iget-object v4, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v4}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/PaddingKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v2

    iget-object v3, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v3, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v2

    :goto_4
    iget-object v3, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v3}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v3

    move-object v4, v14

    check-cast v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;

    iget-object v5, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v5, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v3

    iget-object v5, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-interface {v5}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v5

    iget-object v11, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->subcomposeMeasureScope:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    invoke-interface {v11, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    add-int v10, v3, v4

    add-int v9, v1, v2

    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v5, :cond_5

    move v6, v10

    goto :goto_5

    :cond_5
    move v6, v9

    :goto_5
    if-eqz v5, :cond_6

    iget-boolean v7, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    if-nez v7, :cond_6

    move v8, v3

    goto :goto_6

    :cond_6
    if-eqz v5, :cond_7

    iget-boolean v7, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    if-eqz v7, :cond_7

    move v8, v4

    goto :goto_6

    :cond_7
    if-nez v5, :cond_8

    iget-boolean v4, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    if-nez v4, :cond_8

    move v8, v1

    goto :goto_6

    :cond_8
    move v8, v2

    :goto_6
    sub-int v21, v6, v8

    neg-int v2, v9

    neg-int v4, v10

    invoke-static {v2, v4, v12, v13}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(IIJ)J

    move-result-wide v6

    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    iget-object v2, v5, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v4

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v15

    move/from16 p2, v8

    iget-object v8, v2, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->maxWidthState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->setIntValue(I)V

    iget-object v2, v2, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->maxHeightState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->setIntValue(I)V

    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    const-string v22, "null verticalArrangement when isVertical == true"

    if-eqz v2, :cond_a

    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v2

    goto :goto_7

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    if-eqz v2, :cond_7b

    invoke-interface {v2}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v2

    :goto_7
    invoke-interface {v11, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v23

    iget-object v2, v5, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->getIntervals$1()Landroidx/compose/foundation/lazy/layout/MutableIntervalList;

    move-result-object v2

    iget v15, v2, Landroidx/compose/foundation/lazy/layout/MutableIntervalList;->size:I

    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v2, :cond_b

    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    sub-int/2addr v2, v10

    :goto_8
    move v8, v2

    goto :goto_9

    :cond_b
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    sub-int/2addr v2, v9

    goto :goto_8

    :goto_9
    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    if-eqz v2, :cond_f

    if-lez v8, :cond_c

    goto :goto_c

    :cond_c
    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v2, :cond_d

    goto :goto_a

    :cond_d
    add-int/2addr v1, v8

    :goto_a
    if-eqz v2, :cond_e

    add-int/2addr v3, v8

    :cond_e
    invoke-static {v1, v3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v1

    :goto_b
    move-wide/from16 v24, v1

    goto :goto_d

    :cond_f
    :goto_c
    invoke-static {v1, v3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v1

    goto :goto_b

    :goto_d
    new-instance v4, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;

    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    iget-object v3, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    move-object/from16 v16, v11

    iget-boolean v11, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    move-wide/from16 v26, v12

    iget-object v13, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    move-object v12, v1

    move-object v1, v4

    move/from16 v28, v2

    move-object/from16 v29, v3

    move-wide v2, v6

    move-object/from16 v30, v4

    move/from16 v4, v28

    move-object/from16 v28, v5

    move-wide/from16 v31, v6

    move-object v6, v14

    move v7, v15

    move/from16 v33, p2

    move/from16 v34, v8

    move/from16 v8, v23

    move/from16 v35, v9

    move-object/from16 v9, v29

    move/from16 v29, v10

    move-object v10, v12

    move-object/from16 v36, v16

    move/from16 v12, v33

    move-object/from16 v16, v13

    move/from16 v13, v21

    move-object/from16 p1, v14

    move/from16 v38, v15

    move-wide/from16 v14, v24

    invoke-direct/range {v1 .. v16}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;-><init>(JZLandroidx/compose/foundation/lazy/LazyListItemProviderImpl;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;ZIIJLandroidx/compose/foundation/lazy/LazyListState;)V

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    goto :goto_e

    :cond_10
    const/4 v3, 0x0

    :goto_e
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v4

    :try_start_0
    iget-object v1, v1, Landroidx/compose/foundation/lazy/LazyListState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    iget-object v5, v1, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->index$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->getIntValue()I

    move-result v5

    iget-object v6, v1, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->lastKnownFirstItemKey:Ljava/lang/Object;

    move-object/from16 v7, v28

    invoke-static {v5, v7, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProviderKt;->findIndexByKey(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)I

    move-result v8

    if-eq v5, v8, :cond_11

    iget-object v6, v1, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->index$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->setIntValue(I)V

    iget-object v6, v1, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->nearestRangeState:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    invoke-virtual {v6, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->update$1(I)V

    goto :goto_f

    :catchall_0
    move-exception v0

    goto/16 :goto_58

    :cond_11
    :goto_f
    iget-object v1, v1, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->scrollOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->getIntValue()I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v4, v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListState;->pinnedItems:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    iget-object v1, v1, Landroidx/compose/foundation/lazy/LazyListState;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    invoke-static {v7, v2, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsStateKt;->calculateLazyLayoutPinnedIndices(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Ljava/util/List;

    move-result-object v9

    invoke-interface/range {v36 .. v36}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    move-result v1

    if-nez v1, :cond_13

    if-nez v18, :cond_12

    goto :goto_11

    :cond_12
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v1, v1, Landroidx/compose/foundation/lazy/LazyListState;->_scrollDeltaBetweenPasses:Landroidx/compose/animation/core/AnimationState;

    iget-object v1, v1, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    :goto_10
    move v10, v1

    goto :goto_12

    :cond_13
    :goto_11
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iget v1, v1, Landroidx/compose/foundation/lazy/LazyListState;->scrollToBeConsumed:F

    goto :goto_10

    :goto_12
    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$stickyHeadersEnabled:Z

    if-eqz v1, :cond_14

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_13
    move-object v13, v1

    goto :goto_14

    :cond_14
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_13

    :goto_14
    iget-boolean v14, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    iget-object v11, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iget-object v6, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v3, v1, Landroidx/compose/foundation/lazy/LazyListState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    iget v4, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$beyondBoundsItemCount:I

    invoke-interface/range {v36 .. v36}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    move-result v2

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v12, v1, Landroidx/compose/foundation/lazy/LazyListState;->postLookaheadLayoutInfo:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-object/from16 v16, v11

    iget-object v11, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v24, v11

    new-instance v11, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measureResult$1;

    move/from16 v25, v15

    move-object v15, v1

    move-object v1, v11

    move/from16 v28, v2

    move-object/from16 v2, p1

    move-object/from16 v39, v3

    move/from16 v40, v4

    move-wide/from16 v3, v26

    move/from16 v26, v5

    move/from16 v5, v35

    move-object/from16 v27, v6

    move/from16 v6, v29

    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measureResult$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JII)V

    move/from16 v1, v33

    if-ltz v1, :cond_7a

    if-ltz v21, :cond_79

    const-wide v41, 0xffffffffL

    const/16 v29, 0x20

    const-wide/16 v5, 0x0

    move/from16 v4, v38

    if-gtz v4, :cond_17

    invoke-static/range {v31 .. v32}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v12

    invoke-static/range {v31 .. v32}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v13

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v7, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    const/4 v10, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, v39

    move v3, v12

    move v4, v13

    move-object v5, v8

    move-object v6, v7

    move-object/from16 v7, v30

    move/from16 v8, v28

    move/from16 v9, v18

    move-object v0, v11

    move v11, v15

    invoke-virtual/range {v2 .. v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IILjava/util/List;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;ZZII)V

    move/from16 v11, v28

    if-nez v11, :cond_15

    invoke-virtual/range {v39 .. v39}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v6, v7}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v4

    if-nez v4, :cond_15

    shr-long v4, v2, v29

    long-to-int v4, v4

    move-wide/from16 v5, v31

    invoke-static {v4, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v12

    and-long v2, v2, v41

    long-to-int v2, v2

    invoke-static {v2, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result v13

    :cond_15
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3;->INSTANCE:Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3;

    invoke-virtual {v0, v2, v3, v4}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measureResult$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/compose/ui/layout/MeasureResult;

    sget-object v13, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    neg-int v0, v1

    move/from16 v5, v34

    add-int v15, v5, v21

    if-eqz v14, :cond_16

    move-object/from16 v17, v20

    goto :goto_15

    :cond_16
    move-object/from16 v17, v19

    :goto_15
    new-instance v20, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-object/from16 v1, v20

    const/4 v8, 0x0

    move-object/from16 v3, v30

    iget-wide v11, v3, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->childConstraints:J

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object/from16 v9, v24

    move-object/from16 v10, p1

    move v14, v0

    move/from16 v18, v21

    move/from16 v19, v23

    invoke-direct/range {v1 .. v19}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V

    move-object/from16 v2, p0

    const/4 v0, 0x0

    goto/16 :goto_57

    :cond_17
    move-object v0, v11

    move/from16 v11, v28

    move-object/from16 v3, v30

    move-wide/from16 v6, v31

    move/from16 v5, v34

    if-lt v8, v4, :cond_18

    add-int/lit8 v8, v4, -0x1

    const/16 v25, 0x0

    :cond_18
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v25, v25, v2

    if-nez v8, :cond_19

    if-gez v25, :cond_19

    add-int v2, v2, v25

    move-object/from16 v28, v0

    const/16 v25, 0x0

    goto :goto_16

    :cond_19
    move-object/from16 v28, v0

    :goto_16
    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    move-object/from16 v30, v15

    neg-int v15, v1

    move/from16 v32, v8

    if-gez v23, :cond_1a

    move/from16 v31, v23

    goto :goto_17

    :cond_1a
    const/16 v31, 0x0

    :goto_17
    add-int v8, v15, v31

    add-int v25, v25, v8

    move-wide/from16 v33, v6

    move-object/from16 v31, v13

    move/from16 v13, v25

    move/from16 v25, v15

    const/4 v15, 0x0

    :goto_18
    iget-wide v6, v3, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->childConstraints:J

    if-gez v13, :cond_1b

    if-lez v32, :cond_1b

    move/from16 v35, v14

    add-int/lit8 v14, v32, -0x1

    invoke-virtual {v3, v14, v6, v7}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    iget v7, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    move-result v15

    iget v6, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v13, v6

    move/from16 v32, v14

    move/from16 v14, v35

    goto :goto_18

    :cond_1b
    move/from16 v35, v14

    const/4 v14, 0x0

    if-ge v13, v8, :cond_1c

    add-int/2addr v2, v13

    move v13, v8

    :cond_1c
    sub-int/2addr v13, v8

    add-int v37, v5, v21

    move/from16 v43, v15

    if-gez v37, :cond_1d

    goto :goto_19

    :cond_1d
    move/from16 v14, v37

    :goto_19
    neg-int v15, v13

    move-object/from16 v47, v12

    move/from16 v44, v13

    move v13, v15

    move/from16 v46, v32

    const/4 v15, 0x0

    const/16 v45, 0x0

    :goto_1a
    iget v12, v0, Lkotlin/collections/ArrayDeque;->size:I

    if-ge v15, v12, :cond_1f

    if-lt v13, v14, :cond_1e

    invoke-virtual {v0, v15}, Lkotlin/collections/ArrayDeque;->removeAt(I)Ljava/lang/Object;

    move/from16 v45, v17

    goto :goto_1a

    :cond_1e
    add-int/lit8 v46, v46, 0x1

    invoke-virtual {v0, v15}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v12, v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v13, v12

    add-int/lit8 v15, v15, 0x1

    goto :goto_1a

    :cond_1f
    move/from16 v12, v43

    move/from16 v15, v44

    move-object/from16 v43, v9

    move/from16 v9, v46

    :goto_1b
    if-ge v9, v4, :cond_21

    if-lt v13, v14, :cond_20

    if-lez v13, :cond_20

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v44

    if-eqz v44, :cond_21

    :cond_20
    move/from16 v44, v14

    goto :goto_1c

    :cond_21
    move/from16 v46, v11

    goto :goto_1e

    :goto_1c
    invoke-virtual {v3, v9, v6, v7}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v14

    move/from16 v46, v11

    iget v11, v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v13, v11

    if-gt v13, v8, :cond_22

    move/from16 v48, v8

    add-int/lit8 v8, v4, -0x1

    if-eq v9, v8, :cond_23

    add-int/lit8 v8, v9, 0x1

    sub-int/2addr v15, v11

    move/from16 v32, v8

    move/from16 v45, v17

    goto :goto_1d

    :cond_22
    move/from16 v48, v8

    :cond_23
    iget v8, v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v0, v14}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move v12, v8

    :goto_1d
    add-int/lit8 v9, v9, 0x1

    move/from16 v14, v44

    move/from16 v11, v46

    move/from16 v8, v48

    goto :goto_1b

    :goto_1e
    if-ge v13, v5, :cond_25

    sub-int v8, v5, v13

    sub-int/2addr v15, v8

    add-int/2addr v13, v8

    :goto_1f
    if-ge v15, v1, :cond_24

    if-lez v32, :cond_24

    add-int/lit8 v11, v32, -0x1

    invoke-virtual {v3, v11, v6, v7}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v14

    move/from16 v44, v9

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v14}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    iget v9, v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget v9, v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v15, v9

    move/from16 v32, v11

    move/from16 v9, v44

    goto :goto_1f

    :cond_24
    move/from16 v44, v9

    add-int/2addr v8, v2

    if-gez v15, :cond_26

    add-int/2addr v8, v15

    add-int/2addr v13, v15

    const/4 v15, 0x0

    goto :goto_20

    :cond_25
    move/from16 v44, v9

    move v8, v2

    :cond_26
    :goto_20
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-gez v9, :cond_27

    const/4 v9, -0x1

    goto :goto_21

    :cond_27
    if-lez v9, :cond_28

    move/from16 v9, v17

    goto :goto_21

    :cond_28
    const/4 v9, 0x0

    :goto_21
    if-gez v8, :cond_29

    const/4 v14, -0x1

    goto :goto_22

    :cond_29
    if-lez v8, :cond_2a

    move/from16 v14, v17

    goto :goto_22

    :cond_2a
    const/4 v14, 0x0

    :goto_22
    if-ne v9, v14, :cond_2b

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-lt v9, v14, :cond_2b

    int-to-float v9, v8

    move v14, v9

    goto :goto_23

    :cond_2b
    move v14, v10

    :goto_23
    sub-float/2addr v10, v14

    const/4 v9, 0x0

    if-eqz v46, :cond_2c

    if-le v8, v2, :cond_2c

    cmpg-float v48, v10, v9

    if-gtz v48, :cond_2c

    sub-int/2addr v8, v2

    int-to-float v2, v8

    add-float/2addr v2, v10

    move/from16 v48, v2

    goto :goto_24

    :cond_2c
    move/from16 v48, v9

    :goto_24
    if-ltz v15, :cond_78

    neg-int v2, v15

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-gtz v1, :cond_2e

    if-gez v23, :cond_2d

    goto :goto_25

    :cond_2d
    move/from16 v50, v15

    move-object v15, v8

    goto :goto_27

    :cond_2e
    :goto_25
    iget v1, v0, Lkotlin/collections/ArrayDeque;->size:I

    move v10, v15

    const/4 v15, 0x0

    :goto_26
    if-ge v15, v1, :cond_2f

    invoke-virtual {v0, v15}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v49

    move-object/from16 v9, v49

    check-cast v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v9, v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    if-eqz v10, :cond_2f

    if-gt v9, v10, :cond_2f

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v11

    if-eq v15, v11, :cond_2f

    sub-int/2addr v10, v9

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v0, v15}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    const/4 v9, 0x0

    goto :goto_26

    :cond_2f
    move-object v15, v8

    move/from16 v50, v10

    :goto_27
    sub-int v1, v32, v40

    const/4 v8, 0x0

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v8, v32, -0x1

    const/4 v9, 0x0

    if-gt v1, v8, :cond_31

    :goto_28
    if-nez v9, :cond_30

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_30
    invoke-virtual {v3, v8, v6, v7}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v8, v1, :cond_31

    add-int/lit8 v8, v8, -0x1

    goto :goto_28

    :cond_31
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, -0x1

    add-int/2addr v8, v10

    if-ltz v8, :cond_35

    :goto_29
    add-int/lit8 v10, v8, -0x1

    move-object/from16 v11, v43

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-ge v8, v1, :cond_33

    if-nez v9, :cond_32

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_32
    invoke-virtual {v3, v8, v6, v7}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_33
    if-gez v10, :cond_34

    goto :goto_2a

    :cond_34
    move v8, v10

    move-object/from16 v43, v11

    goto :goto_29

    :cond_35
    move-object/from16 v11, v43

    :goto_2a
    if-nez v9, :cond_36

    sget-object v9, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_36
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    const/4 v8, 0x0

    :goto_2b
    if-ge v8, v1, :cond_37

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v10, v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_2b

    :cond_37
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v1, v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    add-int v1, v1, v40

    add-int/lit8 v8, v4, -0x1

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v10, v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    add-int/lit8 v10, v10, 0x1

    if-gt v10, v1, :cond_39

    const/16 v32, 0x0

    :goto_2c
    if-nez v32, :cond_38

    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    :cond_38
    move/from16 v40, v12

    move-object/from16 v12, v32

    move/from16 v32, v2

    invoke-virtual {v3, v10, v6, v7}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v10, v1, :cond_3a

    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v32

    move-object/from16 v32, v12

    move/from16 v12, v40

    goto :goto_2c

    :cond_39
    move/from16 v32, v2

    move/from16 v40, v12

    const/4 v12, 0x0

    :cond_3a
    if-eqz v46, :cond_4e

    if-eqz v47, :cond_4e

    move-object/from16 v2, v47

    iget-object v10, v2, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/util/List;

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_4e

    iget-object v10, v2, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v43

    add-int/lit8 v43, v43, -0x1

    move-object/from16 v47, v12

    move/from16 v12, v43

    move/from16 v43, v13

    :goto_2d
    const/4 v13, -0x1

    if-ge v13, v12, :cond_3d

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v49

    move-object/from16 v13, v49

    check-cast v13, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v13, v13, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    if-le v13, v1, :cond_3c

    if-eqz v12, :cond_3b

    add-int/lit8 v13, v12, -0x1

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v13, v13, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    if-gt v13, v1, :cond_3c

    :cond_3b
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    goto :goto_2e

    :cond_3c
    add-int/lit8 v12, v12, -0x1

    goto :goto_2d

    :cond_3d
    const/4 v10, 0x0

    :goto_2e
    iget-object v12, v2, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/util/List;

    invoke-static {v12}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v10, :cond_43

    iget v13, v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v10, v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    if-gt v10, v8, :cond_43

    move-object/from16 v13, v47

    :goto_2f
    move/from16 v49, v5

    if-eqz v13, :cond_40

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    move-object/from16 v51, v9

    const/4 v9, 0x0

    :goto_30
    if-ge v9, v5, :cond_3f

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v47

    move/from16 v52, v5

    move-object/from16 v5, v47

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v5, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    if-ne v5, v10, :cond_3e

    goto :goto_31

    :cond_3e
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v52

    goto :goto_30

    :cond_3f
    const/16 v47, 0x0

    :goto_31
    check-cast v47, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    goto :goto_32

    :cond_40
    move-object/from16 v51, v9

    const/16 v47, 0x0

    :goto_32
    if-nez v47, :cond_42

    if-nez v13, :cond_41

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_41
    invoke-virtual {v3, v10, v6, v7}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_42
    if-eq v10, v8, :cond_44

    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v49

    move-object/from16 v9, v51

    goto :goto_2f

    :cond_43
    move/from16 v49, v5

    move-object/from16 v51, v9

    move-object/from16 v13, v47

    :cond_44
    iget v5, v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->viewportEndOffset:I

    sub-int/2addr v2, v5

    iget v5, v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->size:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    sub-float/2addr v2, v14

    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_4d

    iget v5, v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    add-int/lit8 v5, v5, 0x1

    move-object v12, v13

    const/4 v8, 0x0

    :goto_33
    if-ge v5, v4, :cond_4f

    int-to-float v9, v8

    cmpg-float v9, v9, v2

    if-gez v9, :cond_4f

    if-gt v5, v1, :cond_47

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v9

    const/4 v10, 0x0

    :goto_34
    if-ge v10, v9, :cond_46

    invoke-virtual {v0, v10}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v13

    move/from16 v47, v2

    move-object v2, v13

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    if-ne v2, v5, :cond_45

    goto :goto_35

    :cond_45
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v47

    goto :goto_34

    :cond_46
    move/from16 v47, v2

    const/4 v13, 0x0

    :goto_35
    check-cast v13, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    goto :goto_38

    :cond_47
    move/from16 v47, v2

    if-eqz v12, :cond_4a

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    const/4 v9, 0x0

    :goto_36
    if-ge v9, v2, :cond_49

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v13, v13, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    if-ne v13, v5, :cond_48

    goto :goto_37

    :cond_48
    add-int/lit8 v9, v9, 0x1

    goto :goto_36

    :cond_49
    const/4 v10, 0x0

    :goto_37
    move-object v13, v10

    check-cast v13, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    goto :goto_38

    :cond_4a
    const/4 v13, 0x0

    :goto_38
    if-eqz v13, :cond_4b

    add-int/lit8 v5, v5, 0x1

    iget v2, v13, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    :goto_39
    add-int/2addr v8, v2

    move/from16 v2, v47

    goto :goto_33

    :cond_4b
    if-nez v12, :cond_4c

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_4c
    invoke-virtual {v3, v5, v6, v7}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    invoke-static {v12}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    goto :goto_39

    :cond_4d
    move-object v12, v13

    goto :goto_3a

    :cond_4e
    move/from16 v49, v5

    move-object/from16 v51, v9

    move-object/from16 v47, v12

    move/from16 v43, v13

    move-object/from16 v12, v47

    :cond_4f
    :goto_3a
    if-eqz v12, :cond_50

    invoke-static {v12}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    if-le v2, v1, :cond_50

    invoke-static {v12}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v1, v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    :cond_50
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_3b
    if-ge v5, v2, :cond_53

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-le v8, v1, :cond_52

    if-nez v12, :cond_51

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_51
    invoke-virtual {v3, v8, v6, v7}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    :cond_53
    if-nez v12, :cond_54

    sget-object v12, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_54
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v2, v40

    const/4 v5, 0x0

    :goto_3c
    if-ge v5, v1, :cond_55

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v6, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    :cond_55
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface/range {v51 .. v51}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_56

    move/from16 v13, v17

    goto :goto_3d

    :cond_56
    const/4 v13, 0x0

    :goto_3d
    if-eqz v35, :cond_57

    move v1, v2

    move-wide/from16 v6, v33

    goto :goto_3e

    :cond_57
    move-wide/from16 v6, v33

    move/from16 v1, v43

    :goto_3e
    invoke-static {v1, v6, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v11

    if-eqz v35, :cond_58

    move/from16 v2, v43

    :cond_58
    invoke-static {v2, v6, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result v10

    if-eqz v35, :cond_59

    move v8, v10

    :goto_3f
    move/from16 v5, v49

    goto :goto_40

    :cond_59
    move v8, v11

    goto :goto_3f

    :goto_40
    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    move/from16 v9, v43

    if-ge v9, v1, :cond_5a

    move/from16 v1, v17

    goto :goto_41

    :cond_5a
    const/4 v1, 0x0

    :goto_41
    if-eqz v1, :cond_5c

    if-nez v32, :cond_5b

    goto :goto_42

    :cond_5b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "non-zero itemsScrollOffset"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    :goto_42
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v33

    invoke-interface/range {v51 .. v51}, Ljava/util/List;->size()I

    move-result v34

    add-int v34, v34, v33

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v33

    move-object/from16 v40, v3

    add-int v3, v33, v34

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v1, :cond_69

    invoke-interface/range {v51 .. v51}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v12

    new-array v3, v12, [I

    const/4 v1, 0x0

    :goto_43
    if-ge v1, v12, :cond_5e

    if-nez v26, :cond_5d

    move-object/from16 v33, v2

    move v2, v1

    goto :goto_44

    :cond_5d
    sub-int v32, v12, v1

    add-int/lit8 v32, v32, -0x1

    move-object/from16 v33, v2

    move/from16 v2, v32

    :goto_44
    invoke-virtual {v0, v2}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->size:I

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v33

    goto :goto_43

    :cond_5e
    move-object/from16 v33, v2

    new-array v2, v12, [I

    const/4 v1, 0x0

    :goto_45
    if-ge v1, v12, :cond_5f

    const/16 v34, 0x0

    aput v34, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    :cond_5f
    const/16 v34, 0x0

    if-eqz v35, :cond_61

    if-eqz v16, :cond_60

    move-object/from16 v1, p1

    move/from16 v38, v4

    move-object/from16 v4, v16

    invoke-interface {v4, v1, v8, v3, v2}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    move-object/from16 v22, v1

    move-object/from16 v27, v2

    move/from16 v53, v5

    move-wide/from16 v54, v6

    move/from16 p1, v14

    move-object/from16 v14, v40

    move/from16 v56, v38

    move/from16 v38, v13

    move-object/from16 v13, v33

    move-object/from16 v33, v15

    move/from16 v15, v56

    goto :goto_46

    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    move-object/from16 v1, p1

    move/from16 v38, v4

    if-eqz v27, :cond_67

    sget-object v16, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v22, v1

    move-object/from16 v1, v27

    move-object/from16 v27, v2

    move-object/from16 v4, v33

    move-object/from16 v2, v22

    move-object/from16 v32, v3

    move/from16 p1, v14

    move-object/from16 v14, v40

    move v3, v8

    move-object/from16 v33, v15

    move/from16 v15, v38

    move/from16 v38, v13

    move-object v13, v4

    move-object/from16 v4, v32

    move/from16 v53, v5

    move-object/from16 v5, v16

    move-wide/from16 v54, v6

    move-object/from16 v6, v27

    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    :goto_46
    invoke-static/range {v27 .. v27}, Lkotlin/collections/ArraysKt___ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    move-result-object v1

    if-nez v26, :cond_62

    goto :goto_47

    :cond_62
    iget v2, v1, Lkotlin/ranges/IntProgression;->last:I

    iget v3, v1, Lkotlin/ranges/IntProgression;->first:I

    iget v1, v1, Lkotlin/ranges/IntProgression;->step:I

    neg-int v1, v1

    new-instance v4, Lkotlin/ranges/IntProgression;

    invoke-direct {v4, v2, v3, v1}, Lkotlin/ranges/IntProgression;-><init>(III)V

    move-object v1, v4

    :goto_47
    iget v2, v1, Lkotlin/ranges/IntProgression;->first:I

    iget v3, v1, Lkotlin/ranges/IntProgression;->last:I

    iget v1, v1, Lkotlin/ranges/IntProgression;->step:I

    if-lez v1, :cond_63

    if-le v2, v3, :cond_64

    :cond_63
    if-gez v1, :cond_6c

    if-gt v3, v2, :cond_6c

    :cond_64
    :goto_48
    aget v4, v27, v2

    if-nez v26, :cond_65

    move v5, v2

    goto :goto_49

    :cond_65
    sub-int v5, v12, v2

    add-int/lit8 v5, v5, -0x1

    :goto_49
    invoke-virtual {v0, v5}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v26, :cond_66

    sub-int v4, v8, v4

    iget v6, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->size:I

    sub-int/2addr v4, v6

    :cond_66
    invoke-virtual {v5, v4, v11, v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v2, v3, :cond_6c

    add-int/2addr v2, v1

    goto :goto_48

    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null horizontalArrangement when isVertical == false"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no extra items"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    move-object/from16 v22, p1

    move/from16 v53, v5

    move-wide/from16 v54, v6

    move/from16 v38, v13

    move/from16 p1, v14

    move-object/from16 v33, v15

    move-object/from16 v14, v40

    const/16 v34, 0x0

    move-object v13, v2

    move v15, v4

    invoke-interface/range {v51 .. v51}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v3, v32

    move/from16 v2, v34

    :goto_4a
    if-ge v2, v1, :cond_6a

    move-object/from16 v4, v51

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v6, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    sub-int/2addr v3, v6

    invoke-virtual {v5, v3, v11, v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v51, v4

    goto :goto_4a

    :cond_6a
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v1

    move/from16 v2, v32

    move/from16 v3, v34

    :goto_4b
    if-ge v3, v1, :cond_6b

    invoke-virtual {v0, v3}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v4, v2, v11, v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    :cond_6b
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v3, v34

    :goto_4c
    if-ge v3, v1, :cond_6c

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v4, v2, v11, v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    :cond_6c
    iget-object v1, v14, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    iget-object v6, v1, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-object/from16 v2, v39

    move v3, v11

    move v4, v10

    move-object v5, v13

    move-object v7, v14

    move/from16 v8, v46

    move v12, v9

    move/from16 v1, v44

    move/from16 v9, v18

    move-object/from16 v40, v14

    move v14, v10

    move/from16 v10, v50

    move-object/from16 v16, v0

    move v0, v11

    move/from16 v1, v46

    move v11, v12

    invoke-virtual/range {v2 .. v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IILjava/util/List;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;ZZII)V

    if-nez v1, :cond_70

    invoke-virtual/range {v39 .. v39}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v4

    if-nez v4, :cond_70

    if-eqz v35, :cond_6d

    move v11, v14

    goto :goto_4d

    :cond_6d
    move v11, v0

    :goto_4d
    shr-long v4, v2, v29

    long-to-int v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    move-wide/from16 v4, v54

    invoke-static {v0, v4, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v0

    and-long v2, v2, v41

    long-to-int v2, v2

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v4, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result v10

    if-eqz v35, :cond_6e

    move v2, v10

    goto :goto_4e

    :cond_6e
    move v2, v0

    :goto_4e
    if-eq v2, v11, :cond_6f

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v4, v34

    :goto_4f
    if-ge v4, v3, :cond_6f

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iput v2, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisLayoutSize:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    :cond_6f
    move v11, v0

    goto :goto_50

    :cond_70
    move v11, v0

    move v10, v14

    :goto_50
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v9, v44

    if-lt v9, v15, :cond_72

    move/from16 v2, v53

    if-le v12, v2, :cond_71

    goto :goto_51

    :cond_71
    move/from16 v4, v34

    goto :goto_52

    :cond_72
    :goto_51
    move/from16 v4, v17

    :goto_52
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;

    move-object/from16 v5, v30

    iget-object v5, v5, Landroidx/compose/foundation/lazy/LazyListState;->placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    const/4 v6, 0x0

    invoke-direct {v3, v13, v6, v1, v5}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;-><init>(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItem;ZLandroidx/compose/runtime/MutableState;)V

    move-object/from16 v1, v28

    invoke-virtual {v1, v0, v2, v3}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measureResult$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/compose/ui/layout/MeasureResult;

    if-eqz v38, :cond_73

    goto :goto_55

    :cond_73
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v2, v34

    :goto_53
    if-ge v2, v1, :cond_76

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v7, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    invoke-virtual/range {v16 .. v16}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v8, v8, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    if-lt v7, v8, :cond_75

    invoke-virtual/range {v16 .. v16}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v7, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    iget v5, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    if-le v5, v7, :cond_74

    goto :goto_54

    :cond_74
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_75
    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_76
    move-object v13, v0

    :goto_55
    if-eqz v35, :cond_77

    move-object/from16 v17, v20

    goto :goto_56

    :cond_77
    move-object/from16 v17, v19

    :goto_56
    new-instance v20, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-object/from16 v1, v20

    move-object/from16 v0, v40

    iget-wide v11, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->childConstraints:J

    move-object/from16 v2, v33

    move/from16 v3, v50

    move/from16 v5, p1

    move/from16 v7, v48

    move/from16 v8, v45

    move-object/from16 v9, v24

    move-object/from16 v10, v22

    move/from16 v0, v34

    move/from16 v14, v25

    move/from16 v16, v15

    move/from16 v15, v37

    move/from16 v18, v21

    move/from16 v19, v23

    invoke-direct/range {v1 .. v19}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;II)V

    move-object/from16 v2, p0

    :goto_57
    iget-object v2, v2, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-interface/range {v36 .. v36}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->isLookingAhead()Z

    move-result v3

    invoke-virtual {v2, v1, v3, v0}, Landroidx/compose/foundation/lazy/LazyListState;->applyMeasureResult$foundation_release(Landroidx/compose/foundation/lazy/LazyListMeasureResult;ZZ)V

    return-object v1

    :cond_78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative currentFirstItemScrollOffset"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid afterContentPadding"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid beforeContentPadding"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_58
    invoke-static {v2, v4, v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v0

    :cond_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null horizontalAlignment when isVertical == false"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
