.class public final Landroidx/compose/ui/graphics/colorspace/Xyz;
.super Landroidx/compose/ui/graphics/colorspace/ColorSpace;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getMaxValue(I)F
    .locals 0

    const/high16 p0, 0x40000000    # 2.0f

    return p0
.end method

.method public final getMinValue(I)F
    .locals 0

    const/high16 p0, -0x40000000    # -2.0f

    return p0
.end method

.method public final toXy$ui_graphics_release(FFF)J
    .locals 2

    const/high16 p0, -0x40000000    # -2.0f

    cmpg-float p3, p1, p0

    if-gez p3, :cond_0

    move p1, p0

    :cond_0
    const/high16 p3, 0x40000000    # 2.0f

    cmpl-float v0, p1, p3

    if-lez v0, :cond_1

    move p1, p3

    :cond_1
    cmpg-float v0, p2, p0

    if-gez v0, :cond_2

    move p2, p0

    :cond_2
    cmpl-float p0, p2, p3

    if-lez p0, :cond_3

    goto :goto_0

    :cond_3
    move p3, p2

    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long p2, p2

    const/16 v0, 0x20

    shl-long/2addr p0, v0

    const-wide v0, 0xffffffffL

    and-long/2addr p2, v0

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public final toZ$ui_graphics_release(FFF)F
    .locals 0

    const/high16 p0, -0x40000000    # -2.0f

    cmpg-float p1, p3, p0

    if-gez p1, :cond_0

    move p3, p0

    :cond_0
    const/high16 p0, 0x40000000    # 2.0f

    cmpl-float p1, p3, p0

    if-lez p1, :cond_1

    move p3, p0

    :cond_1
    return p3
.end method

.method public final xyzaToColor-JlNiLsg$ui_graphics_release(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J
    .locals 2

    const/high16 p0, -0x40000000    # -2.0f

    cmpg-float v0, p1, p0

    if-gez v0, :cond_0

    move p1, p0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    :cond_1
    cmpg-float v1, p2, p0

    if-gez v1, :cond_2

    move p2, p0

    :cond_2
    cmpl-float v1, p2, v0

    if-lez v1, :cond_3

    move p2, v0

    :cond_3
    cmpg-float v1, p3, p0

    if-gez v1, :cond_4

    move p3, p0

    :cond_4
    cmpl-float p0, p3, v0

    if-lez p0, :cond_5

    goto :goto_0

    :cond_5
    move v0, p3

    :goto_0
    invoke-static {p1, p2, v0, p4, p5}, Landroidx/compose/ui/graphics/ColorKt;->Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide p0

    return-wide p0
.end method
