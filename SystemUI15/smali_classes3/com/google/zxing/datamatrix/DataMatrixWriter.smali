.class public final Lcom/google/zxing/datamatrix/DataMatrixWriter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 27

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_48

    sget-object v11, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    if-ne v1, v11, :cond_47

    if-ltz v2, :cond_46

    if-ltz v3, :cond_46

    sget-object v1, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

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

    check-cast v11, Lcom/google/zxing/Dimension;

    if-eqz v11, :cond_1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    :goto_0
    sget-object v13, Lcom/google/zxing/EncodeHintType;->MAX_SIZE:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v12, v13}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/zxing/Dimension;

    if-eqz v12, :cond_2

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    :goto_1
    sget-object v13, Lcom/google/zxing/EncodeHintType;->DATA_MATRIX_COMPACT:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v14, p5

    check-cast v14, Ljava/util/EnumMap;

    invoke-virtual {v14, v13}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    const-string v15, "[)>\u001e06\u001d"

    const-string v7, "\u001e\u0004"

    const/4 v5, 0x6

    const-string v6, "[)>\u001e05\u001d"

    const/4 v8, 0x7

    if-eqz v16, :cond_10

    invoke-virtual {v14, v13}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    sget-object v13, Lcom/google/zxing/EncodeHintType;->GS1_FORMAT:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v14, v13}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-virtual {v14, v13}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    move v13, v10

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    :goto_2
    sget-object v4, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v14, v4}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-virtual {v14, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    if-eqz v13, :cond_5

    const/16 v13, 0x1d

    move/from16 v16, v13

    goto :goto_4

    :cond_5
    const/16 v16, -0x1

    :goto_4
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v9

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    const/16 v18, 0x5

    goto :goto_5

    :cond_6
    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v9

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    move/from16 v18, v5

    goto :goto_5

    :cond_7
    move-object v14, v0

    const/16 v18, 0x0

    :goto_5
    new-instance v0, Ljava/lang/String;

    new-instance v6, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    const/16 v19, 0x0

    move-object v13, v6

    const/4 v7, 0x0

    move-object v15, v4

    move-object/from16 v17, v1

    invoke-direct/range {v13 .. v19}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;II)V

    iget-object v4, v6, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    array-length v4, v4

    add-int/lit8 v13, v4, 0x1

    new-array v14, v9, [I

    aput v5, v14, v10

    const/4 v15, 0x0

    aput v13, v14, v15

    const-class v13, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    invoke-static {v13, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    invoke-static {v6, v13, v15, v7}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdges(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;[[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    move v14, v10

    :goto_6
    if-gt v14, v4, :cond_b

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v5, :cond_9

    aget-object v16, v13, v14

    aget-object v8, v16, v15

    if-eqz v8, :cond_8

    if-ge v14, v4, :cond_8

    invoke-static {v6, v13, v14, v8}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdges(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;[[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    :cond_8
    add-int/2addr v15, v10

    const/4 v8, 0x7

    goto :goto_7

    :cond_9
    const/4 v8, 0x0

    :goto_8
    if-ge v8, v5, :cond_a

    add-int/lit8 v15, v14, -0x1

    aget-object v15, v13, v15

    aput-object v7, v15, v8

    add-int/2addr v8, v10

    goto :goto_8

    :cond_a
    add-int/2addr v14, v10

    const/4 v8, 0x7

    goto :goto_6

    :cond_b
    const v7, 0x7fffffff

    const/4 v8, -0x1

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v5, :cond_e

    aget-object v15, v13, v4

    aget-object v15, v15, v14

    if-eqz v15, :cond_d

    iget v15, v15, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    if-lt v14, v10, :cond_c

    const/4 v5, 0x3

    if-gt v14, v5, :cond_c

    add-int/2addr v15, v10

    :cond_c
    if-ge v15, v7, :cond_d

    move v8, v14

    move v7, v15

    :cond_d
    add-int/2addr v14, v10

    const/4 v5, 0x6

    goto :goto_9

    :cond_e
    if-ltz v8, :cond_f

    new-instance v5, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;

    aget-object v4, v13, v4

    aget-object v4, v4, v8

    invoke-direct {v5, v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    iget-object v5, v5, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->bytes:[B

    invoke-direct {v0, v5, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto/16 :goto_10

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to encode \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    sget-object v4, Lcom/google/zxing/EncodeHintType;->FORCE_C40:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v5, p5

    check-cast v5, Ljava/util/EnumMap;

    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    move v4, v10

    goto :goto_a

    :cond_11
    const/4 v4, 0x0

    :goto_a
    new-instance v5, Lcom/google/zxing/datamatrix/encoder/C40Encoder;

    invoke-direct {v5}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;-><init>()V

    new-instance v20, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;

    invoke-direct/range {v20 .. v20}, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;-><init>()V

    new-instance v22, Lcom/google/zxing/datamatrix/encoder/TextEncoder;

    invoke-direct/range {v22 .. v22}, Lcom/google/zxing/datamatrix/encoder/TextEncoder;-><init>()V

    new-instance v23, Lcom/google/zxing/datamatrix/encoder/X12Encoder;

    invoke-direct/range {v23 .. v23}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;-><init>()V

    new-instance v24, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;

    invoke-direct/range {v24 .. v24}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;-><init>()V

    new-instance v25, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;

    invoke-direct/range {v25 .. v25}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;-><init>()V

    move-object/from16 v21, v5

    filled-new-array/range {v20 .. v25}, [Lcom/google/zxing/datamatrix/encoder/Encoder;

    move-result-object v8

    new-instance v13, Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    invoke-direct {v13, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;-><init>(Ljava/lang/String;)V

    iput-object v1, v13, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->shape:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    iput-object v11, v13, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->minSize:Lcom/google/zxing/Dimension;

    iput-object v12, v13, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->maxSize:Lcom/google/zxing/Dimension;

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    const/16 v0, 0xec

    invoke-virtual {v13, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    iput v9, v13, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->skipAtEnd:I

    iget v0, v13, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    const/4 v6, 0x7

    add-int/2addr v0, v6

    iput v0, v13, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_b

    :cond_12
    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0xed

    invoke-virtual {v13, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    iput v9, v13, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->skipAtEnd:I

    iget v0, v13, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    const/4 v6, 0x7

    add-int/2addr v0, v6

    iput v0, v13, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    :cond_13
    :goto_b
    iget-object v0, v13, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    if-eqz v4, :cond_1a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v13, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    const/4 v7, 0x0

    const/4 v14, 0x0

    :cond_14
    :goto_c
    invoke-virtual {v13}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v15

    if-eqz v15, :cond_15

    invoke-virtual {v13}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v14

    iget v15, v13, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/2addr v15, v10

    iput v15, v13, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {v5, v14, v4}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result v14

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    const/16 v17, 0x3

    rem-int/lit8 v15, v15, 0x3

    if-nez v15, :cond_14

    iget v6, v13, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    goto :goto_c

    :cond_15
    const/16 v17, 0x3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-eq v7, v15, :cond_18

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    div-int/lit8 v15, v15, 0x3

    mul-int/2addr v15, v9

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    add-int v17, v17, v15

    add-int/lit8 v15, v17, 0x1

    invoke-virtual {v13, v15}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    iget-object v10, v13, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    iget v10, v10, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    sub-int/2addr v10, v15

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    const/4 v3, 0x3

    rem-int/2addr v15, v3

    if-ne v15, v9, :cond_16

    if-ne v10, v9, :cond_17

    :cond_16
    const/4 v9, 0x1

    if-ne v15, v9, :cond_18

    if-gt v14, v3, :cond_17

    if-eq v10, v9, :cond_18

    :cond_17
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    iput v6, v13, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    :cond_18
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_19

    const/16 v3, 0xe6

    invoke-virtual {v13, v3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    :cond_19
    invoke-virtual {v5, v13, v4}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    iget v3, v13, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    const/4 v4, -0x1

    iput v4, v13, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    goto :goto_d

    :cond_1a
    const/4 v3, 0x0

    :cond_1b
    :goto_d
    invoke-virtual {v13}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v4

    if-eqz v4, :cond_1c

    aget-object v4, v8, v3

    invoke-interface {v4, v13}, Lcom/google/zxing/datamatrix/encoder/Encoder;->encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V

    iget v4, v13, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    if-ltz v4, :cond_1b

    const/4 v5, -0x1

    iput v5, v13, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    move v3, v4

    goto :goto_d

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v13, v5}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    iget-object v5, v13, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    iget v5, v5, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    const/16 v6, 0xfe

    if-ge v4, v5, :cond_1d

    if-eqz v3, :cond_1d

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1d

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1d

    invoke-virtual {v13, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v3, v5, :cond_1e

    const/16 v3, 0x81

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1e
    :goto_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v3, v5, :cond_20

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x95

    rem-int/lit16 v3, v3, 0xfd

    add-int/lit16 v4, v3, 0x82

    if-gt v4, v6, :cond_1f

    goto :goto_f

    :cond_1f
    add-int/lit8 v4, v3, -0x7c

    :goto_f
    int-to-char v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3, v1, v11, v12}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v1

    sget-object v3, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->FACTOR_SETS:[I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, v1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    if-ne v3, v4, :cond_45

    new-instance v3, Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    add-int v6, v4, v5

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getInterleavedBlockCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_21

    invoke-static {v5, v0}, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->createECCBlock(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->capacity()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    new-array v5, v6, [I

    new-array v8, v6, [I

    const/4 v9, 0x0

    :goto_11
    if-ge v9, v6, :cond_22

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v10}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataLengthForInterleavedBlock(I)I

    move-result v7

    aput v7, v5, v9

    iget v7, v1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockError:I

    aput v7, v8, v9

    move v9, v10

    const/4 v7, 0x1

    goto :goto_11

    :cond_22
    const/4 v7, 0x0

    :goto_12
    if-ge v7, v6, :cond_25

    new-instance v9, Ljava/lang/StringBuilder;

    aget v10, v5, v7

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    move v10, v7

    :goto_13
    if-ge v10, v4, :cond_23

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v10, v6

    goto :goto_13

    :cond_23
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aget v10, v8, v7

    invoke-static {v10, v9}, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->createECCBlock(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    move v11, v7

    const/4 v10, 0x0

    :goto_14
    aget v12, v8, v7

    mul-int/2addr v12, v6

    if-ge v11, v12, :cond_24

    add-int v12, v4, v11

    const/4 v13, 0x1

    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v3, v12, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/2addr v11, v6

    move v10, v14

    goto :goto_14

    :cond_24
    const/4 v13, 0x1

    add-int/2addr v7, v13

    goto :goto_12

    :cond_25
    :goto_15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    move-result v4

    iget v5, v1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    mul-int/2addr v4, v5

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    move-result v6

    iget v7, v1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    mul-int/2addr v6, v7

    invoke-direct {v3, v0, v4, v6}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;-><init>(Ljava/lang/CharSequence;II)V

    const/4 v0, 0x0

    const/4 v4, 0x4

    const/4 v15, 0x0

    :goto_16
    iget v6, v3, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    iget v8, v3, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    if-ne v4, v8, :cond_26

    if-nez v15, :cond_26

    const/4 v9, 0x1

    add-int/lit8 v10, v0, 0x1

    add-int/lit8 v11, v8, -0x1

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12, v0, v9}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v13, 0x2

    invoke-virtual {v3, v11, v9, v0, v13}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v14, 0x3

    invoke-virtual {v3, v11, v13, v0, v14}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    add-int/lit8 v11, v6, -0x2

    const/4 v14, 0x4

    invoke-virtual {v3, v12, v11, v0, v14}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    add-int/lit8 v11, v6, -0x1

    const/4 v14, 0x5

    invoke-virtual {v3, v12, v11, v0, v14}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v12, 0x6

    invoke-virtual {v3, v9, v11, v0, v12}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v9, 0x7

    invoke-virtual {v3, v13, v11, v0, v9}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v9, 0x3

    const/16 v12, 0x8

    invoke-virtual {v3, v9, v11, v0, v12}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    move v0, v10

    goto :goto_17

    :cond_26
    const/4 v13, 0x2

    :goto_17
    add-int/lit8 v9, v8, -0x2

    if-ne v4, v9, :cond_27

    if-nez v15, :cond_27

    const/4 v10, 0x4

    rem-int/lit8 v11, v6, 0x4

    if-eqz v11, :cond_27

    const/4 v11, 0x1

    add-int/lit8 v12, v0, 0x1

    const/4 v14, 0x3

    add-int/lit8 v10, v8, -0x3

    const/4 v14, 0x0

    invoke-virtual {v3, v10, v14, v0, v11}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    invoke-virtual {v3, v9, v14, v0, v13}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    add-int/lit8 v10, v8, -0x1

    const/4 v11, 0x3

    invoke-virtual {v3, v10, v14, v0, v11}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v10, 0x4

    add-int/lit8 v13, v6, -0x4

    invoke-virtual {v3, v14, v13, v0, v10}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    add-int/lit8 v10, v6, -0x3

    const/4 v11, 0x5

    invoke-virtual {v3, v14, v10, v0, v11}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v10, 0x2

    add-int/lit8 v11, v6, -0x2

    const/4 v10, 0x6

    invoke-virtual {v3, v14, v11, v0, v10}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v10, 0x1

    add-int/lit8 v11, v6, -0x1

    const/4 v13, 0x7

    invoke-virtual {v3, v14, v11, v0, v13}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/16 v13, 0x8

    invoke-virtual {v3, v10, v11, v0, v13}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    move v0, v12

    goto :goto_18

    :cond_27
    const/4 v10, 0x1

    const/16 v13, 0x8

    :goto_18
    if-ne v4, v9, :cond_29

    if-nez v15, :cond_29

    rem-int/lit8 v11, v6, 0x8

    const/4 v12, 0x4

    if-ne v11, v12, :cond_28

    add-int/lit8 v11, v0, 0x1

    const/4 v13, 0x3

    add-int/lit8 v14, v8, -0x3

    const/4 v12, 0x0

    invoke-virtual {v3, v14, v12, v0, v10}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v14, 0x2

    invoke-virtual {v3, v9, v12, v0, v14}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    move/from16 p1, v11

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v3, v11, v12, v0, v13}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    add-int/lit8 v11, v6, -0x2

    const/4 v13, 0x4

    invoke-virtual {v3, v12, v11, v0, v13}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    add-int/lit8 v11, v6, -0x1

    const/4 v13, 0x5

    invoke-virtual {v3, v12, v11, v0, v13}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v12, 0x6

    invoke-virtual {v3, v10, v11, v0, v12}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v10, 0x7

    invoke-virtual {v3, v14, v11, v0, v10}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v10, 0x3

    const/16 v12, 0x8

    invoke-virtual {v3, v10, v11, v0, v12}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    move/from16 v0, p1

    :goto_19
    const/4 v10, 0x4

    goto :goto_1b

    :cond_28
    const/16 v12, 0x8

    :goto_1a
    const/4 v14, 0x2

    goto :goto_19

    :cond_29
    move v12, v13

    goto :goto_1a

    :goto_1b
    add-int/lit8 v11, v8, 0x4

    if-ne v4, v11, :cond_2b

    if-ne v15, v14, :cond_2b

    rem-int/lit8 v10, v6, 0x8

    if-nez v10, :cond_2a

    const/4 v10, 0x1

    add-int/lit8 v11, v0, 0x1

    add-int/lit8 v12, v8, -0x1

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13, v0, v10}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    add-int/lit8 v13, v6, -0x1

    invoke-virtual {v3, v12, v13, v0, v14}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v12, 0x3

    add-int/lit8 v10, v6, -0x3

    move/from16 v19, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v10, v0, v12}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    add-int/lit8 v12, v6, -0x2

    const/4 v14, 0x4

    invoke-virtual {v3, v4, v12, v0, v14}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v14, 0x5

    invoke-virtual {v3, v4, v13, v0, v14}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v4, 0x6

    const/4 v14, 0x1

    invoke-virtual {v3, v14, v10, v0, v4}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v10, 0x7

    invoke-virtual {v3, v14, v12, v0, v10}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/16 v12, 0x8

    invoke-virtual {v3, v14, v13, v0, v12}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    move v0, v11

    :goto_1c
    move/from16 v11, v19

    goto :goto_1e

    :cond_2a
    move/from16 v19, v4

    const/4 v4, 0x6

    const/4 v10, 0x7

    const/16 v12, 0x8

    :goto_1d
    const/4 v14, 0x1

    goto :goto_1c

    :cond_2b
    move/from16 v19, v4

    const/4 v4, 0x6

    const/4 v10, 0x7

    goto :goto_1d

    :goto_1e
    if-ge v11, v8, :cond_2c

    if-ltz v15, :cond_2c

    invoke-virtual {v3, v15, v11}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->noBit(II)Z

    move-result v13

    if-eqz v13, :cond_2c

    add-int/lit8 v13, v0, 0x1

    invoke-virtual {v3, v11, v15, v0}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->utah(III)V

    move v0, v13

    :cond_2c
    add-int/lit8 v13, v11, -0x2

    const/4 v14, 0x2

    add-int/lit8 v4, v15, 0x2

    if-ltz v13, :cond_2d

    if-lt v4, v6, :cond_2e

    :cond_2d
    const/4 v4, -0x1

    goto :goto_1f

    :cond_2e
    move v15, v4

    move v11, v13

    const/4 v4, 0x6

    const/4 v14, 0x1

    goto :goto_1e

    :goto_1f
    add-int/2addr v11, v4

    const/4 v4, 0x5

    add-int/2addr v15, v4

    :goto_20
    if-ltz v11, :cond_2f

    if-ge v15, v6, :cond_2f

    invoke-virtual {v3, v15, v11}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->noBit(II)Z

    move-result v4

    if-eqz v4, :cond_2f

    const/4 v4, 0x1

    add-int/lit8 v13, v0, 0x1

    invoke-virtual {v3, v11, v15, v0}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->utah(III)V

    move v0, v13

    :cond_2f
    const/4 v4, 0x2

    add-int/lit8 v13, v11, 0x2

    add-int/lit8 v4, v15, -0x2

    if-ge v13, v8, :cond_30

    if-gez v4, :cond_31

    :cond_30
    const/4 v4, 0x5

    goto :goto_21

    :cond_31
    move v15, v4

    move v11, v13

    goto :goto_20

    :goto_21
    add-int/2addr v11, v4

    const/4 v13, -0x1

    add-int/2addr v15, v13

    if-lt v11, v8, :cond_44

    if-lt v15, v6, :cond_44

    const/4 v14, 0x1

    add-int/lit8 v0, v6, -0x1

    sub-int/2addr v8, v14

    invoke-virtual {v3, v0, v8}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->noBit(II)Z

    move-result v4

    iget-object v3, v3, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->bits:[B

    if-eqz v4, :cond_32

    mul-int/2addr v8, v6

    add-int/2addr v8, v0

    int-to-byte v0, v14

    aput-byte v0, v3, v8

    const/4 v4, 0x2

    add-int/lit8 v8, v6, -0x2

    mul-int/2addr v9, v6

    add-int/2addr v9, v8

    aput-byte v0, v3, v9

    :cond_32
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    move-result v0

    mul-int/2addr v0, v5

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    move-result v4

    mul-int/2addr v4, v7

    new-instance v8, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v9

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    move-result v10

    mul-int/2addr v10, v7

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    move-result v11

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v11, v10

    invoke-direct {v8, v9, v11}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    const/4 v9, 0x0

    const/4 v15, 0x0

    :goto_22
    if-ge v15, v4, :cond_3d

    rem-int v10, v15, v7

    if-nez v10, :cond_35

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_23
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v14

    if-ge v11, v14, :cond_34

    rem-int/lit8 v14, v11, 0x2

    if-nez v14, :cond_33

    const/4 v12, 0x1

    goto :goto_24

    :cond_33
    const/4 v12, 0x0

    :goto_24
    invoke-virtual {v8, v13, v9, v12}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    const/4 v12, 0x1

    add-int/2addr v13, v12

    add-int/2addr v11, v12

    const/4 v12, 0x2

    goto :goto_23

    :cond_34
    const/4 v12, 0x1

    add-int/2addr v9, v12

    goto :goto_25

    :cond_35
    const/4 v12, 0x1

    :goto_25
    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_26
    if-ge v11, v0, :cond_3a

    rem-int v14, v11, v5

    if-nez v14, :cond_36

    invoke-virtual {v8, v13, v9, v12}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/2addr v13, v12

    :cond_36
    mul-int v16, v15, v6

    add-int v16, v16, v11

    move/from16 p0, v0

    aget-byte v0, v3, v16

    if-ne v0, v12, :cond_37

    move v0, v12

    goto :goto_27

    :cond_37
    const/4 v0, 0x0

    :goto_27
    invoke-virtual {v8, v13, v9, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/lit8 v0, v13, 0x1

    move-object/from16 v16, v3

    add-int/lit8 v3, v5, -0x1

    if-ne v14, v3, :cond_39

    const/4 v3, 0x2

    rem-int/lit8 v14, v15, 0x2

    if-nez v14, :cond_38

    move v14, v12

    goto :goto_28

    :cond_38
    const/4 v14, 0x0

    :goto_28
    invoke-virtual {v8, v0, v9, v14}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/2addr v13, v3

    goto :goto_29

    :cond_39
    move v13, v0

    :goto_29
    add-int/2addr v11, v12

    move/from16 v0, p0

    move-object/from16 v3, v16

    goto :goto_26

    :cond_3a
    move/from16 p0, v0

    move-object/from16 v16, v3

    add-int/lit8 v0, v9, 0x1

    add-int/lit8 v3, v7, -0x1

    if-ne v10, v3, :cond_3c

    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_2a
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v11

    if-ge v3, v11, :cond_3b

    invoke-virtual {v8, v10, v0, v12}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/2addr v10, v12

    add-int/2addr v3, v12

    goto :goto_2a

    :cond_3b
    const/4 v3, 0x2

    add-int/2addr v9, v3

    goto :goto_2b

    :cond_3c
    move v9, v0

    :goto_2b
    add-int/2addr v15, v12

    move/from16 v0, p0

    move-object/from16 v3, v16

    const/4 v12, 0x2

    goto :goto_22

    :cond_3d
    iget v0, v8, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, v8, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    move/from16 v6, p4

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int v5, v1, v0

    div-int v7, v4, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int v7, v0, v5

    sub-int/2addr v1, v7

    const/4 v9, 0x2

    div-int/lit8 v15, v1, 0x2

    mul-int v1, v3, v5

    sub-int/2addr v4, v1

    div-int/lit8 v1, v4, 0x2

    if-lt v6, v3, :cond_3f

    if-ge v2, v0, :cond_3e

    goto :goto_2c

    :cond_3e
    new-instance v4, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v4, v2, v6}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move/from16 v26, v15

    move v15, v1

    move/from16 v1, v26

    goto :goto_2d

    :cond_3f
    :goto_2c
    new-instance v4, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v4, v0, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v1, 0x0

    const/4 v15, 0x0

    :goto_2d
    iget-object v2, v4, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v2, v2

    const/4 v6, 0x0

    :goto_2e
    if-ge v6, v2, :cond_40

    iget-object v7, v4, Lcom/google/zxing/common/BitMatrix;->bits:[I

    const/4 v14, 0x0

    aput v14, v7, v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    goto :goto_2e

    :cond_40
    const/4 v7, 0x1

    const/4 v14, 0x0

    move v2, v15

    move v15, v14

    :goto_2f
    if-ge v15, v3, :cond_43

    move v9, v1

    move v6, v14

    :goto_30
    if-ge v6, v0, :cond_42

    invoke-virtual {v8, v6, v15}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v10

    if-ne v10, v7, :cond_41

    invoke-virtual {v4, v9, v2, v5, v5}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_41
    add-int/2addr v6, v7

    add-int/2addr v9, v5

    goto :goto_30

    :cond_42
    add-int/2addr v15, v7

    add-int/2addr v2, v5

    goto :goto_2f

    :cond_43
    return-object v4

    :cond_44
    move/from16 v6, p4

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v14, 0x0

    move v4, v11

    goto/16 :goto_16

    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of codewords does not match the selected symbol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    move v6, v3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Requested dimensions can\'t be negative: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can only encode DATA_MATRIX, but got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Found empty contents"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
