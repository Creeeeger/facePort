.class public final Lcom/google/zxing/pdf417/PDF417Writer;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public static bitMatrixFromBitArray([[BI)Lcom/google/zxing/common/BitMatrix;
    .locals 8

    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int/lit8 v3, p1, 0x2

    add-int/2addr v2, v3

    array-length v4, p0

    add-int/2addr v4, v3

    invoke-direct {v0, v2, v4}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    iget-object v2, v0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v2, v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, v0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    aput v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/google/zxing/common/BitMatrix;->height:I

    sub-int/2addr v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v1

    :goto_1
    array-length v5, p0

    if-ge v4, v5, :cond_3

    aget-object v5, p0, v4

    move v6, v1

    :goto_2
    aget-object v7, p0, v1

    array-length v7, v7

    if-ge v6, v7, :cond_2

    aget-byte v7, v5, v6

    if-ne v7, v3, :cond_1

    add-int v7, v6, p1

    invoke-virtual {v0, v7, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static rotateArray([[B)[[B
    .locals 8

    const/4 v0, 0x0

    aget-object v1, p0, v0

    array-length v1, v1

    array-length v2, p0

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    move v2, v0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    array-length v3, p0

    sub-int/2addr v3, v2

    sub-int/2addr v3, v4

    move v5, v0

    :goto_1
    aget-object v6, p0, v0

    array-length v6, v6

    if-ge v5, v6, :cond_0

    aget-object v6, v1, v5

    aget-object v7, p0, v2

    aget-byte v7, v7, v5

    aput-byte v7, v6, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 26

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    const/4 v10, 0x1

    sget-object v11, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    if-ne v1, v11, :cond_4f

    sget-object v1, Lcom/google/zxing/pdf417/encoder/Compaction;->AUTO:Lcom/google/zxing/pdf417/encoder/Compaction;

    const/4 v12, 0x0

    if-eqz p5, :cond_7

    sget-object v14, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v15, p5

    check-cast v15, Ljava/util/EnumMap;

    invoke-virtual {v15, v14}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-virtual {v15, v14}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    sget-object v4, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v15, v4}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-virtual {v15, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/pdf417/encoder/Compaction;->valueOf(Ljava/lang/String;)Lcom/google/zxing/pdf417/encoder/Compaction;

    move-result-object v1

    :cond_1
    sget-object v4, Lcom/google/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v15, v4}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    sget-object v4, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v15, v4}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual {v15, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_2
    const/16 v4, 0x1e

    :goto_1
    sget-object v5, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v15, v5}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-virtual {v15, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_2

    :cond_3
    const/4 v5, 0x2

    :goto_2
    sget-object v6, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v15, v6}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-virtual {v15, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    goto :goto_3

    :cond_4
    move-object v6, v12

    :goto_3
    sget-object v11, Lcom/google/zxing/EncodeHintType;->PDF417_AUTO_ECI:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v15, v11}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-virtual {v15, v11}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    move v11, v10

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    :cond_6
    invoke-virtual {v15, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v12

    :cond_7
    move-object v6, v12

    const/16 v4, 0x1e

    const/4 v5, 0x2

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_4
    const-string v15, "Error correction level must be between 0 and 8!"

    if-ltz v5, :cond_4e

    const/16 v12, 0x8

    if-gt v5, v12, :cond_4e

    add-int/lit8 v19, v5, 0x1

    shl-int v12, v10, v19

    sget-object v19, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_4d

    const-string v13, " (Unicode: "

    const-string v9, "Non-encodable character detected: "

    if-nez v6, :cond_9

    if-nez v11, :cond_9

    const/4 v7, 0x0

    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_9

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move-object/from16 v20, v15

    const/16 v15, 0xff

    if-gt v8, v15, :cond_8

    add-int/2addr v7, v10

    move-object/from16 v15, v20

    goto :goto_5

    :cond_8
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "). Consider specifying EncodeHintType.PDF417_AUTO_ECI and/or EncodeTypeHint.CHARACTER_SET."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    move-object/from16 v20, v15

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz v11, :cond_a

    new-instance v8, Lcom/google/zxing/common/MinimalECIInput;

    const/4 v15, -0x1

    invoke-direct {v8, v0, v6, v15}, Lcom/google/zxing/common/MinimalECIInput;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V

    goto :goto_6

    :cond_a
    new-instance v8, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v0, v8, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;->input:Ljava/lang/String;

    if-nez v6, :cond_b

    sget-object v6, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    goto :goto_6

    :cond_b
    sget-object v15, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {v15, v6}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    invoke-static {v6}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECI(Ljava/nio/charset/Charset;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v15

    if-eqz v15, :cond_c

    invoke-virtual {v15}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v15

    invoke-static {v15, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodingECI(ILjava/lang/StringBuilder;)V

    :cond_c
    :goto_6
    invoke-interface {v8}, Lcom/google/zxing/common/ECIInput;->length()I

    move-result v15

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v1, v10, :cond_32

    const/4 v0, 0x2

    if-eq v1, v0, :cond_30

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2f

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v21, 0x0

    :goto_7
    if-ge v0, v15, :cond_2e

    :goto_8
    if-ge v0, v15, :cond_d

    invoke-interface {v8, v0}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    move-result v22

    if-eqz v22, :cond_d

    move/from16 v22, v1

    invoke-interface {v8, v0}, Lcom/google/zxing/common/ECIInput;->getECIValue(I)I

    move-result v1

    invoke-static {v1, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodingECI(ILjava/lang/StringBuilder;)V

    add-int/2addr v0, v10

    move/from16 v1, v22

    goto :goto_8

    :cond_d
    move/from16 v22, v1

    if-lt v0, v15, :cond_e

    move/from16 v25, v4

    move v3, v10

    move/from16 v24, v14

    goto/16 :goto_25

    :cond_e
    invoke-interface {v8}, Lcom/google/zxing/common/ECIInput;->length()I

    move-result v1

    if-ge v0, v1, :cond_11

    move v10, v0

    const/16 v23, 0x0

    :goto_9
    if-ge v10, v1, :cond_f

    invoke-interface {v8, v10}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    move-result v24

    if-nez v24, :cond_f

    move/from16 v24, v1

    invoke-interface {v8, v10}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    move-result v1

    move/from16 v25, v4

    const/16 v4, 0x30

    if-lt v1, v4, :cond_10

    const/16 v4, 0x39

    if-gt v1, v4, :cond_10

    const/4 v1, 0x1

    add-int/lit8 v23, v23, 0x1

    add-int/2addr v10, v1

    move/from16 v1, v24

    move/from16 v4, v25

    goto :goto_9

    :cond_f
    move/from16 v25, v4

    :cond_10
    move/from16 v1, v23

    goto :goto_a

    :cond_11
    move/from16 v25, v4

    const/4 v1, 0x0

    :goto_a
    const/16 v4, 0xd

    if-lt v1, v4, :cond_12

    const/16 v10, 0x386

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v8, v0, v1, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Lcom/google/zxing/common/ECIInput;IILjava/lang/StringBuilder;)V

    add-int/2addr v0, v1

    move/from16 v24, v14

    const/4 v1, 0x0

    const/16 v21, 0x2

    goto/16 :goto_23

    :cond_12
    invoke-interface {v8}, Lcom/google/zxing/common/ECIInput;->length()I

    move-result v10

    move v4, v0

    :goto_b
    if-ge v4, v10, :cond_19

    const/4 v2, 0x0

    :goto_c
    const/16 v3, 0xd

    if-ge v2, v3, :cond_15

    if-ge v4, v10, :cond_14

    invoke-interface {v8, v4}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-interface {v8, v4}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    move-result v3

    move/from16 v24, v10

    const/16 v10, 0x30

    if-lt v3, v10, :cond_13

    const/16 v10, 0x39

    if-gt v3, v10, :cond_13

    const/4 v3, 0x1

    add-int/2addr v2, v3

    add-int/2addr v4, v3

    move/from16 v10, v24

    goto :goto_c

    :cond_13
    :goto_d
    const/16 v3, 0xd

    goto :goto_e

    :cond_14
    move/from16 v24, v10

    goto :goto_d

    :cond_15
    move/from16 v24, v10

    :goto_e
    if-lt v2, v3, :cond_16

    sub-int/2addr v4, v0

    sub-int/2addr v4, v2

    goto :goto_10

    :cond_16
    if-lez v2, :cond_17

    :goto_f
    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v10, v24

    goto :goto_b

    :cond_17
    invoke-interface {v8, v4}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-interface {v8, v4}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_18

    const/16 v3, 0xa

    if-eq v2, v3, :cond_18

    const/16 v3, 0xd

    if-eq v2, v3, :cond_18

    const/16 v3, 0x20

    if-lt v2, v3, :cond_19

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_19

    :cond_18
    const/4 v2, 0x1

    add-int/2addr v4, v2

    goto :goto_f

    :cond_19
    sub-int/2addr v4, v0

    :goto_10
    const/4 v2, 0x5

    if-ge v4, v2, :cond_1a

    if-ne v1, v15, :cond_1b

    :cond_1a
    move/from16 v24, v14

    move/from16 v10, v21

    goto/16 :goto_21

    :cond_1b
    if-eqz v11, :cond_1c

    const/4 v1, 0x0

    goto :goto_11

    :cond_1c
    move-object v1, v6

    :goto_11
    if-nez v1, :cond_1d

    const/4 v1, 0x0

    goto :goto_12

    :cond_1d
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    :goto_12
    invoke-interface {v8}, Lcom/google/zxing/common/ECIInput;->length()I

    move-result v2

    move v3, v0

    :goto_13
    if-ge v3, v2, :cond_24

    move/from16 v24, v14

    const/4 v4, 0x0

    const/16 v10, 0xd

    move v14, v3

    :goto_14
    if-ge v4, v10, :cond_20

    invoke-interface {v8, v14}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    move-result v10

    if-nez v10, :cond_20

    invoke-interface {v8, v14}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    move-result v10

    const/16 v14, 0x30

    if-lt v10, v14, :cond_20

    const/16 v14, 0x39

    if-gt v10, v14, :cond_1e

    const/4 v10, 0x1

    add-int/2addr v4, v10

    add-int v10, v3, v4

    if-lt v10, v2, :cond_1f

    :cond_1e
    :goto_15
    const/16 v10, 0xd

    goto :goto_16

    :cond_1f
    move v14, v10

    const/16 v10, 0xd

    goto :goto_14

    :cond_20
    const/16 v14, 0x39

    goto :goto_15

    :goto_16
    if-lt v4, v10, :cond_21

    :goto_17
    sub-int/2addr v3, v0

    goto :goto_19

    :cond_21
    if-eqz v1, :cond_22

    invoke-interface {v8, v3}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v4

    if-eqz v4, :cond_23

    :cond_22
    const/4 v4, 0x1

    goto :goto_18

    :cond_23
    invoke-interface {v8, v3}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    move-result v0

    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_18
    add-int/2addr v3, v4

    move/from16 v14, v24

    goto :goto_13

    :cond_24
    move/from16 v24, v14

    goto :goto_17

    :goto_19
    if-nez v3, :cond_25

    const/4 v3, 0x1

    :cond_25
    if-eqz v11, :cond_26

    const/4 v1, 0x0

    goto :goto_1a

    :cond_26
    add-int v1, v0, v3

    invoke-interface {v8, v0, v1}, Lcom/google/zxing/common/ECIInput;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    :goto_1a
    const/4 v2, 0x1

    if-nez v1, :cond_28

    if-eq v3, v2, :cond_27

    goto :goto_1c

    :cond_27
    :goto_1b
    move/from16 v10, v21

    goto :goto_1d

    :cond_28
    :goto_1c
    if-eqz v1, :cond_2a

    array-length v4, v1

    if-ne v4, v2, :cond_2a

    goto :goto_1b

    :goto_1d
    if-nez v10, :cond_2b

    if-eqz v11, :cond_29

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v8, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeMultiECIBinary(IIILcom/google/zxing/common/ECIInput;Ljava/lang/StringBuilder;)V

    goto :goto_1e

    :cond_29
    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIILjava/lang/StringBuilder;)V

    :goto_1e
    move/from16 v21, v10

    goto :goto_20

    :cond_2a
    move/from16 v10, v21

    :cond_2b
    if-eqz v11, :cond_2c

    add-int v1, v0, v3

    invoke-static {v0, v1, v10, v8, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeMultiECIBinary(IIILcom/google/zxing/common/ECIInput;Ljava/lang/StringBuilder;)V

    goto :goto_1f

    :cond_2c
    array-length v2, v1

    invoke-static {v1, v2, v10, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIILjava/lang/StringBuilder;)V

    :goto_1f
    const/16 v21, 0x1

    const/16 v22, 0x0

    :goto_20
    add-int/2addr v0, v3

    move/from16 v1, v22

    goto :goto_23

    :goto_21
    if-eqz v10, :cond_2d

    const/16 v1, 0x384

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v10, 0x0

    goto :goto_22

    :cond_2d
    move/from16 v1, v22

    :goto_22
    invoke-static {v0, v4, v1, v8, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(IIILcom/google/zxing/common/ECIInput;Ljava/lang/StringBuilder;)I

    move-result v1

    add-int/2addr v0, v4

    move/from16 v21, v10

    :goto_23
    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v14, v24

    move/from16 v4, v25

    const/4 v10, 0x1

    goto/16 :goto_7

    :cond_2e
    move/from16 v25, v4

    move/from16 v24, v14

    move v3, v10

    goto :goto_25

    :cond_2f
    move/from16 v25, v4

    move/from16 v24, v14

    const/16 v0, 0x386

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {v8, v0, v15, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Lcom/google/zxing/common/ECIInput;IILjava/lang/StringBuilder;)V

    :goto_24
    const/4 v3, 0x1

    goto :goto_25

    :cond_30
    move/from16 v25, v4

    move/from16 v24, v14

    const/4 v0, 0x0

    if-eqz v11, :cond_31

    invoke-interface {v8}, Lcom/google/zxing/common/ECIInput;->length()I

    move-result v1

    invoke-static {v0, v1, v0, v8, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeMultiECIBinary(IIILcom/google/zxing/common/ECIInput;Ljava/lang/StringBuilder;)V

    goto :goto_24

    :cond_31
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIILjava/lang/StringBuilder;)V

    goto :goto_25

    :cond_32
    move/from16 v25, v4

    move v3, v10

    move/from16 v24, v14

    const/4 v0, 0x0

    invoke-static {v0, v15, v0, v8, v7}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(IIILcom/google/zxing/common/ECIInput;Ljava/lang/StringBuilder;)I

    :goto_25
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v4, v2

    const/4 v2, 0x2

    const/16 v6, 0x1e

    const/16 v18, 0x0

    :goto_26
    if-gt v2, v6, :cond_37

    add-int/lit8 v10, v1, 0x1

    add-int/2addr v10, v12

    div-int v6, v10, v2

    add-int/lit8 v7, v6, 0x1

    mul-int v3, v2, v7

    add-int/2addr v10, v2

    if-lt v3, v10, :cond_33

    :goto_27
    const/4 v3, 0x2

    goto :goto_28

    :cond_33
    move v6, v7

    goto :goto_27

    :goto_28
    if-ge v6, v3, :cond_34

    move v4, v3

    const/4 v8, 0x1

    goto :goto_2b

    :cond_34
    const/16 v3, 0x1e

    if-le v6, v3, :cond_35

    goto :goto_29

    :cond_35
    const/16 v3, 0x11

    mul-int/lit8 v7, v2, 0x11

    add-int/lit8 v7, v7, 0x45

    int-to-float v3, v7

    const v7, 0x3eb6c8b4    # 0.357f

    mul-float/2addr v3, v7

    int-to-float v7, v6

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    div-float/2addr v3, v7

    if-eqz v18, :cond_36

    const/high16 v7, 0x40400000    # 3.0f

    sub-float v8, v3, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sub-float v7, v4, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v8, v7

    if-lez v7, :cond_36

    :goto_29
    move v3, v4

    const/4 v4, 0x2

    const/4 v8, 0x1

    goto :goto_2a

    :cond_36
    const/4 v4, 0x2

    new-array v7, v4, [I

    const/4 v8, 0x0

    aput v2, v7, v8

    const/4 v8, 0x1

    aput v6, v7, v8

    move-object/from16 v18, v7

    :goto_2a
    add-int/2addr v2, v8

    move v4, v3

    move v3, v8

    const/16 v6, 0x1e

    goto :goto_26

    :cond_37
    move v8, v3

    const/4 v4, 0x2

    :goto_2b
    if-nez v18, :cond_39

    add-int/lit8 v10, v1, 0x1

    add-int/2addr v10, v12

    div-int/lit8 v2, v10, 0x2

    add-int/lit8 v3, v2, 0x1

    mul-int v7, v4, v3

    add-int/2addr v10, v4

    if-lt v7, v10, :cond_38

    goto :goto_2c

    :cond_38
    move v2, v3

    :goto_2c
    if-ge v2, v4, :cond_39

    new-array v2, v4, [I

    const/4 v3, 0x0

    aput v4, v2, v3

    aput v4, v2, v8

    move-object/from16 v18, v2

    goto :goto_2d

    :cond_39
    const/4 v3, 0x0

    :goto_2d
    if-eqz v18, :cond_4c

    aget v2, v18, v3

    aget v3, v18, v8

    mul-int v4, v2, v3

    sub-int/2addr v4, v12

    add-int/lit8 v10, v1, 0x1

    if-le v4, v10, :cond_3a

    sub-int/2addr v4, v1

    sub-int/2addr v4, v8

    goto :goto_2e

    :cond_3a
    const/4 v4, 0x0

    :goto_2e
    add-int v6, v1, v12

    add-int/2addr v6, v8

    const/16 v7, 0x3a1

    if-gt v6, v7, :cond_4b

    add-int/2addr v1, v4

    add-int/2addr v1, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    int-to-char v1, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_2f
    if-ge v0, v4, :cond_3b

    const/16 v1, 0x384

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v0, v8

    goto :goto_2f

    :cond_3b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-ltz v5, :cond_4a

    const/16 v1, 0x8

    if-gt v5, v1, :cond_4a

    new-array v1, v12, [C

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x0

    :goto_30
    if-ge v6, v4, :cond_3d

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v9, v12, -0x1

    aget-char v10, v1, v9

    add-int/2addr v7, v10

    const/16 v10, 0x3a1

    rem-int/2addr v7, v10

    :goto_31
    sget-object v11, Lcom/google/zxing/pdf417/encoder/PDF417ErrorCorrection;->EC_COEFFICIENTS:[[I

    if-lt v9, v8, :cond_3c

    aget-object v11, v11, v5

    aget v11, v11, v9

    mul-int/2addr v11, v7

    rem-int/2addr v11, v10

    rsub-int v11, v11, 0x3a1

    add-int/lit8 v13, v9, -0x1

    aget-char v8, v1, v13

    add-int/2addr v8, v11

    rem-int/2addr v8, v10

    int-to-char v8, v8

    aput-char v8, v1, v9

    const/4 v8, -0x1

    add-int/2addr v9, v8

    const/4 v8, 0x1

    goto :goto_31

    :cond_3c
    aget-object v8, v11, v5

    const/4 v9, 0x0

    aget v8, v8, v9

    mul-int/2addr v7, v8

    rem-int/2addr v7, v10

    rsub-int v7, v7, 0x3a1

    rem-int/2addr v7, v10

    int-to-char v7, v7

    aput-char v7, v1, v9

    const/4 v7, 0x1

    add-int/2addr v6, v7

    move v8, v7

    goto :goto_30

    :cond_3d
    move v7, v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    sub-int/2addr v12, v7

    :goto_32
    if-ltz v12, :cond_3f

    aget-char v6, v1, v12

    const/16 v7, 0x3a1

    if-eqz v6, :cond_3e

    rsub-int v6, v6, 0x3a1

    int-to-char v6, v6

    aput-char v6, v1, v12

    :cond_3e
    aget-char v6, v1, v12

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, -0x1

    add-int/2addr v12, v6

    goto :goto_32

    :cond_3f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;

    invoke-direct {v4, v3, v2}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;-><init>(II)V

    invoke-static {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_33
    if-ge v1, v3, :cond_44

    const/4 v7, 0x3

    rem-int/lit8 v8, v1, 0x3

    iget v9, v4, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->currentRow:I

    const/4 v10, 0x1

    add-int/2addr v9, v10

    iput v9, v4, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->currentRow:I

    const v9, 0x1fea8

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getCurrentRow()Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    move-result-object v11

    const/16 v12, 0x11

    invoke-static {v9, v12, v11}, Lcom/google/zxing/pdf417/encoder/PDF417;->encodeChar(IILcom/google/zxing/pdf417/encoder/BarcodeRow;)V

    if-nez v8, :cond_40

    div-int/lit8 v9, v1, 0x3

    const/16 v11, 0x1e

    mul-int/2addr v9, v11

    invoke-static {v3, v10, v7, v9}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v12

    add-int/lit8 v13, v2, -0x1

    :goto_34
    add-int/2addr v13, v9

    goto :goto_35

    :cond_40
    const/16 v11, 0x1e

    if-ne v8, v10, :cond_41

    div-int/lit8 v9, v1, 0x3

    mul-int/2addr v9, v11

    mul-int/lit8 v12, v5, 0x3

    add-int/2addr v12, v9

    add-int/lit8 v13, v3, -0x1

    rem-int/lit8 v14, v13, 0x3

    add-int/2addr v12, v14

    div-int/2addr v13, v7

    goto :goto_34

    :cond_41
    div-int/lit8 v9, v1, 0x3

    mul-int/2addr v9, v11

    add-int/lit8 v12, v2, -0x1

    add-int/2addr v12, v9

    mul-int/lit8 v13, v5, 0x3

    add-int/2addr v13, v9

    add-int/lit8 v9, v3, -0x1

    rem-int/2addr v9, v7

    add-int/2addr v13, v9

    :goto_35
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417;->CODEWORD_TABLE:[[I

    aget-object v10, v9, v8

    aget v10, v10, v12

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getCurrentRow()Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    move-result-object v12

    const/16 v14, 0x11

    invoke-static {v10, v14, v12}, Lcom/google/zxing/pdf417/encoder/PDF417;->encodeChar(IILcom/google/zxing/pdf417/encoder/BarcodeRow;)V

    move v10, v6

    const/4 v6, 0x0

    :goto_36
    if-ge v6, v2, :cond_42

    aget-object v12, v9, v8

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    aget v12, v12, v15

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getCurrentRow()Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    move-result-object v15

    invoke-static {v12, v14, v15}, Lcom/google/zxing/pdf417/encoder/PDF417;->encodeChar(IILcom/google/zxing/pdf417/encoder/BarcodeRow;)V

    const/4 v12, 0x1

    add-int/2addr v10, v12

    add-int/2addr v6, v12

    const/16 v14, 0x11

    goto :goto_36

    :cond_42
    const/4 v12, 0x1

    const v6, 0x3fa29

    if-eqz v24, :cond_43

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getCurrentRow()Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    move-result-object v8

    invoke-static {v6, v12, v8}, Lcom/google/zxing/pdf417/encoder/PDF417;->encodeChar(IILcom/google/zxing/pdf417/encoder/BarcodeRow;)V

    const/16 v13, 0x11

    goto :goto_37

    :cond_43
    aget-object v8, v9, v8

    aget v8, v8, v13

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getCurrentRow()Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    move-result-object v9

    const/16 v13, 0x11

    invoke-static {v8, v13, v9}, Lcom/google/zxing/pdf417/encoder/PDF417;->encodeChar(IILcom/google/zxing/pdf417/encoder/BarcodeRow;)V

    const/16 v8, 0x12

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getCurrentRow()Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/google/zxing/pdf417/encoder/PDF417;->encodeChar(IILcom/google/zxing/pdf417/encoder/BarcodeRow;)V

    :goto_37
    add-int/2addr v1, v12

    move v6, v10

    goto/16 :goto_33

    :cond_44
    const/4 v1, 0x4

    const/4 v12, 0x1

    invoke-virtual {v4, v12, v1}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    move-result-object v0

    move/from16 v1, p3

    move/from16 v2, p4

    const/4 v3, 0x0

    if-le v2, v1, :cond_45

    const/4 v5, 0x1

    goto :goto_38

    :cond_45
    const/4 v5, 0x0

    :goto_38
    aget-object v6, v0, v3

    array-length v6, v6

    array-length v7, v0

    if-ge v6, v7, :cond_46

    const/4 v6, 0x1

    goto :goto_39

    :cond_46
    move v6, v3

    :goto_39
    if-eq v5, v6, :cond_47

    invoke-static {v0}, Lcom/google/zxing/pdf417/PDF417Writer;->rotateArray([[B)[[B

    move-result-object v0

    const/4 v5, 0x1

    goto :goto_3a

    :cond_47
    move v5, v3

    :goto_3a
    aget-object v3, v0, v3

    array-length v3, v3

    div-int/2addr v1, v3

    array-length v3, v0

    div-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_49

    const/4 v2, 0x4

    mul-int/lit8 v0, v1, 0x4

    invoke-virtual {v4, v1, v0}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    move-result-object v0

    if-eqz v5, :cond_48

    invoke-static {v0}, Lcom/google/zxing/pdf417/PDF417Writer;->rotateArray([[B)[[B

    move-result-object v0

    :cond_48
    move/from16 v4, v25

    invoke-static {v0, v4}, Lcom/google/zxing/pdf417/PDF417Writer;->bitMatrixFromBitArray([[BI)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    goto :goto_3b

    :cond_49
    move/from16 v4, v25

    invoke-static {v0, v4}, Lcom/google/zxing/pdf417/PDF417Writer;->bitMatrixFromBitArray([[BI)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    :goto_3b
    return-object v0

    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encoded message contains too many code words, message too big ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Unable to fit message in columns"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Empty message not allowed"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    move-object v1, v15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can only encode PDF_417, but got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
