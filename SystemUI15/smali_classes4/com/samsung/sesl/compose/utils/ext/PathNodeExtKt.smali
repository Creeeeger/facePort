.class public abstract Lcom/samsung/sesl/compose/utils/ext/PathNodeExtKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final transition(Landroidx/compose/ui/graphics/vector/PathNode;Landroidx/compose/ui/graphics/vector/PathNode;F)Landroidx/compose/ui/graphics/vector/PathNode;
    .locals 11

    instance-of v0, p0, Landroidx/compose/ui/graphics/vector/PathNode$Close;

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroidx/compose/ui/graphics/vector/PathNode$Close;

    if-eqz v0, :cond_0

    sget-object p0, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    goto/16 :goto_9

    :cond_0
    instance-of v0, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    check-cast p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    check-cast p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;->dx:F

    iget v2, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;->dx:F

    invoke-static {v1, v2, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v1

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;->dy:F

    iget p1, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;->dy:F

    invoke-static {p0, p1, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;-><init>(FF)V

    :goto_0
    move-object p0, v0

    goto/16 :goto_9

    :cond_1
    instance-of v0, p0, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v0, :cond_2

    instance-of v0, p1, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    check-cast p0, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    check-cast p1, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->x:F

    iget v2, p1, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->x:F

    invoke-static {v1, v2, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v1

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->y:F

    iget p1, p1, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->y:F

    invoke-static {p0, p1, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;-><init>(FF)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    if-eqz v0, :cond_3

    instance-of v0, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    if-eqz v0, :cond_3

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    check-cast p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    check-cast p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->dx:F

    iget v2, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->dx:F

    invoke-static {v1, v2, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v1

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->dy:F

    iget p1, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->dy:F

    invoke-static {p0, p1, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    goto :goto_0

    :cond_3
    instance-of v0, p0, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    if-eqz v0, :cond_4

    instance-of v0, p1, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    if-eqz v0, :cond_4

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    check-cast p0, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    check-cast p1, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->x:F

    iget v2, p1, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->x:F

    invoke-static {v1, v2, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v1

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->y:F

    iget p1, p1, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->y:F

    invoke-static {p0, p1, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    goto :goto_0

    :cond_4
    instance-of v0, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    if-eqz v0, :cond_5

    instance-of v0, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    if-eqz v0, :cond_5

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    check-cast p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    check-cast p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;->dx:F

    iget p1, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;->dx:F

    invoke-static {p0, p1, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result p0

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;-><init>(F)V

    goto/16 :goto_0

    :cond_5
    instance-of v0, p0, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    if-eqz v0, :cond_6

    instance-of v0, p1, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    if-eqz v0, :cond_6

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    check-cast p0, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    check-cast p1, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;->x:F

    iget p1, p1, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;->x:F

    invoke-static {p0, p1, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result p0

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;-><init>(F)V

    goto/16 :goto_0

    :cond_6
    instance-of v0, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    if-eqz v0, :cond_7

    instance-of v0, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    if-eqz v0, :cond_7

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    check-cast p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    check-cast p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;->dy:F

    iget p1, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;->dy:F

    invoke-static {p0, p1, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result p0

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;-><init>(F)V

    goto/16 :goto_0

    :cond_7
    instance-of v0, p0, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    if-eqz v0, :cond_8

    instance-of v0, p1, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    if-eqz v0, :cond_8

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    check-cast p0, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    check-cast p1, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;->y:F

    iget p1, p1, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;->y:F

    invoke-static {p0, p1, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result p0

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;-><init>(F)V

    goto/16 :goto_0

    :cond_8
    instance-of v0, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    if-eqz v0, :cond_9

    instance-of v0, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    if-eqz v0, :cond_9

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    check-cast p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    check-cast p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->dx1:F

    iget v2, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->dx1:F

    invoke-static {v1, v2, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v2

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->dy1:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->dy1:F

    invoke-static {v1, v3, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v3

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->dx2:F

    iget v4, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->dx2:F

    invoke-static {v1, v4, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v4

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->dy2:F

    iget v5, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->dy2:F

    invoke-static {v1, v5, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v5

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->dx3:F

    iget v6, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->dx3:F

    invoke-static {v1, v6, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v6

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->dy3:F

    iget p1, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->dy3:F

    invoke-static {p0, p1, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;-><init>(FFFFFF)V

    goto/16 :goto_0

    :cond_9
    instance-of v0, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    if-eqz v0, :cond_a

    instance-of v0, p1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    if-eqz v0, :cond_a

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    check-cast p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    check-cast p1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x1:F

    iget v2, p1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x1:F

    invoke-static {v1, v2, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v2

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y1:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y1:F

    invoke-static {v1, v3, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v3

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x2:F

    iget v4, p1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x2:F

    invoke-static {v1, v4, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v4

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y2:F

    iget v5, p1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y2:F

    invoke-static {v1, v5, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v5

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x3:F

    iget v6, p1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->x3:F

    invoke-static {v1, v6, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v6

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y3:F

    iget p1, p1, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->y3:F

    invoke-static {p0, p1, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;-><init>(FFFFFF)V

    goto/16 :goto_0

    :cond_a
    instance-of v0, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    if-eqz v0, :cond_b

    instance-of v0, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    if-eqz v0, :cond_b

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    check-cast p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    check-cast p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->dx1:F

    iget v2, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->dx1:F

    invoke-static {v1, v2, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v1

    iget v2, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->dy1:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->dy1:F

    invoke-static {v2, v3, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v2

    iget v3, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->dx2:F

    iget v4, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->dx2:F

    invoke-static {v3, v4, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v3

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->dy2:F

    iget p1, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->dy2:F

    invoke-static {p0, p1, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_b
    instance-of v0, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    if-eqz v0, :cond_c

    instance-of v0, p1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    if-eqz v0, :cond_c

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    check-cast p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    check-cast p1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->x1:F

    iget v2, p1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->x1:F

    invoke-static {v1, v2, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v1

    iget v2, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->y1:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->y1:F

    invoke-static {v2, v3, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v2

    iget v3, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->x2:F

    iget v4, p1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->x2:F

    invoke-static {v3, v4, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v3

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->y2:F

    iget p1, p1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->y2:F

    invoke-static {p0, p1, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_c
    instance-of v0, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    if-eqz v0, :cond_d

    instance-of v0, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    if-eqz v0, :cond_d

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    check-cast p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    check-cast p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->dx1:F

    iget v2, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->dx1:F

    invoke-static {v1, v2, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v1

    iget v2, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->dy1:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->dy1:F

    invoke-static {v2, v3, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v2

    iget v3, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->dx2:F

    iget v4, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->dx2:F

    invoke-static {v3, v4, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v3

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->dy2:F

    iget p1, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->dy2:F

    invoke-static {p0, p1, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_d
    instance-of v0, p0, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    if-eqz v0, :cond_e

    instance-of v0, p1, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    if-eqz v0, :cond_e

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    check-cast p0, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    check-cast p1, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->x1:F

    iget v2, p1, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->x1:F

    invoke-static {v1, v2, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v1

    iget v2, p0, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->y1:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->y1:F

    invoke-static {v2, v3, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v2

    iget v3, p0, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->x2:F

    iget v4, p1, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->x2:F

    invoke-static {v3, v4, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v3

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->y2:F

    iget p1, p1, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->y2:F

    invoke-static {p0, p1, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;-><init>(FFFF)V

    goto/16 :goto_0

    :cond_e
    instance-of v0, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    if-eqz v0, :cond_f

    instance-of v0, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    if-eqz v0, :cond_f

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    check-cast p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    check-cast p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;->dx:F

    iget v2, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;->dx:F

    invoke-static {v1, v2, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v1

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;->dy:F

    iget p1, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;->dy:F

    invoke-static {p0, p1, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;-><init>(FF)V

    goto/16 :goto_0

    :cond_f
    instance-of v0, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    if-eqz v0, :cond_10

    instance-of v0, p1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    if-eqz v0, :cond_10

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    check-cast p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    check-cast p1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;->x:F

    iget v2, p1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;->x:F

    invoke-static {v1, v2, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v1

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;->y:F

    iget p1, p1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;->y:F

    invoke-static {p0, p1, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;-><init>(FF)V

    goto/16 :goto_0

    :cond_10
    instance-of v0, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    if-eqz v0, :cond_13

    instance-of v0, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    if-eqz v0, :cond_13

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    check-cast p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    check-cast p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    iget v3, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->horizontalEllipseRadius:F

    iget v4, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->horizontalEllipseRadius:F

    invoke-static {v3, v4, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v4

    iget v3, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->verticalEllipseRadius:F

    iget v5, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->verticalEllipseRadius:F

    invoke-static {v3, v5, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v5

    iget v3, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->theta:F

    iget v6, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->theta:F

    invoke-static {v3, v6, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v6

    float-to-double v7, p2

    cmpg-double v1, v7, v1

    if-gez v1, :cond_11

    iget-boolean v2, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->isMoreThanHalf:Z

    :goto_1
    move v7, v2

    goto :goto_2

    :cond_11
    iget-boolean v2, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->isMoreThanHalf:Z

    goto :goto_1

    :goto_2
    if-gez v1, :cond_12

    iget-boolean v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->isPositiveArc:Z

    :goto_3
    move v8, v1

    goto :goto_4

    :cond_12
    iget-boolean v1, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->isPositiveArc:Z

    goto :goto_3

    :goto_4
    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->arcStartDx:F

    iget v2, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->arcStartDx:F

    invoke-static {v1, v2, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v9

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->arcStartDy:F

    iget p1, p1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->arcStartDy:F

    invoke-static {p0, p1, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v10

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;-><init>(FFFZZFF)V

    goto/16 :goto_0

    :cond_13
    instance-of v0, p0, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    if-eqz v0, :cond_16

    instance-of v0, p1, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    if-eqz v0, :cond_16

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    check-cast p0, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    check-cast p1, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    iget v3, p0, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->horizontalEllipseRadius:F

    iget v4, p1, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->horizontalEllipseRadius:F

    invoke-static {v3, v4, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v4

    iget v3, p0, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->verticalEllipseRadius:F

    iget v5, p1, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->verticalEllipseRadius:F

    invoke-static {v3, v5, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v5

    iget v3, p0, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->theta:F

    iget v6, p1, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->theta:F

    invoke-static {v3, v6, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v6

    float-to-double v7, p2

    cmpg-double v1, v7, v1

    if-gez v1, :cond_14

    iget-boolean v2, p0, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->isMoreThanHalf:Z

    :goto_5
    move v7, v2

    goto :goto_6

    :cond_14
    iget-boolean v2, p1, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->isMoreThanHalf:Z

    goto :goto_5

    :goto_6
    if-gez v1, :cond_15

    iget-boolean v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->isPositiveArc:Z

    :goto_7
    move v8, v1

    goto :goto_8

    :cond_15
    iget-boolean v1, p1, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->isPositiveArc:Z

    goto :goto_7

    :goto_8
    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->arcStartX:F

    iget v2, p1, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->arcStartX:F

    invoke-static {v1, v2, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v9

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->arcStartY:F

    iget p1, p1, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->arcStartY:F

    invoke-static {p0, p1, p2}, Lcom/samsung/sesl/compose/utils/MathHelperKt;->lerp(FFF)F

    move-result v10

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;-><init>(FFFZZFF)V

    goto/16 :goto_0

    :goto_9
    return-object p0

    :cond_16
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pathNodeType is different between "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
