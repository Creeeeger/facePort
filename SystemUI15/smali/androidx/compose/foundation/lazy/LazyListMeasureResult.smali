.class public final Landroidx/compose/foundation/lazy/LazyListMeasureResult;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/layout/MeasureResult;


# instance fields
.field public final synthetic $$delegate_0:Landroidx/compose/ui/layout/MeasureResult;

.field public final afterContentPadding:I

.field public canScrollForward:Z

.field public final childConstraints:J

.field public consumedScroll:F

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final density:Landroidx/compose/ui/unit/Density;

.field public final firstVisibleItem:Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

.field public firstVisibleItemScrollOffset:I

.field public final mainAxisItemSpacing:I

.field public final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field public final remeasureNeeded:Z

.field public final scrollBackAmount:F

.field public final totalItemsCount:I

.field public final viewportEndOffset:I

.field public final viewportStartOffset:I

.field public final visibleItemsInfo:Ljava/util/List;


# direct methods
.method private constructor <init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            "IZF",
            "Landroidx/compose/ui/layout/MeasureResult;",
            "FZ",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/ui/unit/Density;",
            "J",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;IIIZ",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "II)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItem:Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move v1, p2

    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItemScrollOffset:I

    move v1, p3

    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->canScrollForward:Z

    move v1, p4

    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->consumedScroll:F

    move v1, p6

    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->scrollBackAmount:F

    move v1, p7

    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->remeasureNeeded:Z

    move-object v1, p8

    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    move-object v1, p9

    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->density:Landroidx/compose/ui/unit/Density;

    move-wide v1, p10

    iput-wide v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->childConstraints:J

    move-object v1, p12

    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/util/List;

    move/from16 v1, p13

    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->viewportStartOffset:I

    move/from16 v1, p14

    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->viewportEndOffset:I

    move/from16 v1, p15

    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->totalItemsCount:I

    move-object/from16 v1, p17

    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    move/from16 v1, p18

    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->afterContentPadding:I

    move/from16 v1, p19

    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->mainAxisItemSpacing:I

    move-object v1, p5

    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->$$delegate_0:Landroidx/compose/ui/layout/MeasureResult;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p19}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V

    return-void
.end method


# virtual methods
.method public final getAlignmentLines()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->$$delegate_0:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getHeight()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->$$delegate_0:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result p0

    return p0
.end method

.method public final getRulers()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->$$delegate_0:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getRulers()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method

.method public final getWidth()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->$$delegate_0:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result p0

    return p0
.end method

.method public final placeChildren()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->$$delegate_0:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->placeChildren()V

    return-void
.end method

.method public final tryToApplyScrollWithoutRemeasure(IZ)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    iget-boolean v3, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->remeasureNeeded:Z

    const/4 v4, 0x0

    if-nez v3, :cond_e

    iget-object v3, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItem:Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v3, :cond_e

    iget v3, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    iget v5, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItemScrollOffset:I

    sub-int/2addr v5, v1

    if-ltz v5, :cond_e

    if-ge v5, v3, :cond_e

    iget-object v3, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget-object v5, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/util/List;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget-boolean v6, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->nonScrollableItem:Z

    if-nez v6, :cond_e

    iget-boolean v6, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->nonScrollableItem:Z

    if-eqz v6, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v6, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->viewportEndOffset:I

    iget v7, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->viewportStartOffset:I

    if-gez v1, :cond_1

    iget v8, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    iget v3, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v8, v3

    sub-int/2addr v8, v7

    iget v3, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    iget v5, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->mainAxisSizeWithSpacings:I

    add-int/2addr v3, v5

    sub-int/2addr v3, v6

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    neg-int v5, v1

    if-le v3, v5, :cond_c

    goto :goto_0

    :cond_1
    iget v3, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    sub-int/2addr v7, v3

    iget v3, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    sub-int/2addr v6, v3

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-le v3, v1, :cond_c

    :goto_0
    iget v3, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItemScrollOffset:I

    sub-int/2addr v3, v1

    iput v3, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItemScrollOffset:I

    iget-object v3, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v6, v4

    :goto_1
    if-ge v6, v5, :cond_b

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget-boolean v8, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->nonScrollableItem:Z

    if-eqz v8, :cond_2

    goto :goto_6

    :cond_2
    iget v8, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    add-int/2addr v8, v1

    iput v8, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    iget-object v8, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeableOffsets:[I

    array-length v9, v8

    move v10, v4

    :goto_2
    iget-boolean v11, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical:Z

    if-ge v10, v9, :cond_6

    if-eqz v11, :cond_3

    rem-int/lit8 v12, v10, 0x2

    if-eq v12, v2, :cond_4

    :cond_3
    if-nez v11, :cond_5

    rem-int/lit8 v11, v10, 0x2

    if-nez v11, :cond_5

    :cond_4
    aget v11, v8, v10

    add-int/2addr v11, v1

    aput v11, v8, v10

    :cond_5
    add-int/2addr v10, v2

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_a

    iget-object v8, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v9, v4

    :goto_3
    if-ge v9, v8, :cond_a

    iget-object v10, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->animator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    iget-object v12, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->key:Ljava/lang/Object;

    invoke-virtual {v10, v9, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getAnimation(ILjava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v10

    if-eqz v10, :cond_9

    iget-wide v12, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    const/16 v14, 0x20

    sget-object v15, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    if-eqz v11, :cond_7

    shr-long v14, v12, v14

    long-to-int v14, v14

    goto :goto_4

    :cond_7
    shr-long v14, v12, v14

    long-to-int v14, v14

    add-int/2addr v14, v1

    :goto_4
    const-wide v15, 0xffffffffL

    if-eqz v11, :cond_8

    and-long/2addr v12, v15

    long-to-int v12, v12

    add-int/2addr v12, v1

    goto :goto_5

    :cond_8
    and-long/2addr v12, v15

    long-to-int v12, v12

    :goto_5
    invoke-static {v14, v12}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v12

    iput-wide v12, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    :cond_9
    add-int/2addr v9, v2

    goto :goto_3

    :cond_a
    :goto_6
    add-int/2addr v6, v2

    goto :goto_1

    :cond_b
    int-to-float v3, v1

    iput v3, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->consumedScroll:F

    iget-boolean v3, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->canScrollForward:Z

    if-nez v3, :cond_d

    if-lez v1, :cond_d

    iput-boolean v2, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->canScrollForward:Z

    goto :goto_7

    :cond_c
    move v2, v4

    :cond_d
    :goto_7
    return v2

    :cond_e
    :goto_8
    return v4
.end method
