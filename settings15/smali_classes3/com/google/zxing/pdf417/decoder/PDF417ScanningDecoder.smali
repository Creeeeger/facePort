.class public abstract Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;-><init>()V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    return-void
.end method

.method public static adjustBoundingBox(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    iget-boolean v7, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft:Z

    iget-object v8, v0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->boundingBox:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    if-nez v2, :cond_1

    move-object v0, v1

    goto/16 :goto_6

    :cond_1
    if-eqz v7, :cond_2

    iget-object v9, v8, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    goto :goto_0

    :cond_2
    iget-object v9, v8, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    :goto_0
    if-eqz v7, :cond_3

    iget-object v10, v8, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    goto :goto_1

    :cond_3
    iget-object v10, v8, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    :goto_1
    iget v9, v9, Lcom/google/zxing/ResultPoint;->y:F

    float-to-int v9, v9

    invoke-virtual {v0, v9}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I

    move-result v9

    iget v10, v10, Lcom/google/zxing/ResultPoint;->y:F

    float-to-int v10, v10

    invoke-virtual {v0, v10}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I

    move-result v0

    move v11, v4

    move v12, v5

    const/4 v10, -0x1

    :goto_2
    iget v13, v2, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->rowCount:I

    if-ge v9, v0, :cond_8

    aget-object v14, v6, v9

    if-nez v14, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v14}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumberAsRowIndicatorColumn()V

    iget v15, v14, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    sub-int v3, v15, v10

    if-nez v3, :cond_5

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_5
    if-ne v3, v5, :cond_6

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget v10, v14, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    move v11, v5

    goto :goto_3

    :cond_6
    if-lt v15, v13, :cond_7

    aput-object v1, v6, v9

    goto :goto_3

    :cond_7
    move v11, v5

    move v10, v15

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_8
    new-array v0, v13, [I

    array-length v2, v6

    move v3, v4

    :goto_4
    if-ge v3, v2, :cond_b

    aget-object v9, v6, v3

    if-eqz v9, :cond_a

    iget v9, v9, Lcom/google/zxing/pdf417/decoder/Codeword;->rowNumber:I

    if-lt v9, v13, :cond_9

    goto :goto_5

    :cond_9
    aget v10, v0, v9

    add-int/2addr v10, v5

    aput v10, v0, v9

    :cond_a
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    :goto_6
    if-nez v0, :cond_c

    return-object v1

    :cond_c
    array-length v1, v0

    move v2, v4

    const/4 v3, -0x1

    :goto_7
    if-ge v2, v1, :cond_d

    aget v9, v0, v2

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_d
    array-length v1, v0

    move v2, v4

    move v9, v2

    :goto_8
    if-ge v2, v1, :cond_f

    aget v10, v0, v2

    sub-int v11, v3, v10

    add-int/2addr v9, v11

    if-lez v10, :cond_e

    goto :goto_9

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_f
    :goto_9
    move v1, v4

    :goto_a
    if-lez v9, :cond_10

    aget-object v2, v6, v1

    if-nez v2, :cond_10

    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_10
    array-length v1, v0

    sub-int/2addr v1, v5

    move v2, v4

    :goto_b
    if-ltz v1, :cond_12

    aget v10, v0, v1

    sub-int v11, v3, v10

    add-int/2addr v2, v11

    if-lez v10, :cond_11

    goto :goto_c

    :cond_11
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_12
    :goto_c
    array-length v0, v6

    sub-int/2addr v0, v5

    :goto_d
    if-lez v2, :cond_13

    aget-object v1, v6, v0

    if-nez v1, :cond_13

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_13
    iget-object v0, v8, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    iget-object v1, v8, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    if-lez v9, :cond_17

    if-eqz v7, :cond_14

    move-object v3, v0

    goto :goto_e

    :cond_14
    move-object v3, v1

    :goto_e
    iget v6, v3, Lcom/google/zxing/ResultPoint;->y:F

    float-to-int v6, v6

    sub-int/2addr v6, v9

    if-gez v6, :cond_15

    goto :goto_f

    :cond_15
    move v4, v6

    :goto_f
    new-instance v6, Lcom/google/zxing/ResultPoint;

    int-to-float v4, v4

    iget v3, v3, Lcom/google/zxing/ResultPoint;->x:F

    invoke-direct {v6, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    if-eqz v7, :cond_16

    move-object v13, v1

    move-object v11, v6

    goto :goto_10

    :cond_16
    move-object v11, v0

    move-object v13, v6

    goto :goto_10

    :cond_17
    move-object v11, v0

    move-object v13, v1

    :goto_10
    iget-object v0, v8, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    iget-object v1, v8, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    if-lez v2, :cond_1b

    if-eqz v7, :cond_18

    move-object v3, v0

    goto :goto_11

    :cond_18
    move-object v3, v1

    :goto_11
    iget v4, v3, Lcom/google/zxing/ResultPoint;->y:F

    float-to-int v4, v4

    add-int/2addr v4, v2

    iget-object v2, v8, Lcom/google/zxing/pdf417/decoder/BoundingBox;->image:Lcom/google/zxing/common/BitMatrix;

    iget v2, v2, Lcom/google/zxing/common/BitMatrix;->height:I

    if-lt v4, v2, :cond_19

    add-int/lit8 v4, v2, -0x1

    :cond_19
    new-instance v2, Lcom/google/zxing/ResultPoint;

    int-to-float v4, v4

    iget v3, v3, Lcom/google/zxing/ResultPoint;->x:F

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    if-eqz v7, :cond_1a

    move-object v14, v1

    move-object v12, v2

    goto :goto_12

    :cond_1a
    move-object v12, v0

    move-object v14, v2

    goto :goto_12

    :cond_1b
    move-object v12, v0

    move-object v14, v1

    :goto_12
    new-instance v0, Lcom/google/zxing/pdf417/decoder/BoundingBox;

    iget-object v10, v8, Lcom/google/zxing/pdf417/decoder/BoundingBox;->image:Lcom/google/zxing/common/BitMatrix;

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/google/zxing/pdf417/decoder/BoundingBox;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    return-object v0
.end method

.method public static decodeCodewords([II[I)Lcom/google/zxing/common/DecoderResult;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    array-length v6, v0

    if-eqz v6, :cond_4a

    add-int/lit8 v6, p1, 0x1

    shl-int v6, v5, v6

    array-length v7, v1

    div-int/lit8 v8, v6, 0x2

    add-int/lit8 v8, v8, 0x3

    if-gt v7, v8, :cond_49

    if-ltz v6, :cond_49

    const/16 v7, 0x200

    if-gt v6, v7, :cond_49

    sget-object v7, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v8, v0

    if-eqz v8, :cond_48

    array-length v8, v0

    const/4 v9, 0x0

    if-le v8, v5, :cond_2

    aget v10, v0, v9

    if-nez v10, :cond_2

    move v10, v5

    :goto_0
    if-ge v10, v8, :cond_0

    aget v11, v0, v10

    if-nez v11, :cond_0

    add-int/2addr v10, v5

    goto :goto_0

    :cond_0
    if-ne v10, v8, :cond_1

    filled-new-array {v9}, [I

    move-result-object v8

    goto :goto_1

    :cond_1
    sub-int/2addr v8, v10

    new-array v11, v8, [I

    invoke-static {v0, v10, v11, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v11

    goto :goto_1

    :cond_2
    move-object v8, v0

    :goto_1
    new-array v10, v6, [I

    move v11, v6

    move v12, v9

    :goto_2
    iget-object v13, v7, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    if-lez v11, :cond_8

    iget-object v14, v13, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->expTable:[I

    aget v14, v14, v11

    if-nez v14, :cond_3

    array-length v13, v8

    sub-int/2addr v13, v5

    aget v13, v8, v13

    goto :goto_5

    :cond_3
    if-ne v14, v5, :cond_5

    array-length v14, v8

    move v2, v9

    move v15, v2

    :goto_3
    if-ge v2, v14, :cond_4

    aget v4, v8, v2

    invoke-virtual {v13, v15, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v15

    add-int/2addr v2, v5

    const/4 v4, 0x2

    goto :goto_3

    :cond_4
    move v13, v15

    goto :goto_5

    :cond_5
    aget v2, v8, v9

    array-length v4, v8

    move v15, v5

    :goto_4
    if-ge v15, v4, :cond_6

    invoke-virtual {v13, v14, v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v2

    aget v9, v8, v15

    invoke-virtual {v13, v2, v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v2

    add-int/2addr v15, v5

    const/4 v9, 0x0

    goto :goto_4

    :cond_6
    move v13, v2

    :goto_5
    sub-int v2, v6, v11

    aput v13, v10, v2

    if-eqz v13, :cond_7

    move v12, v5

    :cond_7
    add-int/2addr v11, v3

    const/4 v4, 0x2

    const/4 v9, 0x0

    goto :goto_2

    :cond_8
    if-nez v12, :cond_9

    const/4 v7, 0x0

    goto/16 :goto_19

    :cond_9
    iget-object v2, v13, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->one:Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    array-length v4, v1

    const/4 v7, 0x0

    :goto_6
    const/16 v8, 0x3a1

    if-ge v7, v4, :cond_a

    aget v9, v1, v7

    array-length v11, v0

    sub-int/2addr v11, v5

    sub-int/2addr v11, v9

    iget-object v9, v13, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->expTable:[I

    aget v9, v9, v11

    new-instance v11, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    rsub-int v9, v9, 0x3a1

    rem-int/2addr v9, v8

    filled-new-array {v9, v5}, [I

    move-result-object v8

    invoke-direct {v11, v13, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    invoke-virtual {v2, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v2

    add-int/2addr v7, v5

    goto :goto_6

    :cond_a
    new-instance v2, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    invoke-direct {v2, v13, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    if-ltz v6, :cond_47

    add-int/lit8 v4, v6, 0x1

    new-array v4, v4, [I

    const/4 v7, 0x0

    aput v5, v4, v7

    new-instance v7, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    invoke-direct {v7, v13, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v9

    if-ge v4, v9, :cond_b

    goto :goto_7

    :cond_b
    move-object/from16 v23, v7

    move-object v7, v2

    move-object/from16 v2, v23

    :goto_7
    iget-object v4, v13, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->zero:Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    iget-object v9, v13, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->one:Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object v10, v4

    :goto_8
    move-object/from16 v23, v7

    move-object v7, v2

    move-object/from16 v2, v23

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v11

    const/4 v12, 0x2

    div-int/lit8 v14, v6, 0x2

    if-lt v11, v14, :cond_14

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v11

    if-nez v11, :cond_13

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v11

    invoke-virtual {v13, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v11

    move-object v12, v4

    :goto_9
    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v14

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v15

    if-lt v14, v15, :cond_11

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v14

    if-nez v14, :cond_11

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v14

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v15

    invoke-virtual {v7, v15}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v15

    invoke-virtual {v13, v15, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v15

    if-ltz v14, :cond_10

    if-nez v15, :cond_c

    move-object v8, v4

    goto :goto_a

    :cond_c
    add-int/lit8 v3, v14, 0x1

    new-array v3, v3, [I

    const/16 v17, 0x0

    aput v15, v3, v17

    new-instance v8, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    invoke-direct {v8, v13, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    :goto_a
    invoke-virtual {v12, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->add(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v12

    if-ltz v14, :cond_f

    iget-object v3, v2, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    if-nez v15, :cond_d

    iget-object v3, v3, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->zero:Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object/from16 v21, v4

    goto :goto_c

    :cond_d
    iget-object v8, v2, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v5, v8

    add-int/2addr v14, v5

    new-array v14, v14, [I

    move-object/from16 v21, v4

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v5, :cond_e

    move/from16 v22, v5

    aget v5, v8, v4

    invoke-virtual {v3, v5, v15}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v5

    aput v5, v14, v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    move/from16 v5, v22

    goto :goto_b

    :cond_e
    new-instance v4, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    invoke-direct {v4, v3, v14}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    move-object v3, v4

    :goto_c
    invoke-virtual {v7, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->subtract(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v7

    move-object/from16 v4, v21

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/16 v8, 0x3a1

    goto :goto_9

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_11
    move-object/from16 v21, v4

    invoke-virtual {v12, v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->subtract(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v3

    iget-object v4, v3, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v5, v4

    new-array v8, v5, [I

    const/4 v10, 0x0

    :goto_d
    iget-object v11, v3, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    if-ge v10, v5, :cond_12

    aget v12, v4, v10

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v11, 0x3a1

    rsub-int v12, v12, 0x3a1

    rem-int/2addr v12, v11

    aput v12, v8, v10

    const/4 v11, 0x1

    add-int/2addr v10, v11

    goto :goto_d

    :cond_12
    new-instance v3, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    invoke-direct {v3, v11, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    move-object v10, v9

    move-object/from16 v4, v21

    const/4 v5, 0x1

    const/16 v8, 0x3a1

    move-object v9, v3

    const/4 v3, -0x1

    goto/16 :goto_8

    :cond_13
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_14
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v4

    if-eqz v4, :cond_46

    invoke-virtual {v13, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v4

    invoke-virtual {v9, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(I)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v5

    invoke-virtual {v2, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(I)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v2

    filled-new-array {v5, v2}, [Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v2

    aget-object v4, v2, v3

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v5

    new-array v7, v5, [I

    move v9, v3

    const/4 v8, 0x0

    :goto_e
    const/16 v10, 0x3a1

    if-ge v9, v10, :cond_16

    if-ge v8, v5, :cond_16

    invoke-virtual {v4, v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v10

    if-nez v10, :cond_15

    invoke-virtual {v13, v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v10

    aput v10, v7, v8

    add-int/2addr v8, v3

    :cond_15
    add-int/2addr v9, v3

    goto :goto_e

    :cond_16
    if-ne v8, v5, :cond_45

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v8

    if-ge v8, v3, :cond_17

    const/4 v9, 0x0

    new-array v2, v9, [I

    move v11, v3

    goto/16 :goto_17

    :cond_17
    new-array v9, v8, [I

    move v10, v3

    :goto_f
    if-gt v10, v8, :cond_18

    sub-int v11, v8, v10

    invoke-virtual {v4, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v12

    invoke-virtual {v13, v10, v12}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v12

    aput v12, v9, v11

    add-int/2addr v10, v3

    goto :goto_f

    :cond_18
    if-eqz v8, :cond_44

    if-le v8, v3, :cond_1b

    const/4 v4, 0x0

    aget v10, v9, v4

    if-nez v10, :cond_1b

    move v10, v3

    :goto_10
    if-ge v10, v8, :cond_19

    aget v11, v9, v10

    if-nez v11, :cond_19

    add-int/2addr v10, v3

    goto :goto_10

    :cond_19
    if-ne v10, v8, :cond_1a

    filled-new-array {v4}, [I

    move-result-object v3

    :goto_11
    move-object v9, v3

    goto :goto_12

    :cond_1a
    sub-int/2addr v8, v10

    new-array v3, v8, [I

    invoke-static {v9, v10, v3, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_11

    :cond_1b
    :goto_12
    new-array v3, v5, [I

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v5, :cond_1f

    aget v8, v7, v4

    invoke-virtual {v13, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v10

    const/16 v11, 0x3a1

    rsub-int v10, v10, 0x3a1

    rem-int/2addr v10, v11

    if-nez v8, :cond_1c

    array-length v8, v9

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    aget v8, v9, v8

    move-object/from16 v20, v2

    goto :goto_16

    :cond_1c
    const/4 v11, 0x1

    if-ne v8, v11, :cond_1e

    array-length v8, v9

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_14
    if-ge v12, v8, :cond_1d

    aget v15, v9, v12

    invoke-virtual {v13, v14, v15}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v14

    add-int/2addr v12, v11

    goto :goto_14

    :cond_1d
    move-object/from16 v20, v2

    move v8, v14

    goto :goto_16

    :cond_1e
    const/4 v12, 0x0

    aget v14, v9, v12

    array-length v12, v9

    move v15, v11

    :goto_15
    if-ge v15, v12, :cond_1d

    invoke-virtual {v13, v8, v14}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v14

    move-object/from16 v20, v2

    aget v2, v9, v15

    invoke-virtual {v13, v14, v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v14

    add-int/2addr v15, v11

    move-object/from16 v2, v20

    goto :goto_15

    :goto_16
    invoke-virtual {v13, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v2

    invoke-virtual {v13, v10, v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v2

    aput v2, v3, v4

    add-int/2addr v4, v11

    move-object/from16 v2, v20

    goto :goto_13

    :cond_1f
    const/4 v11, 0x1

    move-object v2, v3

    :goto_17
    const/4 v3, 0x0

    :goto_18
    if-ge v3, v5, :cond_22

    array-length v4, v0

    sub-int/2addr v4, v11

    aget v8, v7, v3

    if-eqz v8, :cond_21

    iget-object v9, v13, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->logTable:[I

    aget v8, v9, v8

    sub-int/2addr v4, v8

    if-ltz v4, :cond_20

    aget v8, v0, v4

    aget v9, v2, v3

    const/16 v10, 0x3a1

    add-int/2addr v8, v10

    sub-int/2addr v8, v9

    rem-int/2addr v8, v10

    aput v8, v0, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    move v11, v4

    goto :goto_18

    :cond_20
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_22
    move v7, v5

    :goto_19
    array-length v2, v0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_43

    const/4 v2, 0x0

    aget v3, v0, v2

    array-length v4, v0

    if-gt v3, v4, :cond_42

    if-nez v3, :cond_24

    array-length v3, v0

    if-ge v6, v3, :cond_23

    array-length v3, v0

    sub-int/2addr v3, v6

    aput v3, v0, v2

    goto :goto_1a

    :cond_23
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_24
    :goto_1a
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    new-instance v3, Lcom/google/zxing/common/ECIStringBuilder;

    array-length v4, v0

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    invoke-direct {v3, v4}, Lcom/google/zxing/common/ECIStringBuilder;-><init>(I)V

    const/4 v4, 0x1

    invoke-static {v0, v4, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v5

    new-instance v6, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    const/4 v8, 0x0

    :goto_1b
    aget v9, v0, v8

    if-ge v5, v9, :cond_3e

    add-int/lit8 v8, v5, 0x1

    aget v4, v0, v5

    const/16 v10, 0x391

    if-eq v4, v10, :cond_3d

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    invoke-static {v0, v5, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v4

    :goto_1c
    move v5, v4

    move/from16 v19, v7

    :goto_1d
    const/4 v4, 0x2

    :goto_1e
    const/4 v7, 0x0

    const/4 v15, 0x5

    const/16 v16, 0x1

    goto/16 :goto_34

    :pswitch_0
    add-int/lit8 v5, v5, 0x3

    if-gt v5, v9, :cond_2f

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v9, 0x0

    :goto_1f
    if-ge v9, v4, :cond_25

    aget v10, v0, v8

    aput v10, v5, v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    add-int/2addr v8, v10

    goto :goto_1f

    :cond_25
    invoke-static {v4, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10(I[I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_26

    goto :goto_20

    :cond_26
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_21
    const/4 v5, 0x0

    aget v9, v0, v5

    const/16 v5, 0x39a

    const/16 v10, 0x39b

    if-ge v8, v9, :cond_27

    array-length v9, v0

    if-ge v8, v9, :cond_27

    aget v9, v0, v8

    if-eq v9, v5, :cond_27

    if-eq v9, v10, :cond_27

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v9, "%03d"

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    add-int/2addr v8, v5

    goto :goto_21

    :cond_27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_2e

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->fileId:Ljava/lang/String;

    aget v4, v0, v8

    if-ne v4, v10, :cond_28

    const/4 v4, 0x1

    add-int/lit8 v9, v8, 0x1

    :goto_22
    const/4 v11, 0x0

    goto :goto_23

    :cond_28
    const/4 v4, 0x1

    const/4 v9, -0x1

    goto :goto_22

    :goto_23
    aget v12, v0, v11

    if-ge v8, v12, :cond_2b

    aget v11, v0, v8

    if-eq v11, v5, :cond_2a

    if-ne v11, v10, :cond_29

    add-int/lit8 v11, v8, 0x1

    aget v4, v0, v11

    packed-switch v4, :pswitch_data_2

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_1
    new-instance v4, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v4}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    const/4 v11, 0x2

    add-int/2addr v8, v11

    invoke-static {v0, v8, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v8

    :try_start_1
    invoke-virtual {v4}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_24
    const/4 v4, 0x1

    goto :goto_22

    :catch_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_2
    new-instance v4, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v4}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    const/4 v11, 0x2

    add-int/2addr v8, v11

    invoke-static {v0, v8, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v8

    :try_start_2
    invoke-virtual {v4}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_24

    :catch_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_3
    new-instance v4, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v4}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    const/4 v11, 0x2

    add-int/2addr v8, v11

    invoke-static {v0, v8, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v8

    invoke-virtual {v4}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    goto :goto_24

    :pswitch_4
    const/4 v11, 0x2

    new-instance v4, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v4}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    add-int/2addr v8, v11

    invoke-static {v0, v8, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v8

    invoke-virtual {v4}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    goto :goto_24

    :pswitch_5
    const/4 v11, 0x2

    new-instance v4, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v4}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    add-int/2addr v8, v11

    invoke-static {v0, v8, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v8

    :try_start_3
    invoke-virtual {v4}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_24

    :catch_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_6
    new-instance v4, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v4}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    const/4 v11, 0x2

    add-int/2addr v8, v11

    invoke-static {v0, v8, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v8

    :try_start_4
    invoke-virtual {v4}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_24

    :catch_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_7
    new-instance v4, Lcom/google/zxing/common/ECIStringBuilder;

    invoke-direct {v4}, Lcom/google/zxing/common/ECIStringBuilder;-><init>()V

    const/4 v11, 0x2

    add-int/2addr v8, v11

    invoke-static {v0, v8, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v8

    invoke-virtual {v4}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    goto :goto_24

    :cond_29
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_2a
    add-int/2addr v8, v4

    iput-boolean v4, v6, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->lastSegment:Z

    goto/16 :goto_24

    :cond_2b
    const/4 v11, -0x1

    if-eq v9, v11, :cond_2d

    sub-int v4, v8, v9

    iget-boolean v5, v6, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->lastSegment:Z

    if-eqz v5, :cond_2c

    add-int/2addr v4, v11

    :cond_2c
    if-lez v4, :cond_2d

    add-int/2addr v4, v9

    invoke-static {v0, v9, v4}, Ljava/util/Arrays;->copyOfRange([III)[I

    :cond_2d
    move/from16 v19, v7

    move v5, v8

    goto/16 :goto_1d

    :cond_2e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :catch_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_2f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_8
    const/4 v4, 0x2

    const/4 v11, -0x1

    add-int/2addr v5, v4

    aget v8, v0, v8

    invoke-virtual {v3, v8}, Lcom/google/zxing/common/ECIStringBuilder;->appendECI(I)V

    :goto_25
    move/from16 v19, v7

    goto/16 :goto_1e

    :pswitch_9
    const/4 v4, 0x2

    const/4 v11, -0x1

    add-int/lit8 v5, v5, 0x3

    goto :goto_25

    :pswitch_a
    const/4 v4, 0x2

    const/4 v11, -0x1

    add-int/2addr v5, v4

    goto :goto_25

    :pswitch_b
    const/4 v11, -0x1

    goto :goto_26

    :pswitch_c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_d
    const/4 v11, -0x1

    invoke-static {v0, v8, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v4

    goto/16 :goto_1c

    :goto_26
    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_27
    aget v10, v0, v9

    if-ge v8, v10, :cond_3c

    if-nez v5, :cond_3c

    :goto_28
    aget v10, v0, v9

    const/16 v9, 0x39f

    if-ge v8, v10, :cond_30

    aget v12, v0, v8

    if-ne v12, v9, :cond_30

    const/4 v12, 0x1

    add-int/lit8 v9, v8, 0x1

    aget v9, v0, v9

    invoke-virtual {v3, v9}, Lcom/google/zxing/common/ECIStringBuilder;->appendECI(I)V

    const/4 v9, 0x2

    add-int/2addr v8, v9

    const/4 v9, 0x0

    goto :goto_28

    :cond_30
    if-ge v8, v10, :cond_31

    aget v10, v0, v8

    const/16 v12, 0x384

    if-lt v10, v12, :cond_32

    :cond_31
    move/from16 v19, v7

    const/4 v7, 0x0

    const/4 v15, 0x5

    const/16 v16, 0x1

    goto/16 :goto_32

    :cond_32
    const-wide/16 v13, 0x0

    const/4 v10, 0x0

    :goto_29
    const-wide/16 v18, 0x384

    mul-long v13, v13, v18

    const/4 v15, 0x1

    add-int/lit8 v11, v8, 0x1

    aget v8, v0, v8

    move/from16 v19, v7

    int-to-long v7, v8

    add-long/2addr v13, v7

    add-int/2addr v10, v15

    const/4 v7, 0x5

    if-ge v10, v7, :cond_34

    const/4 v8, 0x0

    aget v15, v0, v8

    if-ge v11, v15, :cond_34

    aget v8, v0, v11

    if-lt v8, v12, :cond_33

    goto :goto_2a

    :cond_33
    move v8, v11

    move/from16 v7, v19

    const/4 v11, -0x1

    goto :goto_29

    :cond_34
    :goto_2a
    if-ne v10, v7, :cond_38

    const/16 v7, 0x39c

    if-eq v4, v7, :cond_36

    const/4 v7, 0x0

    aget v8, v0, v7

    if-ge v11, v8, :cond_35

    aget v7, v0, v11

    if-ge v7, v12, :cond_35

    goto :goto_2c

    :cond_35
    const/4 v15, 0x5

    :goto_2b
    const/16 v16, 0x1

    goto :goto_2e

    :cond_36
    :goto_2c
    const/4 v7, 0x0

    :goto_2d
    const/4 v8, 0x6

    const/4 v15, 0x5

    if-ge v7, v8, :cond_37

    rsub-int/lit8 v8, v7, 0x5

    mul-int/lit8 v8, v8, 0x8

    shr-long v8, v13, v8

    long-to-int v8, v8

    int-to-byte v8, v8

    iget-object v9, v3, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    and-int/lit16 v8, v8, 0xff

    int-to-char v8, v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v16, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    :cond_37
    const/16 v16, 0x1

    move v8, v11

    const/4 v7, 0x0

    goto :goto_30

    :cond_38
    move v15, v7

    goto :goto_2b

    :goto_2e
    sub-int/2addr v11, v10

    const/4 v7, 0x0

    :goto_2f
    aget v8, v0, v7

    if-ge v11, v8, :cond_3b

    if-nez v5, :cond_3b

    add-int/lit8 v8, v11, 0x1

    aget v10, v0, v11

    if-ge v10, v12, :cond_39

    int-to-byte v10, v10

    iget-object v11, v3, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    and-int/lit16 v10, v10, 0xff

    int-to-char v10, v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v11, v8

    goto :goto_2f

    :cond_39
    if-ne v10, v9, :cond_3a

    const/4 v10, 0x2

    add-int/2addr v11, v10

    aget v8, v0, v8

    invoke-virtual {v3, v8}, Lcom/google/zxing/common/ECIStringBuilder;->appendECI(I)V

    goto :goto_2f

    :cond_3a
    move/from16 v5, v16

    goto :goto_2f

    :cond_3b
    move v8, v11

    :goto_30
    move v9, v7

    :goto_31
    move/from16 v7, v19

    const/4 v11, -0x1

    goto/16 :goto_27

    :goto_32
    move v9, v7

    move/from16 v5, v16

    goto :goto_31

    :cond_3c
    move/from16 v19, v7

    move v7, v9

    const/4 v15, 0x5

    const/16 v16, 0x1

    move v5, v8

    :goto_33
    const/4 v4, 0x2

    goto :goto_34

    :pswitch_e
    move/from16 v19, v7

    const/4 v7, 0x0

    const/4 v15, 0x5

    const/16 v16, 0x1

    invoke-static {v0, v8, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I

    move-result v4

    move v5, v4

    goto :goto_33

    :cond_3d
    move/from16 v19, v7

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v15, 0x5

    const/16 v16, 0x1

    add-int/2addr v5, v4

    aget v8, v0, v8

    int-to-char v8, v8

    invoke-virtual {v3, v8}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    :goto_34
    move v8, v7

    move/from16 v4, v16

    move/from16 v7, v19

    goto/16 :goto_1b

    :cond_3e
    move/from16 v19, v7

    iget-object v0, v3, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, v3, Lcom/google/zxing/common/ECIStringBuilder;->result:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_41

    :cond_3f
    iget-object v0, v6, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->fileId:Ljava/lang/String;

    if-eqz v0, :cond_40

    goto :goto_35

    :cond_40
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_41
    :goto_35
    new-instance v0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v3}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/google/zxing/common/DecoderResult;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    iput-object v6, v0, Lcom/google/zxing/common/DecoderResult;->other:Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/zxing/common/DecoderResult;->errorsCorrected:Ljava/lang/Integer;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/zxing/common/DecoderResult;->erasures:Ljava/lang/Integer;

    return-object v0

    :cond_42
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_43
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_45
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_46
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_49
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_4a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_e
        :pswitch_b
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz p3, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    move/from16 v11, p3

    move/from16 v10, p4

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v4, :cond_4

    :goto_2
    if-eqz v11, :cond_1

    if-lt v10, v1, :cond_3

    goto :goto_3

    :cond_1
    if-ge v10, v2, :cond_3

    :goto_3
    invoke-virtual {v0, v10, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v12

    if-ne v11, v12, :cond_3

    sub-int v12, p4, v10

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-le v12, v4, :cond_2

    move/from16 v10, p4

    goto :goto_4

    :cond_2
    add-int/2addr v10, v7

    goto :goto_2

    :cond_3
    neg-int v7, v7

    xor-int/2addr v11, v6

    add-int/2addr v9, v6

    goto :goto_1

    :cond_4
    :goto_4
    const/16 v7, 0x8

    new-array v9, v7, [I

    if-eqz p3, :cond_5

    move v11, v6

    goto :goto_5

    :cond_5
    move v11, v5

    :goto_5
    move/from16 v14, p3

    move v12, v10

    const/4 v13, 0x0

    :goto_6
    if-eqz p3, :cond_6

    if-ge v12, v2, :cond_8

    goto :goto_7

    :cond_6
    if-lt v12, v1, :cond_8

    :goto_7
    if-ge v13, v7, :cond_8

    invoke-virtual {v0, v12, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v15

    if-ne v15, v14, :cond_7

    aget v15, v9, v13

    add-int/2addr v15, v6

    aput v15, v9, v13

    add-int/2addr v12, v11

    goto :goto_6

    :cond_7
    add-int/2addr v13, v6

    xor-int/2addr v14, v6

    goto :goto_6

    :cond_8
    const/4 v0, 0x7

    const/4 v3, 0x0

    if-eq v13, v7, :cond_b

    if-eqz p3, :cond_9

    move v1, v2

    :cond_9
    if-ne v12, v1, :cond_a

    if-ne v13, v0, :cond_a

    goto :goto_8

    :cond_a
    move-object v9, v3

    :cond_b
    :goto_8
    if-nez v9, :cond_c

    return-object v3

    :cond_c
    invoke-static {v9}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v1

    if-eqz p3, :cond_d

    add-int v2, v10, v1

    goto :goto_a

    :cond_d
    const/4 v2, 0x0

    :goto_9
    array-length v11, v9

    div-int/2addr v11, v4

    if-ge v2, v11, :cond_e

    aget v11, v9, v2

    array-length v12, v9

    sub-int/2addr v12, v6

    sub-int/2addr v12, v2

    aget v12, v9, v12

    aput v12, v9, v2

    array-length v12, v9

    sub-int/2addr v12, v6

    sub-int/2addr v12, v2

    aput v11, v9, v12

    add-int/2addr v2, v6

    goto :goto_9

    :cond_e
    sub-int v2, v10, v1

    move/from16 v19, v10

    move v10, v2

    move/from16 v2, v19

    :goto_a
    add-int/lit8 v11, p6, -0x2

    if-gt v11, v1, :cond_20

    add-int/lit8 v11, p7, 0x2

    if-gt v1, v11, :cond_20

    sget-object v1, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->RATIOS_TABLE:[[F

    invoke-static {v9}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v1

    int-to-float v1, v1

    new-array v11, v7, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_b
    const/16 v15, 0x11

    if-ge v12, v15, :cond_10

    const/high16 v15, 0x42080000    # 34.0f

    div-float v15, v1, v15

    int-to-float v0, v12

    mul-float/2addr v0, v1

    const/high16 v16, 0x41880000    # 17.0f

    div-float v0, v0, v16

    add-float/2addr v0, v15

    aget v15, v9, v14

    add-int/2addr v15, v13

    int-to-float v8, v15

    cmpg-float v0, v8, v0

    if-gtz v0, :cond_f

    add-int/2addr v14, v6

    move v13, v15

    :cond_f
    aget v0, v11, v14

    add-int/2addr v0, v6

    aput v0, v11, v14

    add-int/2addr v12, v6

    const/4 v0, 0x7

    goto :goto_b

    :cond_10
    const-wide/16 v0, 0x0

    const/4 v8, 0x0

    :goto_c
    if-ge v8, v7, :cond_13

    const/4 v12, 0x0

    :goto_d
    aget v13, v11, v8

    if-ge v12, v13, :cond_12

    shl-long/2addr v0, v6

    rem-int/lit8 v13, v8, 0x2

    if-nez v13, :cond_11

    move v13, v6

    goto :goto_e

    :cond_11
    const/4 v13, 0x0

    :goto_e
    int-to-long v13, v13

    or-long/2addr v0, v13

    add-int/2addr v12, v6

    goto :goto_d

    :cond_12
    add-int/2addr v8, v6

    goto :goto_c

    :cond_13
    long-to-int v0, v0

    sget-object v1, Lcom/google/zxing/pdf417/PDF417Common;->SYMBOL_TABLE:[I

    const v8, 0x3ffff

    and-int v11, v0, v8

    invoke-static {v1, v11}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    sget-object v12, Lcom/google/zxing/pdf417/PDF417Common;->CODEWORD_TABLE:[I

    if-gez v11, :cond_14

    move v11, v5

    goto :goto_f

    :cond_14
    aget v11, v12, v11

    sub-int/2addr v11, v6

    rem-int/lit16 v11, v11, 0x3a1

    :goto_f
    if-ne v11, v5, :cond_15

    move v0, v5

    :cond_15
    if-eq v0, v5, :cond_16

    goto :goto_14

    :cond_16
    invoke-static {v9}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v0

    new-array v11, v7, [F

    if-le v0, v6, :cond_17

    const/4 v13, 0x0

    :goto_10
    if-ge v13, v7, :cond_17

    aget v14, v9, v13

    int-to-float v14, v14

    int-to-float v15, v0

    div-float/2addr v14, v15

    aput v14, v11, v13

    add-int/2addr v13, v6

    goto :goto_10

    :cond_17
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    move v9, v0

    move v0, v5

    const/4 v13, 0x0

    :goto_11
    sget-object v14, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->RATIOS_TABLE:[[F

    array-length v15, v14

    if-ge v13, v15, :cond_1b

    aget-object v14, v14, v13

    const/4 v15, 0x0

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v7, :cond_19

    aget v17, v14, v4

    aget v18, v11, v4

    sub-float v17, v17, v18

    mul-float v17, v17, v17

    add-float v15, v17, v15

    cmpl-float v17, v15, v9

    if-ltz v17, :cond_18

    goto :goto_13

    :cond_18
    add-int/2addr v4, v6

    goto :goto_12

    :cond_19
    :goto_13
    cmpg-float v4, v15, v9

    if-gez v4, :cond_1a

    aget v0, v1, v13

    move v9, v15

    :cond_1a
    add-int/2addr v13, v6

    const/4 v4, 0x2

    goto :goto_11

    :cond_1b
    :goto_14
    and-int v4, v0, v8

    invoke-static {v1, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-gez v1, :cond_1c

    move v1, v5

    goto :goto_15

    :cond_1c
    aget v1, v12, v1

    sub-int/2addr v1, v6

    rem-int/lit16 v1, v1, 0x3a1

    :goto_15
    if-ne v1, v5, :cond_1d

    return-object v3

    :cond_1d
    new-instance v4, Lcom/google/zxing/pdf417/decoder/Codeword;

    new-array v7, v7, [I

    const/4 v3, 0x7

    const/4 v8, 0x0

    :goto_16
    and-int/lit8 v9, v0, 0x1

    if-eq v9, v8, :cond_1f

    add-int/2addr v3, v5

    const/4 v11, 0x0

    if-gez v3, :cond_1e

    aget v0, v7, v11

    const/4 v12, 0x2

    aget v3, v7, v12

    sub-int/2addr v0, v3

    const/4 v3, 0x4

    aget v3, v7, v3

    add-int/2addr v0, v3

    const/4 v3, 0x6

    aget v3, v7, v3

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x9

    invoke-direct {v4, v10, v2, v0, v1}, Lcom/google/zxing/pdf417/decoder/Codeword;-><init>(IIII)V

    return-object v4

    :cond_1e
    const/4 v12, 0x2

    move v8, v9

    goto :goto_17

    :cond_1f
    const/4 v11, 0x0

    const/4 v12, 0x2

    :goto_17
    aget v9, v7, v3

    add-int/2addr v9, v6

    aput v9, v7, v3

    shr-int/2addr v0, v6

    goto :goto_16

    :cond_20
    return-object v3
.end method

.method public static getRowIndicatorColumn(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v10, p3

    new-instance v11, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    invoke-direct {v11, v0, v10}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    const/4 v2, 0x0

    move v12, v2

    :goto_0
    const/4 v2, 0x2

    if-ge v12, v2, :cond_4

    if-nez v12, :cond_0

    const/4 v2, 0x1

    :goto_1
    move v13, v2

    goto :goto_2

    :cond_0
    const/4 v2, -0x1

    goto :goto_1

    :goto_2
    iget v2, v1, Lcom/google/zxing/ResultPoint;->x:F

    float-to-int v2, v2

    iget v3, v1, Lcom/google/zxing/ResultPoint;->y:F

    float-to-int v3, v3

    move v14, v2

    move v15, v3

    :goto_3
    iget v2, v0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxY:I

    if-gt v15, v2, :cond_3

    iget v2, v0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->minY:I

    if-lt v15, v2, :cond_3

    move-object/from16 v9, p0

    iget v4, v9, Lcom/google/zxing/common/BitMatrix;->width:I

    const/4 v3, 0x0

    move-object/from16 v2, p0

    move/from16 v5, p3

    move v6, v14

    move v7, v15

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v2 .. v9}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->detectCodeword(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v11, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/google/zxing/pdf417/decoder/Codeword;

    invoke-virtual {v11, v15}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I

    move-result v4

    aput-object v2, v3, v4

    if-eqz v10, :cond_1

    iget v2, v2, Lcom/google/zxing/pdf417/decoder/Codeword;->startX:I

    :goto_4
    move v14, v2

    goto :goto_5

    :cond_1
    iget v2, v2, Lcom/google/zxing/pdf417/decoder/Codeword;->endX:I

    goto :goto_4

    :cond_2
    :goto_5
    add-int/2addr v15, v13

    goto :goto_3

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_4
    return-object v11
.end method
