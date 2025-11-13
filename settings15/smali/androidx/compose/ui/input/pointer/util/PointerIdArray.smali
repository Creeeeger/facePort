.class public final Landroidx/compose/ui/input/pointer/util/PointerIdArray;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public internalArray:[J

.field public size:I


# virtual methods
.method public final add-0FcD4WY(J)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->contains(J)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->size:I

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->internalArray:[J

    array-length v2, v1

    if-lt v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    const-string v2, "copyOf(this, newSize)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->internalArray:[J

    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->internalArray:[J

    aput-wide p1, v1, v0

    iget p1, p0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->size:I

    if-lt v0, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->size:I

    :cond_1
    return-void
.end method

.method public final contains(J)Z
    .locals 5

    iget v0, p0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->size:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->internalArray:[J

    aget-wide v3, v3, v2

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final removeAt(I)V
    .locals 5

    iget v0, p0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->size:I

    if-ge p1, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ge p1, v0, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->internalArray:[J

    add-int/lit8 v2, p1, 0x1

    aget-wide v3, v1, v2

    aput-wide v3, v1, p1

    move p1, v2

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->size:I

    :cond_1
    return-void
.end method
