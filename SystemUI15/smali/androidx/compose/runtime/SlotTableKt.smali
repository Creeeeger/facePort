.class public abstract Landroidx/compose/runtime/SlotTableKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final access$containsMark(I[I)Z
    .locals 1

    mul-int/lit8 p0, p0, 0x5

    const/4 v0, 0x1

    add-int/2addr p0, v0

    aget p0, p1, p0

    const/high16 p1, 0x4000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final access$dataAnchor(I[I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x5

    add-int/lit8 p0, p0, 0x4

    aget p0, p1, p0

    return p0
.end method

.method public static final access$groupSize(I[I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x5

    add-int/lit8 p0, p0, 0x3

    aget p0, p1, p0

    return p0
.end method

.method public static final access$hasAux(I[I)Z
    .locals 1

    mul-int/lit8 p0, p0, 0x5

    const/4 v0, 0x1

    add-int/2addr p0, v0

    aget p0, p1, p0

    const/high16 p1, 0x10000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final access$hasObjectKey(I[I)Z
    .locals 1

    mul-int/lit8 p0, p0, 0x5

    const/4 v0, 0x1

    add-int/2addr p0, v0

    aget p0, p1, p0

    const/high16 p1, 0x20000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final access$isNode(I[I)Z
    .locals 1

    mul-int/lit8 p0, p0, 0x5

    const/4 v0, 0x1

    add-int/2addr p0, v0

    aget p0, p1, p0

    const/high16 p1, 0x40000000    # 2.0f

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final access$locationOf(Ljava/util/ArrayList;II)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SlotTableKt;->search(Ljava/util/ArrayList;II)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    :goto_0
    return p0
.end method

.method public static final access$nodeCount(I[I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x5

    add-int/lit8 p0, p0, 0x1

    aget p0, p1, p0

    const p1, 0x3ffffff

    and-int/2addr p0, p1

    return p0
.end method

.method public static final access$parentAnchor(I[I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x5

    add-int/lit8 p0, p0, 0x2

    aget p0, p1, p0

    return p0
.end method

.method public static final access$slotAnchor(I[I)I
    .locals 1

    mul-int/lit8 p0, p0, 0x5

    add-int/lit8 v0, p0, 0x4

    aget v0, p1, v0

    add-int/lit8 p0, p0, 0x1

    aget p0, p1, p0

    shr-int/lit8 p0, p0, 0x1c

    invoke-static {p0}, Landroidx/compose/runtime/SlotTableKt;->countOneBits(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static final access$updateGroupSize(II[I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    mul-int/lit8 p0, p0, 0x5

    add-int/lit8 p0, p0, 0x3

    aput p1, p2, p0

    return-void
.end method

.method public static final access$updateNodeCount(II[I)V
    .locals 2

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    const v1, 0x3ffffff

    if-ge p1, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    mul-int/lit8 p0, p0, 0x5

    add-int/2addr p0, v0

    aget v0, p2, p0

    const/high16 v1, -0x4000000

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    aput p1, p2, p0

    return-void
.end method

.method public static final countOneBits(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    :goto_0
    :pswitch_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final search(Ljava/util/ArrayList;II)I
    .locals 4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_3

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/Anchor;

    iget v3, v3, Landroidx/compose/runtime/Anchor;->location:I

    if-gez v3, :cond_0

    add-int/2addr v3, p2

    :cond_0
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    if-gez v3, :cond_1

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    neg-int p0, v1

    return p0
.end method
