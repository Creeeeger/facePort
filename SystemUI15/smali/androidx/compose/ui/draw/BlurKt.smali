.class public abstract Landroidx/compose/ui/draw/BlurKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static blur-F8QBwvs$default(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 7

    sget-object v0, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->Companion:Landroidx/compose/ui/draw/BlurredEdgeTreatment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->Rectangle:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v0}, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->box-impl(Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;)Landroidx/compose/ui/draw/BlurredEdgeTreatment;

    move-result-object v0

    iget-object v5, v0, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->shape:Landroidx/compose/ui/graphics/Shape;

    const/4 v0, 0x0

    if-eqz v5, :cond_0

    sget-object v1, Landroidx/compose/ui/graphics/TileMode;->Companion:Landroidx/compose/ui/graphics/TileMode$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    move v4, v0

    move v6, v1

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/compose/ui/graphics/TileMode;->Companion:Landroidx/compose/ui/graphics/TileMode$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/graphics/TileMode;->Decal:I

    move v6, v0

    move v4, v1

    :goto_0
    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz v6, :cond_3

    :cond_2
    new-instance v0, Landroidx/compose/ui/draw/BlurKt$blur$1;

    move-object v1, v0

    move v2, p1

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/draw/BlurKt$blur$1;-><init>(FFILandroidx/compose/ui/graphics/Shape;Z)V

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_3
    return-object p0
.end method
