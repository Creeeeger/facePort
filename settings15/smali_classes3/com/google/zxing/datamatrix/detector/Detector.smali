.class public final Lcom/google/zxing/datamatrix/detector/Detector;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final image:Lcom/google/zxing/common/BitMatrix;

.field public final rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    new-instance v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/detector/Detector;->rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    return-void
.end method

.method public static moveAway(Lcom/google/zxing/ResultPoint;FF)Lcom/google/zxing/ResultPoint;
    .locals 2

    iget v0, p0, Lcom/google/zxing/ResultPoint;->x:F

    cmpg-float p1, v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez p1, :cond_0

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_0
    add-float/2addr v0, v1

    :goto_0
    iget p0, p0, Lcom/google/zxing/ResultPoint;->y:F

    cmpg-float p1, p0, p2

    if-gez p1, :cond_1

    sub-float/2addr p0, v1

    goto :goto_1

    :cond_1
    add-float/2addr p0, v1

    :goto_1
    new-instance p1, Lcom/google/zxing/ResultPoint;

    invoke-direct {p1, v0, p0}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object p1
.end method

.method public static shiftPoint(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;
    .locals 2

    iget v0, p1, Lcom/google/zxing/ResultPoint;->x:F

    iget v1, p0, Lcom/google/zxing/ResultPoint;->x:F

    sub-float/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    div-float/2addr v0, p2

    iget p1, p1, Lcom/google/zxing/ResultPoint;->y:F

    iget p0, p0, Lcom/google/zxing/ResultPoint;->y:F

    sub-float/2addr p1, p0

    div-float/2addr p1, p2

    new-instance p2, Lcom/google/zxing/ResultPoint;

    add-float/2addr v1, v0

    add-float/2addr p0, p1

    invoke-direct {p2, v1, p0}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object p2
.end method


# virtual methods
.method public final isValid(Lcom/google/zxing/ResultPoint;)Z
    .locals 4

    iget v0, p1, Lcom/google/zxing/ResultPoint;->x:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    iget-object p0, p0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    iget p1, p1, Lcom/google/zxing/ResultPoint;->y:F

    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    iget p0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    sub-int/2addr p0, v3

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public final transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget v2, v0, Lcom/google/zxing/ResultPoint;->x:F

    float-to-int v2, v2

    iget v0, v0, Lcom/google/zxing/ResultPoint;->y:F

    float-to-int v0, v0

    iget v3, v1, Lcom/google/zxing/ResultPoint;->x:F

    float-to-int v3, v3

    move-object/from16 v4, p0

    iget-object v4, v4, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    iget v5, v4, Lcom/google/zxing/common/BitMatrix;->height:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iget v1, v1, Lcom/google/zxing/ResultPoint;->y:F

    float-to-int v1, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int v5, v1, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int v7, v3, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v8, 0x0

    if-le v5, v7, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v8

    :goto_0
    if-eqz v5, :cond_1

    move v15, v2

    move v2, v0

    move v0, v15

    move/from16 v16, v3

    move v3, v1

    move/from16 v1, v16

    :cond_1
    sub-int v7, v3, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int v9, v1, v0

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    neg-int v10, v7

    div-int/lit8 v10, v10, 0x2

    const/4 v11, -0x1

    if-ge v0, v1, :cond_2

    move v12, v6

    goto :goto_1

    :cond_2
    move v12, v11

    :goto_1
    if-ge v2, v3, :cond_3

    goto :goto_2

    :cond_3
    move v6, v11

    :goto_2
    if-eqz v5, :cond_4

    move v11, v0

    goto :goto_3

    :cond_4
    move v11, v2

    :goto_3
    if-eqz v5, :cond_5

    move v13, v2

    goto :goto_4

    :cond_5
    move v13, v0

    :goto_4
    invoke-virtual {v4, v11, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    :goto_5
    if-eq v2, v3, :cond_b

    if-eqz v5, :cond_6

    move v13, v0

    goto :goto_6

    :cond_6
    move v13, v2

    :goto_6
    if-eqz v5, :cond_7

    move v14, v2

    goto :goto_7

    :cond_7
    move v14, v0

    :goto_7
    invoke-virtual {v4, v13, v14}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    if-eq v13, v11, :cond_8

    add-int/lit8 v8, v8, 0x1

    move v11, v13

    :cond_8
    add-int/2addr v10, v9

    if-lez v10, :cond_a

    if-ne v0, v1, :cond_9

    goto :goto_8

    :cond_9
    add-int/2addr v0, v12

    sub-int/2addr v10, v7

    :cond_a
    add-int/2addr v2, v6

    goto :goto_5

    :cond_b
    :goto_8
    return v8
.end method
