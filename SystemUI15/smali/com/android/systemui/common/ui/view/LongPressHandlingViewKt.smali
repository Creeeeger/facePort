.class public abstract Lcom/android/systemui/common/ui/view/LongPressHandlingViewKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final distanceMoved(Landroid/view/MotionEvent;)F
    .locals 6

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-double v2, v0

    const/4 v0, 0x2

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result p0

    sub-float/2addr v2, p0

    float-to-double v1, v2

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p0, v1

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
