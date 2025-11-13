.class public final Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyIconXAxisRenderer;
.super Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mIconList:Ljava/util/ArrayList;

.field public mIconMargin:F

.field public mIconSize:I


# virtual methods
.method public final drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyXAxisRenderer;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    const/4 p3, 0x0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsXAxisRenderer;->mPositions:[F

    array-length v1, v0

    if-ge p3, v1, :cond_1

    aget v0, v0, p3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyIconXAxisRenderer;->mIconList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyIconXAxisRenderer;->mIconList:Ljava/util/ArrayList;

    div-int/lit8 v2, p3, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    float-to-int v0, v0

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyIconXAxisRenderer;->mIconMargin:F

    add-float/2addr v2, p2

    float-to-int v2, v2

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WeeklyIconXAxisRenderer;->mIconSize:I

    sget-object v4, Lcom/github/mikephil/charting/utils/Utils;->mMetrics:Landroid/util/DisplayMetrics;

    sget-object v4, Lcom/github/mikephil/charting/utils/MPPointF;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ObjectPool;->get()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/utils/MPPointF;

    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v0, v5

    int-to-float v0, v0

    iput v0, v4, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    sub-int/2addr v2, v5

    int-to-float v0, v2

    iput v0, v4, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sget-object v0, Lcom/github/mikephil/charting/utils/Utils;->mDrawableBoundsCache:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int v5, v2, v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v2, v4, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v3, v4, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    :cond_1
    return-void
.end method
