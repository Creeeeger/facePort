.class final Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$6;
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
.field final synthetic $placementScopeInvalidator:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $positionedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;",
            "Landroidx/compose/runtime/MutableState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$6;->$positionedItems:Ljava/util/List;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$6;->$placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v8, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$6;->$positionedItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_10

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget v1, v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisLayoutSize:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_f

    iget-object v1, v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_e

    iget-object v1, v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->placeables:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    iget v1, v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->minMainAxisOffset:I

    iget-boolean v3, v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical:Z

    if-eqz v3, :cond_0

    iget v4, v2, Landroidx/compose/ui/layout/Placeable;->height:I

    goto :goto_2

    :cond_0
    iget v4, v2, Landroidx/compose/ui/layout/Placeable;->width:I

    :goto_2
    sub-int/2addr v1, v4

    iget v4, v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->maxMainAxisOffset:I

    iget-wide v5, v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    iget-object v15, v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->animator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    iget-object v10, v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->key:Ljava/lang/Object;

    invoke-virtual {v15, v14, v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->getAnimation(ILjava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v10

    if-eqz v10, :cond_4

    iget-object v15, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->placementDelta$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v15}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/unit/IntOffset;

    move-object/from16 v16, v8

    move/from16 v17, v9

    iget-wide v8, v15, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    invoke-static {v5, v6, v8, v9}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v8

    invoke-virtual {v12, v5, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxis--gyyYBs$1(J)I

    move-result v15

    if-gt v15, v1, :cond_1

    invoke-virtual {v12, v8, v9}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxis--gyyYBs$1(J)I

    move-result v15

    if-le v15, v1, :cond_2

    :cond_1
    invoke-virtual {v12, v5, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxis--gyyYBs$1(J)I

    move-result v1

    if-lt v1, v4, :cond_3

    invoke-virtual {v12, v8, v9}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxis--gyyYBs$1(J)I

    move-result v1

    if-lt v1, v4, :cond_3

    :cond_2
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->cancelPlacementAnimation()V

    :cond_3
    iget-object v1, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->layer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-wide v5, v8

    goto :goto_3

    :cond_4
    move-object/from16 v16, v8

    move/from16 v17, v9

    const/4 v1, 0x0

    :goto_3
    iget-boolean v4, v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->reverseLayout:Z

    if-eqz v4, :cond_9

    const/16 v4, 0x20

    sget-object v8, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    if-eqz v3, :cond_5

    shr-long v8, v5, v4

    long-to-int v4, v8

    goto :goto_5

    :cond_5
    shr-long v8, v5, v4

    long-to-int v4, v8

    iget v8, v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisLayoutSize:I

    sub-int/2addr v8, v4

    if-eqz v3, :cond_6

    iget v4, v2, Landroidx/compose/ui/layout/Placeable;->height:I

    goto :goto_4

    :cond_6
    iget v4, v2, Landroidx/compose/ui/layout/Placeable;->width:I

    :goto_4
    sub-int v4, v8, v4

    :goto_5
    const-wide v8, 0xffffffffL

    if-eqz v3, :cond_8

    and-long/2addr v5, v8

    long-to-int v5, v5

    iget v6, v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->mainAxisLayoutSize:I

    sub-int/2addr v6, v5

    if-eqz v3, :cond_7

    iget v5, v2, Landroidx/compose/ui/layout/Placeable;->height:I

    goto :goto_6

    :cond_7
    iget v5, v2, Landroidx/compose/ui/layout/Placeable;->width:I

    :goto_6
    sub-int/2addr v6, v5

    goto :goto_7

    :cond_8
    and-long/2addr v5, v8

    long-to-int v6, v5

    :goto_7
    invoke-static {v4, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v5

    :cond_9
    iget-wide v8, v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->visualOffset:J

    invoke-static {v5, v6, v8, v9}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v4

    if-nez v10, :cond_a

    goto :goto_8

    :cond_a
    iput-wide v4, v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->finalOffset:J

    :goto_8
    if-eqz v3, :cond_c

    if-eqz v1, :cond_b

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$handleDirectManipulationPlacement(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    iget-wide v8, v2, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    invoke-static {v4, v5, v8, v9}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Landroidx/compose/ui/layout/Placeable;->placeAt-f8xVGno(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    goto :goto_9

    :cond_b
    const/4 v6, 0x6

    const/4 v8, 0x0

    move-object v1, v7

    move-wide v3, v4

    move-object v5, v8

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JLkotlin/jvm/functions/Function1;I)V

    goto :goto_9

    :cond_c
    if-eqz v1, :cond_d

    invoke-static {v7, v2, v4, v5, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    goto :goto_9

    :cond_d
    invoke-static {v7, v2, v4, v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    :goto_9
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, v16

    move/from16 v9, v17

    goto/16 :goto_1

    :cond_e
    move-object/from16 v16, v8

    move/from16 v17, v9

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "position() should be called first"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$6;->$placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
