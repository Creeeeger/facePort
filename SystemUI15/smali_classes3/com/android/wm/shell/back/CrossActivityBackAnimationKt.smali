.class public abstract Lcom/android/wm/shell/back/CrossActivityBackAnimationKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static scaleCentered$default(Landroid/graphics/RectF;F)V
    .locals 4

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x2

    int-to-float v3, v2

    div-float/2addr v1, v3

    add-float/2addr v1, v0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    add-float/2addr v3, v0

    neg-float v0, v1

    neg-float v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->scale(F)V

    invoke-virtual {p0, v1, v3}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public static final setInterpolatedRectF(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    invoke-static {v1, v0, p3, v0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v0, p3, v0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v0, p3, v0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {p2, p1, p3, p1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result p1

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Progress value must be between 0 and 1"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
