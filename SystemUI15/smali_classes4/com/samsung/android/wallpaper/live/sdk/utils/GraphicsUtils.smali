.class public final Lcom/samsung/android/wallpaper/live/sdk/utils/GraphicsUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCenterCropRect(IIII)Landroid/graphics/Rect;
    .locals 8

    const-string v0, "GraphicsUtils"

    const/4 v1, 0x0

    if-lez p0, :cond_2

    if-lez p1, :cond_2

    if-lez p2, :cond_2

    if-gtz p3, :cond_0

    goto :goto_2

    :cond_0
    mul-int v2, p0, p3

    mul-int v3, p2, p1

    if-le v2, v3, :cond_1

    int-to-float v2, p3

    int-to-float v3, p1

    :goto_0
    div-float/2addr v2, v3

    goto :goto_1

    :cond_1
    int-to-float v2, p2

    int-to-float v3, p0

    goto :goto_0

    :goto_1
    int-to-float v3, p0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v5, p1

    div-float/2addr v5, v4

    int-to-float v6, p2

    div-float/2addr v6, v2

    int-to-float v7, p3

    div-float/2addr v7, v2

    div-float v2, v6, v4

    sub-float/2addr v3, v2

    div-float v2, v7, v4

    sub-float/2addr v5, v2

    new-instance v2, Landroid/graphics/RectF;

    add-float/2addr v6, v3

    add-float/2addr v7, v5

    invoke-direct {v2, v3, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_3

    :cond_2
    :goto_2
    const-string v2, "getCenterCropRectInternal: incorrect params : "

    const-string v3, ", "

    invoke-static {p0, p1, v2, v3, v3}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_4

    iget v3, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3, v4, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x0

    invoke-virtual {v6, v2, v2, p0, p1}, Landroid/graphics/Rect;->intersect(IIII)Z

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_4

    :cond_3
    move-object v1, v6

    :cond_4
    :goto_4
    const-string v2, "getCenterCropRect: imgWidth="

    const-string v3, ", imgHeight="

    const-string v4, ", widthToFit="

    invoke-static {p0, p1, v2, v3, v4}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", heightToFit="

    const-string v2, ", result="

    invoke-static {p0, p2, p1, p3, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
