.class public abstract Lcom/google/zxing/oned/OneDReader;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public static patternMatchVariance([I[IF)F
    .locals 9

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_0

    aget v5, p0, v2

    add-int/2addr v3, v5

    aget v5, p1, v2

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v3, v4, :cond_1

    return v2

    :cond_1
    int-to-float v3, v3

    int-to-float v4, v4

    div-float v4, v3, v4

    mul-float/2addr p2, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    aget v6, p0, v1

    aget v7, p1, v1

    int-to-float v7, v7

    mul-float/2addr v7, v4

    int-to-float v6, v6

    cmpl-float v8, v6, v7

    if-lez v8, :cond_2

    sub-float/2addr v6, v7

    goto :goto_2

    :cond_2
    sub-float v6, v7, v6

    :goto_2
    cmpl-float v7, v6, p2

    if-lez v7, :cond_3

    return v2

    :cond_3
    add-float/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    div-float/2addr v5, v3

    return v5
.end method

.method public static recordPattern(ILcom/google/zxing/common/BitArray;[I)V
    .locals 6

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    iget v2, p1, Lcom/google/zxing/common/BitArray;->size:I

    if-ge p0, v2, :cond_5

    invoke-virtual {p1, p0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    :goto_0
    if-ge p0, v2, :cond_2

    invoke-virtual {p1, p0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eq v5, v3, :cond_0

    aget v5, p2, v1

    add-int/2addr v5, v4

    aput v5, p2, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_1

    goto :goto_2

    :cond_1
    aput v4, p2, v1

    xor-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-eq v1, v0, :cond_4

    sub-int/2addr v0, v4

    if-ne v1, v0, :cond_3

    if-ne p0, v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_4
    :goto_3
    return-void

    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method public static recordPatternInReverse(ILcom/google/zxing/common/BitArray;[I)V
    .locals 3

    array-length v0, p2

    invoke-virtual {p1, p0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    :cond_0
    :goto_0
    if-lez p0, :cond_1

    if-ltz v0, :cond_1

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eq v2, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    xor-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p1, p2}, Lcom/google/zxing/oned/OneDReader;->recordPattern(ILcom/google/zxing/common/BitArray;[I)V

    return-void

    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    if-eqz p2, :cond_2

    sget-object v1, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    move-object v2, p2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/common/HybridBinarizer;

    iget-object v1, v1, Lcom/google/zxing/common/HybridBinarizer;->source:Lcom/google/zxing/LuminanceSource;

    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->isRotateSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/common/HybridBinarizer;

    iget-object p1, p1, Lcom/google/zxing/common/HybridBinarizer;->source:Lcom/google/zxing/LuminanceSource;

    invoke-virtual {p1}, Lcom/google/zxing/LuminanceSource;->rotateCounterClockwise()Lcom/google/zxing/LuminanceSource;

    move-result-object p1

    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    new-instance v1, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v1, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v1}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/common/HybridBinarizer;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p0

    iget-object p2, p0, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Map;

    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    const/16 v1, 0x10e

    if-eqz p2, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p2, v1

    rem-int/lit16 v1, p2, 0x168

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    if-eqz p2, :cond_1

    iget p1, p1, Lcom/google/zxing/LuminanceSource;->height:I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    new-instance v1, Lcom/google/zxing/ResultPoint;

    int-to-float v2, p1

    aget-object v3, p2, v0

    iget v4, v3, Lcom/google/zxing/ResultPoint;->y:F

    sub-float/2addr v2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v2, v4

    iget v3, v3, Lcom/google/zxing/ResultPoint;->x:F

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    throw v0
.end method

.method public abstract decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
.end method

.method public final doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 18

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/common/HybridBinarizer;

    iget-object v1, v1, Lcom/google/zxing/common/HybridBinarizer;->source:Lcom/google/zxing/LuminanceSource;

    iget v2, v1, Lcom/google/zxing/LuminanceSource;->width:I

    iget v1, v1, Lcom/google/zxing/LuminanceSource;->height:I

    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3, v2}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    sget-object v6, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v7, p2

    check-cast v7, Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    if-eqz v6, :cond_1

    const/16 v7, 0x8

    goto :goto_1

    :cond_1
    const/4 v7, 0x5

    :goto_1
    shr-int v7, v1, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-eqz v6, :cond_2

    move v6, v1

    goto :goto_2

    :cond_2
    const/16 v6, 0xf

    :goto_2
    div-int/lit8 v8, v1, 0x2

    move-object v9, v3

    move v10, v5

    move-object/from16 v3, p2

    :goto_3
    if-ge v10, v6, :cond_7

    add-int/lit8 v11, v10, 0x1

    div-int/lit8 v12, v11, 0x2

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_3

    goto :goto_4

    :cond_3
    neg-int v12, v12

    :goto_4
    mul-int/2addr v12, v7

    add-int/2addr v12, v8

    if-ltz v12, :cond_7

    if-ge v12, v1, :cond_7

    :try_start_0
    invoke-virtual {v0, v12, v9}, Lcom/google/zxing/BinaryBitmap;->getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v9
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    move v10, v5

    :goto_5
    const/4 v13, 0x2

    if-ge v10, v13, :cond_6

    if-ne v10, v4, :cond_4

    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->reverse()V

    if-eqz v3, :cond_4

    sget-object v13, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    new-instance v14, Ljava/util/EnumMap;

    const-class v15, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v14, v15}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v14, v3}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v14, v13}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, p0

    move-object v3, v14

    goto :goto_6

    :cond_4
    move-object/from16 v13, p0

    :goto_6
    :try_start_1
    invoke-virtual {v13, v12, v9, v3}, Lcom/google/zxing/oned/OneDReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v14

    if-ne v10, v4, :cond_5

    sget-object v15, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v16, 0xb4

    :try_start_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v15, v4}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    iget-object v4, v14, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    if-eqz v4, :cond_5

    new-instance v15, Lcom/google/zxing/ResultPoint;
    :try_end_2
    .catch Lcom/google/zxing/ReaderException; {:try_start_2 .. :try_end_2} :catch_2

    int-to-float v0, v2

    move/from16 v16, v1

    :try_start_3
    aget-object v1, v4, v5

    iget v5, v1, Lcom/google/zxing/ResultPoint;->x:F

    sub-float v5, v0, v5

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v5, v5, v17

    iget v1, v1, Lcom/google/zxing/ResultPoint;->y:F

    invoke-direct {v15, v5, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v1, 0x0

    aput-object v15, v4, v1

    new-instance v5, Lcom/google/zxing/ResultPoint;
    :try_end_3
    .catch Lcom/google/zxing/ReaderException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v15, 0x1

    :try_start_4
    aget-object v1, v4, v15
    :try_end_4
    .catch Lcom/google/zxing/ReaderException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    iget v15, v1, Lcom/google/zxing/ResultPoint;->x:F

    sub-float/2addr v0, v15

    sub-float v0, v0, v17

    iget v1, v1, Lcom/google/zxing/ResultPoint;->y:F

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
    :try_end_5
    .catch Lcom/google/zxing/ReaderException; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v0, 0x1

    :try_start_6
    aput-object v5, v4, v0
    :try_end_6
    .catch Lcom/google/zxing/ReaderException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    :catch_0
    :goto_7
    const/4 v0, 0x1

    goto :goto_9

    :catch_1
    move v0, v15

    goto :goto_9

    :catch_2
    move/from16 v16, v1

    goto :goto_7

    :catch_3
    move/from16 v16, v1

    move v0, v4

    goto :goto_9

    :cond_5
    :goto_8
    return-object v14

    :catch_4
    :goto_9
    add-int/lit8 v10, v10, 0x1

    move v4, v0

    move/from16 v1, v16

    const/4 v5, 0x0

    move-object/from16 v0, p1

    goto :goto_5

    :catch_5
    :cond_6
    move-object/from16 v13, p0

    move/from16 v16, v1

    move v0, v4

    move v4, v0

    move v10, v11

    move/from16 v1, v16

    const/4 v5, 0x0

    move-object/from16 v0, p1

    goto/16 :goto_3

    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
