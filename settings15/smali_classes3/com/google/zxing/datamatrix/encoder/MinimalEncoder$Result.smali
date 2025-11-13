.class public final Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final bytes:[B


# direct methods
.method public constructor <init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v6, v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sget-object v10, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    sget-object v11, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/16 v12, 0xfe

    iget-object v13, v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v13, v10, :cond_0

    sget-object v10, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->TEXT:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v13, v10, :cond_0

    sget-object v10, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v13, v10, :cond_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v10

    if-eq v10, v11, :cond_1

    int-to-byte v10, v12

    new-array v13, v5, [B

    aput-byte v10, v13, v4

    invoke-static {v13, v7}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->prepend([BLjava/util/List;)I

    move-result v10

    goto :goto_0

    :cond_1
    move v10, v4

    :goto_0
    move-object v13, v1

    :goto_1
    if-eqz v13, :cond_26

    iget-object v15, v13, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    iget v14, v13, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    iget v4, v13, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    iget-object v2, v13, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    if-eqz v12, :cond_c

    if-eq v12, v5, :cond_b

    if-eq v12, v3, :cond_a

    const/4 v3, 0x3

    if-eq v12, v3, :cond_8

    const/4 v3, 0x4

    if-eq v12, v3, :cond_3

    const/4 v3, 0x5

    if-eq v12, v3, :cond_2

    const/4 v3, 0x0

    new-array v2, v3, [B

    :goto_2
    move-object v12, v6

    move-object/from16 v24, v11

    goto/16 :goto_a

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v4}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    new-array v4, v5, [B

    aput-byte v2, v4, v3

    move-object v2, v4

    goto :goto_2

    :cond_3
    move-object v12, v6

    int-to-double v5, v14

    const-wide/high16 v22, 0x4010000000000000L    # 4.0

    div-double v5, v5, v22

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    const/4 v6, 0x3

    mul-int/lit8 v3, v5, 0x3

    new-array v6, v3, [B

    add-int/2addr v14, v4

    const/4 v3, 0x1

    sub-int/2addr v14, v3

    iget-object v3, v2, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    array-length v3, v3

    const/16 v16, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v14, v3}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v5, :cond_7

    move/from16 v22, v3

    move/from16 v19, v4

    const/4 v3, 0x4

    new-array v4, v3, [I

    move/from16 v23, v5

    move-object/from16 v24, v11

    move/from16 v5, v19

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v3, :cond_6

    if-gt v5, v14, :cond_4

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v2, v5}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v5

    and-int/lit8 v5, v5, 0x3f

    aput v5, v4, v11

    move v5, v3

    goto :goto_6

    :cond_4
    add-int/lit8 v3, v14, 0x1

    if-ne v5, v3, :cond_5

    const/16 v3, 0x1f

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    aput v3, v4, v11

    :goto_6
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x4

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    aget v11, v4, v3

    shl-int/lit8 v11, v11, 0x12

    aget v25, v4, v16

    move/from16 v16, v22

    shl-int/lit8 v22, v25, 0xc

    or-int v11, v11, v22

    const/16 v21, 0x2

    aget v22, v4, v21

    const/16 v18, 0x6

    shl-int/lit8 v22, v22, 0x6

    or-int v11, v11, v22

    const/16 v20, 0x3

    aget v4, v4, v20

    or-int/2addr v4, v11

    shr-int/lit8 v11, v4, 0x10

    const/16 v3, 0xff

    and-int/2addr v11, v3

    int-to-byte v11, v11

    aput-byte v11, v6, v16

    const/4 v11, 0x1

    add-int/lit8 v17, v16, 0x1

    shr-int/lit8 v11, v4, 0x8

    and-int/2addr v11, v3

    int-to-byte v11, v11

    aput-byte v11, v6, v17

    const/4 v11, 0x2

    add-int/lit8 v21, v16, 0x2

    and-int/2addr v4, v3

    int-to-byte v3, v4

    aput-byte v3, v6, v21

    const/4 v3, 0x3

    add-int/lit8 v4, v16, 0x3

    move v3, v4

    move v4, v5

    move/from16 v5, v23

    move-object/from16 v11, v24

    const/16 v16, 0x1

    goto :goto_3

    :cond_7
    move-object/from16 v24, v11

    :goto_7
    move-object v2, v6

    goto/16 :goto_a

    :cond_8
    move-object v12, v6

    move-object/from16 v24, v11

    const/4 v11, 0x2

    div-int/2addr v14, v3

    mul-int/2addr v14, v11

    new-array v5, v14, [B

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v14, :cond_9

    div-int/lit8 v16, v6, 0x2

    mul-int/lit8 v16, v16, 0x3

    add-int v3, v16, v4

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getX12Value(C)I

    move-result v11

    move/from16 v17, v14

    const/16 v16, 0x1

    add-int/lit8 v14, v3, 0x1

    move/from16 v16, v3

    invoke-virtual {v2, v14}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v14

    invoke-static {v14}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getX12Value(C)I

    move-result v14

    const/16 v18, 0x2

    add-int/lit8 v3, v16, 0x2

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getX12Value(C)I

    move-result v3

    invoke-static {v5, v6, v11, v14, v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->setC40Word([BIIII)V

    add-int/lit8 v6, v6, 0x2

    move/from16 v14, v17

    move/from16 v11, v18

    const/4 v3, 0x3

    goto :goto_8

    :cond_9
    move-object v2, v5

    goto/16 :goto_a

    :cond_a
    move-object v12, v6

    move-object/from16 v24, v11

    iget v2, v2, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getC40Words(IZ)[B

    move-result-object v2

    goto/16 :goto_a

    :cond_b
    move-object v12, v6

    move-object/from16 v24, v11

    iget v2, v2, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    const/4 v3, 0x1

    invoke-virtual {v13, v2, v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getC40Words(IZ)[B

    move-result-object v2

    goto/16 :goto_a

    :cond_c
    move v3, v5

    move-object v12, v6

    move-object/from16 v24, v11

    invoke-virtual {v2, v4}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v2, v4}, Lcom/google/zxing/common/MinimalECIInput;->getECIValue(I)I

    move-result v2

    add-int/2addr v2, v3

    const/16 v4, 0xf1

    int-to-byte v4, v4

    int-to-byte v2, v2

    const/4 v5, 0x2

    new-array v6, v5, [B

    const/4 v5, 0x0

    aput-byte v4, v6, v5

    aput-byte v2, v6, v3

    goto :goto_7

    :cond_d
    invoke-virtual {v2, v4}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v5

    iget v6, v2, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    invoke-static {v5, v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v2, v4}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x7f

    const/16 v4, 0xeb

    int-to-byte v4, v4

    int-to-byte v2, v2

    const/4 v5, 0x2

    new-array v6, v5, [B

    const/4 v11, 0x0

    aput-byte v4, v6, v11

    const/4 v3, 0x1

    aput-byte v2, v6, v3

    goto/16 :goto_7

    :cond_e
    const/4 v3, 0x1

    const/4 v5, 0x2

    if-ne v14, v5, :cond_f

    invoke-virtual {v2, v4}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v2

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x52

    int-to-byte v2, v2

    new-array v4, v3, [B

    const/4 v5, 0x0

    aput-byte v2, v4, v5

    :goto_9
    move-object v2, v4

    goto :goto_a

    :cond_f
    const/4 v5, 0x0

    invoke-virtual {v2, v4}, Lcom/google/zxing/common/MinimalECIInput;->isFNC1(I)Z

    move-result v6

    if-eqz v6, :cond_10

    const/16 v6, 0xe8

    int-to-byte v2, v6

    new-array v4, v3, [B

    aput-byte v2, v4, v5

    goto :goto_9

    :cond_10
    invoke-virtual {v2, v4}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v2

    add-int/2addr v2, v3

    int-to-byte v2, v2

    new-array v4, v3, [B

    aput-byte v2, v4, v5

    goto :goto_9

    :goto_a
    invoke-static {v2, v7}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->prepend([BLjava/util/List;)I

    move-result v2

    add-int/2addr v2, v10

    iget-object v13, v13, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->previous:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    if-eqz v13, :cond_12

    iget-object v4, v13, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v4, v15, :cond_11

    goto :goto_b

    :cond_11
    move v10, v2

    const/4 v14, 0x2

    const/4 v15, 0x3

    goto/16 :goto_16

    :cond_12
    :goto_b
    sget-object v4, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->B256:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v15, v4, :cond_14

    const/16 v4, 0xf9

    if-gt v2, v4, :cond_13

    int-to-byte v4, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v7, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_c

    :cond_13
    const/4 v5, 0x0

    rem-int/lit16 v6, v2, 0xfa

    int-to-byte v6, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    div-int/lit16 v6, v2, 0xfa

    add-int/2addr v6, v4

    int-to-byte v4, v6

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v7, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v4, 0x2

    add-int/2addr v2, v4

    :goto_c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    if-nez v13, :cond_15

    move-object/from16 v2, v24

    goto :goto_d

    :cond_15
    invoke-virtual {v13}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v2

    :goto_d
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/16 v4, 0xe6

    const/16 v5, 0xef

    const/16 v6, 0xee

    const/16 v10, 0xf0

    const/16 v11, 0xe7

    if-eqz v2, :cond_17

    const/4 v3, 0x1

    if-eq v2, v3, :cond_18

    const/4 v14, 0x2

    if-eq v2, v14, :cond_18

    const/4 v14, 0x3

    if-eq v2, v14, :cond_18

    const/4 v14, 0x4

    if-eq v2, v14, :cond_16

    const/4 v14, 0x5

    if-eq v2, v14, :cond_17

    :cond_16
    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_e
    const/4 v14, 0x2

    :goto_f
    const/4 v15, 0x3

    goto/16 :goto_14

    :cond_17
    const/4 v3, 0x1

    goto/16 :goto_13

    :cond_18
    if-nez v13, :cond_19

    move-object/from16 v2, v24

    goto :goto_10

    :cond_19
    invoke-virtual {v13}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v2

    :goto_10
    if-eq v15, v2, :cond_20

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1e

    const/4 v14, 0x2

    if-eq v2, v14, :cond_1d

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1c

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1b

    const/4 v4, 0x5

    if-eq v2, v4, :cond_1a

    const/4 v2, 0x0

    goto :goto_f

    :cond_1a
    const/16 v2, 0xfe

    int-to-byte v4, v2

    int-to-byte v5, v11

    new-array v6, v14, [B

    const/4 v11, 0x0

    aput-byte v4, v6, v11

    aput-byte v5, v6, v3

    :goto_11
    const/4 v15, 0x3

    goto/16 :goto_15

    :cond_1b
    const/16 v2, 0xfe

    const/4 v11, 0x0

    int-to-byte v4, v2

    int-to-byte v5, v10

    new-array v6, v14, [B

    aput-byte v4, v6, v11

    aput-byte v5, v6, v3

    goto :goto_11

    :cond_1c
    const/16 v2, 0xfe

    const/4 v11, 0x0

    int-to-byte v4, v2

    int-to-byte v5, v6

    new-array v6, v14, [B

    aput-byte v4, v6, v11

    aput-byte v5, v6, v3

    goto :goto_11

    :cond_1d
    const/16 v2, 0xfe

    const/4 v11, 0x0

    int-to-byte v4, v2

    int-to-byte v5, v5

    new-array v6, v14, [B

    aput-byte v4, v6, v11

    aput-byte v5, v6, v3

    goto :goto_11

    :cond_1e
    const/16 v2, 0xfe

    const/4 v11, 0x0

    const/4 v14, 0x2

    int-to-byte v5, v2

    int-to-byte v4, v4

    new-array v6, v14, [B

    aput-byte v5, v6, v11

    aput-byte v4, v6, v3

    :goto_12
    const/4 v14, 0x2

    goto :goto_11

    :cond_1f
    const/16 v2, 0xfe

    const/4 v3, 0x1

    const/4 v11, 0x0

    int-to-byte v4, v2

    new-array v6, v3, [B

    aput-byte v4, v6, v11

    goto :goto_12

    :cond_20
    const/4 v3, 0x1

    const/4 v2, 0x0

    goto :goto_e

    :goto_13
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v2, v3, :cond_25

    const/4 v14, 0x2

    if-eq v2, v14, :cond_24

    const/4 v15, 0x3

    if-eq v2, v15, :cond_23

    const/4 v4, 0x4

    if-eq v2, v4, :cond_22

    const/4 v4, 0x5

    if-eq v2, v4, :cond_21

    const/4 v2, 0x0

    :goto_14
    new-array v6, v2, [B

    goto :goto_15

    :cond_21
    const/4 v2, 0x0

    int-to-byte v4, v11

    new-array v6, v3, [B

    aput-byte v4, v6, v2

    goto :goto_15

    :cond_22
    const/4 v2, 0x0

    int-to-byte v4, v10

    new-array v6, v3, [B

    aput-byte v4, v6, v2

    goto :goto_15

    :cond_23
    const/4 v2, 0x0

    int-to-byte v4, v6

    new-array v6, v3, [B

    aput-byte v4, v6, v2

    goto :goto_15

    :cond_24
    const/4 v2, 0x0

    const/4 v15, 0x3

    int-to-byte v4, v5

    new-array v6, v3, [B

    aput-byte v4, v6, v2

    goto :goto_15

    :cond_25
    const/4 v2, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x3

    int-to-byte v4, v4

    new-array v6, v3, [B

    aput-byte v4, v6, v2

    :goto_15
    invoke-static {v6, v7}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->prepend([BLjava/util/List;)I

    const/4 v10, 0x0

    :goto_16
    move-object v6, v12

    move v3, v14

    move-object/from16 v11, v24

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v12, 0xfe

    goto/16 :goto_1

    :cond_26
    move-object v12, v6

    iget v2, v12, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->macroId:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_27

    const/16 v2, 0xec

    int-to-byte v2, v2

    const/4 v3, 0x1

    new-array v4, v3, [B

    const/4 v5, 0x0

    aput-byte v2, v4, v5

    invoke-static {v4, v7}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->prepend([BLjava/util/List;)I

    goto :goto_17

    :cond_27
    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x0

    if-ne v2, v4, :cond_28

    const/16 v2, 0xed

    int-to-byte v2, v2

    new-array v4, v3, [B

    aput-byte v2, v4, v5

    invoke-static {v4, v7}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->prepend([BLjava/util/List;)I

    :cond_28
    :goto_17
    iget v2, v12, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    if-lez v2, :cond_29

    const/16 v2, 0xe8

    int-to-byte v2, v2

    new-array v4, v3, [B

    aput-byte v2, v4, v5

    invoke-static {v4, v7}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->prepend([BLjava/util/List;)I

    :cond_29
    move v2, v5

    :goto_18
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2c

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v10, v5

    :goto_19
    if-ge v10, v6, :cond_2b

    add-int v11, v4, v10

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Byte;

    invoke-virtual {v12}, Ljava/lang/Byte;->byteValue()B

    move-result v12

    const/16 v13, 0xff

    and-int/2addr v12, v13

    const/4 v3, 0x1

    add-int/lit8 v14, v11, 0x1

    mul-int/lit16 v14, v14, 0x95

    rem-int/2addr v14, v13

    add-int/2addr v14, v3

    add-int/2addr v14, v12

    if-gt v14, v13, :cond_2a

    goto :goto_1a

    :cond_2a
    add-int/lit16 v14, v14, -0x100

    :goto_1a
    int-to-byte v12, v14

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v10, v3

    goto :goto_19

    :cond_2b
    const/4 v3, 0x1

    const/16 v13, 0xff

    add-int/2addr v2, v3

    goto :goto_18

    :cond_2c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getMinSymbolSize(I)I

    move-result v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v1, :cond_2d

    const/16 v2, -0x7f

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    :goto_1b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v1, :cond_2f

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x95

    rem-int/lit16 v2, v2, 0xfd

    add-int/lit16 v4, v2, 0x82

    const/16 v6, 0xfe

    if-gt v4, v6, :cond_2e

    goto :goto_1c

    :cond_2e
    add-int/lit8 v4, v2, -0x7c

    :goto_1c
    int-to-byte v2, v4

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_2f
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->bytes:[B

    move v4, v5

    :goto_1d
    iget-object v1, v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->bytes:[B

    array-length v2, v1

    if-ge v4, v2, :cond_30

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v4

    const/4 v1, 0x1

    add-int/2addr v4, v1

    goto :goto_1d

    :cond_30
    return-void
.end method

.method public static prepend([BLjava/util/List;)I
    .locals 4

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v1, p0, v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, p1

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    array-length p0, p0

    return p0
.end method
