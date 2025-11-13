.class public final Lcom/google/zxing/aztec/detector/Detector;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final EXPECTED_CORNER_BITS:[I


# instance fields
.field public compact:Z

.field public final image:Lcom/google/zxing/common/BitMatrix;

.field public nbCenterLayers:I

.field public nbDataBlocks:I

.field public nbLayers:I

.field public shift:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x83b

    const/16 v1, 0x707

    const/16 v2, 0xee0

    const/16 v3, 0x1dc

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/detector/Detector;->EXPECTED_CORNER_BITS:[I

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method

.method public static expandSquare([Lcom/google/zxing/ResultPoint;II)[Lcom/google/zxing/ResultPoint;
    .locals 7

    int-to-float p2, p2

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    div-float/2addr p2, p1

    const/4 p1, 0x0

    aget-object p1, p0, p1

    iget v1, p1, Lcom/google/zxing/ResultPoint;->x:F

    const/4 v2, 0x2

    aget-object v2, p0, v2

    iget v3, v2, Lcom/google/zxing/ResultPoint;->x:F

    sub-float v4, v1, v3

    iget p1, p1, Lcom/google/zxing/ResultPoint;->y:F

    iget v2, v2, Lcom/google/zxing/ResultPoint;->y:F

    sub-float v5, p1, v2

    add-float/2addr v1, v3

    div-float/2addr v1, v0

    add-float/2addr p1, v2

    div-float/2addr p1, v0

    new-instance v2, Lcom/google/zxing/ResultPoint;

    mul-float/2addr v4, p2

    add-float v3, v1, v4

    mul-float/2addr v5, p2

    add-float v6, p1, v5

    invoke-direct {v2, v3, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v3, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v1, v4

    sub-float/2addr p1, v5

    invoke-direct {v3, v1, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 p1, 0x1

    aget-object p1, p0, p1

    iget v1, p1, Lcom/google/zxing/ResultPoint;->x:F

    const/4 v4, 0x3

    aget-object p0, p0, v4

    iget v4, p0, Lcom/google/zxing/ResultPoint;->x:F

    sub-float v5, v1, v4

    iget p1, p1, Lcom/google/zxing/ResultPoint;->y:F

    iget p0, p0, Lcom/google/zxing/ResultPoint;->y:F

    sub-float v6, p1, p0

    add-float/2addr v1, v4

    div-float/2addr v1, v0

    add-float/2addr p1, p0

    div-float/2addr p1, v0

    new-instance p0, Lcom/google/zxing/ResultPoint;

    mul-float/2addr v5, p2

    add-float v0, v1, v5

    mul-float/2addr p2, v6

    add-float v4, p1, p2

    invoke-direct {p0, v0, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v0, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v1, v5

    sub-float/2addr p1, p2

    invoke-direct {v0, v1, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    filled-new-array {v2, p0, v3, v0}, [Lcom/google/zxing/ResultPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;
    .locals 37

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x7

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    new-instance v8, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    invoke-direct {v8, v1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v8}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v8

    aget-object v9, v8, v7

    aget-object v10, v8, v6

    aget-object v11, v8, v3

    aget-object v8, v8, v4
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget v8, v1, Lcom/google/zxing/common/BitMatrix;->width:I

    div-int/2addr v8, v3

    iget v9, v1, Lcom/google/zxing/common/BitMatrix;->height:I

    div-int/2addr v9, v3

    new-instance v10, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v11, v8, 0x7

    add-int/lit8 v12, v9, -0x7

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-virtual {v0, v10, v7, v6, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v10

    new-instance v13, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/2addr v9, v5

    invoke-direct {v13, v11, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-virtual {v0, v13, v7, v6, v6}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v11

    new-instance v13, Lcom/google/zxing/aztec/detector/Detector$Point;

    sub-int/2addr v8, v5

    invoke-direct {v13, v8, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-virtual {v0, v13, v7, v2, v6}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v9

    new-instance v13, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v13, v8, v12}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-virtual {v0, v13, v7, v2, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v8

    move-object/from16 v36, v11

    move-object v11, v9

    move-object v9, v10

    move-object/from16 v10, v36

    :goto_0
    iget v12, v9, Lcom/google/zxing/ResultPoint;->x:F

    iget v13, v8, Lcom/google/zxing/ResultPoint;->x:F

    add-float/2addr v12, v13

    iget v13, v10, Lcom/google/zxing/ResultPoint;->x:F

    add-float/2addr v12, v13

    iget v13, v11, Lcom/google/zxing/ResultPoint;->x:F

    add-float/2addr v12, v13

    const/high16 v13, 0x40800000    # 4.0f

    div-float/2addr v12, v13

    invoke-static {v12}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v12

    iget v9, v9, Lcom/google/zxing/ResultPoint;->y:F

    iget v8, v8, Lcom/google/zxing/ResultPoint;->y:F

    add-float/2addr v9, v8

    iget v8, v10, Lcom/google/zxing/ResultPoint;->y:F

    add-float/2addr v9, v8

    iget v8, v11, Lcom/google/zxing/ResultPoint;->y:F

    add-float/2addr v9, v8

    div-float/2addr v9, v13

    invoke-static {v9}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v8

    const/16 v9, 0xf

    :try_start_1
    new-instance v10, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    invoke-direct {v10, v1, v9, v12, v8}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    invoke-virtual {v10}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v10

    aget-object v11, v10, v7

    aget-object v14, v10, v6

    aget-object v15, v10, v3

    aget-object v8, v10, v4
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    new-instance v10, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v11, v12, 0x7

    add-int/lit8 v14, v8, -0x7

    invoke-direct {v10, v11, v14}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-virtual {v0, v10, v7, v6, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v10

    new-instance v15, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/2addr v8, v5

    invoke-direct {v15, v11, v8}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-virtual {v0, v15, v7, v6, v6}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v11

    new-instance v15, Lcom/google/zxing/aztec/detector/Detector$Point;

    sub-int/2addr v12, v5

    invoke-direct {v15, v12, v8}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-virtual {v0, v15, v7, v2, v6}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v15

    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v8, v12, v14}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-virtual {v0, v8, v7, v2, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v8

    move-object v14, v11

    move-object v11, v10

    :goto_1
    iget v10, v11, Lcom/google/zxing/ResultPoint;->x:F

    iget v12, v8, Lcom/google/zxing/ResultPoint;->x:F

    add-float/2addr v10, v12

    iget v12, v14, Lcom/google/zxing/ResultPoint;->x:F

    add-float/2addr v10, v12

    iget v12, v15, Lcom/google/zxing/ResultPoint;->x:F

    add-float/2addr v10, v12

    div-float/2addr v10, v13

    invoke-static {v10}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v10

    iget v11, v11, Lcom/google/zxing/ResultPoint;->y:F

    iget v8, v8, Lcom/google/zxing/ResultPoint;->y:F

    add-float/2addr v11, v8

    iget v8, v14, Lcom/google/zxing/ResultPoint;->y:F

    add-float/2addr v11, v8

    iget v8, v15, Lcom/google/zxing/ResultPoint;->y:F

    add-float/2addr v11, v8

    div-float/2addr v11, v13

    invoke-static {v11}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v8

    new-instance v11, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {v11, v10, v8}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    iput v6, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move v13, v6

    move-object v8, v11

    move-object v10, v8

    move-object v12, v10

    :goto_2
    iget v14, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    const/16 v15, 0x9

    iget v9, v12, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    iget v5, v12, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    iget v4, v11, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    iget v7, v11, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    if-ge v14, v15, :cond_5

    invoke-virtual {v0, v11, v13, v6, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v11

    invoke-virtual {v0, v8, v13, v6, v6}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v14

    invoke-virtual {v0, v10, v13, v2, v6}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v15

    invoke-virtual {v0, v12, v13, v2, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v12

    iget v2, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    if-le v2, v3, :cond_4

    iget v2, v12, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    iget v6, v12, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    iget v3, v11, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move-object/from16 v20, v12

    iget v12, v11, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    invoke-static {v2, v6, v3, v12}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v21

    move-object/from16 v22, v11

    iget v11, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    int-to-float v11, v11

    mul-float v21, v21, v11

    invoke-static {v9, v5, v4, v7}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v11

    move/from16 v23, v5

    iget v5, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    const/16 v19, 0x2

    add-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    mul-float/2addr v11, v5

    div-float v5, v21, v11

    move/from16 v21, v9

    move-object v11, v10

    float-to-double v9, v5

    const-wide/high16 v24, 0x3fe8000000000000L    # 0.75

    cmpg-double v5, v9, v24

    if-ltz v5, :cond_3

    const-wide/high16 v24, 0x3ff4000000000000L    # 1.25

    cmpl-double v5, v9, v24

    if-gtz v5, :cond_3

    new-instance v5, Lcom/google/zxing/aztec/detector/Detector$Point;

    add-int/lit8 v3, v3, -0x3

    const/4 v9, 0x0

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v9, v1, Lcom/google/zxing/common/BitMatrix;->height:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    add-int/lit8 v12, v12, 0x3

    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-direct {v5, v3, v9}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    new-instance v3, Lcom/google/zxing/aztec/detector/Detector$Point;

    iget v9, v14, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    const/4 v10, 0x3

    sub-int/2addr v9, v10

    const/4 v12, 0x0

    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object/from16 v24, v11

    iget v11, v14, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    sub-int/2addr v11, v10

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-direct {v3, v9, v11}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    new-instance v9, Lcom/google/zxing/aztec/detector/Detector$Point;

    iget v11, v1, Lcom/google/zxing/common/BitMatrix;->width:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    iget v12, v15, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    add-int/2addr v12, v10

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget v12, v1, Lcom/google/zxing/common/BitMatrix;->height:I

    const/16 v18, 0x1

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v25, v14

    iget v14, v15, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    sub-int/2addr v14, v10

    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v12, 0x0

    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-direct {v9, v11, v10}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    new-instance v10, Lcom/google/zxing/aztec/detector/Detector$Point;

    iget v11, v1, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v2, v2, 0x3

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v11, v1, Lcom/google/zxing/common/BitMatrix;->height:I

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v6, v6, 0x3

    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-direct {v10, v2, v6}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    invoke-virtual {v0, v10, v5}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {v0, v5, v3}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v5

    if-eq v5, v2, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v0, v3, v9}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v3

    if-eq v3, v2, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v0, v9, v10}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v3

    if-ne v3, v2, :cond_6

    goto :goto_3

    :cond_3
    move-object/from16 v24, v11

    goto :goto_4

    :cond_4
    move-object/from16 v22, v11

    move-object/from16 v20, v12

    move-object/from16 v25, v14

    :goto_3
    xor-int/lit8 v13, v13, 0x1

    iget v2, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move-object v10, v15

    move-object/from16 v12, v20

    move-object/from16 v11, v22

    move-object/from16 v8, v25

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x7

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v9, 0xf

    goto/16 :goto_2

    :cond_5
    move/from16 v23, v5

    move/from16 v21, v9

    move-object/from16 v24, v10

    :cond_6
    :goto_4
    iget v2, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_8

    const/4 v5, 0x7

    if-ne v2, v5, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_8
    :goto_5
    if-ne v2, v3, :cond_9

    const/4 v3, 0x1

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    :goto_6
    iput-boolean v3, v0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    new-instance v3, Lcom/google/zxing/ResultPoint;

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    int-to-float v6, v7

    sub-float/2addr v6, v5

    invoke-direct {v3, v4, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v4, Lcom/google/zxing/ResultPoint;

    iget v6, v8, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    iget v7, v8, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float v7, v7

    add-float/2addr v7, v5

    invoke-direct {v4, v6, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v6, Lcom/google/zxing/ResultPoint;

    move-object/from16 v15, v24

    iget v7, v15, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v7, v7

    sub-float/2addr v7, v5

    iget v8, v15, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float v8, v8

    add-float/2addr v8, v5

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v7, Lcom/google/zxing/ResultPoint;

    move/from16 v8, v21

    int-to-float v8, v8

    sub-float/2addr v8, v5

    move/from16 v9, v23

    int-to-float v9, v9

    sub-float/2addr v9, v5

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    filled-new-array {v3, v4, v6, v7}, [Lcom/google/zxing/ResultPoint;

    move-result-object v3

    const/4 v4, 0x2

    mul-int/2addr v2, v4

    add-int/lit8 v5, v2, -0x3

    invoke-static {v3, v5, v2}, Lcom/google/zxing/aztec/detector/Detector;->expandSquare([Lcom/google/zxing/ResultPoint;II)[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_a

    aget-object v5, v2, v3

    aget-object v6, v2, v4

    aput-object v6, v2, v3

    aput-object v5, v2, v4

    :cond_a
    aget-object v5, v2, v3

    invoke-virtual {v0, v5}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    aget-object v5, v2, v3

    invoke-virtual {v0, v5}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v3

    if-eqz v3, :cond_14

    aget-object v3, v2, v4

    invoke-virtual {v0, v3}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, 0x3

    aget-object v5, v2, v3

    invoke-virtual {v0, v5}, Lcom/google/zxing/aztec/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget v3, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/2addr v3, v4

    const/4 v9, 0x0

    aget-object v5, v2, v9

    const/4 v6, 0x1

    aget-object v7, v2, v6

    invoke-virtual {v0, v5, v7, v3}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v5

    aget-object v7, v2, v6

    aget-object v6, v2, v4

    invoke-virtual {v0, v7, v6, v3}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v6

    aget-object v7, v2, v4

    const/4 v4, 0x3

    aget-object v8, v2, v4

    invoke-virtual {v0, v7, v8, v3}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v7

    aget-object v8, v2, v4

    aget-object v4, v2, v9

    invoke-virtual {v0, v8, v4, v3}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I

    move-result v4

    filled-new-array {v5, v6, v7, v4}, [I

    move-result-object v4

    move v5, v9

    move v6, v5

    :goto_7
    const/4 v7, 0x4

    if-ge v5, v7, :cond_b

    aget v7, v4, v5

    const/4 v8, 0x2

    add-int/lit8 v10, v3, -0x2

    shr-int v8, v7, v10

    const/4 v10, 0x1

    shl-int/2addr v8, v10

    and-int/2addr v7, v10

    add-int/2addr v8, v7

    shl-int/lit8 v6, v6, 0x3

    add-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_b
    and-int/lit8 v3, v6, 0x1

    shl-int/lit8 v3, v3, 0xb

    const/4 v5, 0x1

    shr-int/2addr v6, v5

    add-int/2addr v3, v6

    move v5, v9

    :goto_8
    if-ge v5, v7, :cond_13

    sget-object v6, Lcom/google/zxing/aztec/detector/Detector;->EXPECTED_CORNER_BITS:[I

    aget v6, v6, v5

    xor-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->bitCount(I)I

    move-result v6

    const/4 v8, 0x2

    if-gt v6, v8, :cond_12

    iput v5, v0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    const-wide/16 v5, 0x0

    move v3, v9

    :goto_9
    const/16 v8, 0xa

    if-ge v3, v7, :cond_d

    iget v10, v0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    add-int/2addr v10, v3

    rem-int/2addr v10, v7

    aget v10, v4, v10

    iget-boolean v11, v0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v11, :cond_c

    const/4 v11, 0x7

    shl-long/2addr v5, v11

    shr-int/lit8 v8, v10, 0x1

    and-int/lit8 v8, v8, 0x7f

    :goto_a
    int-to-long v12, v8

    add-long/2addr v5, v12

    goto :goto_b

    :cond_c
    const/4 v11, 0x7

    shl-long/2addr v5, v8

    shr-int/lit8 v8, v10, 0x2

    and-int/lit16 v8, v8, 0x3e0

    shr-int/lit8 v10, v10, 0x1

    and-int/lit8 v10, v10, 0x1f

    add-int/2addr v8, v10

    goto :goto_a

    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_d
    const/4 v11, 0x7

    iget-boolean v3, v0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v3, :cond_e

    move v8, v11

    const/4 v3, 0x2

    goto :goto_c

    :cond_e
    move v3, v7

    :goto_c
    sub-int v4, v8, v3

    new-array v10, v8, [I

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    :goto_d
    if-ltz v8, :cond_f

    long-to-int v11, v5

    const/16 v12, 0xf

    and-int/2addr v11, v12

    aput v11, v10, v8

    shr-long/2addr v5, v7

    add-int/lit8 v8, v8, -0x1

    goto :goto_d

    :cond_f
    :try_start_2
    new-instance v5, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v6, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v5, v6}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {v5, v4, v10}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decodeWithECCount(I[I)I

    move-result v17
    :try_end_2
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_2 .. :try_end_2} :catch_2

    move v4, v9

    :goto_e
    if-ge v9, v3, :cond_10

    shl-int/lit8 v4, v4, 0x4

    aget v5, v10, v9

    add-int/2addr v4, v5

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_10
    iget-boolean v3, v0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v3, :cond_11

    shr-int/lit8 v3, v4, 0x6

    const/4 v6, 0x1

    add-int/2addr v3, v6

    iput v3, v0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    and-int/lit8 v3, v4, 0x3f

    add-int/2addr v3, v6

    iput v3, v0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    goto :goto_f

    :cond_11
    const/4 v6, 0x1

    shr-int/lit8 v3, v4, 0xb

    add-int/2addr v3, v6

    iput v3, v0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    and-int/lit16 v3, v4, 0x7ff

    add-int/2addr v3, v6

    iput v3, v0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    :goto_f
    iget v3, v0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    rem-int/lit8 v4, v3, 0x4

    aget-object v4, v2, v4

    add-int/lit8 v5, v3, 0x1

    rem-int/2addr v5, v7

    aget-object v5, v2, v5

    add-int/lit8 v6, v3, 0x2

    rem-int/2addr v6, v7

    aget-object v6, v2, v6

    const/4 v8, 0x3

    add-int/2addr v3, v8

    rem-int/2addr v3, v7

    aget-object v3, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/aztec/detector/Detector;->getDimension()I

    move-result v7

    int-to-float v8, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget v9, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    int-to-float v9, v9

    sub-float v26, v8, v9

    add-float v27, v8, v9

    iget v8, v4, Lcom/google/zxing/ResultPoint;->x:F

    iget v9, v5, Lcom/google/zxing/ResultPoint;->x:F

    iget v10, v6, Lcom/google/zxing/ResultPoint;->x:F

    iget v11, v3, Lcom/google/zxing/ResultPoint;->x:F

    iget v4, v4, Lcom/google/zxing/ResultPoint;->y:F

    iget v5, v5, Lcom/google/zxing/ResultPoint;->y:F

    iget v6, v6, Lcom/google/zxing/ResultPoint;->y:F

    iget v3, v3, Lcom/google/zxing/ResultPoint;->y:F

    move/from16 v20, v26

    move/from16 v21, v26

    move/from16 v22, v27

    move/from16 v23, v26

    move/from16 v24, v27

    move/from16 v25, v27

    move/from16 v28, v8

    move/from16 v29, v4

    move/from16 v30, v9

    move/from16 v31, v5

    move/from16 v32, v10

    move/from16 v33, v6

    move/from16 v34, v11

    move/from16 v35, v3

    invoke-static/range {v20 .. v35}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v3

    invoke-static {v1, v7, v7, v3}, Lcom/google/zxing/common/DefaultGridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v12

    iget v1, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    const/4 v10, 0x2

    mul-int/2addr v1, v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/aztec/detector/Detector;->getDimension()I

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/google/zxing/aztec/detector/Detector;->expandSquare([Lcom/google/zxing/ResultPoint;II)[Lcom/google/zxing/ResultPoint;

    move-result-object v13

    new-instance v1, Lcom/google/zxing/aztec/AztecDetectorResult;

    iget-boolean v14, v0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    iget v15, v0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    move-object v11, v1

    move/from16 v16, v0

    invoke-direct/range {v11 .. v17}, Lcom/google/zxing/aztec/AztecDetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;ZIII)V

    return-object v1

    :catch_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_12
    move v10, v8

    const/4 v6, 0x1

    const/4 v8, 0x3

    const/4 v11, 0x7

    const/16 v12, 0xf

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    :cond_13
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_14
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public final getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I
    .locals 10

    iget v0, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    iget p1, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    iget v1, p2, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    iget p2, p2, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    invoke-static {v0, p1, v1, p2}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    :cond_0
    sub-int/2addr v1, v0

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-int/2addr p2, p1

    int-to-float p2, p2

    div-float/2addr p2, v2

    int-to-float v3, v0

    int-to-float v5, p1

    iget-object p0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p0, v0, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p1

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    move v6, v4

    move v7, v6

    :goto_0
    if-ge v6, v0, :cond_2

    invoke-static {v3}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v8

    invoke-static {v5}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eq v8, p1, :cond_1

    add-int/lit8 v7, v7, 0x1

    :cond_1
    add-float/2addr v3, v1

    add-float/2addr v5, p2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    int-to-float p0, v7

    div-float/2addr p0, v2

    const p2, 0x3dcccccd    # 0.1f

    cmpl-float v0, p0, p2

    if-lez v0, :cond_3

    const v0, 0x3f666666    # 0.9f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_3

    return v4

    :cond_3
    cmpg-float p0, p0, p2

    const/4 p2, 0x1

    if-gtz p0, :cond_4

    move v4, p2

    :cond_4
    if-ne v4, p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 p2, -0x1

    :goto_1
    return p2
.end method

.method public final getDimension()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, 0xb

    return p0

    :cond_0
    iget p0, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/lit8 v0, p0, 0x4

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x6

    div-int/lit8 p0, p0, 0xf

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public final getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 3

    iget v0, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    add-int/2addr v0, p3

    iget p1, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    :goto_0
    add-int/2addr p1, p4

    invoke-virtual {p0, v0, p1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v1

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-ne v1, p2, :cond_0

    add-int/2addr v0, p3

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p3

    sub-int/2addr p1, p4

    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-ne v1, p2, :cond_1

    add-int/2addr v0, p3

    goto :goto_1

    :cond_1
    sub-int/2addr v0, p3

    :goto_2
    invoke-virtual {p0, v0, p1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {v2, v0, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p3

    if-ne p3, p2, :cond_2

    add-int/2addr p1, p4

    goto :goto_2

    :cond_2
    sub-int/2addr p1, p4

    new-instance p0, Lcom/google/zxing/aztec/detector/Detector$Point;

    invoke-direct {p0, v0, p1}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    return-object p0
.end method

.method public final isValid(II)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget p0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isValid(Lcom/google/zxing/ResultPoint;)Z
    .locals 1

    iget v0, p1, Lcom/google/zxing/ResultPoint;->x:F

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    iget p1, p1, Lcom/google/zxing/ResultPoint;->y:F

    invoke-static {p1}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result p0

    return p0
.end method

.method public final sampleLine(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)I
    .locals 7

    iget v0, p1, Lcom/google/zxing/ResultPoint;->x:F

    iget v1, p2, Lcom/google/zxing/ResultPoint;->x:F

    iget v2, p1, Lcom/google/zxing/ResultPoint;->y:F

    iget v3, p2, Lcom/google/zxing/ResultPoint;->y:F

    invoke-static {v0, v2, v1, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    int-to-float v1, p3

    div-float v1, v0, v1

    iget p2, p2, Lcom/google/zxing/ResultPoint;->x:F

    iget p1, p1, Lcom/google/zxing/ResultPoint;->x:F

    sub-float/2addr p2, p1

    mul-float/2addr p2, v1

    div-float/2addr p2, v0

    sub-float/2addr v3, v2

    mul-float/2addr v3, v1

    div-float/2addr v3, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p3, :cond_1

    int-to-float v4, v0

    mul-float v5, v4, p2

    add-float/2addr v5, p1

    invoke-static {v5}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v5

    mul-float/2addr v4, v3

    add-float/2addr v4, v2

    invoke-static {v4}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v4

    iget-object v6, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v6, v5, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_0

    sub-int v4, p3, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    shl-int v4, v5, v4

    or-int/2addr v1, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
