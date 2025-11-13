.class public abstract Landroidx/compose/ui/draw/ScaleKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final scale(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 11

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    const v10, 0x1fffc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p1

    invoke-static/range {v1 .. v10}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFFLandroidx/compose/ui/graphics/Shape;ZII)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :goto_0
    return-object p0
.end method
