.class public final Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mTmpDownCentroid:Landroid/graphics/PointF;

.field public final mTmpDownVector:Landroid/graphics/PointF;

.field public final mTmpLastCentroid:Landroid/graphics/PointF;

.field public final mTmpLastVector:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;->mTmpDownVector:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;->mTmpLastVector:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;->mTmpDownCentroid:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;->mTmpLastCentroid:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final calculateBoundsAndAngle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 5

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p4, Landroid/graphics/PointF;->x:F

    iget v2, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    iget v3, p4, Landroid/graphics/PointF;->y:F

    iget v4, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p5, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {p7}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget p5, p5, Landroid/graphics/Point;->y:I

    int-to-float p5, p5

    invoke-virtual {p7}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p5, v3

    invoke-static {v2, p5}, Ljava/lang/Math;->max(FF)F

    move-result p5

    iget v2, p6, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {p7}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget p6, p6, Landroid/graphics/Point;->y:I

    int-to-float p6, p6

    invoke-virtual {p7}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p6, v3

    invoke-static {v2, p6}, Ljava/lang/Math;->min(FF)F

    move-result p6

    div-float/2addr v1, v0

    sub-float v0, v1, p6

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sub-float/2addr p5, v2

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v0, v3

    add-float/2addr v0, p6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p6

    invoke-static {p5, p6}, Ljava/lang/Math;->max(FF)F

    move-result p5

    invoke-virtual {p8, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/high16 p6, 0x3f800000    # 1.0f

    cmpl-float p7, p5, p6

    if-eqz p7, :cond_1

    invoke-virtual {p8}, Landroid/graphics/Rect;->centerX()I

    move-result p7

    invoke-virtual {p8}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    neg-int v1, p7

    neg-int v3, v0

    invoke-virtual {p8, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p8, p5}, Landroid/graphics/Rect;->scale(F)V

    invoke-virtual {p8, p7, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    iget-object p5, p0, Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;->mTmpDownCentroid:Landroid/graphics/PointF;

    iget p7, p2, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr p7, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p7, v0

    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v3

    div-float/2addr v1, v0

    invoke-virtual {p5, p7, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p5, p0, Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;->mTmpLastCentroid:Landroid/graphics/PointF;

    iget p7, p4, Landroid/graphics/PointF;->x:F

    iget v1, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr p7, v1

    div-float/2addr p7, v0

    iget v1, p4, Landroid/graphics/PointF;->y:F

    iget v3, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v3

    div-float/2addr v1, v0

    invoke-virtual {p5, p7, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p5, p0, Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;->mTmpLastCentroid:Landroid/graphics/PointF;

    iget p7, p5, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;->mTmpDownCentroid:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p7, v1

    float-to-int p7, p7

    iget p5, p5, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p5, v0

    float-to-int p5, p5

    invoke-virtual {p8, p7, p5}, Landroid/graphics/Rect;->offset(II)V

    iget-object p5, p0, Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;->mTmpDownVector:Landroid/graphics/PointF;

    iget p7, p2, Landroid/graphics/PointF;->x:F

    iget p8, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p7, p8

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p1

    invoke-virtual {p5, p7, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;->mTmpLastVector:Landroid/graphics/PointF;

    iget p2, p4, Landroid/graphics/PointF;->x:F

    iget p5, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, p5

    iget p4, p4, Landroid/graphics/PointF;->y:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p4, p3

    invoke-virtual {p1, p2, p4}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;->mTmpDownVector:Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipPinchResizingAlgorithm;->mTmpLastVector:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p3, p0, Landroid/graphics/PointF;->y:F

    mul-float p4, p2, p3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p0, p0, Landroid/graphics/PointF;->x:F

    mul-float p5, p1, p0

    sub-float/2addr p4, p5

    float-to-double p4, p4

    mul-float/2addr p2, p0

    mul-float/2addr p1, p3

    add-float/2addr p1, p2

    float-to-double p0, p1

    invoke-static {p4, p5, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    double-to-float p0, p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p1

    invoke-static {p0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-nez p2, :cond_2

    move p4, v2

    goto :goto_1

    :cond_2
    const/high16 p2, 0x42340000    # 45.0f

    div-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p3

    div-float p3, p0, p3

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sub-float/2addr p0, p6

    mul-float p4, p0, p0

    mul-float/2addr p4, p0

    add-float/2addr p4, p6

    mul-float/2addr p4, p3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, p6

    if-ltz p0, :cond_3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr p4, p0

    :cond_3
    const p0, 0x3ecccccd    # 0.4f

    mul-float/2addr p4, p0

    mul-float/2addr p4, p2

    :goto_1
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p2, 0x40a00000    # 5.0f

    sub-float/2addr p0, p2

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float/2addr p0, p1

    return p0
.end method
