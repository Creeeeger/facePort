.class final Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$14;
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "invoke"
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
.field final synthetic $placementScopeInvalidator:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $positionedPages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$14;->$positionedPages:Ljava/util/List;

    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$14;->$placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$14;->$positionedPages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_8

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v5, v4, Landroidx/compose/foundation/pager/MeasuredPage;->mainAxisLayoutSize:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_7

    iget-object v5, v4, Landroidx/compose/foundation/pager/MeasuredPage;->placeables:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_6

    iget-object v7, v4, Landroidx/compose/foundation/pager/MeasuredPage;->placeables:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/layout/Placeable;

    mul-int/lit8 v8, v6, 0x2

    iget-object v9, v4, Landroidx/compose/foundation/pager/MeasuredPage;->placeableOffsets:[I

    aget v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    aget v8, v9, v8

    invoke-static {v10, v8}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v8

    iget-boolean v10, v4, Landroidx/compose/foundation/pager/MeasuredPage;->reverseLayout:Z

    iget-boolean v11, v4, Landroidx/compose/foundation/pager/MeasuredPage;->isVertical:Z

    if-eqz v10, :cond_4

    const/16 v10, 0x20

    if-eqz v11, :cond_0

    shr-long v12, v8, v10

    long-to-int v10, v12

    goto :goto_3

    :cond_0
    shr-long v12, v8, v10

    long-to-int v10, v12

    iget v12, v4, Landroidx/compose/foundation/pager/MeasuredPage;->mainAxisLayoutSize:I

    sub-int/2addr v12, v10

    if-eqz v11, :cond_1

    iget v10, v7, Landroidx/compose/ui/layout/Placeable;->height:I

    goto :goto_2

    :cond_1
    iget v10, v7, Landroidx/compose/ui/layout/Placeable;->width:I

    :goto_2
    sub-int v10, v12, v10

    :goto_3
    const-wide v12, 0xffffffffL

    if-eqz v11, :cond_3

    and-long/2addr v8, v12

    long-to-int v8, v8

    iget v9, v4, Landroidx/compose/foundation/pager/MeasuredPage;->mainAxisLayoutSize:I

    sub-int/2addr v9, v8

    if-eqz v11, :cond_2

    iget v8, v7, Landroidx/compose/ui/layout/Placeable;->height:I

    goto :goto_4

    :cond_2
    iget v8, v7, Landroidx/compose/ui/layout/Placeable;->width:I

    :goto_4
    sub-int/2addr v9, v8

    goto :goto_5

    :cond_3
    and-long/2addr v8, v12

    long-to-int v9, v8

    :goto_5
    invoke-static {v10, v9}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v8

    :cond_4
    iget-wide v12, v4, Landroidx/compose/foundation/pager/MeasuredPage;->visualOffset:J

    invoke-static {v8, v9, v12, v13}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v8

    if-eqz v11, :cond_5

    invoke-static {p1, v7, v8, v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    goto :goto_6

    :cond_5
    invoke-static {p1, v7, v8, v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "position() should be called first"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$14;->$placementScopeInvalidator:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
