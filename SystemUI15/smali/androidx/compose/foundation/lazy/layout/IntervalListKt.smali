.class public abstract Landroidx/compose/foundation/lazy/layout/IntervalListKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final access$binarySearch(ILandroidx/compose/runtime/collection/MutableVector;)I
    .locals 5

    iget v0, p1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v2

    iget-object v3, p1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v4, v3, v2

    check-cast v4, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    iget v4, v4, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    if-ne v4, p0, :cond_1

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_1
    if-ge v4, p0, :cond_2

    add-int/lit8 v1, v2, 0x1

    aget-object v3, v3, v1

    check-cast v3, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    iget v3, v3, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    if-ge p0, v3, :cond_0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v1
.end method
