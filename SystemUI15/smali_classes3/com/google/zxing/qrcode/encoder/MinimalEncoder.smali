.class public final Lcom/google/zxing/qrcode/encoder/MinimalEncoder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field public final encoders:Lcom/google/zxing/common/ECIEncoderSet;

.field public final isGS1:Z

.field public final stringToEncode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZLcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->isGS1:Z

    new-instance p3, Lcom/google/zxing/common/ECIEncoderSet;

    const/4 v0, -0x1

    invoke-direct {p3, p1, p2, v0}, Lcom/google/zxing/common/ECIEncoderSet;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V

    iput-object p3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    iput-object p4, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-void
.end method

.method public static addEdge([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V
    .locals 3

    iget v0, p2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->characterLength:I

    add-int/2addr p1, v0

    aget-object p0, p0, p1

    iget p1, p2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->charsetEncoderIndex:I

    aget-object p0, p0, p1

    iget-object p1, p2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v0, 0x4

    if-ne v1, v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Illegal mode "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    aget-object p1, p0, v0

    if-eqz p1, :cond_4

    iget v1, p2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    iget p1, p1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    if-le p1, v1, :cond_5

    :cond_4
    aput-object p2, p0, v0

    :cond_5
    return-void
.end method

.method public static canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z
    .locals 3

    sget-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    return v2

    :cond_0
    return v0

    :cond_1
    const/16 p0, 0x30

    if-lt p1, p0, :cond_2

    const/16 p0, 0x39

    if-gt p1, p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    :cond_3
    const/16 p0, 0x60

    const/4 v1, -0x1

    if-ge p1, p0, :cond_4

    sget-object p0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    aget p0, p0, p1

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    move p0, v1

    :goto_1
    if-eq p0, v1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    return v0

    :cond_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->isOnlyDoubleByteKanji(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getVersion(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/16 p0, 0x28

    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x1a

    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 p0, 0x9

    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addEdges(Lcom/google/zxing/qrcode/decoder/Version;[[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V
    .locals 17

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move/from16 v11, p3

    iget-object v12, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    iget-object v0, v12, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    array-length v0, v0

    iget v1, v12, Lcom/google/zxing/common/ECIEncoderSet;->priorityEncoderIndex:I

    iget-object v13, v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    if-ltz v1, :cond_0

    invoke-virtual {v13, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v12, v2, v1}, Lcom/google/zxing/common/ECIEncoderSet;->canEncode(CI)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v1, 0x1

    :goto_0
    move v14, v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    move v15, v1

    :goto_2
    if-ge v15, v14, :cond_2

    invoke-virtual {v13, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v12, v0, v15}, Lcom/google/zxing/common/ECIEncoderSet;->canEncode(CI)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v8, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v5, 0x1

    const/16 v16, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v3, p3

    move v4, v15

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    move-object v9, v8

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;I)V

    invoke-static {v10, v11, v9}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->addEdge([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    :cond_1
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, p0

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v13, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v2, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v9, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;I)V

    invoke-static {v10, v11, v9}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->addEdge([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    :cond_3
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v9

    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v13, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v2, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v0

    const/4 v12, 0x2

    const/4 v14, 0x1

    if-eqz v0, :cond_6

    new-instance v15, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    add-int/lit8 v0, v11, 0x1

    if-ge v0, v9, :cond_5

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v2, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move v5, v12

    goto :goto_4

    :cond_5
    :goto_3
    move v5, v14

    :goto_4
    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;I)V

    invoke-static {v10, v11, v15}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->addEdge([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    :cond_6
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v13, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v2, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v15, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    add-int/lit8 v0, v11, 0x1

    if-ge v0, v9, :cond_a

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v2, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v0, v11, 0x2

    if-ge v0, v9, :cond_9

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v2, v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    const/4 v0, 0x3

    move v5, v0

    goto :goto_7

    :cond_9
    :goto_5
    move v5, v12

    goto :goto_7

    :cond_a
    :goto_6
    move v5, v14

    :goto_7
    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;I)V

    invoke-static {v10, v11, v15}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->addEdge([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    :cond_b
    return-void
.end method

.method public final encodeSpecificVersion(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;
    .locals 12

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    iget-object v4, v3, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    array-length v4, v4

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x2

    const/4 v7, 0x4

    aput v7, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    const/4 v4, 0x0

    aput v2, v5, v4

    const-class v2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v2, v4, v5}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->addEdges(Lcom/google/zxing/qrcode/decoder/Version;[[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    :goto_0
    if-gt v6, v1, :cond_3

    move v5, v4

    :goto_1
    iget-object v8, v3, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    array-length v8, v8

    if-ge v5, v8, :cond_2

    move v8, v4

    :goto_2
    if-ge v8, v7, :cond_1

    aget-object v9, v2, v6

    aget-object v9, v9, v5

    aget-object v9, v9, v8

    if-eqz v9, :cond_0

    if-ge v6, v1, :cond_0

    invoke-virtual {p0, p1, v2, v6, v9}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->addEdges(Lcom/google/zxing/qrcode/decoder/Version;[[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, -0x1

    const v6, 0x7fffffff

    move v9, v4

    move v8, v6

    move v6, v5

    :goto_3
    iget-object v10, v3, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    array-length v10, v10

    if-ge v9, v10, :cond_6

    move v10, v4

    :goto_4
    if-ge v10, v7, :cond_5

    aget-object v11, v2, v1

    aget-object v11, v11, v9

    aget-object v11, v11, v10

    if-eqz v11, :cond_4

    iget v11, v11, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    if-ge v11, v8, :cond_4

    move v5, v9

    move v6, v10

    move v8, v11

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    if-ltz v5, :cond_7

    new-instance v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    aget-object v1, v2, v1

    aget-object v1, v1, v5

    aget-object v1, v1, v6

    invoke-direct {v0, p0, p1, v1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    return-object v0

    :cond_7
    new-instance p0, Lcom/google/zxing/WriterException;

    const-string p1, "Internal error: failed to encode \""

    const-string v1, "\""

    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
