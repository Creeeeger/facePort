.class public final Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bytes:[B


# direct methods
.method public constructor <init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

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

    const/16 v11, 0xfe

    iget-object v12, v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v12, v10, :cond_0

    sget-object v10, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->TEXT:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v12, v10, :cond_0

    sget-object v10, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v12, v10, :cond_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v10

    sget-object v12, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v10, v12, :cond_1

    int-to-byte v10, v11

    new-array v12, v5, [B

    aput-byte v10, v12, v4

    invoke-static {v12, v7}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->prepend([BLjava/util/List;)I

    move-result v10

    goto :goto_0

    :cond_1
    move v10, v4

    :goto_0
    move-object v12, v1

    :goto_1
    if-eqz v12, :cond_26

    iget-object v13, v12, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    iget v4, v12, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    iget v11, v12, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    iget-object v15, v12, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    if-eqz v14, :cond_c

    if-eq v14, v5, :cond_b

    if-eq v14, v3, :cond_a

    if-eq v14, v2, :cond_8

    const/4 v3, 0x4

    if-eq v14, v3, :cond_3

    const/4 v3, 0x5

    if-eq v14, v3, :cond_2

    const/4 v3, 0x0

    new-array v4, v3, [B

    move-object/from16 v19, v6

    goto/16 :goto_7

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v15, v11}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    new-array v11, v5, [B

    aput-byte v4, v11, v3

    move-object/from16 v19, v6

    move-object v4, v11

    goto/16 :goto_7

    :cond_3
    move-object v14, v6

    int-to-double v5, v4

    const-wide/high16 v17, 0x4010000000000000L    # 4.0

    div-double v5, v5, v17

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    mul-int/lit8 v6, v5, 0x3

    new-array v6, v6, [B

    add-int/2addr v4, v11

    const/4 v3, 0x1

    sub-int/2addr v4, v3

    iget-object v2, v15, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    array-length v2, v2

    sub-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_7

    move/from16 v18, v5

    const/4 v3, 0x4

    new-array v5, v3, [I

    move-object/from16 v19, v14

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v3, :cond_6

    if-gt v11, v2, :cond_4

    const/4 v3, 0x1

    add-int/lit8 v16, v11, 0x1

    invoke-virtual {v15, v11}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v11

    and-int/lit8 v11, v11, 0x3f

    aput v11, v5, v14

    move/from16 v11, v16

    goto :goto_5

    :cond_4
    const/4 v3, 0x1

    add-int/lit8 v0, v2, 0x1

    if-ne v11, v0, :cond_5

    const/16 v0, 0x1f

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    aput v0, v5, v14

    :goto_5
    add-int/2addr v14, v3

    move-object/from16 v0, p0

    const/4 v3, 0x4

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    const/4 v3, 0x1

    aget v14, v5, v0

    shl-int/lit8 v0, v14, 0x12

    aget v14, v5, v3

    shl-int/lit8 v14, v14, 0xc

    or-int/2addr v0, v14

    const/4 v14, 0x2

    aget v16, v5, v14

    const/4 v14, 0x6

    shl-int/lit8 v16, v16, 0x6

    or-int v0, v0, v16

    const/4 v14, 0x3

    aget v5, v5, v14

    or-int/2addr v0, v5

    shr-int/lit8 v5, v0, 0x10

    const/16 v14, 0xff

    and-int/2addr v5, v14

    int-to-byte v5, v5

    aput-byte v5, v6, v4

    const/4 v3, 0x1

    add-int/lit8 v5, v4, 0x1

    shr-int/lit8 v3, v0, 0x8

    and-int/2addr v3, v14

    int-to-byte v3, v3

    aput-byte v3, v6, v5

    const/4 v5, 0x2

    add-int/lit8 v3, v4, 0x2

    and-int/2addr v0, v14

    int-to-byte v0, v0

    aput-byte v0, v6, v3

    const/4 v0, 0x3

    add-int/2addr v4, v0

    move-object/from16 v0, p0

    move/from16 v5, v18

    move-object/from16 v14, v19

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v19, v14

    move-object v4, v6

    goto/16 :goto_7

    :cond_8
    move v0, v2

    move v5, v3

    move-object/from16 v19, v6

    div-int/2addr v4, v0

    mul-int/2addr v4, v5

    new-array v2, v4, [B

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v4, :cond_9

    div-int/lit8 v3, v6, 0x2

    mul-int/2addr v3, v0

    add-int v0, v3, v11

    invoke-virtual {v15, v0}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getX12Value(C)I

    move-result v14

    const/4 v3, 0x1

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v15, v5}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getX12Value(C)I

    move-result v5

    const/16 v16, 0x2

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v15, v0}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getX12Value(C)I

    move-result v0

    invoke-static {v2, v6, v14, v5, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->setC40Word([BIIII)V

    add-int/lit8 v6, v6, 0x2

    move/from16 v5, v16

    const/4 v0, 0x3

    goto :goto_6

    :cond_9
    move-object v4, v2

    goto/16 :goto_7

    :cond_a
    move-object/from16 v19, v6

    iget v0, v15, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    const/4 v2, 0x0

    invoke-virtual {v12, v0, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getC40Words(IZ)[B

    move-result-object v4

    goto/16 :goto_7

    :cond_b
    move-object/from16 v19, v6

    iget v0, v15, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    const/4 v2, 0x1

    invoke-virtual {v12, v0, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getC40Words(IZ)[B

    move-result-object v4

    goto/16 :goto_7

    :cond_c
    move v2, v5

    move-object/from16 v19, v6

    invoke-virtual {v15, v11}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v15, v11}, Lcom/google/zxing/common/MinimalECIInput;->getECIValue(I)I

    move-result v0

    add-int/2addr v0, v2

    const/16 v3, 0xf1

    int-to-byte v3, v3

    int-to-byte v0, v0

    const/4 v4, 0x2

    new-array v5, v4, [B

    const/4 v4, 0x0

    aput-byte v3, v5, v4

    aput-byte v0, v5, v2

    move-object v4, v5

    goto :goto_7

    :cond_d
    invoke-virtual {v15, v11}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v0

    iget v2, v15, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    invoke-static {v0, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v15, v11}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x7f

    const/16 v2, 0xeb

    int-to-byte v2, v2

    int-to-byte v0, v0

    const/4 v5, 0x2

    new-array v4, v5, [B

    const/4 v6, 0x0

    aput-byte v2, v4, v6

    const/4 v2, 0x1

    aput-byte v0, v4, v2

    goto :goto_7

    :cond_e
    const/4 v2, 0x1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_f

    invoke-virtual {v15, v11}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v11, v2

    invoke-virtual {v15, v11}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x52

    int-to-byte v0, v3

    new-array v4, v2, [B

    const/4 v5, 0x0

    aput-byte v0, v4, v5

    goto :goto_7

    :cond_f
    const/4 v5, 0x0

    invoke-virtual {v15, v11}, Lcom/google/zxing/common/MinimalECIInput;->isFNC1(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0xe8

    int-to-byte v0, v0

    new-array v4, v2, [B

    aput-byte v0, v4, v5

    goto :goto_7

    :cond_10
    invoke-virtual {v15, v11}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v0

    add-int/2addr v0, v2

    int-to-byte v0, v0

    new-array v4, v2, [B

    aput-byte v0, v4, v5

    :goto_7
    invoke-static {v4, v7}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->prepend([BLjava/util/List;)I

    move-result v0

    add-int/2addr v0, v10

    iget-object v12, v12, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->previous:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    if-eqz v12, :cond_12

    iget-object v2, v12, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v2, v13, :cond_11

    goto :goto_8

    :cond_11
    move v10, v0

    const/4 v11, 0x2

    const/4 v13, 0x3

    goto/16 :goto_14

    :cond_12
    :goto_8
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->B256:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v13, v2, :cond_14

    const/16 v2, 0xf9

    if-gt v0, v2, :cond_13

    int-to-byte v2, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v7, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x1

    :goto_9
    add-int/2addr v0, v2

    goto :goto_a

    :cond_13
    const/4 v4, 0x0

    rem-int/lit16 v5, v0, 0xfa

    int-to-byte v5, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    div-int/lit16 v5, v0, 0xfa

    add-int/2addr v5, v2

    int-to-byte v2, v5

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v7, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x2

    goto :goto_9

    :goto_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    if-nez v12, :cond_15

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    goto :goto_b

    :cond_15
    invoke-virtual {v12}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v0

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v2, 0xe6

    const/16 v4, 0xef

    const/16 v5, 0xee

    const/16 v6, 0xf0

    const/16 v10, 0xe7

    if-eqz v0, :cond_17

    const/4 v3, 0x1

    if-eq v0, v3, :cond_18

    const/4 v11, 0x2

    if-eq v0, v11, :cond_18

    const/4 v11, 0x3

    if-eq v0, v11, :cond_18

    const/4 v11, 0x4

    if-eq v0, v11, :cond_16

    const/4 v11, 0x5

    if-eq v0, v11, :cond_17

    :cond_16
    const/4 v0, 0x0

    const/4 v3, 0x1

    :goto_c
    const/4 v11, 0x2

    :goto_d
    const/4 v13, 0x3

    goto/16 :goto_12

    :cond_17
    const/4 v3, 0x1

    goto/16 :goto_11

    :cond_18
    if-nez v12, :cond_19

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    goto :goto_e

    :cond_19
    invoke-virtual {v12}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v0

    :goto_e
    if-eq v13, v0, :cond_20

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1e

    const/4 v11, 0x2

    if-eq v0, v11, :cond_1d

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1c

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1b

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1a

    const/4 v0, 0x0

    goto :goto_d

    :cond_1a
    const/16 v0, 0xfe

    int-to-byte v2, v0

    int-to-byte v4, v10

    new-array v5, v11, [B

    const/4 v10, 0x0

    aput-byte v2, v5, v10

    aput-byte v4, v5, v3

    :goto_f
    const/4 v13, 0x3

    goto/16 :goto_13

    :cond_1b
    const/16 v0, 0xfe

    const/4 v10, 0x0

    int-to-byte v2, v0

    int-to-byte v4, v6

    new-array v5, v11, [B

    aput-byte v2, v5, v10

    aput-byte v4, v5, v3

    goto :goto_f

    :cond_1c
    const/16 v0, 0xfe

    const/4 v10, 0x0

    int-to-byte v2, v0

    int-to-byte v4, v5

    new-array v5, v11, [B

    aput-byte v2, v5, v10

    aput-byte v4, v5, v3

    goto :goto_f

    :cond_1d
    const/16 v0, 0xfe

    const/4 v10, 0x0

    int-to-byte v2, v0

    int-to-byte v4, v4

    new-array v5, v11, [B

    aput-byte v2, v5, v10

    aput-byte v4, v5, v3

    goto :goto_f

    :cond_1e
    const/16 v0, 0xfe

    const/4 v10, 0x0

    const/4 v11, 0x2

    int-to-byte v4, v0

    int-to-byte v2, v2

    new-array v5, v11, [B

    aput-byte v4, v5, v10

    aput-byte v2, v5, v3

    :goto_10
    const/4 v11, 0x2

    goto :goto_f

    :cond_1f
    const/16 v0, 0xfe

    const/4 v3, 0x1

    const/4 v10, 0x0

    int-to-byte v2, v0

    new-array v5, v3, [B

    aput-byte v2, v5, v10

    goto :goto_10

    :cond_20
    const/4 v3, 0x1

    const/4 v0, 0x0

    goto :goto_c

    :goto_11
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v3, :cond_25

    const/4 v11, 0x2

    if-eq v0, v11, :cond_24

    const/4 v13, 0x3

    if-eq v0, v13, :cond_23

    const/4 v2, 0x4

    if-eq v0, v2, :cond_22

    const/4 v2, 0x5

    if-eq v0, v2, :cond_21

    const/4 v0, 0x0

    :goto_12
    new-array v5, v0, [B

    goto :goto_13

    :cond_21
    const/4 v0, 0x0

    int-to-byte v2, v10

    new-array v5, v3, [B

    aput-byte v2, v5, v0

    goto :goto_13

    :cond_22
    const/4 v0, 0x0

    int-to-byte v2, v6

    new-array v5, v3, [B

    aput-byte v2, v5, v0

    goto :goto_13

    :cond_23
    const/4 v0, 0x0

    int-to-byte v2, v5

    new-array v5, v3, [B

    aput-byte v2, v5, v0

    goto :goto_13

    :cond_24
    const/4 v0, 0x0

    const/4 v13, 0x3

    int-to-byte v2, v4

    new-array v5, v3, [B

    aput-byte v2, v5, v0

    goto :goto_13

    :cond_25
    const/4 v0, 0x0

    const/4 v11, 0x2

    const/4 v13, 0x3

    int-to-byte v2, v2

    new-array v5, v3, [B

    aput-byte v2, v5, v0

    :goto_13
    invoke-static {v5, v7}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->prepend([BLjava/util/List;)I

    const/4 v10, 0x0

    :goto_14
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v3, v11

    move v2, v13

    move-object/from16 v6, v19

    const/4 v5, 0x1

    const/16 v11, 0xfe

    goto/16 :goto_1

    :cond_26
    move-object v0, v6

    iget v2, v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->macroId:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_27

    const/16 v2, 0xec

    int-to-byte v2, v2

    const/4 v3, 0x1

    new-array v4, v3, [B

    const/4 v5, 0x0

    aput-byte v2, v4, v5

    invoke-static {v4, v7}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->prepend([BLjava/util/List;)I

    goto :goto_15

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
    :goto_15
    iget v0, v0, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    if-lez v0, :cond_29

    const/16 v0, 0xe8

    int-to-byte v0, v0

    new-array v2, v3, [B

    aput-byte v0, v2, v5

    invoke-static {v2, v7}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->prepend([BLjava/util/List;)I

    :cond_29
    move v0, v5

    :goto_16
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v6, v5

    :goto_17
    if-ge v6, v4, :cond_2b

    add-int v10, v2, v6

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    const/16 v12, 0xff

    and-int/2addr v11, v12

    const/4 v3, 0x1

    add-int/lit8 v13, v10, 0x1

    mul-int/lit16 v13, v13, 0x95

    rem-int/2addr v13, v12

    add-int/2addr v13, v3

    add-int/2addr v13, v11

    if-gt v13, v12, :cond_2a

    goto :goto_18

    :cond_2a
    add-int/lit16 v13, v13, -0x100

    :goto_18
    int-to-byte v11, v13

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v6, v3

    goto :goto_17

    :cond_2b
    const/4 v3, 0x1

    const/16 v12, 0xff

    add-int/2addr v0, v3

    goto :goto_16

    :cond_2c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getMinSymbolSize(I)I

    move-result v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_2d

    const/16 v1, -0x7f

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    :goto_19
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_2f

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x95

    rem-int/lit16 v1, v1, 0xfd

    add-int/lit16 v2, v1, 0x82

    const/16 v4, 0xfe

    if-gt v2, v4, :cond_2e

    goto :goto_1a

    :cond_2e
    add-int/lit8 v2, v1, -0x7c

    :goto_1a
    int-to-byte v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2f
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->bytes:[B

    move v4, v5

    :goto_1b
    iget-object v0, v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->bytes:[B

    array-length v2, v0

    if-ge v4, v2, :cond_30

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v4

    const/4 v0, 0x1

    add-int/2addr v4, v0

    goto :goto_1b

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
