.class public final Lcom/google/zxing/qrcode/detector/Detector;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final image:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method


# virtual methods
.method public final calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 6

    iget v0, p1, Lcom/google/zxing/ResultPoint;->x:F

    float-to-int v0, v0

    iget v1, p1, Lcom/google/zxing/ResultPoint;->y:F

    float-to-int v2, v1

    iget v3, p2, Lcom/google/zxing/ResultPoint;->x:F

    float-to-int v3, v3

    iget v4, p2, Lcom/google/zxing/ResultPoint;->y:F

    float-to-int v5, v4

    invoke-virtual {p0, v0, v2, v3, v5}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRunBothWays(IIII)F

    move-result v0

    iget p2, p2, Lcom/google/zxing/ResultPoint;->x:F

    float-to-int p2, p2

    float-to-int v2, v4

    iget p1, p1, Lcom/google/zxing/ResultPoint;->x:F

    float-to-int p1, p1

    float-to-int v1, v1

    invoke-virtual {p0, p2, v2, p1, v1}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRunBothWays(IIII)F

    move-result p0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    const/high16 p2, 0x40e00000    # 7.0f

    if-eqz p1, :cond_0

    div-float/2addr p0, p2

    return p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_1

    div-float/2addr v0, p2

    return v0

    :cond_1
    add-float/2addr v0, p0

    const/high16 p0, 0x41600000    # 14.0f

    div-float/2addr v0, p0

    return v0
.end method

.method public final findAlignmentInRegion(IFFI)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .locals 10

    mul-float/2addr p3, p2

    float-to-int p3, p3

    sub-int v0, p1, p3

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget v2, v0, Lcom/google/zxing/common/BitMatrix;->width:I

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    add-int/2addr p1, p3

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int v6, p1, v4

    int-to-float p1, v6

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v2, p2

    cmpg-float p1, p1, v2

    if-ltz p1, :cond_c

    sub-int p1, p4, p3

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget p1, v0, Lcom/google/zxing/common/BitMatrix;->height:I

    sub-int/2addr p1, v9

    add-int/2addr p4, p3

    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int v7, p1, v5

    int-to-float p1, v7

    cmpg-float p1, p1, v2

    if-ltz p1, :cond_b

    new-instance p1, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;

    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object v2, p1

    move v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;IIIIF)V

    iget p0, p1, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->width:I

    iget p2, p1, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startX:I

    add-int/2addr p0, p2

    iget p3, p1, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->height:I

    div-int/lit8 p4, p3, 0x2

    iget v0, p1, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startY:I

    add-int/2addr p4, v0

    const/4 v0, 0x3

    new-array v0, v0, [I

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_9

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x2

    if-nez v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    div-int/2addr v3, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    div-int/2addr v3, v4

    neg-int v3, v3

    :goto_1
    add-int/2addr v3, p4

    aput v1, v0, v1

    aput v1, v0, v9

    aput v1, v0, v4

    move v5, p2

    :goto_2
    iget-object v6, p1, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    if-ge v5, p0, :cond_1

    invoke-virtual {v6, v5, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-nez v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    move v7, v1

    :goto_3
    if-ge v5, p0, :cond_7

    invoke-virtual {v6, v5, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_5

    if-ne v7, v9, :cond_2

    aget v8, v0, v9

    add-int/2addr v8, v9

    aput v8, v0, v9

    goto :goto_4

    :cond_2
    if-ne v7, v4, :cond_4

    invoke-virtual {p1, v0}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->foundPatternCross([I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1, v3, v5, v0}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->handlePossibleCenter(II[I)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v7

    if-eqz v7, :cond_3

    goto :goto_5

    :cond_3
    aget v7, v0, v4

    aput v7, v0, v1

    aput v9, v0, v9

    aput v1, v0, v4

    move v7, v9

    goto :goto_4

    :cond_4
    add-int/lit8 v7, v7, 0x1

    aget v8, v0, v7

    add-int/2addr v8, v9

    aput v8, v0, v7

    goto :goto_4

    :cond_5
    if-ne v7, v9, :cond_6

    add-int/lit8 v7, v7, 0x1

    :cond_6
    aget v8, v0, v7

    add-int/2addr v8, v9

    aput v8, v0, v7

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p1, v0}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->foundPatternCross([I)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p1, v3, p0, v0}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->handlePossibleCenter(II[I)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v7

    if-eqz v7, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    iget-object p0, p1, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    iget-object p0, p1, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    :goto_5
    return-object v7

    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method public final sizeOfBlackWhiteBlackRun(IIII)F
    .locals 17

    sub-int v0, p4, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, p3, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move/from16 v4, p1

    move/from16 v1, p2

    move/from16 v6, p3

    move/from16 v5, p4

    goto :goto_1

    :cond_1
    move/from16 v1, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    :goto_1
    sub-int v7, v5, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int v8, v6, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    neg-int v9, v7

    const/4 v10, 0x2

    div-int/2addr v9, v10

    const/4 v11, -0x1

    if-ge v1, v5, :cond_2

    move v12, v3

    goto :goto_2

    :cond_2
    move v12, v11

    :goto_2
    if-ge v4, v6, :cond_3

    move v11, v3

    :cond_3
    add-int/2addr v5, v12

    move v13, v1

    move v14, v4

    const/4 v15, 0x0

    :goto_3
    if-eq v13, v5, :cond_b

    if-eqz v0, :cond_4

    move v2, v14

    goto :goto_4

    :cond_4
    move v2, v13

    :goto_4
    if-eqz v0, :cond_5

    move v10, v13

    goto :goto_5

    :cond_5
    move v10, v14

    :goto_5
    if-ne v15, v3, :cond_6

    move/from16 v16, v0

    move v0, v3

    move/from16 p2, v5

    move-object/from16 v3, p0

    goto :goto_6

    :cond_6
    move-object/from16 v3, p0

    move/from16 v16, v0

    move/from16 p2, v5

    const/4 v0, 0x0

    :goto_6
    iget-object v5, v3, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5, v2, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v0, v2, :cond_8

    const/4 v0, 0x2

    if-ne v15, v0, :cond_7

    invoke-static {v13, v14, v1, v4}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v0

    return v0

    :cond_7
    add-int/lit8 v15, v15, 0x1

    :cond_8
    add-int/2addr v9, v8

    if-lez v9, :cond_a

    if-ne v14, v6, :cond_9

    const/4 v0, 0x2

    goto :goto_7

    :cond_9
    add-int/2addr v14, v11

    sub-int/2addr v9, v7

    :cond_a
    add-int/2addr v13, v12

    move/from16 v5, p2

    move/from16 v0, v16

    const/4 v3, 0x1

    const/4 v10, 0x2

    goto :goto_3

    :cond_b
    move/from16 p2, v5

    move v0, v10

    :goto_7
    if-ne v15, v0, :cond_c

    move/from16 v5, p2

    invoke-static {v5, v6, v1, v4}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v0

    return v0

    :cond_c
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public final sizeOfBlackWhiteBlackRunBothWays(IIII)F
    .locals 7

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRun(IIII)F

    move-result v0

    sub-int/2addr p3, p1

    sub-int p3, p1, p3

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez p3, :cond_0

    int-to-float v4, p1

    sub-int p3, p1, p3

    int-to-float p3, p3

    div-float/2addr v4, p3

    move p3, v2

    goto :goto_0

    :cond_0
    iget v4, v1, Lcom/google/zxing/common/BitMatrix;->width:I

    if-lt p3, v4, :cond_1

    add-int/lit8 v5, v4, -0x1

    sub-int/2addr v5, p1

    int-to-float v5, v5

    sub-int/2addr p3, p1

    int-to-float p3, p3

    div-float p3, v5, p3

    add-int/lit8 v4, v4, -0x1

    move v6, v4

    move v4, p3

    move p3, v6

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    int-to-float v5, p2

    sub-int/2addr p4, p2

    int-to-float p4, p4

    mul-float/2addr p4, v4

    sub-float p4, v5, p4

    float-to-int p4, p4

    if-gez p4, :cond_2

    sub-int p4, p2, p4

    int-to-float p4, p4

    div-float/2addr v5, p4

    goto :goto_1

    :cond_2
    iget v1, v1, Lcom/google/zxing/common/BitMatrix;->height:I

    if-lt p4, v1, :cond_3

    add-int/lit8 v2, v1, -0x1

    sub-int/2addr v2, p2

    int-to-float v2, v2

    sub-int/2addr p4, p2

    int-to-float p4, p4

    div-float v5, v2, p4

    add-int/lit8 v2, v1, -0x1

    goto :goto_1

    :cond_3
    move v2, p4

    move v5, v3

    :goto_1
    int-to-float p4, p1

    sub-int/2addr p3, p1

    int-to-float p3, p3

    mul-float/2addr p3, v5

    add-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRun(IIII)F

    move-result p0

    add-float/2addr p0, v0

    sub-float/2addr p0, v3

    return p0
.end method
