.class public final Lcom/android/systemui/biometrics/udfps/EllipseOverlapDetector;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/udfps/OverlapDetector;


# instance fields
.field public final params:Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/udfps/EllipseOverlapDetector;->params:Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;

    return-void
.end method


# virtual methods
.method public final isGoodOverlap(Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p2}, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->isWithinBounds(Landroid/graphics/Rect;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    move-object/from16 v2, p3

    invoke-virtual {v0, v2}, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->isWithinBounds(Landroid/graphics/Rect;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    return v4

    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v6, p0

    iget-object v6, v6, Lcom/android/systemui/biometrics/udfps/EllipseOverlapDetector;->params:Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;

    iget v7, v6, Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;->stepSize:I

    const-string v8, "."

    const-string v9, "Step must be positive, was: "

    if-lez v7, :cond_d

    invoke-static {v2, v5, v7}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v5

    if-gt v2, v5, :cond_a

    move v10, v4

    move v11, v10

    move v12, v11

    :goto_0
    iget v13, v1, Landroid/graphics/Rect;->left:I

    iget v14, v1, Landroid/graphics/Rect;->right:I

    iget v15, v6, Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;->stepSize:I

    if-lez v15, :cond_9

    invoke-static {v13, v14, v15}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v14

    if-gt v13, v14, :cond_8

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v18

    const/4 v3, 0x2

    div-int/lit8 v4, v18, 0x2

    sub-int v16, v16, v13

    sub-int v17, v17, v2

    mul-int v16, v16, v16

    mul-int v17, v17, v17

    add-int v3, v17, v16

    int-to-float v1, v3

    move-object/from16 v16, v8

    int-to-float v8, v4

    move-object/from16 v17, v9

    iget v9, v6, Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;->targetSize:F

    mul-float/2addr v8, v9

    mul-float/2addr v8, v8

    cmpg-float v1, v1, v8

    if-gtz v1, :cond_2

    sget-object v1, Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;->TARGET:Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;

    goto :goto_2

    :cond_2
    mul-int/2addr v4, v4

    if-gt v3, v4, :cond_3

    sget-object v1, Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;->SENSOR:Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;->OUTSIDE:Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;

    :goto_2
    sget-object v3, Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;->OUTSIDE:Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;

    if-eq v1, v3, :cond_6

    add-int/lit8 v11, v11, 0x1

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v13, v2}, Landroid/graphics/Point;-><init>(II)V

    iget v4, v0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->orientation:F

    float-to-double v8, v4

    move-object v4, v6

    move/from16 v18, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    iget v7, v3, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    move/from16 v19, v11

    iget v11, v0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->x:F

    sub-float/2addr v7, v11

    mul-float/2addr v7, v6

    move-object/from16 v20, v4

    move v6, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, v3, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    move/from16 v21, v2

    iget v2, v0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->y:F

    sub-float/2addr v5, v2

    mul-float/2addr v5, v4

    move/from16 v22, v13

    move v4, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v13, v13

    iget v14, v3, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    sub-float/2addr v14, v11

    mul-float/2addr v14, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    mul-float/2addr v3, v8

    add-float/2addr v7, v5

    mul-float/2addr v7, v7

    const/4 v2, 0x2

    int-to-float v2, v2

    iget v5, v0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->minor:F

    div-float/2addr v5, v2

    mul-float/2addr v5, v5

    div-float/2addr v7, v5

    sub-float/2addr v14, v3

    mul-float/2addr v14, v14

    iget v3, v0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->major:F

    div-float/2addr v3, v2

    mul-float/2addr v3, v3

    div-float/2addr v14, v3

    add-float/2addr v14, v7

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v14, v2

    if-gtz v2, :cond_5

    add-int/lit8 v12, v12, 0x1

    sget-object v2, Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;->TARGET:Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    or-int/2addr v1, v10

    move v10, v1

    :cond_5
    move/from16 v11, v19

    move/from16 v13, v22

    goto :goto_4

    :cond_6
    move/from16 v21, v2

    move-object/from16 v20, v6

    move/from16 v18, v7

    move v4, v14

    move v6, v5

    :goto_4
    if-eq v13, v4, :cond_7

    add-int/2addr v13, v15

    move-object/from16 v1, p2

    move v14, v4

    move v5, v6

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move/from16 v7, v18

    move-object/from16 v6, v20

    move/from16 v2, v21

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_7
    move/from16 v2, v21

    goto :goto_5

    :cond_8
    move-object/from16 v20, v6

    move/from16 v18, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move v6, v5

    :goto_5
    if-eq v2, v6, :cond_b

    add-int v2, v2, v18

    move-object/from16 v1, p2

    move v5, v6

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move/from16 v7, v18

    move-object/from16 v6, v20

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_9
    move-object/from16 v16, v8

    move-object/from16 v17, v9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v15, v2, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object/from16 v20, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_b
    int-to-float v0, v12

    int-to-float v1, v11

    div-float/2addr v0, v1

    move-object/from16 v1, v20

    iget v1, v1, Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;->minOverlap:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_c

    if-eqz v10, :cond_c

    const/4 v3, 0x1

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    :goto_6
    return v3

    :cond_d
    move/from16 v18, v7

    move-object v1, v8

    move-object v2, v9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    move/from16 v3, v18

    invoke-static {v3, v2, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
