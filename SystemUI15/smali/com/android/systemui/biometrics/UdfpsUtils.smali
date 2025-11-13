.class public final Lcom/android/systemui/biometrics/UdfpsUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPortraitTouch(ILandroid/view/MotionEvent;Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;)Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p0

    float-to-int p0, p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    iget p0, p2, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->rotation:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result p0

    iget p1, p2, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->logicalDisplayWidth:I

    iget p2, p2, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->logicalDisplayHeight:I

    invoke-static {v0, p0, p1, p2}, Landroid/util/RotationUtils;->rotatePoint(Landroid/graphics/Point;III)V

    :cond_1
    return-object v0
.end method

.method public static getTouchInNativeCoordinates(ILandroid/view/MotionEvent;Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;Z)Landroid/graphics/Point;
    .locals 1

    if-eqz p3, :cond_0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsUtils;->getPortraitTouch(ILandroid/view/MotionEvent;Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;)Landroid/graphics/Point;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p3, Landroid/graphics/Point;

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p0

    float-to-int p0, p0

    invoke-direct {p3, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    move-object p0, p3

    :goto_0
    iget p1, p2, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->scaleFactor:F

    iget p2, p0, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    div-float/2addr p2, p1

    float-to-int p2, p2

    iput p2, p0, Landroid/graphics/Point;->x:I

    iget p2, p0, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    div-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Landroid/graphics/Point;->y:I

    return-object p0
.end method

.method public static isWithinSensorArea(ILandroid/view/MotionEvent;Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;Z)Z
    .locals 1

    if-eqz p3, :cond_0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsUtils;->getPortraitTouch(ILandroid/view/MotionEvent;Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;)Landroid/graphics/Point;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p3, Landroid/graphics/Point;

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p0

    float-to-int p0, p0

    invoke-direct {p3, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    move-object p0, p3

    :goto_0
    iget-object p1, p2, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    iget p2, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public static onTouchOutsideOfSensorArea(ZLandroid/content/Context;IILcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;Z)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1313df

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1313de

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1313e0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1313e1

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, v0, v1, p0}, [Ljava/lang/String;

    move-result-object p0

    iget p1, p4, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->scaleFactor:F

    iget-object v0, p4, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    iget-object v1, p4, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    int-to-float p1, p2

    int-to-float p2, p3

    sub-float/2addr p1, v0

    sub-float/2addr v1, p2

    float-to-double p2, v1

    float-to-double v0, p1

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpg-double p3, p1, v0

    if-gez p3, :cond_1

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr p1, v0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    const/4 p3, 0x4

    int-to-double v0, p3

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double v0, v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v4, v0, v4

    add-double/2addr v4, p1

    rem-double/2addr v4, v2

    div-double/2addr v4, v0

    double-to-int p1, v4

    rem-int/2addr p1, p3

    if-eqz p5, :cond_3

    const/4 p2, 0x1

    iget p4, p4, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->rotation:I

    if-ne p4, p2, :cond_2

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr p1, p3

    :cond_2
    const/4 p2, 0x3

    if-ne p4, p2, :cond_3

    add-int/lit8 p1, p1, 0x3

    rem-int/2addr p1, p3

    :cond_3
    aget-object p0, p0, p1

    return-object p0
.end method
