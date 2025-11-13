.class public abstract Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static findMinimums([F[I[B)I
    .locals 5

    const v0, 0x7fffffff

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    aget v3, p0, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    aput v3, p1, v2

    if-le v0, v3, :cond_0

    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([BB)V

    move v0, v3

    :cond_0
    if-ne v0, v3, :cond_1

    aget-byte v3, p2, v2

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static illegalCharacter(C)V
    .locals 5

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4

    const-string v3, "0000"

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal character: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, " (0x"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isExtendedASCII(C)Z
    .locals 1

    const/16 v0, 0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNativeC40(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isNativeEDIFACT(C)Z
    .locals 1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5e

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNativeText(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isNativeX12(C)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_3

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    if-eq p0, v0, :cond_3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_1

    const/16 v0, 0x39

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static lookAheadTest(IILjava/lang/CharSequence;)I
    .locals 19

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-lt v0, v3, :cond_1

    move v3, v1

    :cond_0
    :goto_0
    move v4, v5

    goto/16 :goto_e

    :cond_1
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x6

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x5

    const/4 v12, 0x2

    if-nez v1, :cond_2

    new-array v13, v9, [F

    aput v7, v13, v6

    aput v10, v13, v3

    aput v10, v13, v12

    aput v10, v13, v5

    aput v10, v13, v4

    const/high16 v7, 0x3fa00000    # 1.25f

    aput v7, v13, v11

    goto :goto_1

    :cond_2
    new-array v13, v9, [F

    aput v10, v13, v6

    aput v8, v13, v3

    aput v8, v13, v12

    aput v8, v13, v5

    aput v8, v13, v4

    const/high16 v14, 0x40100000    # 2.25f

    aput v14, v13, v11

    aput v7, v13, v1

    :goto_1
    new-array v7, v9, [B

    new-array v14, v9, [I

    move v15, v6

    :goto_2
    add-int v10, v0, v15

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ne v10, v8, :cond_8

    invoke-static {v7, v6}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v14, v6}, Ljava/util/Arrays;->fill([II)V

    invoke-static {v13, v14, v7}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[I[B)I

    move-result v8

    move v10, v6

    move v13, v10

    :goto_3
    if-ge v10, v9, :cond_3

    aget-byte v15, v7, v10

    add-int/2addr v13, v15

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    aget v9, v14, v6

    if-ne v9, v8, :cond_4

    move v4, v5

    move v3, v6

    goto/16 :goto_e

    :cond_4
    if-ne v13, v3, :cond_0

    aget-byte v8, v7, v11

    if-lez v8, :cond_5

    move v4, v5

    move v3, v11

    goto/16 :goto_e

    :cond_5
    aget-byte v8, v7, v4

    if-lez v8, :cond_6

    move v3, v4

    goto :goto_0

    :cond_6
    aget-byte v8, v7, v12

    if-lez v8, :cond_7

    move v4, v5

    move v3, v12

    goto/16 :goto_e

    :cond_7
    aget-byte v7, v7, v5

    if-lez v7, :cond_0

    move v3, v5

    move v4, v3

    goto/16 :goto_e

    :cond_8
    invoke-interface {v2, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    add-int/lit8 v15, v15, 0x1

    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_9

    aget v10, v13, v6

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v10, v10, v16

    aput v10, v13, v6

    goto :goto_4

    :cond_9
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v10

    if-eqz v10, :cond_a

    aget v10, v13, v6

    float-to-double v9, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-float v9, v9

    aput v9, v13, v6

    const/high16 v10, 0x40000000    # 2.0f

    add-float/2addr v9, v10

    aput v9, v13, v6

    goto :goto_4

    :cond_a
    const/high16 v10, 0x40000000    # 2.0f

    aget v9, v13, v6

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-float v9, v9

    aput v9, v13, v6

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v9, v10

    aput v9, v13, v6

    :goto_4
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v9

    const v10, 0x3faaaaab

    const v11, 0x402aaaab

    const v17, 0x3f2aaaab

    if-eqz v9, :cond_b

    aget v9, v13, v3

    add-float v9, v9, v17

    aput v9, v13, v3

    goto :goto_5

    :cond_b
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_c

    aget v9, v13, v3

    add-float/2addr v9, v11

    aput v9, v13, v3

    goto :goto_5

    :cond_c
    aget v9, v13, v3

    add-float/2addr v9, v10

    aput v9, v13, v3

    :goto_5
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v9

    if-eqz v9, :cond_d

    aget v9, v13, v12

    add-float v9, v9, v17

    aput v9, v13, v12

    goto :goto_6

    :cond_d
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_e

    aget v9, v13, v12

    add-float/2addr v9, v11

    aput v9, v13, v12

    goto :goto_6

    :cond_e
    aget v9, v13, v12

    add-float/2addr v9, v10

    aput v9, v13, v12

    :goto_6
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v9

    if-eqz v9, :cond_f

    aget v9, v13, v5

    add-float v9, v9, v17

    aput v9, v13, v5

    goto :goto_7

    :cond_f
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v9

    if-eqz v9, :cond_10

    aget v9, v13, v5

    const v10, 0x408aaaab

    add-float/2addr v9, v10

    aput v9, v13, v5

    goto :goto_7

    :cond_10
    aget v9, v13, v5

    const v10, 0x40555555

    add-float/2addr v9, v10

    aput v9, v13, v5

    :goto_7
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    move-result v9

    if-eqz v9, :cond_11

    aget v8, v13, v4

    const/high16 v9, 0x3f400000    # 0.75f

    add-float/2addr v8, v9

    aput v8, v13, v4

    :goto_8
    const/4 v8, 0x5

    goto :goto_9

    :cond_11
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v8

    if-eqz v8, :cond_12

    aget v8, v13, v4

    const/high16 v9, 0x40880000    # 4.25f

    add-float/2addr v8, v9

    aput v8, v13, v4

    goto :goto_8

    :cond_12
    aget v8, v13, v4

    const/high16 v9, 0x40500000    # 3.25f

    add-float/2addr v8, v9

    aput v8, v13, v4

    goto :goto_8

    :goto_9
    aget v9, v13, v8

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v9, v10

    aput v9, v13, v8

    if-lt v15, v4, :cond_23

    invoke-static {v7, v6}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v14, v6}, Ljava/util/Arrays;->fill([II)V

    invoke-static {v13, v14, v7}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[I[B)I

    aget v9, v14, v6

    aget v11, v14, v8

    aget v8, v14, v3

    aget v10, v14, v12

    aget v12, v14, v5

    aget v5, v14, v4

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v11, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v9, v5, :cond_14

    move v3, v6

    :cond_13
    :goto_a
    const/4 v4, 0x3

    goto/16 :goto_e

    :cond_14
    const/4 v5, 0x5

    aget v8, v14, v5

    aget v5, v14, v6

    if-lt v8, v5, :cond_15

    add-int/lit8 v8, v8, 0x1

    aget v5, v14, v3

    const/4 v9, 0x2

    aget v10, v14, v9

    const/4 v9, 0x3

    aget v11, v14, v9

    aget v9, v14, v4

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v8, v5, :cond_16

    :cond_15
    const/4 v8, 0x5

    goto/16 :goto_d

    :cond_16
    aget v5, v14, v4

    add-int/2addr v5, v3

    const/4 v8, 0x5

    aget v9, v14, v8

    aget v8, v14, v3

    const/4 v10, 0x2

    aget v11, v14, v10

    const/4 v10, 0x3

    aget v12, v14, v10

    aget v10, v14, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v5, v8, :cond_17

    move v3, v4

    goto :goto_a

    :cond_17
    const/4 v5, 0x2

    aget v8, v14, v5

    add-int/2addr v8, v3

    const/4 v5, 0x5

    aget v9, v14, v5

    aget v5, v14, v3

    aget v10, v14, v4

    const/4 v11, 0x3

    aget v12, v14, v11

    aget v4, v14, v6

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v8, v4, :cond_18

    move v4, v11

    const/4 v3, 0x2

    goto/16 :goto_e

    :cond_18
    aget v4, v14, v11

    add-int/2addr v4, v3

    const/4 v5, 0x5

    aget v8, v14, v5

    aget v5, v14, v3

    const/4 v9, 0x4

    aget v10, v14, v9

    const/4 v9, 0x2

    aget v11, v14, v9

    aget v9, v14, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_1a

    :cond_19
    :goto_b
    const/4 v3, 0x3

    goto/16 :goto_a

    :cond_1a
    aget v4, v14, v3

    add-int/2addr v4, v3

    aget v5, v14, v6

    const/4 v8, 0x5

    aget v9, v14, v8

    const/4 v10, 0x4

    aget v11, v14, v10

    const/4 v10, 0x2

    aget v12, v14, v10

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_1e

    aget v4, v14, v3

    const/4 v5, 0x3

    aget v9, v14, v5

    if-ge v4, v9, :cond_1b

    goto/16 :goto_a

    :cond_1b
    if-ne v4, v9, :cond_1e

    add-int v4, v0, v15

    add-int/2addr v4, v3

    :goto_c
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v4, v5, :cond_13

    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v7, 0xd

    if-eq v5, v7, :cond_19

    const/16 v7, 0x2a

    if-eq v5, v7, :cond_19

    const/16 v7, 0x3e

    if-ne v5, v7, :cond_1c

    goto :goto_b

    :cond_1c
    invoke-static {v5}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v5

    if-nez v5, :cond_1d

    goto/16 :goto_a

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1e
    const/4 v4, 0x3

    const/4 v5, 0x4

    goto :goto_11

    :goto_d
    move v3, v8

    goto/16 :goto_a

    :goto_e
    if-ne v1, v4, :cond_20

    if-ne v3, v4, :cond_20

    add-int/lit8 v1, v0, 0x3

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_f
    if-ge v0, v1, :cond_22

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v4

    if-nez v4, :cond_1f

    return v6

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_20
    const/4 v5, 0x4

    if-ne v1, v5, :cond_22

    if-ne v3, v5, :cond_22

    add-int/lit8 v1, v0, 0x4

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_10
    if-ge v0, v1, :cond_22

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    move-result v4

    if-nez v4, :cond_21

    return v6

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_22
    return v3

    :cond_23
    move v10, v12

    move/from16 v18, v5

    move v5, v4

    move/from16 v4, v18

    :goto_11
    move v11, v8

    move v12, v10

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x6

    move/from16 v18, v5

    move v5, v4

    move/from16 v4, v18

    goto/16 :goto_2
.end method
