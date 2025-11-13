.class public final Lcom/google/zxing/datamatrix/decoder/Decoder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    return-void
.end method


# virtual methods
.method public final decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 26

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    iget-object v1, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    iget v2, v1, Lcom/google/zxing/datamatrix/decoder/Version;->totalCodewords:I

    new-array v3, v2, [B

    iget-object v4, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    iget v5, v4, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v4, v4, Lcom/google/zxing/common/BitMatrix;->width:I

    const/4 v7, 0x0

    move v9, v7

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    const/4 v8, 0x4

    :goto_0
    const/4 v15, 0x1

    if-ne v8, v5, :cond_7

    if-nez v9, :cond_7

    if-nez v10, :cond_7

    add-int/lit8 v10, v11, 0x1

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v0, v6, v7, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v17

    shl-int/lit8 v17, v17, 0x1

    invoke-virtual {v0, v6, v15, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v18

    if-eqz v18, :cond_0

    or-int/lit8 v17, v17, 0x1

    :cond_0
    shl-int/lit8 v17, v17, 0x1

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v6

    if-eqz v6, :cond_1

    or-int/lit8 v17, v17, 0x1

    :cond_1
    shl-int/lit8 v6, v17, 0x1

    add-int/lit8 v7, v4, -0x2

    const/4 v15, 0x0

    invoke-virtual {v0, v15, v7, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v7

    if-eqz v7, :cond_2

    or-int/lit8 v6, v6, 0x1

    :cond_2
    const/4 v7, 0x1

    shl-int/2addr v6, v7

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v0, v15, v7, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v19

    if-eqz v19, :cond_3

    or-int/lit8 v6, v6, 0x1

    :cond_3
    const/4 v15, 0x1

    shl-int/2addr v6, v15

    invoke-virtual {v0, v15, v7, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v17

    if-eqz v17, :cond_4

    or-int/lit8 v6, v6, 0x1

    :cond_4
    shl-int/2addr v6, v15

    const/4 v15, 0x2

    invoke-virtual {v0, v15, v7, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v19

    if-eqz v19, :cond_5

    or-int/lit8 v6, v6, 0x1

    :cond_5
    const/4 v15, 0x1

    shl-int/2addr v6, v15

    const/4 v15, 0x3

    invoke-virtual {v0, v15, v7, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v7

    if-eqz v7, :cond_6

    or-int/lit8 v6, v6, 0x1

    :cond_6
    int-to-byte v6, v6

    aput-byte v6, v3, v11

    add-int/lit8 v8, v8, -0x2

    add-int/lit8 v9, v9, 0x2

    move v11, v10

    const/4 v10, 0x1

    goto/16 :goto_5

    :cond_7
    add-int/lit8 v6, v5, -0x2

    if-ne v8, v6, :cond_f

    if-nez v9, :cond_f

    and-int/lit8 v7, v4, 0x3

    if-eqz v7, :cond_f

    if-nez v12, :cond_f

    add-int/lit8 v7, v11, 0x1

    add-int/lit8 v12, v5, -0x3

    const/4 v15, 0x0

    invoke-virtual {v0, v12, v15, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v12

    move/from16 v19, v7

    const/4 v7, 0x1

    shl-int/2addr v12, v7

    invoke-virtual {v0, v6, v15, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v6

    if-eqz v6, :cond_8

    or-int/lit8 v12, v12, 0x1

    :cond_8
    shl-int/lit8 v6, v12, 0x1

    add-int/lit8 v12, v5, -0x1

    invoke-virtual {v0, v12, v15, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v12

    if-eqz v12, :cond_9

    or-int/lit8 v6, v6, 0x1

    :cond_9
    shl-int/2addr v6, v7

    add-int/lit8 v12, v4, -0x4

    invoke-virtual {v0, v15, v12, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v12

    if-eqz v12, :cond_a

    or-int/lit8 v6, v6, 0x1

    :cond_a
    shl-int/2addr v6, v7

    add-int/lit8 v12, v4, -0x3

    invoke-virtual {v0, v15, v12, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v12

    if-eqz v12, :cond_b

    or-int/lit8 v6, v6, 0x1

    :cond_b
    shl-int/2addr v6, v7

    add-int/lit8 v12, v4, -0x2

    invoke-virtual {v0, v15, v12, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v12

    if-eqz v12, :cond_c

    or-int/lit8 v6, v6, 0x1

    :cond_c
    shl-int/2addr v6, v7

    add-int/lit8 v12, v4, -0x1

    invoke-virtual {v0, v15, v12, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v17

    if-eqz v17, :cond_d

    or-int/lit8 v6, v6, 0x1

    :cond_d
    shl-int/2addr v6, v7

    invoke-virtual {v0, v7, v12, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v12

    if-eqz v12, :cond_e

    or-int/lit8 v6, v6, 0x1

    :cond_e
    int-to-byte v6, v6

    aput-byte v6, v3, v11

    add-int/lit8 v8, v8, -0x2

    add-int/lit8 v9, v9, 0x2

    move/from16 v11, v19

    const/4 v12, 0x1

    goto/16 :goto_5

    :cond_f
    add-int/lit8 v7, v5, 0x4

    if-ne v8, v7, :cond_17

    const/4 v7, 0x2

    if-ne v9, v7, :cond_17

    and-int/lit8 v7, v4, 0x7

    if-nez v7, :cond_17

    if-nez v13, :cond_17

    add-int/lit8 v6, v11, 0x1

    add-int/lit8 v7, v5, -0x1

    const/4 v13, 0x0

    invoke-virtual {v0, v7, v13, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v15

    const/4 v13, 0x1

    shl-int/2addr v15, v13

    add-int/lit8 v13, v4, -0x1

    invoke-virtual {v0, v7, v13, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v7

    if-eqz v7, :cond_10

    or-int/lit8 v15, v15, 0x1

    :cond_10
    const/4 v7, 0x1

    shl-int/2addr v15, v7

    add-int/lit8 v7, v4, -0x3

    move/from16 v19, v6

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v7, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v18

    if-eqz v18, :cond_11

    or-int/lit8 v15, v15, 0x1

    :cond_11
    const/4 v6, 0x1

    shl-int/2addr v15, v6

    add-int/lit8 v6, v4, -0x2

    move/from16 v20, v10

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v6, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v18

    if-eqz v18, :cond_12

    or-int/lit8 v15, v15, 0x1

    :cond_12
    move/from16 v21, v12

    const/4 v12, 0x1

    shl-int/2addr v15, v12

    invoke-virtual {v0, v10, v13, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v17

    if-eqz v17, :cond_13

    or-int/lit8 v15, v15, 0x1

    :cond_13
    shl-int/lit8 v10, v15, 0x1

    invoke-virtual {v0, v12, v7, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v7

    if-eqz v7, :cond_14

    or-int/lit8 v10, v10, 0x1

    :cond_14
    shl-int/lit8 v7, v10, 0x1

    invoke-virtual {v0, v12, v6, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v6

    if-eqz v6, :cond_15

    or-int/lit8 v7, v7, 0x1

    :cond_15
    shl-int/lit8 v6, v7, 0x1

    invoke-virtual {v0, v12, v13, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v7

    if-eqz v7, :cond_16

    or-int/lit8 v6, v6, 0x1

    :cond_16
    int-to-byte v6, v6

    aput-byte v6, v3, v11

    add-int/lit8 v8, v8, -0x2

    add-int/lit8 v9, v9, 0x2

    move/from16 v11, v19

    move/from16 v10, v20

    move/from16 v12, v21

    const/4 v13, 0x1

    goto/16 :goto_5

    :cond_17
    move/from16 v20, v10

    move/from16 v21, v12

    if-ne v8, v6, :cond_1f

    if-nez v9, :cond_1f

    and-int/lit8 v7, v4, 0x7

    const/4 v10, 0x4

    if-ne v7, v10, :cond_1f

    if-nez v14, :cond_1f

    add-int/lit8 v7, v11, 0x1

    add-int/lit8 v10, v5, -0x3

    const/4 v12, 0x0

    invoke-virtual {v0, v10, v12, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v10

    const/4 v14, 0x1

    shl-int/2addr v10, v14

    invoke-virtual {v0, v6, v12, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v6

    if-eqz v6, :cond_18

    or-int/lit8 v10, v10, 0x1

    :cond_18
    shl-int/lit8 v6, v10, 0x1

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v0, v10, v12, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v10

    if-eqz v10, :cond_19

    or-int/lit8 v6, v6, 0x1

    :cond_19
    shl-int/2addr v6, v14

    add-int/lit8 v10, v4, -0x2

    invoke-virtual {v0, v12, v10, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v10

    if-eqz v10, :cond_1a

    or-int/lit8 v6, v6, 0x1

    :cond_1a
    shl-int/2addr v6, v14

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v0, v12, v10, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v15

    if-eqz v15, :cond_1b

    or-int/lit8 v6, v6, 0x1

    :cond_1b
    shl-int/2addr v6, v14

    invoke-virtual {v0, v14, v10, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v12

    if-eqz v12, :cond_1c

    or-int/lit8 v6, v6, 0x1

    :cond_1c
    shl-int/2addr v6, v14

    const/4 v12, 0x2

    invoke-virtual {v0, v12, v10, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v15

    if-eqz v15, :cond_1d

    or-int/lit8 v6, v6, 0x1

    :cond_1d
    shl-int/2addr v6, v14

    const/4 v12, 0x3

    invoke-virtual {v0, v12, v10, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v10

    if-eqz v10, :cond_1e

    or-int/lit8 v6, v6, 0x1

    :cond_1e
    int-to-byte v6, v6

    aput-byte v6, v3, v11

    add-int/lit8 v8, v8, -0x2

    add-int/lit8 v9, v9, 0x2

    move v11, v7

    move/from16 v10, v20

    move/from16 v12, v21

    const/4 v14, 0x1

    goto :goto_5

    :cond_1f
    :goto_1
    iget-object v6, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    if-ge v8, v5, :cond_20

    if-ltz v9, :cond_20

    invoke-virtual {v6, v9, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-nez v7, :cond_20

    add-int/lit8 v7, v11, 0x1

    invoke-virtual {v0, v8, v9, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readUtah(IIII)I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v3, v11

    move v11, v7

    :cond_20
    add-int/lit8 v7, v8, -0x2

    add-int/lit8 v10, v9, 0x2

    if-ltz v7, :cond_22

    if-lt v10, v4, :cond_21

    goto :goto_2

    :cond_21
    move v8, v7

    move v9, v10

    goto :goto_1

    :cond_22
    :goto_2
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v9, 0x5

    :goto_3
    if-ltz v8, :cond_23

    if-ge v9, v4, :cond_23

    invoke-virtual {v6, v9, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-nez v7, :cond_23

    add-int/lit8 v7, v11, 0x1

    invoke-virtual {v0, v8, v9, v5, v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readUtah(IIII)I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v3, v11

    move v11, v7

    :cond_23
    add-int/lit8 v7, v8, 0x2

    add-int/lit8 v10, v9, -0x2

    if-ge v7, v5, :cond_25

    if-gez v10, :cond_24

    goto :goto_4

    :cond_24
    move v8, v7

    move v9, v10

    goto :goto_3

    :cond_25
    :goto_4
    add-int/lit8 v8, v8, 0x5

    add-int/lit8 v9, v9, -0x1

    move/from16 v10, v20

    move/from16 v12, v21

    :goto_5
    if-lt v8, v5, :cond_89

    if-lt v9, v4, :cond_89

    iget v0, v1, Lcom/google/zxing/datamatrix/decoder/Version;->totalCodewords:I

    if-ne v11, v0, :cond_88

    iget-object v0, v1, Lcom/google/zxing/datamatrix/decoder/Version;->ecBlocks:Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    iget-object v4, v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_6
    if-ge v6, v5, :cond_26

    aget-object v8, v4, v6

    iget v8, v8, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->count:I

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_26
    new-array v5, v7, [Lcom/google/zxing/datamatrix/decoder/DataBlock;

    array-length v6, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_7
    iget v10, v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->ecCodewords:I

    if-ge v8, v6, :cond_28

    aget-object v11, v4, v8

    const/4 v12, 0x0

    :goto_8
    iget v13, v11, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->count:I

    if-ge v12, v13, :cond_27

    iget v13, v11, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->dataCodewords:I

    add-int v14, v10, v13

    add-int/lit8 v15, v9, 0x1

    move-object/from16 v19, v0

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;

    new-array v14, v14, [B

    invoke-direct {v0, v13, v14}, Lcom/google/zxing/datamatrix/decoder/DataBlock;-><init>(I[B)V

    aput-object v0, v5, v9

    add-int/lit8 v12, v12, 0x1

    move v9, v15

    move-object/from16 v0, v19

    goto :goto_8

    :cond_27
    move-object/from16 v19, v0

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_28
    const/4 v0, 0x0

    aget-object v4, v5, v0

    iget-object v0, v4, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    array-length v0, v0

    sub-int/2addr v0, v10

    add-int/lit8 v4, v0, -0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_9
    if-ge v6, v4, :cond_2a

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v9, :cond_29

    aget-object v11, v5, v10

    iget-object v11, v11, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v12, v8, 0x1

    aget-byte v8, v3, v8

    aput-byte v8, v11, v6

    add-int/lit8 v10, v10, 0x1

    move v8, v12

    goto :goto_a

    :cond_29
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_2a
    const/16 v6, 0x18

    iget v1, v1, Lcom/google/zxing/datamatrix/decoder/Version;->versionNumber:I

    if-ne v1, v6, :cond_2b

    const/4 v1, 0x1

    goto :goto_b

    :cond_2b
    const/4 v1, 0x0

    :goto_b
    const/16 v6, 0x8

    if-eqz v1, :cond_2c

    move v10, v6

    goto :goto_c

    :cond_2c
    move v10, v9

    :goto_c
    const/4 v11, 0x0

    :goto_d
    if-ge v11, v10, :cond_2d

    aget-object v12, v5, v11

    iget-object v12, v12, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v13, v8, 0x1

    aget-byte v8, v3, v8

    aput-byte v8, v12, v4

    add-int/lit8 v11, v11, 0x1

    move v8, v13

    goto :goto_d

    :cond_2d
    const/4 v11, 0x0

    aget-object v4, v5, v11

    iget-object v4, v4, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    array-length v4, v4

    :goto_e
    if-ge v0, v4, :cond_31

    const/4 v10, 0x0

    :goto_f
    if-ge v10, v9, :cond_30

    if-eqz v1, :cond_2e

    add-int/lit8 v11, v10, 0x8

    rem-int/2addr v11, v9

    goto :goto_10

    :cond_2e
    move v11, v10

    :goto_10
    if-eqz v1, :cond_2f

    const/4 v12, 0x7

    if-le v11, v12, :cond_2f

    add-int/lit8 v12, v0, -0x1

    goto :goto_11

    :cond_2f
    move v12, v0

    :goto_11
    aget-object v11, v5, v11

    iget-object v11, v11, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    add-int/lit8 v13, v8, 0x1

    aget-byte v8, v3, v8

    aput-byte v8, v11, v12

    add-int/lit8 v10, v10, 0x1

    move v8, v13

    goto :goto_f

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_31
    if-ne v8, v2, :cond_87

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_12
    if-ge v0, v7, :cond_32

    aget-object v2, v5, v0

    iget v2, v2, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_32
    new-array v9, v1, [B

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v7, :cond_36

    aget-object v2, v5, v1

    iget-object v3, v2, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    iget v2, v2, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    array-length v4, v3

    new-array v8, v4, [I

    const/4 v10, 0x0

    :goto_14
    if-ge v10, v4, :cond_33

    aget-byte v11, v3, v10

    and-int/lit16 v11, v11, 0xff

    aput v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    :cond_33
    move-object/from16 v15, p0

    :try_start_0
    iget-object v4, v15, Lcom/google/zxing/datamatrix/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    array-length v10, v3

    sub-int/2addr v10, v2

    invoke-virtual {v4, v10, v8}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decodeWithECCount(I[I)I

    move-result v4
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x0

    :goto_15
    if-ge v10, v2, :cond_34

    aget v11, v8, v10

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    :cond_34
    add-int/2addr v0, v4

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v2, :cond_35

    mul-int v8, v4, v7

    add-int/2addr v8, v1

    aget-byte v10, v3, v4

    aput-byte v10, v9, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :catch_0
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_36
    new-instance v1, Lcom/google/zxing/common/BitSource;

    invoke-direct {v1, v9}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    new-instance v2, Lcom/google/zxing/common/ECIStringBuilder;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Lcom/google/zxing/common/ECIStringBuilder;-><init>(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    move-object v11, v7

    const/4 v15, 0x0

    :goto_17
    sget-object v12, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    const/16 v13, 0xfe

    if-ne v11, v7, :cond_3f

    const/4 v11, 0x0

    :goto_18
    invoke-virtual {v1, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v14

    if-eqz v14, :cond_3e

    const/16 v6, 0x80

    if-gt v14, v6, :cond_38

    if-eqz v11, :cond_37

    add-int/lit16 v14, v14, 0x80

    :cond_37
    const/4 v6, 0x1

    sub-int/2addr v14, v6

    int-to-char v6, v14

    invoke-virtual {v2, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    move-object v6, v7

    :goto_19
    const/4 v13, 0x0

    goto/16 :goto_1c

    :cond_38
    const/16 v6, 0x81

    if-ne v14, v6, :cond_39

    move-object v6, v12

    goto :goto_19

    :cond_39
    const/16 v6, 0xe5

    if-gt v14, v6, :cond_3b

    add-int/lit16 v14, v14, -0x82

    const/16 v6, 0xa

    if-ge v14, v6, :cond_3a

    const/16 v6, 0x30

    invoke-virtual {v2, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    :cond_3a
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v14, v2, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1a
    :pswitch_0
    const/4 v13, 0x0

    goto :goto_1b

    :cond_3b
    const-string v6, "\u001e\u0004"

    packed-switch v14, :pswitch_data_0

    if-ne v14, v13, :cond_3c

    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-nez v6, :cond_3c

    goto :goto_1a

    :cond_3c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_1
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ECI_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_19

    :pswitch_2
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->EDIFACT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_19

    :pswitch_3
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->TEXT_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_19

    :pswitch_4
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->ANSIX12_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_19

    :pswitch_5
    iget-object v14, v2, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    const-string v13, "[)>\u001e06\u001d"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    invoke-virtual {v3, v13, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    :pswitch_6
    const/4 v13, 0x0

    iget-object v14, v2, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    const-string v13, "[)>\u001e05\u001d"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    invoke-virtual {v3, v13, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    :pswitch_7
    const/4 v13, 0x0

    const/4 v11, 0x1

    goto :goto_1b

    :pswitch_8
    const/4 v13, 0x0

    invoke-virtual {v2}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v6, 0x1d

    invoke-virtual {v2, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    :goto_1b
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-gtz v6, :cond_3d

    move-object v6, v7

    goto :goto_1c

    :cond_3d
    const/16 v6, 0x8

    const/16 v13, 0xfe

    goto/16 :goto_18

    :pswitch_9
    const/4 v13, 0x0

    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->BASE256_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1c

    :pswitch_a
    const/4 v13, 0x0

    sget-object v6, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;->C40_ENCODE:Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser$Mode;

    :goto_1c
    move-object v11, v6

    move-object/from16 v22, v7

    goto/16 :goto_31

    :cond_3e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_3f
    const/4 v13, 0x0

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_b
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    const/16 v11, 0x8

    if-lt v6, v11, :cond_41

    invoke-virtual {v1, v11}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    const/16 v11, 0x7f

    if-gt v6, v11, :cond_40

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Lcom/google/zxing/common/ECIStringBuilder;->appendECI(I)V

    :cond_40
    move-object/from16 v22, v7

    const/4 v7, 0x1

    goto/16 :goto_30

    :cond_41
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_c
    iget v6, v1, Lcom/google/zxing/common/BitSource;->byteOffset:I

    add-int/lit8 v11, v6, 0x1

    const/16 v13, 0x8

    invoke-virtual {v1, v13}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v14

    add-int/lit8 v13, v6, 0x2

    invoke-static {v14, v11}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v11

    if-nez v11, :cond_42

    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    const/16 v14, 0x8

    div-int/lit8 v11, v6, 0x8

    move-object/from16 v22, v7

    goto :goto_1d

    :cond_42
    const/16 v14, 0xfa

    if-ge v11, v14, :cond_43

    move-object/from16 v22, v7

    const/16 v14, 0x8

    goto :goto_1d

    :cond_43
    add-int/lit16 v11, v11, -0xf9

    mul-int/2addr v11, v14

    move-object/from16 v22, v7

    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v7

    add-int/lit8 v6, v6, 0x3

    invoke-static {v7, v13}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v7

    add-int/2addr v11, v7

    move v13, v6

    :goto_1d
    if-ltz v11, :cond_46

    new-array v6, v11, [B

    const/4 v7, 0x0

    :goto_1e
    if-ge v7, v11, :cond_45

    move/from16 v19, v11

    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v11

    if-lt v11, v14, :cond_44

    invoke-virtual {v1, v14}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v11

    add-int/lit8 v14, v13, 0x1

    invoke-static {v11, v13}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->unrandomize255State(II)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v6, v7

    add-int/lit8 v7, v7, 0x1

    move v13, v14

    move/from16 v11, v19

    const/16 v14, 0x8

    goto :goto_1e

    :cond_44
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_45
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/String;

    sget-object v11, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v7, v6, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object v6, v2, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2f

    :cond_46
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_d
    move-object/from16 v22, v7

    :cond_47
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    const/16 v7, 0x10

    if-gt v6, v7, :cond_48

    const/4 v7, 0x6

    goto/16 :goto_2f

    :cond_48
    const/4 v6, 0x0

    :goto_1f
    const/4 v7, 0x4

    if-ge v6, v7, :cond_4b

    const/4 v7, 0x6

    invoke-virtual {v1, v7}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v11

    const/16 v13, 0x1f

    if-ne v11, v13, :cond_49

    iget v6, v1, Lcom/google/zxing/common/BitSource;->bitOffset:I

    const/16 v11, 0x8

    rsub-int/lit8 v6, v6, 0x8

    if-eq v6, v11, :cond_78

    invoke-virtual {v1, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    goto/16 :goto_2f

    :cond_49
    and-int/lit8 v13, v11, 0x20

    if-nez v13, :cond_4a

    or-int/lit8 v11, v11, 0x40

    :cond_4a
    int-to-char v11, v11

    invoke-virtual {v2, v11}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_4b
    const/4 v7, 0x6

    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-gtz v6, :cond_47

    goto/16 :goto_2f

    :pswitch_e
    move-object/from16 v22, v7

    const/4 v6, 0x3

    const/4 v7, 0x6

    new-array v13, v6, [I

    :goto_20
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    const/16 v11, 0x8

    if-ne v7, v11, :cond_4c

    goto/16 :goto_2f

    :cond_4c
    invoke-virtual {v1, v11}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v7

    const/16 v14, 0xfe

    if-ne v7, v14, :cond_4d

    goto/16 :goto_2f

    :cond_4d
    invoke-virtual {v1, v11}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v14

    invoke-static {v7, v14, v13}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    const/4 v7, 0x0

    :goto_21
    if-ge v7, v6, :cond_54

    aget v11, v13, v7

    if-eqz v11, :cond_53

    const/4 v14, 0x1

    if-eq v11, v14, :cond_52

    const/4 v14, 0x2

    if-eq v11, v14, :cond_51

    if-eq v11, v6, :cond_50

    const/16 v6, 0xe

    if-ge v11, v6, :cond_4e

    add-int/lit8 v11, v11, 0x2c

    int-to-char v6, v11

    invoke-virtual {v2, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_22

    :cond_4e
    const/16 v6, 0x28

    if-ge v11, v6, :cond_4f

    add-int/lit8 v11, v11, 0x33

    int-to-char v6, v11

    invoke-virtual {v2, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_22

    :cond_4f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_50
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_22

    :cond_51
    const/16 v6, 0x3e

    invoke-virtual {v2, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_22

    :cond_52
    const/16 v6, 0x2a

    invoke-virtual {v2, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_22

    :cond_53
    const/16 v6, 0xd

    invoke-virtual {v2, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    :goto_22
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x3

    goto :goto_21

    :cond_54
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-gtz v6, :cond_55

    goto/16 :goto_2f

    :cond_55
    const/4 v6, 0x3

    goto :goto_20

    :pswitch_f
    move-object/from16 v22, v7

    const/4 v6, 0x3

    new-array v7, v6, [I

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_23
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v13

    const/16 v6, 0x8

    if-ne v13, v6, :cond_56

    goto/16 :goto_2f

    :cond_56
    invoke-virtual {v1, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v13

    const/16 v6, 0xfe

    if-ne v13, v6, :cond_57

    goto/16 :goto_2f

    :cond_57
    move/from16 v25, v11

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v11

    invoke-static {v13, v11, v7}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    move/from16 v11, v25

    const/4 v6, 0x0

    :goto_24
    const/4 v13, 0x3

    if-ge v6, v13, :cond_66

    aget v13, v7, v6

    if-eqz v14, :cond_62

    move-object/from16 v25, v7

    const/4 v7, 0x1

    if-eq v14, v7, :cond_60

    const/4 v7, 0x2

    if-eq v14, v7, :cond_5b

    const/4 v7, 0x3

    if-ne v14, v7, :cond_5a

    const/16 v7, 0x20

    if-ge v13, v7, :cond_59

    sget-object v14, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT3_SET_CHARS:[C

    aget-char v13, v14, v13

    if-eqz v11, :cond_58

    add-int/lit16 v13, v13, 0x80

    int-to-char v11, v13

    invoke-virtual {v2, v11}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    :goto_25
    const/4 v11, 0x0

    goto :goto_26

    :cond_58
    invoke-virtual {v2, v13}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    :goto_26
    const/4 v14, 0x0

    goto/16 :goto_27

    :cond_59
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_5a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_5b
    const/16 v7, 0x20

    const/16 v14, 0x1b

    if-ge v13, v14, :cond_5d

    sget-object v14, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_SHIFT2_SET_CHARS:[C

    aget-char v13, v14, v13

    if-eqz v11, :cond_5c

    add-int/lit16 v13, v13, 0x80

    int-to-char v11, v13

    invoke-virtual {v2, v11}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_25

    :cond_5c
    invoke-virtual {v2, v13}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_26

    :cond_5d
    if-eq v13, v14, :cond_5f

    const/16 v14, 0x1e

    if-ne v13, v14, :cond_5e

    const/4 v11, 0x1

    goto :goto_26

    :cond_5e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_5f
    invoke-virtual {v2}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v13, 0x1d

    invoke-virtual {v2, v13}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_26

    :cond_60
    const/16 v7, 0x20

    if-eqz v11, :cond_61

    add-int/lit16 v13, v13, 0x80

    int-to-char v11, v13

    invoke-virtual {v2, v11}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_25

    :cond_61
    int-to-char v13, v13

    invoke-virtual {v2, v13}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_26

    :cond_62
    move-object/from16 v25, v7

    const/4 v7, 0x3

    if-ge v13, v7, :cond_63

    add-int/lit8 v7, v13, 0x1

    move v14, v7

    goto :goto_27

    :cond_63
    const/16 v7, 0x28

    if-ge v13, v7, :cond_65

    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->TEXT_BASIC_SET_CHARS:[C

    aget-char v7, v7, v13

    if-eqz v11, :cond_64

    add-int/lit16 v7, v7, 0x80

    int-to-char v7, v7

    invoke-virtual {v2, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    const/4 v11, 0x0

    goto :goto_27

    :cond_64
    invoke-virtual {v2, v7}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    :goto_27
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v7, v25

    goto/16 :goto_24

    :cond_65
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_66
    move-object/from16 v25, v7

    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-gtz v6, :cond_67

    goto/16 :goto_2f

    :cond_67
    move-object/from16 v7, v25

    const/4 v6, 0x3

    goto/16 :goto_23

    :pswitch_10
    move-object/from16 v22, v7

    const/4 v6, 0x3

    new-array v7, v6, [I

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_28
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v14

    const/16 v6, 0x8

    if-ne v14, v6, :cond_68

    goto/16 :goto_2f

    :cond_68
    invoke-virtual {v1, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v14

    const/16 v6, 0xfe

    if-ne v14, v6, :cond_69

    goto/16 :goto_2f

    :cond_69
    move/from16 v20, v11

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v11

    invoke-static {v14, v11, v7}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->parseTwoBytes(II[I)V

    move/from16 v11, v20

    const/4 v6, 0x3

    const/4 v14, 0x0

    :goto_29
    if-ge v14, v6, :cond_77

    aget v6, v7, v14

    if-eqz v13, :cond_73

    move-object/from16 v23, v7

    const/4 v7, 0x1

    if-eq v13, v7, :cond_71

    const/4 v7, 0x2

    if-eq v13, v7, :cond_6c

    const/4 v7, 0x3

    if-ne v13, v7, :cond_6b

    if-eqz v11, :cond_6a

    add-int/lit16 v6, v6, 0xe0

    int-to-char v6, v6

    invoke-virtual {v2, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    const/4 v11, 0x0

    goto :goto_2a

    :cond_6a
    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    invoke-virtual {v2, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    :goto_2a
    const/16 v7, 0x28

    const/4 v13, 0x0

    const/16 v16, 0x1e

    const/16 v19, 0x1d

    goto/16 :goto_2e

    :cond_6b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_6c
    const/16 v7, 0x1b

    if-ge v6, v7, :cond_6e

    sget-object v7, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_SHIFT2_SET_CHARS:[C

    aget-char v6, v7, v6

    if-eqz v11, :cond_6d

    add-int/lit16 v6, v6, 0x80

    int-to-char v6, v6

    invoke-virtual {v2, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    const/4 v11, 0x0

    goto :goto_2b

    :cond_6d
    invoke-virtual {v2, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    :goto_2b
    const/16 v6, 0x1d

    const/16 v7, 0x1b

    const/16 v13, 0x1e

    goto :goto_2c

    :cond_6e
    if-eq v6, v7, :cond_70

    const/16 v13, 0x1e

    if-ne v6, v13, :cond_6f

    const/16 v6, 0x1d

    const/4 v11, 0x1

    goto :goto_2c

    :cond_6f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_70
    const/16 v13, 0x1e

    invoke-virtual {v2}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v6, 0x1d

    invoke-virtual {v2, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    :goto_2c
    move/from16 v19, v6

    :goto_2d
    move/from16 v16, v13

    const/16 v7, 0x28

    const/4 v13, 0x0

    goto :goto_2e

    :cond_71
    const/16 v7, 0x1b

    const/16 v13, 0x1e

    const/16 v19, 0x1d

    if-eqz v11, :cond_72

    add-int/lit16 v6, v6, 0x80

    int-to-char v6, v6

    invoke-virtual {v2, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    const/4 v11, 0x0

    goto :goto_2d

    :cond_72
    int-to-char v6, v6

    invoke-virtual {v2, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_2d

    :cond_73
    move-object/from16 v23, v7

    const/4 v7, 0x3

    const/16 v16, 0x1e

    const/16 v19, 0x1d

    if-ge v6, v7, :cond_74

    add-int/lit8 v6, v6, 0x1

    move v13, v6

    const/16 v7, 0x28

    goto :goto_2e

    :cond_74
    const/16 v7, 0x28

    if-ge v6, v7, :cond_76

    sget-object v24, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->C40_BASIC_SET_CHARS:[C

    aget-char v6, v24, v6

    if-eqz v11, :cond_75

    add-int/lit16 v6, v6, 0x80

    int-to-char v6, v6

    invoke-virtual {v2, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    const/4 v11, 0x0

    goto :goto_2e

    :cond_75
    invoke-virtual {v2, v6}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    :goto_2e
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, v23

    const/4 v6, 0x3

    goto/16 :goto_29

    :cond_76
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_77
    move-object/from16 v23, v7

    const/16 v7, 0x28

    const/16 v16, 0x1e

    const/16 v19, 0x1d

    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-gtz v6, :cond_86

    :cond_78
    :goto_2f
    move v7, v15

    :goto_30
    move v15, v7

    move-object/from16 v11, v22

    :goto_31
    if-eq v11, v12, :cond_7a

    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-gtz v6, :cond_79

    goto :goto_32

    :cond_79
    move-object/from16 v7, v22

    const/16 v6, 0x8

    goto/16 :goto_17

    :cond_7a
    :goto_32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7b

    invoke-virtual {v2}, Lcom/google/zxing/common/ECIStringBuilder;->encodeCurrentBytesIfAny()V

    iget-object v1, v2, Lcom/google/zxing/common/ECIStringBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_7b
    const/4 v1, 0x5

    if-eqz v15, :cond_80

    invoke-virtual {v10, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7f

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    goto :goto_34

    :cond_7c
    invoke-virtual {v10, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    goto :goto_33

    :cond_7d
    const/4 v15, 0x4

    goto :goto_37

    :cond_7e
    :goto_33
    const/4 v15, 0x6

    goto :goto_37

    :cond_7f
    :goto_34
    move v15, v1

    goto :goto_37

    :cond_80
    invoke-virtual {v10, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    goto :goto_36

    :cond_81
    invoke-virtual {v10, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    goto :goto_35

    :cond_82
    const/4 v15, 0x1

    goto :goto_37

    :cond_83
    :goto_35
    const/4 v15, 0x3

    goto :goto_37

    :cond_84
    :goto_36
    const/4 v15, 0x2

    :goto_37
    new-instance v1, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v2}, Lcom/google/zxing/common/ECIStringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_85

    const/4 v2, 0x0

    move-object v11, v2

    goto :goto_38

    :cond_85
    move-object v11, v4

    :goto_38
    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;III)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/google/zxing/common/DecoderResult;->errorsCorrected:Ljava/lang/Integer;

    return-object v1

    :cond_86
    move-object/from16 v7, v23

    const/4 v6, 0x3

    goto/16 :goto_28

    :cond_87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_88
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_89
    move-object/from16 v15, p0

    const/4 v6, 0x4

    const/4 v7, 0x0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xe6
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method
