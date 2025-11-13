.class public final Lcom/google/zxing/BinaryBitmap;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final binarizer:Lcom/google/zxing/common/HybridBinarizer;

.field public matrix:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/HybridBinarizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/common/HybridBinarizer;

    return-void
.end method


# virtual methods
.method public final getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/zxing/BinaryBitmap;->matrix:Lcom/google/zxing/common/BitMatrix;

    if-nez v1, :cond_20

    iget-object v1, v0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/common/HybridBinarizer;

    iget-object v2, v1, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    if-eqz v2, :cond_0

    goto/16 :goto_12

    :cond_0
    iget-object v2, v1, Lcom/google/zxing/common/HybridBinarizer;->source:Lcom/google/zxing/LuminanceSource;

    iget v3, v2, Lcom/google/zxing/LuminanceSource;->width:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x28

    iget v8, v2, Lcom/google/zxing/LuminanceSource;->height:I

    if-lt v3, v6, :cond_18

    if-lt v8, v6, :cond_18

    invoke-virtual {v2}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v2

    shr-int/lit8 v6, v3, 0x3

    and-int/lit8 v9, v3, 0x7

    if-eqz v9, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    shr-int/lit8 v9, v8, 0x3

    and-int/lit8 v10, v8, 0x7

    if-eqz v10, :cond_2

    add-int/lit8 v9, v9, 0x1

    :cond_2
    add-int/lit8 v10, v8, -0x8

    add-int/lit8 v11, v3, -0x8

    const/4 v12, 0x2

    new-array v13, v12, [I

    aput v6, v13, v5

    aput v9, v13, v4

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[I

    move v14, v4

    :goto_0
    const/16 v15, 0x8

    if-ge v14, v9, :cond_d

    shl-int/lit8 v4, v14, 0x3

    if-le v4, v10, :cond_3

    move v4, v10

    :cond_3
    const/4 v12, 0x0

    :goto_1
    if-ge v12, v6, :cond_c

    shl-int/lit8 v5, v12, 0x3

    if-le v5, v11, :cond_4

    move v5, v11

    :cond_4
    mul-int v18, v4, v3

    add-int v18, v18, v5

    const/4 v5, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xff

    :goto_2
    if-ge v5, v15, :cond_a

    move/from16 v22, v4

    move/from16 v7, v20

    move/from16 v4, v21

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v15, :cond_7

    add-int v20, v18, v0

    aget-byte v15, v2, v20

    move-object/from16 v23, v1

    const/16 v1, 0xff

    and-int/2addr v15, v1

    add-int v19, v19, v15

    if-ge v15, v4, :cond_5

    move v4, v15

    :cond_5
    if-le v15, v7, :cond_6

    move v7, v15

    :cond_6
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v23

    const/16 v15, 0x8

    goto :goto_3

    :cond_7
    move-object/from16 v23, v1

    sub-int v0, v7, v4

    const/16 v1, 0x18

    if-le v0, v1, :cond_9

    :cond_8
    add-int/lit8 v5, v5, 0x1

    add-int v18, v18, v3

    const/16 v0, 0x8

    if-ge v5, v0, :cond_9

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_8

    add-int v0, v18, v1

    aget-byte v0, v2, v0

    const/16 v15, 0xff

    and-int/2addr v0, v15

    add-int v19, v19, v0

    add-int/lit8 v1, v1, 0x1

    const/16 v0, 0x8

    goto :goto_4

    :cond_9
    const/4 v0, 0x1

    add-int/2addr v5, v0

    add-int v18, v18, v3

    const/16 v15, 0x8

    move-object/from16 v0, p0

    move/from16 v21, v4

    move/from16 v20, v7

    move/from16 v4, v22

    move-object/from16 v1, v23

    goto :goto_2

    :cond_a
    move-object/from16 v23, v1

    move/from16 v22, v4

    shr-int/lit8 v0, v19, 0x6

    move/from16 v4, v21

    sub-int v1, v20, v4

    const/16 v5, 0x18

    if-gt v1, v5, :cond_b

    div-int/lit8 v0, v4, 0x2

    if-lez v14, :cond_b

    if-lez v12, :cond_b

    add-int/lit8 v1, v14, -0x1

    aget-object v1, v13, v1

    aget v5, v1, v12

    aget-object v7, v13, v14

    add-int/lit8 v15, v12, -0x1

    aget v7, v7, v15

    const/16 v16, 0x2

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v5

    aget v1, v1, v15

    add-int/2addr v7, v1

    div-int/lit8 v1, v7, 0x4

    if-ge v4, v1, :cond_b

    move v0, v1

    :cond_b
    aget-object v1, v13, v14

    aput v0, v1, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x1

    const/16 v15, 0x8

    move-object/from16 v0, p0

    move/from16 v4, v22

    move-object/from16 v1, v23

    goto/16 :goto_1

    :cond_c
    move-object/from16 v23, v1

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v12, 0x2

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_d
    move-object/from16 v23, v1

    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, v3, v8}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v9, :cond_17

    shl-int/lit8 v4, v1, 0x3

    if-le v4, v10, :cond_e

    move v4, v10

    :cond_e
    add-int/lit8 v5, v9, -0x3

    const/4 v7, 0x2

    if-ge v1, v7, :cond_f

    const/4 v5, 0x2

    goto :goto_6

    :cond_f
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_6
    const/4 v7, 0x0

    :goto_7
    if-ge v7, v6, :cond_16

    shl-int/lit8 v8, v7, 0x3

    if-le v8, v11, :cond_10

    move v8, v11

    :cond_10
    add-int/lit8 v12, v6, -0x3

    const/4 v14, 0x2

    if-ge v7, v14, :cond_11

    move v12, v14

    goto :goto_8

    :cond_11
    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    move-result v16

    move/from16 v12, v16

    :goto_8
    const/4 v15, -0x2

    const/16 v17, 0x0

    :goto_9
    if-gt v15, v14, :cond_12

    add-int v14, v5, v15

    aget-object v14, v13, v14

    add-int/lit8 v18, v12, -0x2

    aget v18, v14, v18

    add-int/lit8 v19, v12, -0x1

    aget v19, v14, v19

    add-int v18, v18, v19

    aget v19, v14, v12

    add-int v18, v18, v19

    add-int/lit8 v19, v12, 0x1

    aget v19, v14, v19

    add-int v18, v18, v19

    const/16 v16, 0x2

    add-int/lit8 v19, v12, 0x2

    aget v14, v14, v19

    add-int v18, v18, v14

    add-int v17, v18, v17

    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v16

    goto :goto_9

    :cond_12
    move/from16 v16, v14

    div-int/lit8 v12, v17, 0x19

    mul-int v14, v4, v3

    add-int/2addr v14, v8

    move/from16 v17, v5

    const/4 v5, 0x0

    :goto_a
    const/16 v15, 0x8

    if-ge v5, v15, :cond_15

    move/from16 v18, v6

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v15, :cond_14

    add-int v19, v14, v6

    aget-byte v15, v2, v19

    move-object/from16 v19, v2

    const/16 v2, 0xff

    and-int/2addr v15, v2

    if-gt v15, v12, :cond_13

    add-int v2, v8, v6

    add-int v15, v4, v5

    invoke-virtual {v0, v2, v15}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_13
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v19

    const/16 v15, 0x8

    goto :goto_b

    :cond_14
    move-object/from16 v19, v2

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v14, v3

    move/from16 v6, v18

    goto :goto_a

    :cond_15
    move-object/from16 v19, v2

    move/from16 v18, v6

    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v17

    goto :goto_7

    :cond_16
    move-object/from16 v19, v2

    move/from16 v18, v6

    const/16 v16, 0x2

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_17
    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    goto/16 :goto_11

    :cond_18
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v0, v3, v8}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    iget-object v4, v1, Lcom/google/zxing/common/HybridBinarizer;->luminances:[B

    array-length v4, v4

    if-ge v4, v3, :cond_19

    new-array v4, v3, [B

    iput-object v4, v1, Lcom/google/zxing/common/HybridBinarizer;->luminances:[B

    :cond_19
    const/4 v4, 0x0

    :goto_c
    const/16 v5, 0x20

    iget-object v6, v1, Lcom/google/zxing/common/HybridBinarizer;->buckets:[I

    if-ge v4, v5, :cond_1a

    const/4 v5, 0x0

    aput v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1a
    const/4 v5, 0x0

    const/4 v4, 0x1

    :goto_d
    const/4 v7, 0x5

    if-ge v4, v7, :cond_1c

    mul-int v9, v8, v4

    div-int/2addr v9, v7

    iget-object v10, v1, Lcom/google/zxing/common/HybridBinarizer;->luminances:[B

    invoke-virtual {v2, v9, v10}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B

    move-result-object v9

    mul-int/lit8 v10, v3, 0x4

    div-int/2addr v10, v7

    div-int/lit8 v7, v3, 0x5

    :goto_e
    if-ge v7, v10, :cond_1b

    aget-byte v11, v9, v7

    const/16 v12, 0xff

    and-int/2addr v11, v12

    shr-int/lit8 v11, v11, 0x3

    aget v12, v6, v11

    const/4 v13, 0x1

    add-int/2addr v12, v13

    aput v12, v6, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_1b
    const/4 v13, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1c
    invoke-static {v6}, Lcom/google/zxing/common/HybridBinarizer;->estimateBlackPoint([I)I

    move-result v4

    invoke-virtual {v2}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v2

    move v6, v5

    :goto_f
    if-ge v6, v8, :cond_1f

    mul-int v7, v6, v3

    move v9, v5

    :goto_10
    if-ge v9, v3, :cond_1e

    add-int v10, v7, v9

    aget-byte v10, v2, v10

    const/16 v11, 0xff

    and-int/2addr v10, v11

    if-ge v10, v4, :cond_1d

    invoke-virtual {v0, v9, v6}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_1d
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_1e
    const/16 v11, 0xff

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_1f
    iput-object v0, v1, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    :goto_11
    iget-object v2, v1, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v0, p0

    :goto_12
    iput-object v2, v0, Lcom/google/zxing/BinaryBitmap;->matrix:Lcom/google/zxing/common/BitMatrix;

    :cond_20
    iget-object v0, v0, Lcom/google/zxing/BinaryBitmap;->matrix:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method public final getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .locals 9

    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/common/HybridBinarizer;

    iget-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->source:Lcom/google/zxing/LuminanceSource;

    iget v1, v0, Lcom/google/zxing/LuminanceSource;->width:I

    iget v2, p2, Lcom/google/zxing/common/BitArray;->size:I

    const/4 v3, 0x0

    if-ge v2, v1, :cond_0

    new-instance p2, Lcom/google/zxing/common/BitArray;

    invoke-direct {p2, v1}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    goto :goto_1

    :cond_0
    iget-object v2, p2, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v2, v2

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, p2, Lcom/google/zxing/common/BitArray;->bits:[I

    aput v3, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/zxing/common/HybridBinarizer;->luminances:[B

    array-length v2, v2

    if-ge v2, v1, :cond_2

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/google/zxing/common/HybridBinarizer;->luminances:[B

    :cond_2
    move v2, v3

    :goto_2
    const/16 v4, 0x20

    iget-object v5, p0, Lcom/google/zxing/common/HybridBinarizer;->buckets:[I

    if-ge v2, v4, :cond_3

    aput v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/google/zxing/common/HybridBinarizer;->luminances:[B

    invoke-virtual {v0, p1, p0}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B

    move-result-object p0

    move p1, v3

    :goto_3
    const/4 v0, 0x1

    const/4 v2, 0x3

    if-ge p1, v1, :cond_4

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v2, v4, 0x3

    aget v4, v5, v2

    add-int/2addr v4, v0

    aput v4, v5, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v5}, Lcom/google/zxing/common/HybridBinarizer;->estimateBlackPoint([I)I

    move-result p1

    if-ge v1, v2, :cond_6

    :goto_4
    if-ge v3, v1, :cond_8

    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    if-ge v0, p1, :cond_5

    invoke-virtual {p2, v3}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    move v4, v0

    move v8, v3

    move v3, v2

    move v2, v8

    :goto_5
    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_8

    add-int/lit8 v5, v4, 0x1

    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    mul-int/lit8 v7, v2, 0x4

    sub-int/2addr v7, v3

    sub-int/2addr v7, v6

    div-int/lit8 v7, v7, 0x2

    if-ge v7, p1, :cond_7

    invoke-virtual {p2, v4}, Lcom/google/zxing/common/BitArray;->set(I)V

    :cond_7
    move v3, v2

    move v4, v5

    move v2, v6

    goto :goto_5

    :cond_8
    return-object p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method
