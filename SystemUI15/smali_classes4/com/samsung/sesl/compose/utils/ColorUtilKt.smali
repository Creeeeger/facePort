.class public abstract Lcom/samsung/sesl/compose/utils/ColorUtilKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final lerp-IbeAmgk(JJF)J
    .locals 3

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    move-result v0

    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    move-result v1

    invoke-static {v0, v1, p4}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v0

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    move-result v1

    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    move-result v2

    invoke-static {v1, v2, p4}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v1

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    move-result p1

    invoke-static {p0, p1, p4}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result p0

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/16 p3, 0x18

    and-int/lit8 p4, p3, 0x8

    if-eqz p4, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    and-int/lit8 p3, p3, 0x10

    if-eqz p3, :cond_1

    sget-object p2, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->Srgb:Landroidx/compose/ui/graphics/colorspace/Rgb;

    :cond_1
    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    move-result-wide p0

    return-wide p0
.end method
