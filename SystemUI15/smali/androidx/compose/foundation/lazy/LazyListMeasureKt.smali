.class public abstract Landroidx/compose/foundation/lazy/LazyListMeasureKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final measureLazyList-x0Ok8Vo(ILandroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;IIIIIIFJZLkotlin/collections/EmptyList;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;ILjava/util/List;ZZLandroidx/compose/foundation/lazy/LazyListMeasureResult;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/GraphicsContext;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    .locals 43

    move/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p2

    move/from16 v12, p3

    move-wide/from16 v10, p9

    move-object/from16 v0, p13

    move-object/from16 v1, p19

    move/from16 v9, p21

    move-object/from16 v2, p22

    if-ltz v12, :cond_61

    if-ltz p4, :cond_60

    iget-object v3, v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->itemProvider:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    const-wide v16, 0xffffffffL

    const/16 v18, 0x20

    const-wide/16 v7, 0x0

    if-gtz v15, :cond_2

    invoke-static/range {p9 .. p10}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v15

    invoke-static/range {p9 .. p10}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v19

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    iget-object v5, v3, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    const/4 v1, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p17

    move v2, v15

    move/from16 v3, v19

    move-object/from16 v6, p1

    move/from16 v7, p11

    move/from16 v8, p21

    move/from16 v9, v20

    move/from16 v10, p20

    move/from16 v11, v21

    move/from16 v12, v22

    move-object/from16 v13, p23

    move/from16 p0, v15

    move-object v15, v14

    move-object/from16 v14, p25

    invoke-virtual/range {v0 .. v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    move/from16 v14, p21

    if-nez v14, :cond_0

    invoke-virtual/range {p17 .. p17}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    move-result-wide v0

    sget-object v2, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v12, 0x0

    invoke-static {v0, v1, v12, v13}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    shr-long v2, v0, v18

    long-to-int v2, v2

    move-wide/from16 v10, p9

    invoke-static {v2, v10, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v2

    and-long v0, v0, v16

    long-to-int v0, v0

    invoke-static {v0, v10, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result v19

    goto :goto_0

    :cond_0
    move/from16 v2, p0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3;->INSTANCE:Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3;

    move-object/from16 v3, p26

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measureResult$1$1;

    invoke-virtual {v3, v0, v1, v2}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measureResult$1$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/compose/ui/layout/MeasureResult;

    sget-object v12, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    move/from16 v4, p3

    neg-int v13, v4

    move/from16 v9, p2

    add-int v14, v9, p4

    if-eqz p11, :cond_1

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_1
    move-object/from16 v17, v0

    goto :goto_2

    :cond_1
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_1

    :goto_2
    new-instance v21, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-object/from16 v0, v21

    const/4 v7, 0x0

    iget-wide v10, v15, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->childConstraints:J

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    move-object/from16 v8, p23

    move-object/from16 v9, p16

    move/from16 v16, p15

    move/from16 v18, p4

    move/from16 v19, p5

    invoke-direct/range {v0 .. v20}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v21

    :cond_2
    move v4, v12

    move-object/from16 v42, v14

    move v14, v9

    move v9, v13

    move-wide v12, v7

    move v8, v15

    move-object/from16 v15, v42

    move/from16 v5, p6

    if-lt v5, v8, :cond_3

    add-int/lit8 v5, v8, -0x1

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    move/from16 v6, p7

    :goto_3
    invoke-static/range {p8 .. p8}, Ljava/lang/Math;->round(F)I

    move-result v19

    sub-int v6, v6, v19

    if-nez v5, :cond_4

    if-gez v6, :cond_4

    add-int v19, v19, v6

    const/4 v6, 0x0

    :cond_4
    new-instance v7, Lkotlin/collections/ArrayDeque;

    invoke-direct {v7}, Lkotlin/collections/ArrayDeque;-><init>()V

    neg-int v13, v4

    if-gez p5, :cond_5

    move/from16 v12, p5

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    :goto_4
    add-int/2addr v12, v13

    add-int/2addr v6, v12

    move/from16 v21, v13

    const/4 v13, 0x0

    :goto_5
    if-gez v6, :cond_6

    if-lez v5, :cond_6

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v22, v3

    invoke-static {v15, v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v3

    move/from16 p6, v5

    const/4 v5, 0x0

    invoke-virtual {v7, v5, v3}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    iget v5, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget v3, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v6, v3

    move/from16 v5, p6

    move-object/from16 v3, v22

    goto :goto_5

    :cond_6
    move-object/from16 v22, v3

    if-ge v6, v12, :cond_7

    add-int v19, v19, v6

    move v6, v12

    :cond_7
    move/from16 v3, v19

    sub-int/2addr v6, v12

    add-int v19, v9, p4

    move/from16 p6, v5

    move/from16 p7, v13

    if-gez v19, :cond_8

    const/4 v5, 0x0

    goto :goto_6

    :cond_8
    move/from16 v5, v19

    :goto_6
    neg-int v13, v6

    move/from16 v26, p6

    move/from16 v24, v6

    const/4 v6, 0x0

    const/16 v25, 0x0

    :goto_7
    iget v0, v7, Lkotlin/collections/ArrayDeque;->size:I

    const/16 v27, 0x1

    if-ge v6, v0, :cond_a

    if-lt v13, v5, :cond_9

    invoke-virtual {v7, v6}, Lkotlin/collections/ArrayDeque;->removeAt(I)Ljava/lang/Object;

    move/from16 v25, v27

    goto :goto_7

    :cond_9
    add-int/lit8 v26, v26, 0x1

    invoke-virtual {v7, v6}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v13, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_a
    move/from16 v6, p7

    move/from16 v0, v26

    :goto_8
    if-ge v0, v8, :cond_d

    if-lt v13, v5, :cond_b

    if-lez v13, :cond_b

    invoke-virtual {v7}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_d

    :cond_b
    move/from16 v26, v5

    invoke-static {v15, v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v5

    iget v10, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v13, v10

    if-gt v13, v12, :cond_c

    add-int/lit8 v11, v8, -0x1

    if-eq v0, v11, :cond_c

    add-int/lit8 v5, v0, 0x1

    sub-int v24, v24, v10

    move/from16 v25, v27

    goto :goto_9

    :cond_c
    iget v10, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v7, v5}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move/from16 v5, p6

    :goto_9
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v10, p9

    move/from16 p6, v5

    move/from16 v5, v26

    goto :goto_8

    :cond_d
    if-ge v13, v9, :cond_10

    sub-int v5, v9, v13

    sub-int v24, v24, v5

    add-int/2addr v13, v5

    move v10, v6

    move/from16 v11, v24

    move/from16 v6, p6

    :goto_a
    if-ge v11, v4, :cond_e

    if-lez v6, :cond_e

    add-int/lit8 v6, v6, -0x1

    invoke-static {v15, v6}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v12

    move/from16 v26, v0

    const/4 v0, 0x0

    invoke-virtual {v7, v0, v12}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    iget v0, v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v0, v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v11, v0

    move/from16 v0, v26

    goto :goto_a

    :cond_e
    move/from16 v26, v0

    add-int/2addr v5, v3

    if-gez v11, :cond_f

    add-int/2addr v5, v11

    add-int/2addr v13, v11

    move v0, v6

    move v6, v10

    const/4 v11, 0x0

    goto :goto_b

    :cond_f
    move v0, v6

    move v6, v10

    goto :goto_b

    :cond_10
    move/from16 v26, v0

    move/from16 v0, p6

    move v5, v3

    move/from16 v11, v24

    :goto_b
    invoke-static/range {p8 .. p8}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v10}, Lkotlin/math/MathKt__MathJVMKt;->getSign(I)I

    move-result v10

    invoke-static {v5}, Lkotlin/math/MathKt__MathJVMKt;->getSign(I)I

    move-result v12

    if-ne v10, v12, :cond_11

    invoke-static/range {p8 .. p8}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-lt v10, v12, :cond_11

    int-to-float v10, v5

    move v12, v10

    goto :goto_c

    :cond_11
    move/from16 v12, p8

    :goto_c
    sub-float v10, p8, v12

    const/16 v24, 0x0

    if-eqz v14, :cond_12

    if-le v5, v3, :cond_12

    cmpg-float v28, v10, v24

    if-gtz v28, :cond_12

    sub-int/2addr v5, v3

    int-to-float v3, v5

    add-float/2addr v3, v10

    move/from16 v28, v3

    goto :goto_d

    :cond_12
    move/from16 v28, v24

    :goto_d
    if-ltz v11, :cond_5f

    neg-int v3, v11

    invoke-virtual {v7}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-gtz v4, :cond_14

    if-gez p5, :cond_13

    goto :goto_e

    :cond_13
    move/from16 v29, v11

    move-object v11, v5

    goto :goto_10

    :cond_14
    :goto_e
    iget v4, v7, Lkotlin/collections/ArrayDeque;->size:I

    const/4 v10, 0x0

    :goto_f
    if-ge v10, v4, :cond_15

    invoke-virtual {v7, v10}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v29

    move/from16 p3, v4

    move-object/from16 v4, v29

    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v4, v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    if-eqz v11, :cond_15

    if-gt v4, v11, :cond_15

    move-object/from16 p6, v5

    invoke-static {v7}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-eq v10, v5, :cond_16

    sub-int/2addr v11, v4

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v7, v10}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move/from16 v4, p3

    goto :goto_f

    :cond_15
    move-object/from16 p6, v5

    :cond_16
    move/from16 v29, v11

    move-object/from16 v11, p6

    :goto_10
    sub-int v4, v0, p18

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v0, v0, -0x1

    const/4 v5, 0x0

    if-gt v4, v0, :cond_18

    :goto_11
    if-nez v5, :cond_17

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_17
    invoke-static {v15, v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v0, v4, :cond_18

    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_18
    invoke-interface/range {p19 .. p19}, Ljava/util/List;->size()I

    move-result v0

    const/4 v10, -0x1

    add-int/2addr v0, v10

    if-ltz v0, :cond_1c

    :goto_12
    add-int/lit8 v30, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ge v0, v4, :cond_1a

    if-nez v5, :cond_19

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_19
    invoke-static {v15, v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    if-gez v30, :cond_1b

    goto :goto_13

    :cond_1b
    move/from16 v0, v30

    goto :goto_12

    :cond_1c
    :goto_13
    if-nez v5, :cond_1d

    sget-object v5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_1d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v0, :cond_1e

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v10, v30

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v10, v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v4, v4, 0x1

    const/4 v10, -0x1

    goto :goto_14

    :cond_1e
    invoke-static {v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    add-int v0, v0, p18

    add-int/lit8 v4, v8, -0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v10, v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    add-int/lit8 v10, v10, 0x1

    if-gt v10, v0, :cond_20

    const/16 v30, 0x0

    :goto_15
    if-nez v30, :cond_1f

    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    :cond_1f
    move/from16 p7, v6

    move-object/from16 v6, v30

    move/from16 v30, v3

    invoke-static {v15, v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v10, v0, :cond_21

    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v30

    move-object/from16 v30, v6

    move/from16 v6, p7

    goto :goto_15

    :cond_20
    move/from16 v30, v3

    move/from16 p7, v6

    const/4 v6, 0x0

    :cond_21
    if-eqz v14, :cond_35

    if-eqz v2, :cond_35

    iget-object v3, v2, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_35

    iget-object v3, v2, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    move-object/from16 p6, v6

    :goto_16
    const/4 v6, -0x1

    if-ge v6, v10, :cond_24

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v6, v31

    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v6, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    if-le v6, v0, :cond_23

    if-eqz v10, :cond_22

    add-int/lit8 v6, v10, -0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v6, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    if-gt v6, v0, :cond_23

    :cond_22
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    goto :goto_17

    :cond_23
    add-int/lit8 v10, v10, -0x1

    goto :goto_16

    :cond_24
    const/4 v3, 0x0

    :goto_17
    iget-object v6, v2, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/util/List;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v3, :cond_2a

    iget v10, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v3, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    if-gt v3, v4, :cond_2a

    move-object/from16 v10, p6

    :goto_18
    if-eqz v10, :cond_27

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    move/from16 v31, v13

    const/4 v13, 0x0

    :goto_19
    if-ge v13, v14, :cond_26

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    move/from16 p6, v14

    move-object/from16 v14, v32

    check-cast v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v14, v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    if-ne v14, v3, :cond_25

    goto :goto_1a

    :cond_25
    add-int/lit8 v13, v13, 0x1

    move/from16 v14, p6

    goto :goto_19

    :cond_26
    const/16 v32, 0x0

    :goto_1a
    check-cast v32, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    goto :goto_1b

    :cond_27
    move/from16 v31, v13

    const/16 v32, 0x0

    :goto_1b
    if-nez v32, :cond_29

    if-nez v10, :cond_28

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_28
    invoke-static {v15, v3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    if-eq v3, v4, :cond_2b

    add-int/lit8 v3, v3, 0x1

    move/from16 v14, p21

    move/from16 v13, v31

    goto :goto_18

    :cond_2a
    move/from16 v31, v13

    move-object/from16 v10, p6

    :cond_2b
    iget v3, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->viewportEndOffset:I

    sub-int/2addr v2, v3

    iget v3, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->size:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v2, v12

    cmpl-float v3, v2, v24

    if-lez v3, :cond_34

    iget v3, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    add-int/lit8 v3, v3, 0x1

    move-object v6, v10

    const/4 v4, 0x0

    :goto_1c
    if-ge v3, v8, :cond_36

    int-to-float v10, v4

    cmpg-float v10, v10, v2

    if-gez v10, :cond_36

    if-gt v3, v0, :cond_2e

    invoke-virtual {v7}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v10

    const/4 v13, 0x0

    :goto_1d
    if-ge v13, v10, :cond_2d

    invoke-virtual {v7, v13}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v14

    move/from16 p6, v2

    move-object v2, v14

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    if-ne v2, v3, :cond_2c

    goto :goto_1e

    :cond_2c
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, p6

    goto :goto_1d

    :cond_2d
    move/from16 p6, v2

    const/4 v14, 0x0

    :goto_1e
    check-cast v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    goto :goto_21

    :cond_2e
    move/from16 p6, v2

    if-eqz v6, :cond_31

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_1f
    if-ge v10, v2, :cond_30

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v14, v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    if-ne v14, v3, :cond_2f

    goto :goto_20

    :cond_2f
    add-int/lit8 v10, v10, 0x1

    goto :goto_1f

    :cond_30
    const/4 v13, 0x0

    :goto_20
    move-object v14, v13

    check-cast v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    goto :goto_21

    :cond_31
    const/4 v14, 0x0

    :goto_21
    if-eqz v14, :cond_32

    add-int/lit8 v3, v3, 0x1

    iget v2, v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    :goto_22
    add-int/2addr v4, v2

    move/from16 v2, p6

    goto :goto_1c

    :cond_32
    if-nez v6, :cond_33

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_33
    invoke-static {v15, v3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    invoke-static {v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    goto :goto_22

    :cond_34
    move-object v6, v10

    goto :goto_23

    :cond_35
    move-object/from16 p6, v6

    move/from16 v31, v13

    move-object/from16 v6, p6

    :cond_36
    :goto_23
    if-eqz v6, :cond_37

    invoke-static {v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    if-le v2, v0, :cond_37

    invoke-static {v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    :cond_37
    invoke-interface/range {p19 .. p19}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_3a

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-le v4, v0, :cond_39

    if-nez v6, :cond_38

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_38
    invoke-static {v15, v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure-0kLqBqw$default(Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_3a
    if-nez v6, :cond_3b

    sget-object v6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_3b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v1, p7

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v0, :cond_3c

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v3, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->crossAxisSize:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_3c
    invoke-virtual {v7}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    move/from16 v24, v27

    goto :goto_26

    :cond_3d
    const/16 v24, 0x0

    :goto_26
    move-wide/from16 v13, p9

    if-eqz p11, :cond_3e

    move v0, v1

    goto :goto_27

    :cond_3e
    move/from16 v0, v31

    :goto_27
    invoke-static {v0, v13, v14}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v10

    if-eqz p11, :cond_3f

    move/from16 v1, v31

    :cond_3f
    invoke-static {v1, v13, v14}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result v4

    if-eqz p11, :cond_40

    move v0, v4

    goto :goto_28

    :cond_40
    move v0, v10

    :goto_28
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    move/from16 v3, v31

    if-ge v3, v1, :cond_41

    move/from16 v1, v27

    goto :goto_29

    :cond_41
    const/4 v1, 0x0

    :goto_29
    if-eqz v1, :cond_43

    if-nez v30, :cond_42

    goto :goto_2a

    :cond_42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "non-zero itemsScrollOffset"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    :goto_2a
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v31

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v32

    add-int v32, v32, v31

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v31

    move/from16 p6, v3

    add-int v3, v31, v32

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v1, :cond_50

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {v7}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v1

    new-array v3, v1, [I

    const/4 v5, 0x0

    :goto_2b
    if-ge v5, v1, :cond_45

    if-nez p15, :cond_44

    move v6, v5

    goto :goto_2c

    :cond_44
    sub-int v6, v1, v5

    add-int/lit8 v6, v6, -0x1

    :goto_2c
    invoke-virtual {v7, v6}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v6, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->size:I

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_45
    new-array v5, v1, [I

    const/4 v6, 0x0

    :goto_2d
    if-ge v6, v1, :cond_46

    const/16 v20, 0x0

    aput v20, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    :cond_46
    if-eqz p11, :cond_48

    move-object/from16 v6, p13

    if-eqz v6, :cond_47

    move-object/from16 v9, p16

    invoke-interface {v6, v9, v0, v3, v5}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    goto :goto_2e

    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null verticalArrangement when isVertical == true"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    move-object/from16 v9, p16

    if-eqz p14, :cond_4e

    sget-object v36, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v32, p14

    move-object/from16 v33, p16

    move/from16 v34, v0

    move-object/from16 v35, v3

    move-object/from16 v37, v5

    invoke-interface/range {v32 .. v37}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    :goto_2e
    if-nez p15, :cond_49

    new-instance v3, Lkotlin/ranges/IntRange;

    add-int/lit8 v6, v1, -0x1

    const/4 v8, 0x0

    invoke-direct {v3, v8, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    goto :goto_2f

    :cond_49
    const/4 v8, 0x0

    new-instance v3, Lkotlin/ranges/IntRange;

    add-int/lit8 v6, v1, -0x1

    invoke-direct {v3, v8, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    sget-object v6, Lkotlin/ranges/IntProgression;->Companion:Lkotlin/ranges/IntProgression$Companion;

    iget v8, v3, Lkotlin/ranges/IntProgression;->last:I

    iget v9, v3, Lkotlin/ranges/IntProgression;->first:I

    iget v3, v3, Lkotlin/ranges/IntProgression;->step:I

    neg-int v3, v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lkotlin/ranges/IntProgression;

    invoke-direct {v6, v8, v9, v3}, Lkotlin/ranges/IntProgression;-><init>(III)V

    move-object v3, v6

    :goto_2f
    iget v6, v3, Lkotlin/ranges/IntProgression;->first:I

    iget v8, v3, Lkotlin/ranges/IntProgression;->last:I

    iget v3, v3, Lkotlin/ranges/IntProgression;->step:I

    if-lez v3, :cond_4a

    if-le v6, v8, :cond_4b

    :cond_4a
    if-gez v3, :cond_53

    if-gt v8, v6, :cond_53

    :cond_4b
    :goto_30
    aget v9, v5, v6

    if-nez p15, :cond_4c

    move/from16 p7, v1

    move v1, v6

    goto :goto_31

    :cond_4c
    sub-int v30, v1, v6

    add-int/lit8 v30, v30, -0x1

    move/from16 p7, v1

    move/from16 v1, v30

    :goto_31
    invoke-virtual {v7, v1}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz p15, :cond_4d

    sub-int v9, v0, v9

    move/from16 v31, v0

    iget v0, v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->size:I

    sub-int/2addr v9, v0

    goto :goto_32

    :cond_4d
    move/from16 v31, v0

    :goto_32
    invoke-virtual {v1, v9, v10, v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v6, v8, :cond_53

    add-int/2addr v6, v3

    move/from16 v1, p7

    move/from16 v0, v31

    goto :goto_30

    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null horizontalArrangement when isVertical == false"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no extra items"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v3, v30

    const/4 v1, 0x0

    :goto_33
    if-ge v1, v0, :cond_51

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v9, v8, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    sub-int/2addr v3, v9

    invoke-virtual {v8, v3, v10, v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_51
    invoke-virtual {v7}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v0

    move/from16 v3, v30

    const/4 v5, 0x0

    :goto_34
    if-ge v5, v0, :cond_52

    invoke-virtual {v7, v5}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v1, v3, v10, v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v3, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    :cond_52
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_35
    if-ge v5, v0, :cond_53

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v1, v3, v10, v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v3, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :cond_53
    float-to-int v1, v12

    move-object/from16 v3, v22

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    iget-object v5, v3, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    const/4 v9, 0x1

    move/from16 v8, v26

    move-object/from16 v0, p17

    move-object v6, v2

    move v2, v10

    move/from16 v22, p6

    move v3, v4

    move/from16 v38, v4

    move-object v4, v6

    move-object/from16 p6, v6

    move-object/from16 v6, p1

    move-object/from16 v26, v7

    const/16 v20, 0x0

    move/from16 v7, p11

    move/from16 v15, p0

    move/from16 v39, v8

    move/from16 v8, p21

    move v14, v10

    const/4 v13, 0x0

    move/from16 v10, p20

    move-object/from16 v30, v11

    move/from16 v11, v29

    move/from16 v23, v12

    move/from16 v12, v22

    move/from16 v40, v22

    move-object/from16 v13, p23

    move/from16 v15, p21

    move/from16 v41, v14

    move-object/from16 v14, p25

    invoke-virtual/range {v0 .. v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    if-nez v15, :cond_57

    invoke-virtual/range {p17 .. p17}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    move-result-wide v0

    sget-object v2, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_57

    if-eqz p11, :cond_54

    move/from16 v10, v38

    goto :goto_36

    :cond_54
    move/from16 v10, v41

    :goto_36
    shr-long v2, v0, v18

    long-to-int v2, v2

    move/from16 v3, v41

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-wide/from16 v3, p9

    invoke-static {v2, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v2

    and-long v0, v0, v16

    long-to-int v0, v0

    move/from16 v1, v38

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result v4

    if-eqz p11, :cond_55

    move v0, v4

    goto :goto_37

    :cond_55
    move v0, v2

    :goto_37
    if-eq v0, v10, :cond_56

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v7, v20

    :goto_38
    if-ge v7, v1, :cond_56

    move-object/from16 v5, p6

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iput v0, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisLayoutSize:I

    iget v6, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->afterContentPadding:I

    add-int/2addr v6, v0

    iput v6, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->maxMainAxisOffset:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 p6, v5

    goto :goto_38

    :cond_56
    move-object/from16 v5, p6

    move v10, v2

    goto :goto_39

    :cond_57
    move-object/from16 v5, p6

    move/from16 v1, v38

    move/from16 v3, v41

    move v4, v1

    move v10, v3

    :goto_39
    invoke-interface/range {p12 .. p12}, Ljava/util/Collection;->isEmpty()Z

    move/from16 v1, p0

    move v0, v15

    move/from16 v2, v39

    if-lt v2, v1, :cond_59

    move/from16 v2, p2

    move/from16 v13, v40

    if-le v13, v2, :cond_58

    goto :goto_3a

    :cond_58
    move/from16 v3, v20

    goto :goto_3b

    :cond_59
    :goto_3a
    move/from16 v3, v27

    :goto_3b
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;

    move-object/from16 v7, p24

    const/4 v8, 0x0

    invoke-direct {v6, v5, v8, v0, v7}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$8;-><init>(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItem;ZLandroidx/compose/runtime/MutableState;)V

    move-object/from16 v0, p26

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measureResult$1$1;

    invoke-virtual {v0, v2, v4, v6}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measureResult$1$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/compose/ui/layout/MeasureResult;

    if-eqz v24, :cond_5a

    move-object v12, v5

    goto :goto_3e

    :cond_5a
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v7, v20

    :goto_3c
    if-ge v7, v2, :cond_5d

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v9, v8, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    invoke-virtual/range {v26 .. v26}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v10, v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    if-lt v9, v10, :cond_5c

    invoke-virtual/range {v26 .. v26}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v9, v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    iget v8, v8, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->index:I

    if-le v8, v9, :cond_5b

    goto :goto_3d

    :cond_5b
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5c
    :goto_3d
    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    :cond_5d
    move-object v12, v0

    :goto_3e
    if-eqz p11, :cond_5e

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_3f
    move-object/from16 v17, v0

    goto :goto_40

    :cond_5e
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_3f

    :goto_40
    new-instance v22, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-object/from16 v0, v22

    const/16 v20, 0x0

    move-object/from16 v1, p1

    iget-wide v10, v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->childConstraints:J

    move-object/from16 v1, v30

    move/from16 v2, v29

    move/from16 v4, v23

    move-object v5, v6

    move/from16 v6, v28

    move/from16 v7, v25

    move-object/from16 v8, p23

    move-object/from16 v9, p16

    move/from16 v13, v21

    move/from16 v14, v19

    move/from16 v15, p0

    move/from16 v16, p15

    move/from16 v18, p4

    move/from16 v19, p5

    invoke-direct/range {v0 .. v20}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v22

    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative currentFirstItemScrollOffset"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid afterContentPadding"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid beforeContentPadding"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
