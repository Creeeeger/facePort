.class public final Lcom/google/zxing/datamatrix/DataMatrixWriter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/zxing/Writer;


# virtual methods
.method public final encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 25

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_47

    sget-object v11, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    if-ne v1, v11, :cond_46

    if-ltz v2, :cond_45

    if-ltz v3, :cond_45

    sget-object v1, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    if-eqz p5, :cond_1

    sget-object v11, Lcom/google/zxing/EncodeHintType;->DATA_MATRIX_SHAPE:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v12, p5

    check-cast v12, Ljava/util/EnumMap;

    invoke-virtual {v12, v11}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    if-eqz v11, :cond_0

    move-object v1, v11

    :cond_0
    sget-object v11, Lcom/google/zxing/EncodeHintType;->MIN_SIZE:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v12, v11}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    sget-object v11, Lcom/google/zxing/EncodeHintType;->MAX_SIZE:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v12, v11}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    :cond_1
    const/4 v11, 0x0

    const-string v12, "[)>\u001e06\u001d"

    const-string v13, "\u001e\u0004"

    const-string v14, "[)>\u001e05\u001d"

    const/4 v4, 0x7

    if-eqz p5, :cond_f

    sget-object v15, Lcom/google/zxing/EncodeHintType;->DATA_MATRIX_COMPACT:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v7, p5

    check-cast v7, Ljava/util/EnumMap;

    invoke-virtual {v7, v15}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-virtual {v7, v15}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_f

    sget-object v15, Lcom/google/zxing/EncodeHintType;->GS1_FORMAT:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v7, v15}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual {v7, v15}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    move v15, v10

    goto :goto_0

    :cond_2
    move v15, v11

    :goto_0
    sget-object v5, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v7, v5}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    const/4 v6, 0x0

    if-eqz v16, :cond_3

    invoke-virtual {v7, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v6

    :goto_1
    if-eqz v15, :cond_4

    const/16 v7, 0x1d

    move v15, v7

    goto :goto_2

    :cond_4
    const/4 v15, -0x1

    :goto_2
    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v9

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    const/16 v17, 0x5

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v9

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    const/16 v17, 0x6

    goto :goto_3

    :cond_6
    move-object v13, v0

    move/from16 v17, v11

    :goto_3
    new-instance v0, Ljava/lang/String;

    new-instance v7, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    move-object v12, v7

    move-object v14, v5

    const/4 v5, 0x6

    move-object/from16 v16, v1

    invoke-direct/range {v12 .. v17}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;I)V

    iget-object v12, v7, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    array-length v12, v12

    add-int/lit8 v13, v12, 0x1

    new-array v14, v9, [I

    aput v5, v14, v10

    aput v13, v14, v11

    const-class v13, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    invoke-static {v13, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    invoke-static {v7, v13, v11, v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdges(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;[[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    move v14, v10

    :goto_4
    if-gt v14, v12, :cond_a

    move v15, v11

    :goto_5
    if-ge v15, v5, :cond_8

    aget-object v16, v13, v14

    aget-object v11, v16, v15

    if-eqz v11, :cond_7

    if-ge v14, v12, :cond_7

    invoke-static {v7, v13, v14, v11}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdges(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;[[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    :cond_7
    add-int/2addr v15, v10

    const/4 v11, 0x0

    goto :goto_5

    :cond_8
    const/4 v11, 0x0

    :goto_6
    if-ge v11, v5, :cond_9

    add-int/lit8 v15, v14, -0x1

    aget-object v15, v13, v15

    aput-object v6, v15, v11

    add-int/2addr v11, v10

    goto :goto_6

    :cond_9
    add-int/2addr v14, v10

    const/4 v11, 0x0

    goto :goto_4

    :cond_a
    const v6, 0x7fffffff

    move v11, v6

    const/4 v6, 0x0

    const/4 v14, -0x1

    :goto_7
    if-ge v6, v5, :cond_d

    aget-object v15, v13, v12

    aget-object v15, v15, v6

    if-eqz v15, :cond_c

    iget v15, v15, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    if-lt v6, v10, :cond_b

    if-gt v6, v8, :cond_b

    add-int/2addr v15, v10

    :cond_b
    if-ge v15, v11, :cond_c

    move v14, v6

    move v11, v15

    :cond_c
    add-int/2addr v6, v10

    goto :goto_7

    :cond_d
    if-ltz v14, :cond_e

    new-instance v6, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;

    aget-object v7, v13, v12

    aget-object v7, v7, v14

    invoke-direct {v6, v7}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    iget-object v6, v6, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->bytes:[B

    invoke-direct {v0, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto/16 :goto_e

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to encode \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const/4 v5, 0x6

    if-eqz p5, :cond_10

    sget-object v6, Lcom/google/zxing/EncodeHintType;->FORCE_C40:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v7, p5

    check-cast v7, Ljava/util/EnumMap;

    invoke-virtual {v7, v6}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual {v7, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    move v6, v10

    goto :goto_8

    :cond_10
    const/4 v6, 0x0

    :goto_8
    new-instance v7, Lcom/google/zxing/datamatrix/encoder/C40Encoder;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v18, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    new-instance v20, Lcom/google/zxing/datamatrix/encoder/TextEncoder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    new-instance v21, Lcom/google/zxing/datamatrix/encoder/X12Encoder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/Object;-><init>()V

    new-instance v22, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/Object;-><init>()V

    new-instance v23, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/Object;-><init>()V

    move-object/from16 v19, v7

    filled-new-array/range {v18 .. v23}, [Lcom/google/zxing/datamatrix/encoder/Encoder;

    move-result-object v11

    new-instance v15, Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    invoke-direct {v15, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;-><init>(Ljava/lang/String;)V

    iput-object v1, v15, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->shape:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    const/16 v0, 0xec

    invoke-virtual {v15, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    iput v9, v15, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->skipAtEnd:I

    iget v0, v15, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/2addr v0, v4

    iput v0, v15, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_9

    :cond_11
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xed

    invoke-virtual {v15, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    iput v9, v15, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->skipAtEnd:I

    iget v0, v15, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/2addr v0, v4

    iput v0, v15, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    :cond_12
    :goto_9
    iget-object v0, v15, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    if-eqz v6, :cond_19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, v15, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    move v14, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_a
    invoke-virtual {v15}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v16

    if-eqz v16, :cond_14

    invoke-virtual {v15}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v13

    iget v4, v15, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/2addr v4, v10

    iput v4, v15, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {v7, v13, v6}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result v13

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    rem-int/2addr v4, v8

    if-nez v4, :cond_13

    iget v4, v15, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    move v14, v4

    :cond_13
    const/4 v4, 0x7

    goto :goto_a

    :cond_14
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eq v12, v4, :cond_17

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    div-int/2addr v4, v8

    mul-int/2addr v4, v9

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    add-int v17, v17, v4

    add-int/lit8 v4, v17, 0x1

    invoke-virtual {v15, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    iget-object v5, v15, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    iget v5, v5, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    sub-int/2addr v5, v4

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    rem-int/2addr v4, v8

    if-ne v4, v9, :cond_15

    if-ne v5, v9, :cond_16

    :cond_15
    if-ne v4, v10, :cond_17

    if-gt v13, v8, :cond_16

    if-eq v5, v10, :cond_17

    :cond_16
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    iput v14, v15, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    :cond_17
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_18

    const/16 v4, 0xe6

    invoke-virtual {v15, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    :cond_18
    invoke-virtual {v7, v15, v6}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    iget v4, v15, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    const/4 v5, -0x1

    iput v5, v15, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    goto :goto_b

    :cond_19
    const/4 v4, 0x0

    :cond_1a
    :goto_b
    invoke-virtual {v15}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v5

    if-eqz v5, :cond_1b

    aget-object v5, v11, v4

    invoke-interface {v5, v15}, Lcom/google/zxing/datamatrix/encoder/Encoder;->encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V

    iget v5, v15, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    if-ltz v5, :cond_1a

    const/4 v6, -0x1

    iput v6, v15, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    move v4, v5

    goto :goto_b

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v15, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    iget-object v6, v15, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    iget v6, v6, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    const/16 v7, 0xfe

    if-ge v5, v6, :cond_1c

    if-eqz v4, :cond_1c

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1c

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1c

    invoke-virtual {v15, v7}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v4, v6, :cond_1d

    const/16 v4, 0x81

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1d
    :goto_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v4, v6, :cond_1f

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v4, v10

    mul-int/lit16 v4, v4, 0x95

    rem-int/lit16 v4, v4, 0xfd

    add-int/lit16 v5, v4, 0x82

    if-gt v5, v7, :cond_1e

    goto :goto_d

    :cond_1e
    add-int/lit8 v5, v4, -0x7c

    :goto_d
    int-to-char v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4, v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v1

    sget-object v4, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->FACTOR_SETS:[I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, v1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    if-ne v4, v5, :cond_44

    new-instance v4, Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    add-int v7, v5, v6

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getInterleavedBlockCount()I

    move-result v7

    if-ne v7, v10, :cond_20

    invoke-static {v6, v0}, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->createECCBlock(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->capacity()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    new-array v6, v7, [I

    new-array v11, v7, [I

    const/4 v12, 0x0

    :goto_f
    if-ge v12, v7, :cond_21

    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v13}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataLengthForInterleavedBlock(I)I

    move-result v14

    aput v14, v6, v12

    iget v14, v1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockError:I

    aput v14, v11, v12

    move v12, v13

    goto :goto_f

    :cond_21
    const/4 v12, 0x0

    :goto_10
    if-ge v12, v7, :cond_24

    new-instance v13, Ljava/lang/StringBuilder;

    aget v14, v6, v12

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    move v14, v12

    :goto_11
    if-ge v14, v5, :cond_22

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v14, v7

    goto :goto_11

    :cond_22
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aget v14, v11, v12

    invoke-static {v14, v13}, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->createECCBlock(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    move v15, v12

    const/4 v14, 0x0

    :goto_12
    aget v18, v11, v12

    mul-int v8, v18, v7

    if-ge v15, v8, :cond_23

    add-int v8, v5, v15

    add-int/lit8 v18, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v4, v8, v14}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/2addr v15, v7

    move/from16 v14, v18

    const/4 v8, 0x3

    goto :goto_12

    :cond_23
    add-int/2addr v12, v10

    const/4 v8, 0x3

    goto :goto_10

    :cond_24
    :goto_13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    move-result v5

    iget v6, v1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    mul-int/2addr v5, v6

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    move-result v7

    iget v8, v1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    mul-int/2addr v7, v8

    invoke-direct {v4, v5, v7, v0}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;-><init>(IILjava/lang/CharSequence;)V

    const/4 v0, 0x0

    const/4 v5, 0x4

    const/4 v7, 0x0

    :goto_14
    iget v11, v4, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    iget v12, v4, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    if-ne v5, v12, :cond_25

    if-nez v7, :cond_25

    add-int/lit8 v13, v0, 0x1

    add-int/lit8 v14, v12, -0x1

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15, v0, v10}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    invoke-virtual {v4, v14, v10, v0, v9}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v10, 0x3

    invoke-virtual {v4, v14, v9, v0, v10}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    add-int/lit8 v14, v11, -0x2

    const/4 v10, 0x4

    invoke-virtual {v4, v15, v14, v0, v10}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v10, 0x1

    add-int/lit8 v14, v11, -0x1

    const/4 v9, 0x5

    invoke-virtual {v4, v15, v14, v0, v9}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v9, 0x6

    invoke-virtual {v4, v10, v14, v0, v9}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v9, 0x7

    const/4 v10, 0x2

    invoke-virtual {v4, v10, v14, v0, v9}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v9, 0x3

    const/16 v15, 0x8

    invoke-virtual {v4, v9, v14, v0, v15}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    move v0, v13

    goto :goto_15

    :cond_25
    move v10, v9

    :goto_15
    add-int/lit8 v9, v12, -0x2

    if-ne v5, v9, :cond_26

    if-nez v7, :cond_26

    const/4 v13, 0x4

    rem-int/lit8 v14, v11, 0x4

    if-eqz v14, :cond_26

    const/4 v14, 0x1

    add-int/lit8 v15, v0, 0x1

    move/from16 p1, v15

    const/4 v13, 0x3

    add-int/lit8 v15, v12, -0x3

    const/4 v13, 0x0

    invoke-virtual {v4, v15, v13, v0, v14}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    invoke-virtual {v4, v9, v13, v0, v10}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    add-int/lit8 v15, v12, -0x1

    const/4 v14, 0x3

    invoke-virtual {v4, v15, v13, v0, v14}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v15, 0x4

    add-int/lit8 v10, v11, -0x4

    invoke-virtual {v4, v13, v10, v0, v15}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    add-int/lit8 v10, v11, -0x3

    const/4 v14, 0x5

    invoke-virtual {v4, v13, v10, v0, v14}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v10, 0x2

    add-int/lit8 v14, v11, -0x2

    const/4 v10, 0x6

    invoke-virtual {v4, v13, v14, v0, v10}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v10, 0x1

    add-int/lit8 v14, v11, -0x1

    const/4 v15, 0x7

    invoke-virtual {v4, v13, v14, v0, v15}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/16 v13, 0x8

    invoke-virtual {v4, v10, v14, v0, v13}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    move/from16 v0, p1

    goto :goto_16

    :cond_26
    const/4 v10, 0x1

    const/16 v13, 0x8

    :goto_16
    if-ne v5, v9, :cond_28

    if-nez v7, :cond_28

    rem-int/lit8 v14, v11, 0x8

    const/4 v13, 0x4

    if-ne v14, v13, :cond_27

    add-int/lit8 v14, v0, 0x1

    const/4 v15, 0x3

    add-int/lit8 v13, v12, -0x3

    const/4 v15, 0x0

    invoke-virtual {v4, v13, v15, v0, v10}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v13, 0x2

    invoke-virtual {v4, v9, v15, v0, v13}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    move/from16 p1, v14

    add-int/lit8 v14, v12, -0x1

    const/4 v10, 0x3

    invoke-virtual {v4, v14, v15, v0, v10}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    add-int/lit8 v14, v11, -0x2

    const/4 v10, 0x4

    invoke-virtual {v4, v15, v14, v0, v10}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v10, 0x1

    add-int/lit8 v14, v11, -0x1

    const/4 v13, 0x5

    invoke-virtual {v4, v15, v14, v0, v13}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v13, 0x6

    invoke-virtual {v4, v10, v14, v0, v13}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v10, 0x7

    const/4 v13, 0x2

    invoke-virtual {v4, v13, v14, v0, v10}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v10, 0x3

    const/16 v15, 0x8

    invoke-virtual {v4, v10, v14, v0, v15}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    move/from16 v0, p1

    :goto_17
    const/4 v10, 0x4

    goto :goto_18

    :cond_27
    const/4 v13, 0x2

    const/16 v15, 0x8

    goto :goto_17

    :cond_28
    move v15, v13

    const/4 v13, 0x2

    goto :goto_17

    :goto_18
    add-int/lit8 v14, v12, 0x4

    if-ne v5, v14, :cond_2a

    if-ne v7, v13, :cond_2a

    rem-int/lit8 v10, v11, 0x8

    if-nez v10, :cond_29

    const/4 v10, 0x1

    add-int/lit8 v14, v0, 0x1

    add-int/lit8 v15, v12, -0x1

    const/4 v13, 0x0

    invoke-virtual {v4, v15, v13, v0, v10}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    add-int/lit8 v13, v11, -0x1

    const/4 v10, 0x2

    invoke-virtual {v4, v15, v13, v0, v10}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    move/from16 v19, v5

    const/4 v15, 0x3

    add-int/lit8 v5, v11, -0x3

    move/from16 p1, v7

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v5, v0, v15}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    add-int/lit8 v15, v11, -0x2

    const/4 v10, 0x4

    invoke-virtual {v4, v7, v15, v0, v10}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v10, 0x5

    invoke-virtual {v4, v7, v13, v0, v10}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v7, 0x6

    const/4 v10, 0x1

    invoke-virtual {v4, v10, v5, v0, v7}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v5, 0x7

    invoke-virtual {v4, v10, v15, v0, v5}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/16 v15, 0x8

    invoke-virtual {v4, v10, v13, v0, v15}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    move v0, v14

    move/from16 v13, v19

    move/from16 v14, p1

    goto :goto_1a

    :cond_29
    move/from16 v19, v5

    move/from16 p1, v7

    const/4 v5, 0x7

    const/4 v7, 0x6

    const/4 v10, 0x1

    const/16 v15, 0x8

    goto :goto_19

    :cond_2a
    move/from16 v19, v5

    move/from16 p1, v7

    const/4 v5, 0x7

    const/4 v7, 0x6

    const/4 v10, 0x1

    :goto_19
    move/from16 v14, p1

    move/from16 v13, v19

    :goto_1a
    if-ge v13, v12, :cond_2b

    if-ltz v14, :cond_2b

    invoke-virtual {v4, v14, v13}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->noBit(II)Z

    move-result v16

    if-eqz v16, :cond_2b

    add-int/lit8 v16, v0, 0x1

    invoke-virtual {v4, v13, v14, v0}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->utah(III)V

    move/from16 v0, v16

    :cond_2b
    add-int/lit8 v10, v13, -0x2

    const/16 v16, 0x2

    add-int/lit8 v5, v14, 0x2

    if-ltz v10, :cond_2c

    if-lt v5, v11, :cond_2d

    :cond_2c
    const/4 v5, -0x1

    goto :goto_1b

    :cond_2d
    move v14, v5

    move v13, v10

    const/4 v5, 0x7

    const/4 v10, 0x1

    goto :goto_1a

    :goto_1b
    add-int/2addr v13, v5

    const/4 v5, 0x5

    add-int/2addr v14, v5

    :goto_1c
    if-ltz v13, :cond_2e

    if-ge v14, v11, :cond_2e

    invoke-virtual {v4, v14, v13}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->noBit(II)Z

    move-result v5

    if-eqz v5, :cond_2e

    const/4 v5, 0x1

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v4, v13, v14, v0}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->utah(III)V

    move v0, v10

    :cond_2e
    const/4 v5, 0x2

    add-int/lit8 v10, v13, 0x2

    add-int/lit8 v5, v14, -0x2

    if-ge v10, v12, :cond_2f

    if-gez v5, :cond_30

    :cond_2f
    const/4 v5, 0x5

    goto :goto_1d

    :cond_30
    move v14, v5

    move v13, v10

    goto :goto_1c

    :goto_1d
    add-int/lit8 v10, v13, 0x5

    const/4 v13, -0x1

    add-int/2addr v14, v13

    if-lt v10, v12, :cond_43

    if-lt v14, v11, :cond_43

    const/4 v5, 0x1

    add-int/lit8 v0, v11, -0x1

    sub-int/2addr v12, v5

    invoke-virtual {v4, v0, v12}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->noBit(II)Z

    move-result v7

    iget-object v4, v4, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->bits:[B

    if-eqz v7, :cond_31

    mul-int/2addr v12, v11

    add-int/2addr v12, v0

    int-to-byte v0, v5

    aput-byte v0, v4, v12

    const/4 v5, 0x2

    add-int/lit8 v7, v11, -0x2

    mul-int/2addr v9, v11

    add-int/2addr v9, v7

    aput-byte v0, v4, v9

    :cond_31
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    move-result v0

    mul-int/2addr v0, v6

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    move-result v5

    mul-int/2addr v5, v8

    new-instance v7, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    move-result v9

    mul-int/2addr v9, v6

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    move-result v10

    const/4 v12, 0x2

    mul-int/2addr v10, v12

    add-int/2addr v10, v9

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    move-result v9

    mul-int/2addr v9, v8

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    move-result v13

    mul-int/2addr v13, v12

    add-int/2addr v13, v9

    invoke-direct {v7, v10, v13}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    const/4 v9, 0x0

    const/4 v15, 0x0

    :goto_1e
    if-ge v15, v5, :cond_3c

    rem-int v10, v15, v8

    if-nez v10, :cond_34

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1f
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    move-result v14

    mul-int/2addr v14, v6

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    move-result v16

    const/16 v17, 0x2

    mul-int/lit8 v16, v16, 0x2

    add-int v14, v16, v14

    if-ge v12, v14, :cond_33

    rem-int/lit8 v14, v12, 0x2

    if-nez v14, :cond_32

    const/4 v14, 0x1

    goto :goto_20

    :cond_32
    const/4 v14, 0x0

    :goto_20
    invoke-virtual {v7, v13, v9, v14}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    const/4 v14, 0x1

    add-int/2addr v13, v14

    add-int/2addr v12, v14

    goto :goto_1f

    :cond_33
    const/4 v14, 0x1

    add-int/2addr v9, v14

    goto :goto_21

    :cond_34
    const/4 v14, 0x1

    :goto_21
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_22
    if-ge v12, v0, :cond_39

    move/from16 p0, v0

    rem-int v0, v12, v6

    if-nez v0, :cond_35

    invoke-virtual {v7, v13, v9, v14}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/2addr v13, v14

    :cond_35
    mul-int v16, v15, v11

    add-int v16, v16, v12

    move/from16 p1, v5

    aget-byte v5, v4, v16

    if-ne v5, v14, :cond_36

    move v5, v14

    goto :goto_23

    :cond_36
    const/4 v5, 0x0

    :goto_23
    invoke-virtual {v7, v13, v9, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/lit8 v5, v13, 0x1

    move-object/from16 v16, v4

    add-int/lit8 v4, v6, -0x1

    if-ne v0, v4, :cond_38

    const/4 v0, 0x2

    rem-int/lit8 v4, v15, 0x2

    if-nez v4, :cond_37

    move v4, v14

    goto :goto_24

    :cond_37
    const/4 v4, 0x0

    :goto_24
    invoke-virtual {v7, v5, v9, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/2addr v13, v0

    goto :goto_25

    :cond_38
    move v13, v5

    :goto_25
    add-int/2addr v12, v14

    move/from16 v0, p0

    move/from16 v5, p1

    move-object/from16 v4, v16

    goto :goto_22

    :cond_39
    move/from16 p0, v0

    move-object/from16 v16, v4

    move/from16 p1, v5

    add-int/lit8 v0, v9, 0x1

    add-int/lit8 v4, v8, -0x1

    if-ne v10, v4, :cond_3b

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_26
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    move-result v10

    mul-int/2addr v10, v6

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    move-result v12

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    add-int/2addr v12, v10

    if-ge v4, v12, :cond_3a

    invoke-virtual {v7, v5, v0, v14}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/2addr v5, v14

    add-int/2addr v4, v14

    goto :goto_26

    :cond_3a
    add-int/2addr v9, v13

    goto :goto_27

    :cond_3b
    move v9, v0

    :goto_27
    add-int/2addr v15, v14

    move/from16 v0, p0

    move/from16 v5, p1

    move-object/from16 v4, v16

    goto/16 :goto_1e

    :cond_3c
    iget v0, v7, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v4, v7, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    div-int v6, v1, v0

    div-int v8, v5, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int v8, v0, v6

    sub-int/2addr v1, v8

    const/4 v9, 0x2

    div-int/lit8 v15, v1, 0x2

    mul-int v1, v4, v6

    sub-int/2addr v5, v1

    div-int/lit8 v1, v5, 0x2

    if-lt v3, v4, :cond_3e

    if-ge v2, v0, :cond_3d

    goto :goto_28

    :cond_3d
    new-instance v5, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v5, v2, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move/from16 v24, v15

    move v15, v1

    move/from16 v1, v24

    goto :goto_29

    :cond_3e
    :goto_28
    new-instance v5, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v5, v0, v4}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v1, 0x0

    const/4 v15, 0x0

    :goto_29
    iget-object v2, v5, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v2, v2

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v2, :cond_3f

    iget-object v8, v5, Lcom/google/zxing/common/BitMatrix;->bits:[I

    const/4 v11, 0x0

    aput v11, v8, v3

    const/4 v12, 0x1

    add-int/2addr v3, v12

    goto :goto_2a

    :cond_3f
    const/4 v11, 0x0

    const/4 v12, 0x1

    move v2, v15

    move v15, v11

    :goto_2b
    if-ge v15, v4, :cond_42

    move v8, v1

    move v3, v11

    :goto_2c
    if-ge v3, v0, :cond_41

    invoke-virtual {v7, v3, v15}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v9

    if-ne v9, v12, :cond_40

    invoke-virtual {v5, v8, v2, v6, v6}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_40
    add-int/2addr v3, v12

    add-int/2addr v8, v6

    goto :goto_2c

    :cond_41
    add-int/2addr v15, v12

    add-int/2addr v2, v6

    goto :goto_2b

    :cond_42
    return-object v5

    :cond_43
    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    move v5, v10

    move v10, v12

    move v7, v14

    goto/16 :goto_14

    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of codewords does not match the selected symbol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Requested dimensions can\'t be negative: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can only encode DATA_MATRIX, but got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Found empty contents"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
