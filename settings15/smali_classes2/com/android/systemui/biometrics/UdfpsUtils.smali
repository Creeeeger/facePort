.class public final Lcom/android/systemui/biometrics/UdfpsUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
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

.method public static getScaleFactor(Landroid/view/DisplayInfo;)F
    .locals 3

    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v0}, Landroid/util/DisplayUtils;->getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result p0

    invoke-static {v1, v0, v2, p0}, Landroid/util/DisplayUtils;->getPhysicalPixelDisplaySizeRatio(IIII)F

    move-result p0

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_0
    return p0
.end method

.method public static onTouchOutsideOfSensorArea(ZLandroid/content/Context;IILcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f143016

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f143015

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f143017

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f143018

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

    const-string p1, "UdfpsUtils"

    const-string p2, "Announcing touch outside : $theStr"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method
