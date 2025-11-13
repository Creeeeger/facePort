.class public abstract Lcom/android/systemui/communal/ui/compose/extensions/LazyGridStateExtKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final isItemAtOffset-Uv8p0NA(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;J)Z
    .locals 4

    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget-wide v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->offset:J

    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget-wide v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->size:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntRectKt;->IntRect-VbeCjmY(JJ)Landroidx/compose/ui/unit/IntRect;

    move-result-object p0

    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    iget v1, p0, Landroidx/compose/ui/unit/IntRect;->left:I

    int-to-float v1, v1

    iget v2, p0, Landroidx/compose/ui/unit/IntRect;->top:I

    int-to-float v2, v2

    iget v3, p0, Landroidx/compose/ui/unit/IntRect;->right:I

    int-to-float v3, v3

    iget p0, p0, Landroidx/compose/ui/unit/IntRect;->bottom:I

    int-to-float p0, p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/geometry/Rect;->contains-k-4lQ0M(J)Z

    move-result p0

    return p0
.end method
