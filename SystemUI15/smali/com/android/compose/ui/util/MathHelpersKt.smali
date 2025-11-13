.class public abstract Lcom/android/compose/ui/util/MathHelpersKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final lerp(Lcom/android/compose/animation/scene/Scale;Lcom/android/compose/animation/scene/Scale;F)Lcom/android/compose/animation/scene/Scale;
    .locals 11

    iget-wide v0, p0, Lcom/android/compose/animation/scene/Scale;->pivot:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->isSpecified-k-4lQ0M(J)Z

    move-result v2

    iget-wide v3, p1, Lcom/android/compose/animation/scene/Scale;->pivot:J

    if-eqz v2, :cond_0

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/OffsetKt;->isSpecified-k-4lQ0M(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, v3, v4, p2}, Landroidx/compose/ui/geometry/OffsetKt;->lerp-Wko1d7g(JJF)J

    move-result-wide v0

    :goto_0
    move-wide v8, v0

    goto :goto_1

    :cond_0
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->isSpecified-k-4lQ0M(J)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-wide v8, v3

    :goto_1
    new-instance v0, Lcom/android/compose/animation/scene/Scale;

    iget v1, p0, Lcom/android/compose/animation/scene/Scale;->scaleX:F

    iget v2, p1, Lcom/android/compose/animation/scene/Scale;->scaleX:F

    invoke-static {v1, v2, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v6

    iget p0, p0, Lcom/android/compose/animation/scene/Scale;->scaleY:F

    iget p1, p1, Lcom/android/compose/animation/scene/Scale;->scaleY:F

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v7

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/compose/animation/scene/Scale;-><init>(FFJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final lerp-e0twbBA(JJF)J
    .locals 4

    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    const/16 v0, 0x20

    shr-long v1, p0, v0

    long-to-int v1, v1

    shr-long v2, p2, v0

    long-to-int v0, v2

    invoke-static {p4, v1, v0}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FII)I

    move-result v0

    const-wide v1, 0xffffffffL

    and-long/2addr p0, v1

    long-to-int p0, p0

    and-long p1, p2, v1

    long-to-int p1, p1

    invoke-static {p4, p0, p1}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FII)I

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide p0

    return-wide p0
.end method
