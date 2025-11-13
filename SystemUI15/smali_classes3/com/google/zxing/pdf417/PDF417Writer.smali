.class public final Lcom/google/zxing/pdf417/PDF417Writer;
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
    .locals 25

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    const/4 v9, 0x1

    sget-object v10, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    if-ne v1, v10, :cond_4e

    new-instance v1, Lcom/google/zxing/pdf417/encoder/PDF417;

    invoke-direct {v1}, Lcom/google/zxing/pdf417/encoder/PDF417;-><init>()V

    sget-object v10, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v11, p5

    check-cast v11, Ljava/util/EnumMap;

    invoke-virtual {v11, v10}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v11, v10}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->compact:Z

    :cond_0
    sget-object v10, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v11, v10}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v11, v10}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/zxing/pdf417/encoder/Compaction;->valueOf(Ljava/lang/String;)Lcom/google/zxing/pdf417/encoder/Compaction;

    move-result-object v10

    iput-object v10, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->compaction:Lcom/google/zxing/pdf417/encoder/Compaction;

    :cond_1
    sget-object v10, Lcom/google/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v11, v10}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v11, v10}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/pdf417/encoder/Dimensions;

    iget v12, v10, Lcom/google/zxing/pdf417/encoder/Dimensions;->maxCols:I

    iput v12, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->maxCols:I

    iget v12, v10, Lcom/google/zxing/pdf417/encoder/Dimensions;->minCols:I

    iput v12, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->minCols:I

    iget v12, v10, Lcom/google/zxing/pdf417/encoder/Dimensions;->maxRows:I

    iput v12, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->maxRows:I

    iget v10, v10, Lcom/google/zxing/pdf417/encoder/Dimensions;->minRows:I

    iput v10, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->minRows:I

    :cond_2
    sget-object v10, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v11, v10}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v11, v10}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_0

    :cond_3
    const/16 v10, 0x1e

    :goto_0
    sget-object v12, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v11, v12}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v11, v12}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto :goto_1

    :cond_4
    const/4 v12, 0x2

    :goto_1
    sget-object v14, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v11, v14}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-virtual {v11, v14}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v14

    iput-object v14, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->encoding:Ljava/nio/charset/Charset;

    :cond_5
    sget-object v14, Lcom/google/zxing/EncodeHintType;->PDF417_AUTO_ECI:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v11, v14}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-virtual {v11, v14}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    move v11, v9

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    :goto_2
    const-string v14, "Error correction level must be between 0 and 8!"

    if-ltz v12, :cond_4d

    const/16 v13, 0x8

    if-gt v12, v13, :cond_4d

    add-int/lit8 v16, v12, 0x1

    shl-int v13, v9, v16

    iget-object v5, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->compaction:Lcom/google/zxing/pdf417/encoder/Compaction;

    iget-object v6, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->encoding:Ljava/nio/charset/Charset;

    sget-object v17, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_4c

    const-string v8, " (Unicode: "

    const-string v15, "Non-encodable character detected: "

    if-nez v6, :cond_8

    if-nez v11, :cond_8

    const/4 v4, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_8

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move-object/from16 v18, v14

    const/16 v14, 0xff

    if-gt v7, v14, :cond_7

    add-int/2addr v4, v9

    move-object/from16 v14, v18

    goto :goto_3

    :cond_7
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "). Consider specifying EncodeHintType.PDF417_AUTO_ECI and/or EncodeTypeHint.CHARACTER_SET."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    move-object/from16 v18, v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz v11, :cond_9

    new-instance v7, Lcom/google/zxing/common/MinimalECIInput;

    const/4 v14, -0x1

    invoke-direct {v7, v0, v6, v14}, Lcom/google/zxing/common/MinimalECIInput;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V

    goto :goto_4

    :cond_9
    new-instance v7, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;

    const/4 v14, 0x0

    invoke-direct {v7, v0, v14}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$NoECIInput;-><init>(Ljava/lang/String;I)V

    if-nez v6, :cond_a

    sget-object v6, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    goto :goto_4

    :cond_a
    sget-object v14, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {v14, v6}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    invoke-static {v6}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECI(Ljava/nio/charset/Charset;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v14

    if-eqz v14, :cond_b

    invoke-virtual {v14}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v14

    invoke-static {v4, v14}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodingECI(Ljava/lang/StringBuilder;I)V

    :cond_b
    :goto_4
    invoke-interface {v7}, Lcom/google/zxing/common/ECIInput;->length()I

    move-result v14

    sget-object v19, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder$1;->$SwitchMap$com$google$zxing$pdf417$encoder$Compaction:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v19, v5

    const/16 v19, 0x0

    if-eq v5, v9, :cond_31

    const/4 v0, 0x2

    if-eq v5, v0, :cond_2f

    const/4 v0, 0x3

    if-eq v5, v0, :cond_2e

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/16 v20, 0x0

    :goto_5
    if-ge v0, v14, :cond_d

    :goto_6
    if-ge v0, v14, :cond_c

    invoke-interface {v7, v0}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    move-result v21

    if-eqz v21, :cond_c

    move/from16 v21, v5

    invoke-interface {v7, v0}, Lcom/google/zxing/common/ECIInput;->getECIValue(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodingECI(Ljava/lang/StringBuilder;I)V

    add-int/2addr v0, v9

    move/from16 v5, v21

    goto :goto_6

    :cond_c
    move/from16 v21, v5

    if-lt v0, v14, :cond_e

    :cond_d
    move/from16 v24, v10

    move/from16 v23, v12

    goto/16 :goto_21

    :cond_e
    invoke-interface {v7}, Lcom/google/zxing/common/ECIInput;->length()I

    move-result v5

    if-ge v0, v5, :cond_11

    move v9, v0

    const/16 v22, 0x0

    :goto_7
    if-ge v9, v5, :cond_f

    invoke-interface {v7, v9}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    move-result v23

    if-nez v23, :cond_f

    move/from16 v23, v5

    invoke-interface {v7, v9}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    move-result v5

    move/from16 v24, v10

    const/16 v10, 0x30

    if-lt v5, v10, :cond_10

    const/16 v10, 0x39

    if-gt v5, v10, :cond_10

    const/4 v5, 0x1

    add-int/lit8 v22, v22, 0x1

    add-int/2addr v9, v5

    move/from16 v5, v23

    move/from16 v10, v24

    goto :goto_7

    :cond_f
    move/from16 v24, v10

    :cond_10
    move/from16 v5, v22

    goto :goto_8

    :cond_11
    move/from16 v24, v10

    const/4 v5, 0x0

    :goto_8
    const/16 v9, 0xd

    if-lt v5, v9, :cond_12

    const/16 v10, 0x386

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v7, v0, v5, v4}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Lcom/google/zxing/common/ECIInput;IILjava/lang/StringBuilder;)V

    add-int/2addr v0, v5

    move/from16 v23, v12

    const/4 v5, 0x0

    const/16 v20, 0x2

    goto/16 :goto_20

    :cond_12
    invoke-interface {v7}, Lcom/google/zxing/common/ECIInput;->length()I

    move-result v10

    move v9, v0

    :goto_9
    if-ge v9, v10, :cond_19

    const/4 v2, 0x0

    :goto_a
    const/16 v3, 0xd

    if-ge v2, v3, :cond_15

    if-ge v9, v10, :cond_14

    invoke-interface {v7, v9}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-interface {v7, v9}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    move-result v3

    move/from16 v23, v10

    const/16 v10, 0x30

    if-lt v3, v10, :cond_13

    const/16 v10, 0x39

    if-gt v3, v10, :cond_13

    const/4 v3, 0x1

    add-int/2addr v2, v3

    add-int/2addr v9, v3

    move/from16 v10, v23

    goto :goto_a

    :cond_13
    :goto_b
    const/16 v3, 0xd

    goto :goto_c

    :cond_14
    move/from16 v23, v10

    goto :goto_b

    :cond_15
    move/from16 v23, v10

    :goto_c
    if-lt v2, v3, :cond_16

    sub-int/2addr v9, v0

    sub-int/2addr v9, v2

    goto :goto_e

    :cond_16
    if-lez v2, :cond_17

    :goto_d
    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v10, v23

    goto :goto_9

    :cond_17
    invoke-interface {v7, v9}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-interface {v7, v9}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

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

    add-int/2addr v9, v2

    goto :goto_d

    :cond_19
    sub-int/2addr v9, v0

    :goto_e
    const/4 v2, 0x5

    if-ge v9, v2, :cond_1a

    if-ne v5, v14, :cond_1b

    :cond_1a
    move/from16 v23, v12

    move/from16 v10, v20

    goto/16 :goto_1e

    :cond_1b
    if-eqz v11, :cond_1c

    move-object/from16 v2, v19

    goto :goto_f

    :cond_1c
    move-object v2, v6

    :goto_f
    if-nez v2, :cond_1d

    move-object/from16 v2, v19

    goto :goto_10

    :cond_1d
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    :goto_10
    invoke-interface {v7}, Lcom/google/zxing/common/ECIInput;->length()I

    move-result v3

    move v5, v0

    :goto_11
    if-ge v5, v3, :cond_24

    move/from16 v23, v12

    const/4 v9, 0x0

    const/16 v10, 0xd

    move v12, v5

    :goto_12
    if-ge v9, v10, :cond_20

    invoke-interface {v7, v12}, Lcom/google/zxing/common/ECIInput;->isECI(I)Z

    move-result v10

    if-nez v10, :cond_20

    invoke-interface {v7, v12}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    move-result v10

    const/16 v12, 0x30

    if-lt v10, v12, :cond_20

    const/16 v12, 0x39

    if-gt v10, v12, :cond_1e

    const/4 v10, 0x1

    add-int/2addr v9, v10

    add-int v10, v5, v9

    if-lt v10, v3, :cond_1f

    :cond_1e
    :goto_13
    const/16 v10, 0xd

    goto :goto_14

    :cond_1f
    move v12, v10

    const/16 v10, 0xd

    goto :goto_12

    :cond_20
    const/16 v12, 0x39

    goto :goto_13

    :goto_14
    if-lt v9, v10, :cond_21

    :goto_15
    sub-int/2addr v5, v0

    goto :goto_17

    :cond_21
    if-eqz v2, :cond_22

    invoke-interface {v7, v5}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    move-result v9

    invoke-virtual {v2, v9}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v9

    if-eqz v9, :cond_23

    :cond_22
    const/4 v9, 0x1

    goto :goto_16

    :cond_23
    invoke-interface {v7, v5}, Lcom/google/zxing/common/ECIInput;->charAt(I)C

    move-result v0

    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_16
    add-int/2addr v5, v9

    move/from16 v12, v23

    goto :goto_11

    :cond_24
    move/from16 v23, v12

    goto :goto_15

    :goto_17
    if-nez v5, :cond_25

    const/4 v5, 0x1

    :cond_25
    if-eqz v11, :cond_26

    move-object/from16 v2, v19

    goto :goto_18

    :cond_26
    add-int v2, v0, v5

    invoke-interface {v7, v0, v2}, Lcom/google/zxing/common/ECIInput;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    :goto_18
    const/4 v3, 0x1

    if-nez v2, :cond_28

    if-eq v5, v3, :cond_27

    goto :goto_1a

    :cond_27
    :goto_19
    move/from16 v10, v20

    goto :goto_1b

    :cond_28
    :goto_1a
    if-eqz v2, :cond_2a

    array-length v9, v2

    if-ne v9, v3, :cond_2a

    goto :goto_19

    :goto_1b
    if-nez v10, :cond_2b

    if-eqz v11, :cond_29

    const/4 v9, 0x0

    invoke-static {v0, v3, v9, v7, v4}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeMultiECIBinary(IIILcom/google/zxing/common/ECIInput;Ljava/lang/StringBuilder;)V

    goto :goto_1d

    :cond_29
    const/4 v9, 0x0

    invoke-static {v2, v3, v9, v4}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIILjava/lang/StringBuilder;)V

    goto :goto_1d

    :cond_2a
    move/from16 v10, v20

    :cond_2b
    if-eqz v11, :cond_2c

    add-int v2, v0, v5

    invoke-static {v0, v2, v10, v7, v4}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeMultiECIBinary(IIILcom/google/zxing/common/ECIInput;Ljava/lang/StringBuilder;)V

    goto :goto_1c

    :cond_2c
    array-length v3, v2

    invoke-static {v2, v3, v10, v4}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIILjava/lang/StringBuilder;)V

    :goto_1c
    const/4 v10, 0x1

    const/16 v21, 0x0

    :goto_1d
    add-int/2addr v0, v5

    move/from16 v20, v10

    move/from16 v5, v21

    goto :goto_20

    :goto_1e
    if-eqz v10, :cond_2d

    const/16 v2, 0x384

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v10, 0x0

    goto :goto_1f

    :cond_2d
    move/from16 v2, v21

    :goto_1f
    invoke-static {v0, v9, v2, v7, v4}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(IIILcom/google/zxing/common/ECIInput;Ljava/lang/StringBuilder;)I

    move-result v2

    add-int/2addr v0, v9

    move v5, v2

    move/from16 v20, v10

    :goto_20
    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v12, v23

    move/from16 v10, v24

    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_2e
    move/from16 v24, v10

    move/from16 v23, v12

    const/16 v0, 0x386

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {v7, v0, v14, v4}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Lcom/google/zxing/common/ECIInput;IILjava/lang/StringBuilder;)V

    goto :goto_21

    :cond_2f
    move/from16 v24, v10

    move/from16 v23, v12

    const/4 v0, 0x0

    if-eqz v11, :cond_30

    invoke-interface {v7}, Lcom/google/zxing/common/ECIInput;->length()I

    move-result v2

    invoke-static {v0, v2, v0, v7, v4}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeMultiECIBinary(IIILcom/google/zxing/common/ECIInput;Ljava/lang/StringBuilder;)V

    goto :goto_21

    :cond_30
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x1

    invoke-static {v2, v3, v5, v4}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIILjava/lang/StringBuilder;)V

    goto :goto_21

    :cond_31
    move/from16 v24, v10

    move/from16 v23, v12

    const/4 v0, 0x0

    invoke-static {v0, v14, v0, v7, v4}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(IIILcom/google/zxing/common/ECIInput;Ljava/lang/StringBuilder;)I

    :goto_21
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->minCols:I

    const/4 v4, 0x0

    :goto_22
    iget v5, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->maxCols:I

    if-gt v3, v5, :cond_33

    const/4 v5, 0x1

    add-int/lit8 v9, v2, 0x1

    add-int/2addr v9, v13

    div-int v6, v9, v3

    add-int/lit8 v7, v6, 0x1

    mul-int v5, v3, v7

    add-int/2addr v9, v3

    if-lt v5, v9, :cond_32

    goto :goto_23

    :cond_32
    move v6, v7

    :goto_23
    iget v5, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->minRows:I

    if-ge v6, v5, :cond_34

    :cond_33
    const/4 v4, 0x1

    goto :goto_26

    :cond_34
    iget v5, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->maxRows:I

    if-le v6, v5, :cond_35

    goto :goto_24

    :cond_35
    const/16 v5, 0x11

    mul-int/lit8 v7, v3, 0x11

    add-int/lit8 v7, v7, 0x45

    int-to-float v5, v7

    const v7, 0x3eb6c8b4    # 0.357f

    mul-float/2addr v5, v7

    int-to-float v7, v6

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    div-float/2addr v5, v7

    if-eqz v19, :cond_36

    const/high16 v7, 0x40400000    # 3.0f

    sub-float v8, v5, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sub-float v7, v4, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v8, v7

    if-lez v7, :cond_36

    :goto_24
    move v5, v4

    const/4 v4, 0x1

    goto :goto_25

    :cond_36
    const/4 v4, 0x2

    new-array v7, v4, [I

    const/4 v4, 0x0

    aput v3, v7, v4

    const/4 v4, 0x1

    aput v6, v7, v4

    move-object/from16 v19, v7

    :goto_25
    add-int/2addr v3, v4

    move v4, v5

    goto :goto_22

    :goto_26
    if-nez v19, :cond_38

    iget v3, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->minCols:I

    add-int/lit8 v9, v2, 0x1

    add-int/2addr v9, v13

    div-int v5, v9, v3

    add-int/lit8 v6, v5, 0x1

    mul-int v7, v3, v6

    add-int/2addr v9, v3

    if-lt v7, v9, :cond_37

    goto :goto_27

    :cond_37
    move v5, v6

    :goto_27
    iget v6, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->minRows:I

    if-ge v5, v6, :cond_38

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v7, 0x0

    aput v3, v5, v7

    aput v6, v5, v4

    move-object/from16 v19, v5

    goto :goto_28

    :cond_38
    const/4 v7, 0x0

    :goto_28
    if-eqz v19, :cond_4b

    aget v3, v19, v7

    aget v5, v19, v4

    mul-int v6, v3, v5

    sub-int/2addr v6, v13

    add-int/lit8 v9, v2, 0x1

    if-le v6, v9, :cond_39

    sub-int/2addr v6, v2

    sub-int/2addr v6, v4

    goto :goto_29

    :cond_39
    const/4 v6, 0x0

    :goto_29
    add-int v7, v2, v13

    add-int/2addr v7, v4

    const/16 v8, 0x3a1

    if-gt v7, v8, :cond_4a

    add-int/2addr v2, v6

    add-int/2addr v2, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    int-to-char v2, v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_2a
    if-ge v0, v6, :cond_3a

    const/16 v2, 0x384

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v0, v4

    goto :goto_2a

    :cond_3a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-ltz v23, :cond_49

    move/from16 v12, v23

    const/16 v2, 0x8

    if-gt v12, v2, :cond_49

    new-array v2, v13, [C

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v14, 0x0

    :goto_2b
    if-ge v14, v6, :cond_3c

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v13, -0x1

    aget-char v9, v2, v8

    add-int/2addr v7, v9

    const/16 v9, 0x3a1

    rem-int/2addr v7, v9

    :goto_2c
    sget-object v10, Lcom/google/zxing/pdf417/encoder/PDF417ErrorCorrection;->EC_COEFFICIENTS:[[I

    if-lt v8, v4, :cond_3b

    aget-object v10, v10, v12

    aget v10, v10, v8

    mul-int/2addr v10, v7

    rem-int/2addr v10, v9

    rsub-int v10, v10, 0x3a1

    add-int/lit8 v11, v8, -0x1

    aget-char v4, v2, v11

    add-int/2addr v4, v10

    rem-int/2addr v4, v9

    int-to-char v4, v4

    aput-char v4, v2, v8

    const/4 v4, -0x1

    add-int/2addr v8, v4

    const/4 v4, 0x1

    goto :goto_2c

    :cond_3b
    aget-object v4, v10, v12

    const/4 v8, 0x0

    aget v4, v4, v8

    mul-int/2addr v7, v4

    rem-int/2addr v7, v9

    rsub-int v4, v7, 0x3a1

    rem-int/2addr v4, v9

    int-to-char v4, v4

    aput-char v4, v2, v8

    const/4 v4, 0x1

    add-int/2addr v14, v4

    goto :goto_2b

    :cond_3c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    sub-int/2addr v13, v4

    :goto_2d
    if-ltz v13, :cond_3e

    aget-char v4, v2, v13

    const/16 v7, 0x3a1

    if-eqz v4, :cond_3d

    rsub-int v4, v4, 0x3a1

    int-to-char v4, v4

    aput-char v4, v2, v13

    :cond_3d
    aget-char v4, v2, v13

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, -0x1

    add-int/2addr v13, v4

    goto :goto_2d

    :cond_3e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;

    invoke-direct {v4, v5, v3}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;-><init>(II)V

    iput-object v4, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->barcodeMatrix:Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;

    invoke-static {v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->barcodeMatrix:Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;

    const/4 v4, 0x0

    const/4 v14, 0x0

    :goto_2e
    if-ge v14, v5, :cond_43

    const/4 v6, 0x3

    rem-int/lit8 v7, v14, 0x3

    iget v8, v2, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->currentRow:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v2, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->currentRow:I

    const v8, 0x1fea8

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getCurrentRow()Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    move-result-object v10

    const/16 v11, 0x11

    invoke-static {v8, v11, v10}, Lcom/google/zxing/pdf417/encoder/PDF417;->encodeChar(IILcom/google/zxing/pdf417/encoder/BarcodeRow;)V

    if-nez v7, :cond_3f

    div-int/lit8 v8, v14, 0x3

    const/16 v10, 0x1e

    mul-int/2addr v8, v10

    invoke-static {v5, v9, v6, v8}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v11

    add-int/lit8 v13, v3, -0x1

    :goto_2f
    add-int/2addr v13, v8

    goto :goto_30

    :cond_3f
    const/16 v10, 0x1e

    if-ne v7, v9, :cond_40

    div-int/lit8 v8, v14, 0x3

    mul-int/2addr v8, v10

    mul-int/lit8 v11, v12, 0x3

    add-int/2addr v11, v8

    add-int/lit8 v13, v5, -0x1

    rem-int/lit8 v15, v13, 0x3

    add-int/2addr v11, v15

    div-int/2addr v13, v6

    goto :goto_2f

    :cond_40
    div-int/lit8 v8, v14, 0x3

    mul-int/2addr v8, v10

    add-int/lit8 v11, v3, -0x1

    add-int/2addr v11, v8

    mul-int/lit8 v13, v12, 0x3

    add-int/2addr v13, v8

    add-int/lit8 v8, v5, -0x1

    rem-int/2addr v8, v6

    add-int/2addr v13, v8

    :goto_30
    sget-object v8, Lcom/google/zxing/pdf417/encoder/PDF417;->CODEWORD_TABLE:[[I

    aget-object v9, v8, v7

    aget v9, v9, v11

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getCurrentRow()Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    move-result-object v11

    const/16 v15, 0x11

    invoke-static {v9, v15, v11}, Lcom/google/zxing/pdf417/encoder/PDF417;->encodeChar(IILcom/google/zxing/pdf417/encoder/BarcodeRow;)V

    const/4 v9, 0x0

    :goto_31
    if-ge v9, v3, :cond_41

    aget-object v11, v8, v7

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v16

    aget v11, v11, v16

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getCurrentRow()Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    move-result-object v6

    invoke-static {v11, v15, v6}, Lcom/google/zxing/pdf417/encoder/PDF417;->encodeChar(IILcom/google/zxing/pdf417/encoder/BarcodeRow;)V

    const/4 v6, 0x1

    add-int/2addr v4, v6

    add-int/2addr v9, v6

    const/4 v6, 0x3

    const/16 v15, 0x11

    goto :goto_31

    :cond_41
    const/4 v6, 0x1

    iget-boolean v9, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->compact:Z

    const v11, 0x3fa29

    if-eqz v9, :cond_42

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getCurrentRow()Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    move-result-object v7

    invoke-static {v11, v6, v7}, Lcom/google/zxing/pdf417/encoder/PDF417;->encodeChar(IILcom/google/zxing/pdf417/encoder/BarcodeRow;)V

    const/16 v9, 0x11

    goto :goto_32

    :cond_42
    aget-object v7, v8, v7

    aget v7, v7, v13

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getCurrentRow()Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    move-result-object v8

    const/16 v9, 0x11

    invoke-static {v7, v9, v8}, Lcom/google/zxing/pdf417/encoder/PDF417;->encodeChar(IILcom/google/zxing/pdf417/encoder/BarcodeRow;)V

    const/16 v7, 0x12

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getCurrentRow()Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    move-result-object v8

    invoke-static {v11, v7, v8}, Lcom/google/zxing/pdf417/encoder/PDF417;->encodeChar(IILcom/google/zxing/pdf417/encoder/BarcodeRow;)V

    :goto_32
    add-int/2addr v14, v6

    goto/16 :goto_2e

    :cond_43
    const/4 v6, 0x1

    iget-object v0, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->barcodeMatrix:Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;

    const/4 v2, 0x4

    invoke-virtual {v0, v6, v2}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    move-result-object v0

    move/from16 v2, p3

    move/from16 v3, p4

    if-le v3, v2, :cond_44

    const/4 v4, 0x1

    :goto_33
    const/4 v14, 0x0

    goto :goto_34

    :cond_44
    const/4 v4, 0x0

    goto :goto_33

    :goto_34
    aget-object v5, v0, v14

    array-length v5, v5

    array-length v6, v0

    if-ge v5, v6, :cond_45

    const/4 v5, 0x1

    goto :goto_35

    :cond_45
    move v5, v14

    :goto_35
    if-eq v4, v5, :cond_46

    invoke-static {v0}, Lcom/google/zxing/pdf417/PDF417Writer;->rotateArray([[B)[[B

    move-result-object v0

    const/4 v4, 0x1

    goto :goto_36

    :cond_46
    move v4, v14

    :goto_36
    aget-object v5, v0, v14

    array-length v5, v5

    div-int/2addr v2, v5

    array-length v5, v0

    div-int/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_48

    iget-object v0, v1, Lcom/google/zxing/pdf417/encoder/PDF417;->barcodeMatrix:Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;

    const/4 v1, 0x4

    mul-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    move-result-object v0

    if-eqz v4, :cond_47

    invoke-static {v0}, Lcom/google/zxing/pdf417/PDF417Writer;->rotateArray([[B)[[B

    move-result-object v0

    :cond_47
    move/from16 v10, v24

    invoke-static {v0, v10}, Lcom/google/zxing/pdf417/PDF417Writer;->bitMatrixFromBitArray([[BI)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    goto :goto_37

    :cond_48
    move/from16 v10, v24

    invoke-static {v0, v10}, Lcom/google/zxing/pdf417/PDF417Writer;->bitMatrixFromBitArray([[BI)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    :goto_37
    return-object v0

    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
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

    :cond_4b
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Unable to fit message in columns"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Empty message not allowed"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    move-object v1, v14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
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
