.class public final Lcom/google/zxing/qrcode/decoder/Decoder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    return-void
.end method


# virtual methods
.method public final decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 8

    new-instance v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;

    invoke-direct {v0, p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, p1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, p1

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->remask()V

    iput-object p1, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    iput-object p1, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->mirror:Z

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    const/4 p1, 0x0

    :goto_1
    iget-object v3, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    iget v4, v3, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge p1, v4, :cond_2

    add-int/lit8 v4, p1, 0x1

    move v5, v4

    :goto_2
    iget v6, v3, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v5, v6, :cond_1

    invoke-virtual {v3, p1, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    invoke-virtual {v3, v5, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eq v6, v7, :cond_0

    invoke-virtual {v3, v5, p1}, Lcom/google/zxing/common/BitMatrix;->flip(II)V

    invoke-virtual {v3, p1, v5}, Lcom/google/zxing/common/BitMatrix;->flip(II)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    move p1, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p0

    new-instance p1, Lcom/google/zxing/qrcode/decoder/QRCodeDecoderMetaData;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/common/DecoderResult;->other:Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1 .. :try_end_1} :catch_2

    return-object p0

    :catch_2
    if-eqz v1, :cond_3

    throw v1

    :cond_3
    throw v2
.end method

.method public final decode(Lcom/google/zxing/qrcode/decoder/BitMatrixParser;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 33

    const/16 v2, 0x8

    const/16 v3, 0x9

    const/4 v4, 0x2

    const/4 v7, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v9

    iget-object v9, v9, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v11

    invoke-static {}, Lcom/google/zxing/qrcode/decoder/DataMask;->values()[Lcom/google/zxing/qrcode/decoder/DataMask;

    move-result-object v12

    iget-byte v10, v10, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    aget-object v10, v12, v10

    move-object/from16 v12, p1

    iget-object v12, v12, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    iget v13, v12, Lcom/google/zxing/common/BitMatrix;->height:I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v14, 0x0

    move v15, v14

    :goto_0
    if-ge v15, v13, :cond_2

    move v0, v14

    :goto_1
    if-ge v0, v13, :cond_1

    invoke-virtual {v10, v15, v0}, Lcom/google/zxing/qrcode/decoder/DataMask;->isMasked(II)Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-virtual {v12, v0, v15}, Lcom/google/zxing/common/BitMatrix;->flip(II)V

    :cond_0
    add-int/2addr v0, v7

    goto :goto_1

    :cond_1
    add-int/2addr v15, v7

    goto :goto_0

    :cond_2
    iget v0, v11, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    const/4 v10, 0x4

    mul-int/2addr v0, v10

    add-int/lit8 v15, v0, 0x11

    new-instance v5, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v5, v15, v15}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    invoke-virtual {v5, v14, v14, v3, v3}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    add-int/lit8 v15, v0, 0x9

    invoke-virtual {v5, v15, v14, v2, v3}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    invoke-virtual {v5, v14, v15, v3, v2}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    iget-object v15, v11, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    array-length v1, v15

    move v10, v14

    :goto_2
    const/4 v2, 0x5

    if-ge v10, v1, :cond_7

    aget v18, v15, v10

    add-int/lit8 v6, v18, -0x2

    :goto_3
    if-ge v14, v1, :cond_6

    if-nez v10, :cond_3

    if-eqz v14, :cond_5

    add-int/lit8 v3, v1, -0x1

    if-eq v14, v3, :cond_5

    :cond_3
    add-int/lit8 v3, v1, -0x1

    if-ne v10, v3, :cond_4

    if-eqz v14, :cond_5

    :cond_4
    aget v3, v15, v14

    sub-int/2addr v3, v4

    invoke-virtual {v5, v3, v6, v2, v2}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_5
    add-int/2addr v14, v7

    const/16 v3, 0x9

    goto :goto_3

    :cond_6
    add-int/2addr v10, v7

    const/16 v3, 0x9

    const/4 v14, 0x0

    goto :goto_2

    :cond_7
    const/4 v1, 0x6

    const/16 v3, 0x9

    invoke-virtual {v5, v1, v3, v7, v0}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    invoke-virtual {v5, v3, v1, v0, v7}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    iget v3, v11, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    const/4 v6, 0x3

    if-le v3, v1, :cond_8

    add-int/2addr v0, v1

    const/4 v3, 0x0

    invoke-virtual {v5, v0, v3, v6, v1}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    invoke-virtual {v5, v3, v0, v1, v6}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_8
    iget v0, v11, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    new-array v3, v0, [B

    add-int/lit8 v10, v13, -0x1

    move/from16 v21, v7

    move v2, v10

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_4
    if-lez v2, :cond_f

    if-ne v2, v1, :cond_9

    const/16 v19, -0x1

    add-int/lit8 v2, v2, -0x1

    :cond_9
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v13, :cond_e

    if-eqz v21, :cond_a

    sub-int v22, v10, v1

    move/from16 v6, v22

    goto :goto_6

    :cond_a
    move v6, v1

    :goto_6
    const/4 v7, 0x0

    :goto_7
    if-ge v7, v4, :cond_d

    sub-int v4, v2, v7

    invoke-virtual {v5, v4, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v25

    const/16 v23, 0x1

    if-nez v25, :cond_c

    add-int/lit8 v14, v14, 0x1

    shl-int/lit8 v15, v15, 0x1

    invoke-virtual {v12, v4, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_b

    or-int/lit8 v4, v15, 0x1

    move v15, v4

    :cond_b
    const/16 v4, 0x8

    if-ne v14, v4, :cond_c

    add-int/lit8 v4, v11, 0x1

    int-to-byte v14, v15

    aput-byte v14, v3, v11

    move v11, v4

    const/4 v14, 0x0

    const/4 v15, 0x0

    :cond_c
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x2

    goto :goto_7

    :cond_d
    const/16 v23, 0x1

    add-int/lit8 v1, v1, 0x1

    move/from16 v7, v23

    const/4 v4, 0x2

    const/4 v6, 0x3

    goto :goto_5

    :cond_e
    move/from16 v23, v7

    xor-int/lit8 v21, v21, 0x1

    add-int/lit8 v2, v2, -0x2

    const/4 v1, 0x6

    const/4 v4, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    goto :goto_4

    :cond_f
    if-ne v11, v0, :cond_46

    iget v1, v8, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    if-ne v0, v1, :cond_45

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, v8, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    aget-object v0, v1, v0

    iget-object v1, v0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    array-length v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v2, :cond_10

    aget-object v6, v1, v5

    iget v6, v6, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    add-int/2addr v4, v6

    const/4 v6, 0x1

    add-int/2addr v5, v6

    goto :goto_8

    :cond_10
    new-array v2, v4, [Lcom/google/zxing/qrcode/decoder/DataBlock;

    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_9
    iget v10, v0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    if-ge v7, v5, :cond_12

    aget-object v11, v1, v7

    const/4 v12, 0x0

    :goto_a
    iget v13, v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    if-ge v12, v13, :cond_11

    iget v13, v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I

    add-int v14, v10, v13

    const/4 v15, 0x1

    add-int/lit8 v21, v6, 0x1

    new-instance v15, Lcom/google/zxing/qrcode/decoder/DataBlock;

    new-array v14, v14, [B

    invoke-direct {v15, v13, v14}, Lcom/google/zxing/qrcode/decoder/DataBlock;-><init>(I[B)V

    aput-object v15, v2, v6

    const/4 v13, 0x1

    add-int/2addr v12, v13

    move/from16 v6, v21

    goto :goto_a

    :cond_11
    const/4 v13, 0x1

    add-int/2addr v7, v13

    goto :goto_9

    :cond_12
    const/4 v7, 0x0

    const/4 v13, 0x1

    aget-object v0, v2, v7

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    array-length v0, v0

    add-int/lit8 v1, v4, -0x1

    :goto_b
    if-ltz v1, :cond_14

    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    array-length v5, v5

    if-ne v5, v0, :cond_13

    goto :goto_c

    :cond_13
    const/4 v5, -0x1

    add-int/2addr v1, v5

    goto :goto_b

    :cond_14
    :goto_c
    add-int/2addr v1, v13

    sub-int/2addr v0, v10

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_d
    if-ge v5, v0, :cond_16

    move v10, v7

    const/4 v7, 0x0

    :goto_e
    if-ge v7, v6, :cond_15

    aget-object v11, v2, v7

    iget-object v11, v11, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    add-int/lit8 v12, v10, 0x1

    aget-byte v10, v3, v10

    aput-byte v10, v11, v5

    add-int/2addr v7, v13

    move v10, v12

    goto :goto_e

    :cond_15
    add-int/2addr v5, v13

    move v7, v10

    goto :goto_d

    :cond_16
    move v5, v1

    :goto_f
    if-ge v5, v6, :cond_17

    aget-object v10, v2, v5

    iget-object v10, v10, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    add-int/lit8 v11, v7, 0x1

    aget-byte v7, v3, v7

    aput-byte v7, v10, v0

    add-int/2addr v5, v13

    move v7, v11

    goto :goto_f

    :cond_17
    const/4 v5, 0x0

    aget-object v10, v2, v5

    iget-object v10, v10, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    array-length v10, v10

    :goto_10
    if-ge v0, v10, :cond_1a

    move v11, v7

    move v7, v5

    :goto_11
    if-ge v7, v6, :cond_19

    if-ge v7, v1, :cond_18

    move v12, v0

    goto :goto_12

    :cond_18
    add-int/lit8 v12, v0, 0x1

    :goto_12
    aget-object v14, v2, v7

    iget-object v14, v14, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    add-int/lit8 v15, v11, 0x1

    aget-byte v11, v3, v11

    aput-byte v11, v14, v12

    add-int/2addr v7, v13

    move v11, v15

    goto :goto_11

    :cond_19
    add-int/2addr v0, v13

    move v7, v11

    goto :goto_10

    :cond_1a
    move v0, v5

    move v3, v0

    :goto_13
    if-ge v3, v4, :cond_1b

    aget-object v1, v2, v3

    iget v1, v1, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    add-int/2addr v0, v1

    add-int/2addr v3, v13

    goto :goto_13

    :cond_1b
    new-array v0, v0, [B

    move v1, v5

    move v3, v1

    move v6, v3

    :goto_14
    if-ge v3, v4, :cond_1f

    aget-object v7, v2, v3

    iget-object v10, v7, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    iget v7, v7, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    array-length v11, v10

    new-array v12, v11, [I

    move v13, v5

    :goto_15
    if-ge v13, v11, :cond_1c

    aget-byte v14, v10, v13

    and-int/lit16 v14, v14, 0xff

    aput v14, v12, v13

    const/4 v14, 0x1

    add-int/2addr v13, v14

    goto :goto_15

    :cond_1c
    move-object/from16 v13, p0

    :try_start_0
    iget-object v11, v13, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    array-length v14, v10

    sub-int/2addr v14, v7

    invoke-virtual {v11, v14, v12}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decodeWithECCount(I[I)I

    move-result v11
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    move v14, v5

    :goto_16
    if-ge v14, v7, :cond_1d

    aget v15, v12, v14

    int-to-byte v15, v15

    aput-byte v15, v10, v14

    const/4 v15, 0x1

    add-int/2addr v14, v15

    goto :goto_16

    :cond_1d
    const/4 v15, 0x1

    add-int/2addr v1, v11

    move v11, v6

    move v6, v5

    :goto_17
    if-ge v6, v7, :cond_1e

    add-int/lit8 v12, v11, 0x1

    aget-byte v14, v10, v6

    aput-byte v14, v0, v11

    add-int/2addr v6, v15

    move v11, v12

    goto :goto_17

    :cond_1e
    add-int/2addr v3, v15

    move v6, v11

    goto :goto_14

    :catch_0
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_1f
    sget-object v2, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    new-instance v2, Lcom/google/zxing/common/BitSource;

    invoke-direct {v2, v0}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v5

    move/from16 v18, v7

    move/from16 v21, v18

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, 0x0

    :goto_18
    :try_start_1
    invoke-virtual {v2}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v10
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    sget-object v15, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v11, 0x7

    const/4 v12, 0x4

    if-ge v10, v12, :cond_20

    move-object v14, v15

    goto :goto_1a

    :cond_20
    :try_start_2
    invoke-virtual {v2, v12}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v10

    if-eqz v10, :cond_2a

    const/4 v13, 0x1

    if-eq v10, v13, :cond_29

    const/4 v13, 0x2

    if-eq v10, v13, :cond_28

    const/4 v13, 0x3

    if-eq v10, v13, :cond_27

    if-eq v10, v12, :cond_26

    const/4 v12, 0x5

    if-eq v10, v12, :cond_25

    if-eq v10, v11, :cond_24

    const/16 v12, 0x8

    if-eq v10, v12, :cond_23

    const/16 v12, 0x9

    if-eq v10, v12, :cond_22

    const/16 v12, 0xd

    if-ne v10, v12, :cond_21

    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_19

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_22
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_19

    :cond_23
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_19

    :cond_24
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_19

    :cond_25
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_19

    :cond_26
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_19

    :cond_27
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_19

    :cond_28
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_19

    :cond_29
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_19

    :cond_2a
    move-object v10, v15

    :goto_19
    move-object v14, v10

    :goto_1a
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-eqz v10, :cond_3d

    const/16 v12, 0x10

    const/4 v13, 0x3

    if-eq v10, v13, :cond_3b

    const/4 v5, 0x5

    if-eq v10, v5, :cond_36

    if-eq v10, v11, :cond_35

    const/16 v11, 0x8

    if-eq v10, v11, :cond_34

    const/16 v12, 0x9

    if-eq v10, v12, :cond_33

    invoke-virtual {v14, v8}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v11

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/4 v5, 0x1

    if-eq v10, v5, :cond_32

    const/4 v5, 0x2

    if-eq v10, v5, :cond_31

    const/4 v6, 0x4

    if-eq v10, v6, :cond_2f

    const/4 v6, 0x6

    if-ne v10, v6, :cond_2e

    const/16 v10, 0xd

    mul-int/lit8 v6, v11, 0xd

    invoke-virtual {v2}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v12

    if-gt v6, v12, :cond_2d

    mul-int/lit8 v6, v11, 0x2

    new-array v5, v6, [B

    const/4 v6, 0x0

    :goto_1b
    if-lez v11, :cond_2c

    invoke-virtual {v2, v10}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v12

    const/16 v10, 0xc0

    div-int/lit16 v13, v12, 0xc0

    const/16 v16, 0x8

    shl-int/lit8 v13, v13, 0x8

    rem-int/2addr v12, v10

    or-int v10, v13, v12

    const/16 v12, 0x1f00

    if-ge v10, v12, :cond_2b

    const v12, 0x8140

    :goto_1c
    add-int/2addr v10, v12

    const/16 v12, 0x8

    goto :goto_1d

    :cond_2b
    const v12, 0xc140

    goto :goto_1c

    :goto_1d
    shr-int/lit8 v13, v10, 0x8

    int-to-byte v12, v13

    aput-byte v12, v5, v6

    const/4 v12, 0x1

    add-int/lit8 v13, v6, 0x1

    int-to-byte v10, v10

    aput-byte v10, v5, v13

    const/16 v24, 0x2

    add-int/lit8 v6, v6, 0x2

    const/16 v19, -0x1

    add-int/lit8 v11, v11, -0x1

    const/16 v10, 0xd

    const/4 v13, 0x3

    goto :goto_1b

    :cond_2c
    const/16 v19, -0x1

    const/16 v24, 0x2

    new-instance v6, Ljava/lang/String;

    sget-object v10, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v6, v5, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, v15

    const/16 v6, 0x8

    const/16 v10, 0xc0

    const/16 v17, 0x9

    const/16 v20, 0x3

    :goto_1e
    move-object v15, v14

    :goto_1f
    const/16 v14, 0x80

    goto/16 :goto_24

    :cond_2d
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_2e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_2f
    move/from16 v24, v5

    const/16 v5, 0xd

    const/16 v19, -0x1

    move-object v10, v2

    move v6, v11

    move-object v11, v3

    const/16 v17, 0x9

    move v12, v6

    const/16 v20, 0x3

    move-object/from16 v13, v27

    move-object v6, v14

    move-object v14, v4

    move-object v5, v15

    move-object/from16 v15, p2

    invoke-static/range {v10 .. v15}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V

    move-object v15, v6

    :cond_30
    :goto_20
    const/16 v6, 0x8

    const/16 v10, 0xc0

    goto :goto_1f

    :cond_31
    move/from16 v24, v5

    move v6, v11

    move/from16 v17, v12

    move/from16 v20, v13

    move-object v5, v15

    const/16 v19, -0x1

    move-object v15, v14

    invoke-static {v2, v3, v6, v7}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V

    goto :goto_20

    :cond_32
    move v6, v11

    move/from16 v17, v12

    move/from16 v20, v13

    move-object v5, v15

    const/16 v19, -0x1

    const/16 v24, 0x2

    move-object v15, v14

    invoke-static {v2, v3, v6}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto :goto_20

    :cond_33
    move/from16 v17, v12

    move/from16 v20, v13

    move-object v5, v15

    const/4 v6, 0x4

    const/16 v19, -0x1

    const/16 v24, 0x2

    move-object v15, v14

    invoke-virtual {v2, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v10

    invoke-virtual {v15, v8}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v11

    const/4 v13, 0x1

    if-ne v10, v13, :cond_30

    invoke-static {v2, v3, v11}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto :goto_20

    :cond_34
    move/from16 v20, v13

    move-object v5, v15

    const/4 v13, 0x1

    const/16 v17, 0x9

    const/16 v19, -0x1

    const/16 v24, 0x2

    move-object v15, v14

    move v6, v11

    move v7, v13

    move/from16 v21, v7

    move/from16 v11, v25

    move/from16 v12, v26

    :goto_21
    const/16 v10, 0xc0

    const/16 v14, 0x80

    goto/16 :goto_25

    :cond_35
    move/from16 v20, v13

    move-object v5, v15

    const/4 v13, 0x1

    const/16 v17, 0x9

    const/16 v19, -0x1

    const/16 v24, 0x2

    move-object v15, v14

    move v7, v13

    move/from16 v18, v7

    move/from16 v11, v25

    move/from16 v12, v26

    const/16 v6, 0x8

    goto :goto_21

    :cond_36
    move/from16 v20, v13

    move-object v5, v15

    const/4 v6, 0x4

    const/16 v10, 0x8

    const/4 v13, 0x1

    const/16 v17, 0x9

    const/16 v19, -0x1

    const/16 v24, 0x2

    move-object v15, v14

    invoke-virtual {v2, v10}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v11

    const/16 v14, 0x80

    and-int/lit16 v6, v11, 0x80

    if-nez v6, :cond_37

    and-int/lit8 v6, v11, 0x7f

    :goto_22
    const/16 v10, 0xc0

    goto :goto_23

    :cond_37
    const/16 v6, 0xc0

    and-int/lit16 v13, v11, 0xc0

    if-ne v13, v14, :cond_38

    invoke-virtual {v2, v10}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    and-int/lit8 v11, v11, 0x3f

    shl-int/2addr v11, v10

    or-int/2addr v6, v11

    goto :goto_22

    :cond_38
    and-int/lit16 v6, v11, 0xe0

    const/16 v10, 0xc0

    if-ne v6, v10, :cond_3a

    invoke-virtual {v2, v12}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    and-int/lit8 v11, v11, 0x1f

    shl-int/2addr v11, v12

    or-int/2addr v6, v11

    :goto_23
    invoke-static {v6}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v27

    if-eqz v27, :cond_39

    move/from16 v11, v25

    move/from16 v12, v26

    const/16 v6, 0x8

    goto :goto_25

    :cond_39
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_3a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_3b
    move/from16 v20, v13

    move-object v5, v15

    const/16 v10, 0xc0

    const/16 v17, 0x9

    const/16 v19, -0x1

    const/16 v24, 0x2

    move-object v15, v14

    const/16 v14, 0x80

    invoke-virtual {v2}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    if-lt v6, v12, :cond_3c

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v11

    invoke-virtual {v2, v6}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v12

    goto :goto_25

    :cond_3c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3d
    move-object v5, v15

    const/16 v6, 0x8

    const/16 v10, 0xc0

    const/16 v17, 0x9

    const/16 v19, -0x1

    const/16 v20, 0x3

    const/16 v24, 0x2

    goto/16 :goto_1e

    :goto_24
    move/from16 v11, v25

    move/from16 v12, v26

    :goto_25
    if-ne v15, v5, :cond_44

    if-eqz v27, :cond_40

    if-eqz v18, :cond_3e

    const/16 v32, 0x4

    goto :goto_26

    :cond_3e
    if-eqz v21, :cond_3f

    const/16 v32, 0x6

    goto :goto_26

    :cond_3f
    move/from16 v32, v24

    goto :goto_26

    :cond_40
    if-eqz v18, :cond_41

    move/from16 v32, v20

    goto :goto_26

    :cond_41
    if-eqz v21, :cond_42

    const/16 v32, 0x5

    goto :goto_26

    :cond_42
    const/16 v32, 0x1

    :goto_26
    new-instance v2, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_43

    const/16 v28, 0x0

    goto :goto_27

    :cond_43
    move-object/from16 v28, v4

    :goto_27
    invoke-virtual {v9}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v25, v2

    move-object/from16 v26, v0

    move/from16 v30, v11

    move/from16 v31, v12

    invoke-direct/range {v25 .. v32}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;III)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/google/zxing/common/DecoderResult;->errorsCorrected:Ljava/lang/Integer;

    return-object v2

    :cond_44
    move/from16 v25, v11

    move/from16 v26, v12

    const/4 v5, 0x0

    goto/16 :goto_18

    :catch_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_46
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method
