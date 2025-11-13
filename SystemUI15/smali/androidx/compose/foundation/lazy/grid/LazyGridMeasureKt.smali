.class public abstract Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final measureLazyGrid-OZKpZRA(ILandroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;IIIIIIFJZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;ILjava/util/List;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/GraphicsContext;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    .locals 43

    move/from16 v14, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move/from16 v15, p3

    move/from16 v13, p4

    move-wide/from16 v11, p10

    move-object/from16 v9, p13

    move-object/from16 v10, p19

    if-ltz v13, :cond_46

    if-ltz p5, :cond_45

    iget-object v7, v8, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->itemProvider:Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

    const-wide v30, 0xffffffffL

    const/16 v32, 0x20

    const-wide/16 v5, 0x0

    if-gtz v14, :cond_2

    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v16

    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v17

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    iget-object v7, v7, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p17

    move/from16 v2, v16

    move/from16 v3, v17

    move-object v5, v7

    move-object/from16 v6, p2

    move/from16 v7, p12

    move v8, v9

    move/from16 v9, p18

    move v11, v14

    move/from16 v12, v18

    move v14, v13

    move-object/from16 v13, p20

    move v15, v14

    move-object/from16 v14, p22

    invoke-virtual/range {v0 .. v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    invoke-virtual/range {p17 .. p17}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    move-result-wide v0

    sget-object v2, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v11, 0x0

    invoke-static {v0, v1, v11, v12}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    shr-long v2, v0, v32

    long-to-int v2, v2

    move-wide/from16 v5, p10

    invoke-static {v2, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v16

    and-long v0, v0, v30

    long-to-int v0, v0

    invoke-static {v0, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result v17

    :cond_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$3;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$3;

    move-object/from16 v3, p24

    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measureResult$1$1;

    invoke-virtual {v3, v0, v1, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measureResult$1$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/compose/ui/layout/MeasureResult;

    sget-object v11, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    neg-int v12, v15

    move/from16 v13, p3

    add-int v13, v13, p5

    if-eqz p12, :cond_1

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_0
    move-object/from16 v16, v0

    goto :goto_1

    :cond_1
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_0

    :goto_1
    new-instance v19, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-object/from16 v0, v19

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    move-object/from16 v7, p20

    move-object/from16 v8, p16

    move/from16 v9, p18

    move-object/from16 v10, p23

    move/from16 v15, p15

    move/from16 v17, p5

    move/from16 v18, p6

    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;ZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V

    return-object v19

    :cond_2
    move/from16 v40, v15

    move v15, v13

    move/from16 v13, v40

    move-wide/from16 v41, v5

    move-wide v5, v11

    move-wide/from16 v11, v41

    invoke-static/range {p9 .. p9}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int v2, p8, v1

    if-nez p7, :cond_3

    if-gez v2, :cond_3

    add-int/2addr v1, v2

    const/4 v2, 0x0

    :cond_3
    new-instance v4, Lkotlin/collections/ArrayDeque;

    invoke-direct {v4}, Lkotlin/collections/ArrayDeque;-><init>()V

    neg-int v11, v15

    if-gez p6, :cond_4

    move/from16 v12, p6

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    :goto_2
    add-int/2addr v12, v11

    add-int/2addr v2, v12

    move v3, v2

    move/from16 v2, p7

    :goto_3
    if-gez v3, :cond_5

    if-lez v2, :cond_5

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    iget v5, v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    add-int/2addr v3, v5

    move-wide/from16 v5, p10

    goto :goto_3

    :cond_5
    if-ge v3, v12, :cond_6

    add-int/2addr v1, v3

    move v3, v12

    :cond_6
    sub-int/2addr v3, v12

    add-int v33, v13, p5

    if-gez v33, :cond_7

    const/4 v5, 0x0

    goto :goto_4

    :cond_7
    move/from16 v5, v33

    :goto_4
    neg-int v6, v3

    move/from16 p7, v2

    move/from16 v17, p7

    move/from16 v18, v3

    move v2, v6

    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_5
    iget v3, v4, Lkotlin/collections/ArrayDeque;->size:I

    const/16 v34, 0x1

    if-ge v6, v3, :cond_9

    if-lt v2, v5, :cond_8

    invoke-virtual {v4, v6}, Lkotlin/collections/ArrayDeque;->removeAt(I)Ljava/lang/Object;

    move/from16 v16, v34

    goto :goto_5

    :cond_8
    add-int/lit8 v17, v17, 0x1

    invoke-virtual {v4, v6}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    iget v3, v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    add-int/2addr v2, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    move/from16 v35, v16

    move/from16 v3, v17

    move/from16 v6, v18

    :goto_6
    if-ge v3, v14, :cond_b

    if-lt v2, v5, :cond_a

    if-lez v2, :cond_a

    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_b

    :cond_a
    move/from16 v16, v5

    goto :goto_7

    :cond_b
    move-object/from16 v17, v7

    move/from16 v36, v11

    goto :goto_9

    :goto_7
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v5

    move-object/from16 v17, v7

    iget-object v7, v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move/from16 v36, v11

    array-length v11, v7

    if-nez v11, :cond_c

    goto :goto_9

    :cond_c
    iget v11, v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    add-int/2addr v2, v11

    move/from16 v18, v2

    if-gt v2, v12, :cond_e

    array-length v2, v7

    if-eqz v2, :cond_d

    array-length v2, v7

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v7, v2

    iget v2, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    add-int/lit8 v7, v14, -0x1

    if-eq v2, v7, :cond_e

    add-int/lit8 v2, v3, 0x1

    sub-int/2addr v6, v11

    move/from16 v35, v34

    goto :goto_8

    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-virtual {v4, v5}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move/from16 v2, p7

    :goto_8
    add-int/lit8 v3, v3, 0x1

    move/from16 p7, v2

    move/from16 v5, v16

    move-object/from16 v7, v17

    move/from16 v2, v18

    move/from16 v11, v36

    goto :goto_6

    :goto_9
    if-ge v2, v13, :cond_10

    sub-int v3, v13, v2

    sub-int/2addr v6, v3

    add-int/2addr v2, v3

    move/from16 v5, p7

    :goto_a
    if-ge v6, v15, :cond_f

    if-lez v5, :cond_f

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v7

    const/4 v11, 0x0

    invoke-virtual {v4, v11, v7}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    iget v7, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    add-int/2addr v6, v7

    goto :goto_a

    :cond_f
    add-int/2addr v1, v3

    if-gez v6, :cond_10

    add-int/2addr v1, v6

    add-int/2addr v2, v6

    move v11, v2

    const/4 v12, 0x0

    goto :goto_b

    :cond_10
    move v11, v2

    move v12, v6

    :goto_b
    invoke-static/range {p9 .. p9}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt__MathJVMKt;->getSign(I)I

    move-result v2

    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->getSign(I)I

    move-result v3

    if-ne v2, v3, :cond_11

    invoke-static/range {p9 .. p9}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-lt v2, v3, :cond_11

    int-to-float v1, v1

    move v7, v1

    goto :goto_c

    :cond_11
    move/from16 v7, p9

    :goto_c
    if-ltz v12, :cond_44

    neg-int v6, v12

    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    iget-object v1, v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    if-eqz v1, :cond_12

    iget v1, v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    move v3, v1

    goto :goto_d

    :cond_12
    const/4 v3, 0x0

    :goto_d
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    const/16 v16, 0x0

    if-eqz v1, :cond_14

    iget-object v1, v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    if-eqz v1, :cond_14

    array-length v2, v1

    if-nez v2, :cond_13

    move-object/from16 v1, v16

    goto :goto_e

    :cond_13
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    :goto_e
    if-eqz v1, :cond_14

    iget v1, v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    move v2, v1

    goto :goto_f

    :cond_14
    const/4 v2, 0x0

    :goto_f
    invoke-interface/range {p19 .. p19}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 p7, v5

    move/from16 v19, v12

    move-object/from16 v18, v16

    const/4 v5, 0x0

    :goto_10
    iget-object v12, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->spanLayoutProvider:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    if-ge v5, v1, :cond_17

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Number;

    move/from16 p9, v2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ltz v2, :cond_16

    if-ge v2, v3, :cond_16

    move/from16 v20, v1

    iget v1, v12, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    invoke-virtual {v12, v2, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->spanOf(II)I

    move-result v12

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v12}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->childConstraints-JhjzzOo$foundation_release(II)J

    move-result-wide v21

    move/from16 v23, v5

    iget v5, v8, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->defaultMainAxisSpacing:I

    const/16 v24, 0x0

    move/from16 v25, v20

    move/from16 v20, v1

    move-object/from16 v1, p2

    move/from16 v37, p9

    move/from16 v39, v3

    move-object/from16 v38, v4

    move/from16 v9, v20

    move-wide/from16 v3, v21

    move-object/from16 v20, p7

    move/from16 v22, v5

    move/from16 v21, v23

    move/from16 v5, v24

    move/from16 v23, v6

    move v6, v12

    move v12, v7

    move/from16 v7, v22

    invoke-virtual/range {v1 .. v7}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getAndMeasure-m8Kt_7k(IJIII)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v1

    if-nez v18, :cond_15

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    :cond_15
    move-object/from16 v2, v18

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v2

    goto :goto_11

    :cond_16
    move-object/from16 v20, p7

    move/from16 v37, p9

    move/from16 v25, v1

    move/from16 v39, v3

    move-object/from16 v38, v4

    move/from16 v21, v5

    move/from16 v23, v6

    move v12, v7

    const/4 v9, 0x0

    :goto_11
    add-int/lit8 v5, v21, 0x1

    move-object/from16 v9, p13

    move v7, v12

    move-object/from16 p7, v20

    move/from16 v6, v23

    move/from16 v1, v25

    move/from16 v2, v37

    move-object/from16 v4, v38

    move/from16 v3, v39

    goto :goto_10

    :cond_17
    move-object/from16 v20, p7

    move/from16 v37, v2

    move/from16 v39, v3

    move-object/from16 v38, v4

    move/from16 v23, v6

    const/4 v9, 0x0

    if-nez v18, :cond_18

    sget-object v18, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_18
    move-object/from16 v6, v18

    invoke-interface/range {p19 .. p19}, Ljava/util/List;->size()I

    move-result v5

    move v3, v9

    :goto_12
    if-ge v3, v5, :cond_1b

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    move/from16 v4, v37

    add-int/lit8 v1, v4, 0x1

    if-gt v1, v2, :cond_1a

    if-ge v2, v14, :cond_1a

    iget v1, v12, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    invoke-virtual {v12, v2, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->spanOf(II)I

    move-result v1

    invoke-virtual {v0, v9, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->childConstraints-JhjzzOo$foundation_release(II)J

    move-result-wide v21

    iget v9, v8, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->defaultMainAxisSpacing:I

    const/16 v18, 0x0

    move/from16 v24, v1

    move-object/from16 v1, p2

    move/from16 v25, v3

    move v0, v4

    move-wide/from16 v3, v21

    move/from16 v21, v5

    move/from16 v5, v18

    move-object/from16 p7, v6

    move/from16 v6, v24

    move v8, v7

    move v7, v9

    invoke-virtual/range {v1 .. v7}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getAndMeasure-m8Kt_7k(IJIII)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v1

    if-nez v16, :cond_19

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    :cond_19
    move-object/from16 v2, v16

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v2

    goto :goto_13

    :cond_1a
    move/from16 v25, v3

    move v0, v4

    move/from16 v21, v5

    move-object/from16 p7, v6

    move v8, v7

    :goto_13
    add-int/lit8 v3, v25, 0x1

    move-object/from16 v6, p7

    move/from16 v37, v0

    move v7, v8

    move/from16 v5, v21

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    goto :goto_12

    :cond_1b
    move-object/from16 p7, v6

    move v8, v7

    move/from16 v0, v37

    if-nez v16, :cond_1c

    sget-object v16, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_1c
    move-object/from16 v1, v16

    if-gtz v15, :cond_1d

    if-gez p6, :cond_1e

    :cond_1d
    move-object/from16 v2, v38

    goto :goto_14

    :cond_1e
    move/from16 v12, v19

    move-object/from16 v5, v20

    move-object/from16 v2, v38

    goto :goto_16

    :goto_14
    iget v3, v2, Lkotlin/collections/ArrayDeque;->size:I

    move/from16 v12, v19

    move-object/from16 v5, v20

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_1f

    invoke-virtual {v2, v4}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    iget v6, v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    if-eqz v12, :cond_1f

    if-gt v6, v12, :cond_1f

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v7

    if-eq v4, v7, :cond_1f

    sub-int/2addr v12, v6

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    goto :goto_15

    :cond_1f
    :goto_16
    if-eqz p12, :cond_20

    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    move v6, v3

    move-wide/from16 v3, p10

    goto :goto_17

    :cond_20
    move-wide/from16 v3, p10

    invoke-static {v11, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v6

    :goto_17
    if-eqz p12, :cond_21

    invoke-static {v11, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result v7

    goto :goto_18

    :cond_21
    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v7

    :goto_18
    if-eqz p12, :cond_22

    move v9, v7

    goto :goto_19

    :cond_22
    move v9, v6

    :goto_19
    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-ge v11, v10, :cond_23

    move/from16 v10, v34

    goto :goto_1a

    :cond_23
    const/4 v10, 0x0

    :goto_1a
    if-eqz v10, :cond_25

    if-nez v23, :cond_24

    goto :goto_1b

    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "non-zero firstLineScrollOffset"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    :goto_1b
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v15

    move-object/from16 p1, v5

    const/4 v5, 0x0

    const/4 v13, 0x0

    :goto_1c
    if-ge v13, v15, :cond_26

    invoke-virtual {v2, v13}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 p4, v15

    move-object/from16 v15, v16

    check-cast v15, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    iget-object v15, v15, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->items:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    array-length v15, v15

    add-int/2addr v5, v15

    add-int/lit8 v13, v13, 0x1

    move/from16 v15, p4

    goto :goto_1c

    :cond_26
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v5}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v10, :cond_36

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v5

    new-array v10, v5, [I

    const/4 v15, 0x0

    :goto_1d
    if-ge v15, v5, :cond_28

    if-nez p15, :cond_27

    move/from16 v37, v0

    move v0, v15

    goto :goto_1e

    :cond_27
    sub-int v16, v5, v15

    add-int/lit8 v16, v16, -0x1

    move/from16 v37, v0

    move/from16 v0, v16

    :goto_1e
    invoke-virtual {v2, v0}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    iget v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSize:I

    aput v0, v10, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v37

    goto :goto_1d

    :cond_28
    move/from16 v37, v0

    new-array v0, v5, [I

    const/4 v15, 0x0

    :goto_1f
    if-ge v15, v5, :cond_29

    const/16 v16, 0x0

    aput v16, v0, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_1f

    :cond_29
    const/16 v16, 0x0

    if-eqz p12, :cond_2b

    move-object/from16 v15, p13

    move/from16 v14, v16

    if-eqz v15, :cond_2a

    move-object/from16 v14, p16

    invoke-interface {v15, v14, v9, v10, v0}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    goto :goto_20

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null verticalArrangement"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    move-object/from16 v14, p16

    if-eqz p14, :cond_34

    sget-object v28, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v24, p14

    move-object/from16 v25, p16

    move/from16 v26, v9

    move-object/from16 v27, v10

    move-object/from16 v29, v0

    invoke-interface/range {v24 .. v29}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    :goto_20
    if-eqz p15, :cond_2c

    new-instance v10, Lkotlin/ranges/IntRange;

    add-int/lit8 v15, v5, -0x1

    const/4 v14, 0x0

    invoke-direct {v10, v14, v15}, Lkotlin/ranges/IntRange;-><init>(II)V

    sget-object v14, Lkotlin/ranges/IntProgression;->Companion:Lkotlin/ranges/IntProgression$Companion;

    iget v15, v10, Lkotlin/ranges/IntProgression;->last:I

    iget v3, v10, Lkotlin/ranges/IntProgression;->first:I

    iget v4, v10, Lkotlin/ranges/IntProgression;->step:I

    neg-int v4, v4

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lkotlin/ranges/IntProgression;

    invoke-direct {v10, v15, v3, v4}, Lkotlin/ranges/IntProgression;-><init>(III)V

    goto :goto_21

    :cond_2c
    new-instance v10, Lkotlin/ranges/IntRange;

    add-int/lit8 v3, v5, -0x1

    const/4 v4, 0x0

    invoke-direct {v10, v4, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    :goto_21
    iget v3, v10, Lkotlin/ranges/IntProgression;->first:I

    iget v4, v10, Lkotlin/ranges/IntProgression;->last:I

    iget v10, v10, Lkotlin/ranges/IntProgression;->step:I

    if-lez v10, :cond_2d

    if-le v3, v4, :cond_2e

    :cond_2d
    if-gez v10, :cond_32

    if-gt v4, v3, :cond_32

    :cond_2e
    :goto_22
    aget v14, v0, v3

    if-nez p15, :cond_2f

    move v15, v3

    goto :goto_23

    :cond_2f
    sub-int v15, v5, v3

    add-int/lit8 v15, v15, -0x1

    :goto_23
    invoke-virtual {v2, v15}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    if-eqz p15, :cond_30

    sub-int v14, v9, v14

    move-object/from16 v16, v0

    iget v0, v15, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSize:I

    sub-int/2addr v14, v0

    goto :goto_24

    :cond_30
    move-object/from16 v16, v0

    :goto_24
    invoke-virtual {v15, v14, v6, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->position(III)[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v0

    array-length v14, v0

    const/4 v15, 0x0

    :goto_25
    if-ge v15, v14, :cond_31

    move/from16 p4, v5

    aget-object v5, v0, v15

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move/from16 v5, p4

    goto :goto_25

    :cond_31
    move/from16 p4, v5

    if-eq v3, v4, :cond_32

    add-int/2addr v3, v10

    move/from16 v5, p4

    move-object/from16 v0, v16

    goto :goto_22

    :cond_32
    move-object/from16 v5, p7

    :cond_33
    const/4 v9, 0x0

    goto/16 :goto_2b

    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null horizontalArrangement"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no items"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    move/from16 v37, v0

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_38

    move/from16 v3, v23

    :goto_26
    add-int/lit8 v4, v0, -0x1

    move-object/from16 v5, p7

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget v9, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSizeWithSpacings:I

    sub-int/2addr v3, v9

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v9, v6, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position(IIII)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-gez v4, :cond_37

    goto :goto_27

    :cond_37
    move v0, v4

    move-object/from16 p7, v5

    goto :goto_26

    :cond_38
    move-object/from16 v5, p7

    :goto_27
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v0

    move/from16 v4, v23

    const/4 v3, 0x0

    :goto_28
    if-ge v3, v0, :cond_3a

    invoke-virtual {v2, v3}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    invoke-virtual {v9, v4, v6, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->position(III)[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v10

    array-length v14, v10

    const/4 v15, 0x0

    :goto_29
    if-ge v15, v14, :cond_39

    move/from16 p4, v0

    aget-object v0, v10, v15

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move/from16 v0, p4

    goto :goto_29

    :cond_39
    move/from16 p4, v0

    iget v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->mainAxisSizeWithSpacings:I

    add-int/2addr v4, v0

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, p4

    goto :goto_28

    :cond_3a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v0, :cond_33

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    const/4 v9, 0x0

    invoke-virtual {v2, v4, v9, v6, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position(IIII)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :goto_2b
    float-to-int v0, v8

    move-object/from16 v2, v17

    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;

    iget-object v2, v2, Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    const/16 v23, 0x0

    const/16 v25, 0x0

    move/from16 v3, p3

    move-object/from16 v15, p17

    move/from16 v16, v0

    move/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v13

    move-object/from16 v20, v2

    move-object/from16 v21, p2

    move/from16 v22, p12

    move/from16 v24, p18

    move/from16 v26, v12

    move/from16 v27, v11

    move-object/from16 v28, p20

    move-object/from16 v29, p22

    invoke-virtual/range {v15 .. v29}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    invoke-virtual/range {p17 .. p17}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getMinSizeToFitDisappearingItems-YbymL2g()J

    move-result-wide v14

    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v9, 0x0

    invoke-static {v14, v15, v9, v10}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_3d

    if-eqz p12, :cond_3b

    move v0, v7

    goto :goto_2c

    :cond_3b
    move v0, v6

    :goto_2c
    shr-long v9, v14, v32

    long-to-int v2, v9

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-wide/from16 v9, p10

    invoke-static {v2, v9, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(IJ)I

    move-result v6

    and-long v14, v14, v30

    long-to-int v2, v14

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v9, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(IJ)I

    move-result v7

    if-eqz p12, :cond_3c

    move v2, v7

    goto :goto_2d

    :cond_3c
    move v2, v6

    :goto_2d
    if-eq v2, v0, :cond_3d

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_2e
    if-ge v4, v0, :cond_3d

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iput v2, v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisLayoutSize:I

    iget v10, v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->afterContentPadding:I

    add-int/2addr v10, v2

    iput v10, v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->maxMainAxisOffset:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_3d
    const/4 v0, 0x0

    add-int/lit8 v2, p0, -0x1

    move/from16 v4, v37

    if-ne v4, v2, :cond_3f

    if-le v11, v3, :cond_3e

    goto :goto_2f

    :cond_3e
    move v3, v0

    goto :goto_30

    :cond_3f
    :goto_2f
    move/from16 v3, v34

    :goto_30
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$6;

    move-object/from16 v9, p21

    invoke-direct {v7, v13, v9}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$6;-><init>(Ljava/util/List;Landroidx/compose/runtime/MutableState;)V

    move-object/from16 v9, p24

    check-cast v9, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measureResult$1$1;

    invoke-virtual {v9, v2, v6, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measureResult$1$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_40

    move-object v11, v13

    goto :goto_32

    :cond_40
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_31
    if-ge v0, v2, :cond_42

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget v7, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->index:I

    move/from16 v9, v39

    if-gt v9, v7, :cond_41

    if-gt v7, v4, :cond_41

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    add-int/lit8 v0, v0, 0x1

    move/from16 v39, v9

    goto :goto_31

    :cond_42
    move-object v11, v1

    :goto_32
    if-eqz p12, :cond_43

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_33
    move-object/from16 v16, v0

    goto :goto_34

    :cond_43
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_33

    :goto_34
    new-instance v19, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move v2, v12

    move v4, v8

    move-object v5, v6

    move/from16 v6, v35

    move-object/from16 v7, p20

    move-object/from16 v8, p16

    move/from16 v9, p18

    move-object/from16 v10, p23

    move/from16 v12, v36

    move/from16 v13, v33

    move/from16 v14, p0

    move/from16 v15, p15

    move/from16 v17, p5

    move/from16 v18, p6

    invoke-direct/range {v0 .. v18}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;ZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V

    return-object v19

    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative initial offset"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative afterContentPadding"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative beforeContentPadding"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
