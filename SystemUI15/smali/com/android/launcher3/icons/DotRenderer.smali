.class public final Lcom/android/launcher3/icons/DotRenderer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(ILandroid/graphics/Path;I)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Landroid/graphics/Paint;-><init>(I)V

    const p0, 0x3e6978d5    # 0.228f

    int-to-float p1, p1

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    new-instance p1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;

    invoke-direct {p1, v1}, Lcom/android/launcher3/icons/ShadowGenerator$Builder;-><init>(I)V

    const/16 v3, 0x58

    iput v3, p1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->ambientShadowAlpha:I

    int-to-float p0, p0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v4, p0, v3

    const/high16 v5, 0x41c00000    # 24.0f

    div-float v5, v4, v5

    iput v5, p1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->shadowBlur:F

    const/high16 v6, 0x41800000    # 16.0f

    div-float/2addr v4, v6

    iput v4, p1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->keyShadowDistance:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p0, v4

    iput v4, p1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, p1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    iget v7, p1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->shadowBlur:F

    add-float/2addr v6, v7

    iget v7, p1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->keyShadowDistance:F

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, p1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v6, v0, v0, p0, p0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p0, p1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    int-to-float v6, v5

    sub-float/2addr v6, v4

    invoke-virtual {p0, v6, v6}, Landroid/graphics/RectF;->offsetTo(FF)V

    mul-int/lit8 v5, v5, 0x2

    new-instance p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/android/launcher3/icons/ShadowGenerator$Builder$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/icons/ShadowGenerator$Builder;)V

    sget-object p1, Lcom/android/launcher3/icons/GraphicsUtils;->sOnNewBitmapRunnable:Lcom/android/launcher3/icons/GraphicsUtils$$ExternalSyntheticLambda0;

    new-instance p1, Landroid/graphics/Picture;

    invoke-direct {p1}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual {p1, v5, v5}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v4

    iget-object p0, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/icons/ShadowGenerator$Builder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v2}, Landroid/graphics/Paint;-><init>(I)V

    iget v2, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->color:I

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v6, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->shadowBlur:F

    iget v7, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->keyShadowDistance:F

    iget v8, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->keyShadowAlpha:I

    sget-object v9, Lcom/android/launcher3/icons/GraphicsUtils;->sOnNewBitmapRunnable:Lcom/android/launcher3/icons/GraphicsUtils$$ExternalSyntheticLambda0;

    const/16 v9, 0xff

    if-gez v8, :cond_1

    move v8, v1

    goto :goto_0

    :cond_1
    if-le v8, v9, :cond_2

    move v8, v9

    :cond_2
    :goto_0
    shl-int/lit8 v8, v8, 0x18

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v6, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    iget v7, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    invoke-virtual {v4, v6, v7, v7, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v6, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->shadowBlur:F

    iget v7, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->ambientShadowAlpha:I

    if-gez v7, :cond_3

    goto :goto_1

    :cond_3
    if-le v7, v9, :cond_4

    move v1, v9

    goto :goto_1

    :cond_4
    move v1, v7

    :goto_1
    shl-int/lit8 v1, v1, 0x18

    invoke-virtual {v5, v6, v0, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    invoke-virtual {v4, v0, v1, v1, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ge v0, v9, :cond_5

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v5}, Landroid/graphics/Paint;->clearShadowLayer()V

    const/high16 v0, -0x1000000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    invoke-virtual {v4, v0, v1, v1, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    iget p0, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    invoke-virtual {v4, v0, p0, p0, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Picture;->endRecording()V

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    int-to-float p0, p3

    const/high16 p1, -0x40800000    # -1.0f

    invoke-static {p2, p0, p1}, Lcom/android/launcher3/icons/DotRenderer;->getPathPoint(Landroid/graphics/Path;FF)V

    invoke-static {p2, p0, v3}, Lcom/android/launcher3/icons/DotRenderer;->getPathPoint(Landroid/graphics/Path;FF)V

    return-void
.end method

.method public static getPathPoint(Landroid/graphics/Path;FF)V
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    mul-float v1, p2, v0

    add-float/2addr v1, v0

    invoke-static {v0, v0}, Landroidx/core/animation/PathInterpolator$$ExternalSyntheticOutline0;->m(FF)Landroid/graphics/Path;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p2, v2

    add-float/2addr p2, v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    sget-object p2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v0, p0, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    const/4 p0, 0x2

    new-array p0, p0, [F

    new-instance p2, Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v0, 0x0

    invoke-virtual {p2, v2, p0, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    aget p2, p0, v1

    div-float/2addr p2, p1

    aput p2, p0, v1

    const/4 p2, 0x1

    aget v0, p0, p2

    div-float/2addr v0, p1

    aput v0, p0, p2

    return-void
.end method
