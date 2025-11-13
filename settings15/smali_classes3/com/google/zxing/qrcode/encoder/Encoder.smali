.class public abstract Lcom/google/zxing/qrcode/encoder/Encoder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ALPHANUMERIC_TABLE:[I

.field public static final DEFAULT_BYTE_MODE_ENCODING:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->DEFAULT_BYTE_MODE_ENCODING:Ljava/nio/charset/Charset;

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/nio/charset/Charset;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v0, v1, :cond_c

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x6

    if-eq v0, v5, :cond_6

    const/16 v7, 0x8

    if-eq v0, v2, :cond_5

    if-ne v0, v6, :cond_4

    sget-object p1, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p1, p0

    rem-int/2addr p1, v5

    if-nez p1, :cond_3

    array-length p1, p0

    sub-int/2addr p1, v1

    :goto_0
    if-ge v3, p1, :cond_f

    aget-byte p3, p0, v3

    and-int/lit16 p3, p3, 0xff

    add-int/lit8 v0, v3, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr p3, v7

    or-int/2addr p3, v0

    const v0, 0x8140

    if-lt p3, v0, :cond_0

    const v1, 0x9ffc

    if-gt p3, v1, :cond_0

    :goto_1
    sub-int/2addr p3, v0

    goto :goto_2

    :cond_0
    const v0, 0xe040

    if-lt p3, v0, :cond_1

    const v0, 0xebbf

    if-gt p3, v0, :cond_1

    const v0, 0xc140

    goto :goto_1

    :cond_1
    move p3, v4

    :goto_2
    if-eq p3, v4, :cond_2

    shr-int/lit8 v0, p3, 0x8

    mul-int/lit16 v0, v0, 0xc0

    and-int/lit16 p3, p3, 0xff

    add-int/2addr v0, p3

    const/16 p3, 0xd

    invoke-virtual {p2, v0, p3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/google/zxing/WriterException;

    const-string p1, "Invalid byte sequence"

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/google/zxing/WriterException;

    const-string p1, "Kanji byte size not even"

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/google/zxing/WriterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid mode: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {p0, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p1, p0

    :goto_3
    if-ge v3, p1, :cond_f

    aget-byte p3, p0, v3

    invoke-virtual {p2, p3, v7}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    :goto_4
    if-ge v3, p1, :cond_f

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    const/16 v1, 0x60

    if-ge p3, v1, :cond_7

    aget p3, v0, p3

    goto :goto_5

    :cond_7
    move p3, v4

    :goto_5
    if-eq p3, v4, :cond_b

    add-int/lit8 v2, v3, 0x1

    if-ge v2, p1, :cond_a

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ge v2, v1, :cond_8

    aget v0, v0, v2

    goto :goto_6

    :cond_8
    move v0, v4

    :goto_6
    if-eq v0, v4, :cond_9

    mul-int/lit8 p3, p3, 0x2d

    add-int/2addr p3, v0

    const/16 v0, 0xb

    invoke-virtual {p2, p3, v0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_4

    :cond_9
    new-instance p0, Lcom/google/zxing/WriterException;

    invoke-direct {p0}, Lcom/google/zxing/WriterException;-><init>()V

    throw p0

    :cond_a
    invoke-virtual {p2, p3, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    move v3, v2

    goto :goto_4

    :cond_b
    new-instance p0, Lcom/google/zxing/WriterException;

    invoke-direct {p0}, Lcom/google/zxing/WriterException;-><init>()V

    throw p0

    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    :goto_7
    if-ge v3, p1, :cond_f

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    add-int/lit8 p3, p3, -0x30

    add-int/lit8 v0, v3, 0x2

    if-ge v0, p1, :cond_d

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 p3, p3, 0x64

    const/16 v4, 0xa

    mul-int/2addr v1, v4

    add-int/2addr v1, p3

    add-int/2addr v1, v0

    invoke-virtual {p2, v1, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v3, v3, 0x3

    goto :goto_7

    :cond_d
    add-int/lit8 v3, v3, 0x1

    if-ge v3, p1, :cond_e

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 p3, p3, 0xa

    add-int/2addr p3, v1

    const/4 v1, 0x7

    invoke-virtual {p2, p3, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    move v3, v0

    goto :goto_7

    :cond_e
    invoke-virtual {p2, p3, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_7

    :cond_f
    return-void
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    sget-object v5, Lcom/google/zxing/EncodeHintType;->GS1_FORMAT:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-eqz v2, :cond_1

    sget-object v6, Lcom/google/zxing/EncodeHintType;->QR_COMPACT:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    sget-object v7, Lcom/google/zxing/qrcode/encoder/Encoder;->DEFAULT_BYTE_MODE_ENCODING:Ljava/nio/charset/Charset;

    sget-object v8, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    if-eqz v2, :cond_2

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v4

    goto :goto_2

    :cond_2
    move v9, v3

    :goto_2
    if-eqz v9, :cond_3

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    goto :goto_3

    :cond_3
    move-object v8, v7

    :goto_3
    sget-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    sget-object v11, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v12, -0x1

    const/16 v13, 0x8

    const/4 v14, 0x4

    if-eqz v6, :cond_c

    invoke-virtual {v8, v7}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v8, 0x0

    :cond_4
    new-instance v6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    invoke-direct {v6, v0, v8, v5, v1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZLcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    sget-object v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->SMALL:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->getVersion(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    sget-object v5, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->MEDIUM:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    invoke-static {v5}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->getVersion(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v5

    sget-object v7, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->LARGE:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    invoke-static {v7}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->getVersion(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v7

    filled-new-array {v0, v5, v7}, [Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    aget-object v5, v0, v3

    invoke-virtual {v6, v5}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encodeSpecificVersion(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    move-result-object v5

    aget-object v7, v0, v4

    invoke-virtual {v6, v7}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encodeSpecificVersion(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v0, v8

    invoke-virtual {v6, v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encodeSpecificVersion(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    move-result-object v8

    filled-new-array {v5, v7, v8}, [Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    move-result-object v5

    move v7, v3

    move v8, v12

    const v9, 0x7fffffff

    :goto_4
    const/4 v15, 0x3

    if-ge v7, v15, :cond_6

    aget-object v15, v5, v7

    iget-object v3, v15, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->version:Lcom/google/zxing/qrcode/decoder/Version;

    invoke-virtual {v15, v3}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->getSize(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v3

    aget-object v15, v0, v7

    iget-object v4, v6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-static {v3, v15, v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-ge v3, v9, :cond_5

    move v9, v3

    move v8, v7

    :cond_5
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    if-ltz v8, :cond_b

    aget-object v0, v5, v8

    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    iget-object v4, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    iget-object v6, v5, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v7

    invoke-virtual {v3, v7, v14}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    iget-object v7, v5, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->this$1:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;

    iget v8, v5, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->characterLength:I

    if-lez v8, :cond_8

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->getCharacterCountIndicator()I

    move-result v9

    iget-object v15, v7, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->version:Lcom/google/zxing/qrcode/decoder/Version;

    invoke-virtual {v6, v15}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v15

    invoke-virtual {v3, v9, v15}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    :cond_8
    iget v9, v5, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->charsetEncoderIndex:I

    if-ne v6, v10, :cond_9

    iget-object v5, v7, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->this$0:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    iget-object v5, v5, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    iget-object v5, v5, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-static {v5}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECI(Ljava/nio/charset/Charset;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v5

    invoke-virtual {v3, v5, v13}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_5

    :cond_9
    if-lez v8, :cond_7

    iget-object v15, v7, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->this$0:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    iget-object v15, v15, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->stringToEncode:Ljava/lang/String;

    iget v5, v5, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->fromPosition:I

    add-int/2addr v8, v5

    invoke-virtual {v15, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v7, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->this$0:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    iget-object v7, v7, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->encoders:Lcom/google/zxing/common/ECIEncoderSet;

    iget-object v7, v7, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object v7, v7, v9

    invoke-virtual {v7}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-static {v5, v6, v3, v7}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/nio/charset/Charset;)V

    goto :goto_5

    :cond_a
    iget-object v0, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->version:Lcom/google/zxing/qrcode/decoder/Version;

    goto/16 :goto_10

    :cond_b
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data too big for any version"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    sget-object v3, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v8}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static/range {p0 .. p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->isOnlyDoubleByteKanji(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_9

    :cond_d
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_11

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v15, 0x30

    if-lt v7, v15, :cond_e

    const/16 v15, 0x39

    if-gt v7, v15, :cond_e

    const/4 v6, 0x1

    goto :goto_8

    :cond_e
    const/16 v4, 0x60

    if-ge v7, v4, :cond_f

    sget-object v4, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    aget v4, v4, v7

    goto :goto_7

    :cond_f
    move v4, v12

    :goto_7
    if-eq v4, v12, :cond_10

    const/4 v4, 0x1

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_10
    move-object v3, v11

    goto :goto_9

    :cond_11
    if-eqz v4, :cond_12

    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_9

    :cond_12
    if-eqz v6, :cond_10

    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    :goto_9
    new-instance v4, Lcom/google/zxing/common/BitArray;

    invoke-direct {v4}, Lcom/google/zxing/common/BitArray;-><init>()V

    if-ne v3, v11, :cond_13

    if-eqz v9, :cond_13

    invoke-static {v8}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECI(Ljava/nio/charset/Charset;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v6

    if-eqz v6, :cond_13

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v7

    invoke-virtual {v4, v7, v14}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    invoke-virtual {v6}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v6

    invoke-virtual {v4, v6, v13}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    :cond_13
    if-eqz v5, :cond_14

    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v5

    invoke-virtual {v4, v5, v14}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    :cond_14
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v5

    invoke-virtual {v4, v5, v14}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    new-instance v5, Lcom/google/zxing/common/BitArray;

    invoke-direct {v5}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-static {v0, v3, v5, v8}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/nio/charset/Charset;)V

    if-eqz v2, :cond_16

    sget-object v6, Lcom/google/zxing/EncodeHintType;->QR_VERSION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v6

    iget v7, v4, Lcom/google/zxing/common/BitArray;->size:I

    invoke-virtual {v3, v6}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v8

    add-int/2addr v8, v7

    iget v7, v5, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v8, v7

    invoke-static {v8, v6, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v7

    if-eqz v7, :cond_15

    goto :goto_c

    :cond_15
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data too big for requested version"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v7

    iget v6, v4, Lcom/google/zxing/common/BitArray;->size:I

    invoke-virtual {v3, v7}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v7

    add-int/2addr v7, v6

    iget v6, v5, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v7, v6

    const/4 v6, 0x1

    :goto_a
    const-string v8, "Data too big"

    const/16 v9, 0x28

    if-gt v6, v9, :cond_5b

    invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v10

    invoke-static {v7, v10, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v15

    if-eqz v15, :cond_5a

    iget v6, v4, Lcom/google/zxing/common/BitArray;->size:I

    invoke-virtual {v3, v10}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v7

    add-int/2addr v7, v6

    iget v6, v5, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v7, v6

    const/4 v6, 0x1

    :goto_b
    if-gt v6, v9, :cond_59

    invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v10

    invoke-static {v7, v10, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v15

    if-eqz v15, :cond_58

    move-object v6, v10

    :goto_c
    new-instance v7, Lcom/google/zxing/common/BitArray;

    invoke-direct {v7}, Lcom/google/zxing/common/BitArray;-><init>()V

    iget v8, v4, Lcom/google/zxing/common/BitArray;->size:I

    invoke-virtual {v7, v8}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    const/4 v9, 0x0

    :goto_d
    if-ge v9, v8, :cond_17

    invoke-virtual {v4, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    invoke-virtual {v7, v10}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_17
    if-ne v3, v11, :cond_18

    invoke-virtual {v5}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v0

    goto :goto_e

    :cond_18
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_e
    invoke-virtual {v3, v6}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v4

    const/4 v8, 0x1

    shl-int v9, v8, v4

    if-ge v0, v9, :cond_57

    invoke-virtual {v7, v0, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    iget v0, v5, Lcom/google/zxing/common/BitArray;->size:I

    iget v4, v7, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v4, v0

    invoke-virtual {v7, v4}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v0, :cond_19

    invoke-virtual {v5, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_19
    move-object v11, v3

    move-object v0, v6

    move-object v3, v7

    :goto_10
    iget-object v4, v0, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    iget-object v5, v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_11
    if-ge v7, v6, :cond_1a

    aget-object v9, v5, v7

    iget v9, v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_1a
    iget v5, v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    mul-int/2addr v8, v5

    iget v5, v0, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    sub-int v6, v5, v8

    mul-int/lit8 v7, v6, 0x8

    iget v8, v3, Lcom/google/zxing/common/BitArray;->size:I

    if-gt v8, v7, :cond_56

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v14, :cond_1b

    iget v9, v3, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v9, v7, :cond_1b

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_1b
    iget v8, v3, Lcom/google/zxing/common/BitArray;->size:I

    and-int/lit8 v8, v8, 0x7

    if-lez v8, :cond_1c

    :goto_13
    if-ge v8, v13, :cond_1c

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_1c
    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v8

    sub-int v8, v6, v8

    const/4 v9, 0x0

    :goto_14
    if-ge v9, v8, :cond_1e

    and-int/lit8 v15, v9, 0x1

    if-nez v15, :cond_1d

    const/16 v10, 0xec

    goto :goto_15

    :cond_1d
    const/16 v10, 0x11

    :goto_15
    invoke-virtual {v3, v10, v13}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    :cond_1e
    iget v8, v3, Lcom/google/zxing/common/BitArray;->size:I

    if-ne v8, v7, :cond_55

    iget-object v4, v4, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    array-length v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_16
    if-ge v8, v7, :cond_1f

    aget-object v15, v4, v8

    iget v15, v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    add-int/2addr v9, v15

    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    :cond_1f
    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v4

    if-ne v4, v6, :cond_54

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_17
    if-ge v7, v9, :cond_2a

    const/4 v14, 0x1

    new-array v12, v14, [I

    new-array v13, v14, [I

    if-ge v7, v9, :cond_29

    rem-int v14, v5, v9

    sub-int v2, v9, v14

    div-int v19, v5, v9

    add-int/lit8 v20, v19, 0x1

    div-int v21, v6, v9

    add-int/lit8 v22, v21, 0x1

    move-object/from16 v23, v0

    sub-int v0, v19, v21

    move-object/from16 v19, v11

    sub-int v11, v20, v22

    if-ne v0, v11, :cond_28

    add-int v1, v2, v14

    if-ne v9, v1, :cond_27

    add-int v1, v21, v0

    mul-int/2addr v1, v2

    add-int v20, v22, v11

    mul-int v20, v20, v14

    add-int v1, v20, v1

    if-ne v5, v1, :cond_26

    if-ge v7, v2, :cond_20

    const/4 v1, 0x0

    aput v21, v12, v1

    aput v0, v13, v1

    goto :goto_18

    :cond_20
    const/4 v1, 0x0

    aput v22, v12, v1

    aput v11, v13, v1

    :goto_18
    aget v0, v12, v1

    new-array v1, v0, [B

    mul-int/lit8 v2, v8, 0x8

    const/4 v11, 0x0

    :goto_19
    if-ge v11, v0, :cond_23

    move/from16 v21, v5

    move/from16 v20, v9

    const/16 v5, 0x8

    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_1a
    if-ge v14, v5, :cond_22

    invoke-virtual {v3, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_21

    rsub-int/lit8 v5, v14, 0x7

    const/16 v17, 0x1

    shl-int v5, v17, v5

    or-int/2addr v5, v9

    move v9, v5

    :cond_21
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v14, v14, 0x1

    const/16 v5, 0x8

    goto :goto_1a

    :cond_22
    int-to-byte v5, v9

    aput-byte v5, v1, v11

    add-int/lit8 v11, v11, 0x1

    move/from16 v9, v20

    move/from16 v5, v21

    goto :goto_19

    :cond_23
    move/from16 v21, v5

    move/from16 v20, v9

    const/4 v2, 0x0

    aget v5, v13, v2

    add-int v2, v0, v5

    new-array v2, v2, [I

    const/4 v9, 0x0

    :goto_1b
    if-ge v9, v0, :cond_24

    aget-byte v11, v1, v9

    and-int/lit16 v11, v11, 0xff

    aput v11, v2, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    :cond_24
    new-instance v9, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    sget-object v11, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v9, v11}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {v9, v5, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode(I[I)V

    new-array v9, v5, [B

    const/4 v11, 0x0

    :goto_1c
    if-ge v11, v5, :cond_25

    add-int v13, v0, v11

    aget v13, v2, v13

    int-to-byte v13, v13

    aput-byte v13, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1c

    :cond_25
    new-instance v2, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-direct {v2, v1, v9}, Lcom/google/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v0, 0x0

    aget v1, v12, v0

    add-int/2addr v8, v1

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v11, v19

    move/from16 v9, v20

    move/from16 v5, v21

    move-object/from16 v0, v23

    const/4 v12, -0x1

    const/16 v13, 0x8

    const/4 v14, 0x4

    goto/16 :goto_17

    :cond_26
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Total bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "RS blocks mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "EC bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Block ID too large"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    move-object/from16 v23, v0

    move/from16 v21, v5

    move-object/from16 v19, v11

    if-ne v6, v8, :cond_53

    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/4 v9, 0x0

    :goto_1d
    if-ge v9, v15, :cond_2d

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/qrcode/encoder/BlockPair;

    iget-object v2, v2, Lcom/google/zxing/qrcode/encoder/BlockPair;->dataBytes:[B

    array-length v3, v2

    if-ge v9, v3, :cond_2b

    aget-byte v2, v2, v9

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_1e

    :cond_2c
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    :cond_2d
    const/4 v9, 0x0

    :goto_1f
    if-ge v9, v10, :cond_30

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2e
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/qrcode/encoder/BlockPair;

    iget-object v2, v2, Lcom/google/zxing/qrcode/encoder/BlockPair;->errorCorrectionBytes:[B

    array-length v3, v2

    if-ge v9, v3, :cond_2e

    aget-byte v2, v2, v9

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_20

    :cond_2f
    add-int/lit8 v9, v9, 0x1

    goto :goto_1f

    :cond_30
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v1

    move/from16 v2, v21

    if-ne v2, v1, :cond_52

    new-instance v1, Lcom/google/zxing/qrcode/encoder/QRCode;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    iput v2, v1, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    move-object/from16 v2, p1

    iput-object v2, v1, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-object/from16 v3, v19

    iput-object v3, v1, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v6, v23

    iput-object v6, v1, Lcom/google/zxing/qrcode/encoder/QRCode;->version:Lcom/google/zxing/qrcode/decoder/Version;

    iget v3, v6, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    const/4 v10, 0x4

    mul-int/2addr v3, v10

    const/16 v4, 0x11

    add-int/2addr v3, v4

    new-instance v4, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-direct {v4, v3, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    move-object/from16 v12, p2

    if-eqz v12, :cond_32

    sget-object v3, Lcom/google/zxing/EncodeHintType;->QR_MASK_PATTERN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v12, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v12, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_31

    const/16 v5, 0x8

    if-ge v3, v5, :cond_31

    const/4 v5, 0x1

    goto :goto_21

    :cond_31
    const/4 v5, 0x0

    :goto_21
    if-eqz v5, :cond_32

    :goto_22
    const/4 v13, -0x1

    goto :goto_23

    :cond_32
    const/4 v3, -0x1

    goto :goto_22

    :goto_23
    if-ne v3, v13, :cond_51

    move v12, v13

    const/4 v9, 0x0

    const/16 v14, 0x8

    const v15, 0x7fffffff

    :goto_24
    if-ge v9, v14, :cond_50

    invoke-static {v0, v2, v6, v9, v4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    const/4 v3, 0x1

    invoke-static {v4, v3}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v5

    const/4 v3, 0x0

    invoke-static {v4, v3}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v7

    add-int/2addr v7, v5

    move v5, v3

    move v8, v5

    :goto_25
    iget v10, v4, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    add-int/lit8 v11, v10, -0x1

    iget v13, v4, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    iget-object v3, v4, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    if-ge v5, v11, :cond_35

    aget-object v10, v3, v5

    const/4 v11, 0x0

    :goto_26
    add-int/lit8 v14, v13, -0x1

    if-ge v11, v14, :cond_34

    aget-byte v14, v10, v11

    add-int/lit8 v16, v11, 0x1

    move/from16 p0, v12

    aget-byte v12, v10, v16

    if-ne v14, v12, :cond_33

    add-int/lit8 v12, v5, 0x1

    aget-object v12, v3, v12

    aget-byte v11, v12, v11

    if-ne v14, v11, :cond_33

    aget-byte v11, v12, v16

    if-ne v14, v11, :cond_33

    add-int/lit8 v8, v8, 0x1

    :cond_33
    move/from16 v12, p0

    move/from16 v11, v16

    const/16 v14, 0x8

    goto :goto_26

    :cond_34
    move/from16 p0, v12

    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    const/16 v14, 0x8

    goto :goto_25

    :cond_35
    move/from16 p0, v12

    mul-int/lit8 v8, v8, 0x3

    add-int/2addr v8, v7

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_27
    if-ge v5, v10, :cond_4b

    const/4 v11, 0x0

    :goto_28
    if-ge v11, v13, :cond_4a

    aget-object v12, v3, v5

    add-int/lit8 v14, v11, 0x6

    move-object/from16 v18, v0

    if-ge v14, v13, :cond_3f

    aget-byte v0, v12, v11

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3f

    add-int/lit8 v0, v11, 0x1

    aget-byte v0, v12, v0

    if-nez v0, :cond_3f

    add-int/lit8 v0, v11, 0x2

    aget-byte v0, v12, v0

    if-ne v0, v2, :cond_3f

    add-int/lit8 v0, v11, 0x3

    aget-byte v0, v12, v0

    if-ne v0, v2, :cond_3f

    add-int/lit8 v0, v11, 0x4

    aget-byte v0, v12, v0

    if-ne v0, v2, :cond_3f

    add-int/lit8 v0, v11, 0x5

    aget-byte v0, v12, v0

    if-nez v0, :cond_3f

    aget-byte v0, v12, v14

    if-ne v0, v2, :cond_3f

    add-int/lit8 v0, v11, -0x4

    if-ltz v0, :cond_37

    array-length v14, v12

    if-ge v14, v11, :cond_36

    goto :goto_2a

    :cond_36
    :goto_29
    if-ge v0, v11, :cond_39

    aget-byte v14, v12, v0

    if-ne v14, v2, :cond_38

    :cond_37
    :goto_2a
    const/4 v0, 0x0

    goto :goto_2b

    :cond_38
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    goto :goto_29

    :cond_39
    const/4 v0, 0x1

    :goto_2b
    if-nez v0, :cond_3e

    add-int/lit8 v0, v11, 0x7

    add-int/lit8 v2, v11, 0xb

    if-ltz v0, :cond_3b

    array-length v14, v12

    if-ge v14, v2, :cond_3a

    goto :goto_2d

    :cond_3a
    :goto_2c
    if-ge v0, v2, :cond_3d

    aget-byte v14, v12, v0

    move/from16 p2, v2

    const/4 v2, 0x1

    if-ne v14, v2, :cond_3c

    :cond_3b
    :goto_2d
    const/4 v0, 0x0

    goto :goto_2e

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, p2

    goto :goto_2c

    :cond_3d
    const/4 v0, 0x1

    :goto_2e
    if-eqz v0, :cond_3f

    :cond_3e
    add-int/lit8 v7, v7, 0x1

    :cond_3f
    add-int/lit8 v0, v5, 0x6

    if-ge v0, v10, :cond_49

    aget-object v2, v3, v5

    aget-byte v2, v2, v11

    const/4 v12, 0x1

    if-ne v2, v12, :cond_49

    add-int/lit8 v2, v5, 0x1

    aget-object v2, v3, v2

    aget-byte v2, v2, v11

    if-nez v2, :cond_49

    add-int/lit8 v2, v5, 0x2

    aget-object v2, v3, v2

    aget-byte v2, v2, v11

    if-ne v2, v12, :cond_49

    add-int/lit8 v2, v5, 0x3

    aget-object v2, v3, v2

    aget-byte v2, v2, v11

    if-ne v2, v12, :cond_49

    add-int/lit8 v2, v5, 0x4

    aget-object v2, v3, v2

    aget-byte v2, v2, v11

    if-ne v2, v12, :cond_49

    add-int/lit8 v2, v5, 0x5

    aget-object v2, v3, v2

    aget-byte v2, v2, v11

    if-nez v2, :cond_49

    aget-object v0, v3, v0

    aget-byte v0, v0, v11

    if-ne v0, v12, :cond_49

    add-int/lit8 v0, v5, -0x4

    if-ltz v0, :cond_41

    array-length v2, v3

    if-ge v2, v5, :cond_40

    goto :goto_30

    :cond_40
    :goto_2f
    if-ge v0, v5, :cond_43

    aget-object v2, v3, v0

    aget-byte v2, v2, v11

    const/4 v12, 0x1

    if-ne v2, v12, :cond_42

    :cond_41
    :goto_30
    const/4 v0, 0x0

    goto :goto_31

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_43
    const/4 v0, 0x1

    :goto_31
    if-nez v0, :cond_48

    add-int/lit8 v0, v5, 0x7

    add-int/lit8 v2, v5, 0xb

    if-ltz v0, :cond_45

    array-length v12, v3

    if-ge v12, v2, :cond_44

    goto :goto_33

    :cond_44
    :goto_32
    if-ge v0, v2, :cond_47

    aget-object v12, v3, v0

    aget-byte v12, v12, v11

    const/4 v14, 0x1

    if-ne v12, v14, :cond_46

    :cond_45
    :goto_33
    const/4 v0, 0x0

    goto :goto_34

    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_47
    const/4 v0, 0x1

    :goto_34
    if-eqz v0, :cond_49

    :cond_48
    add-int/lit8 v7, v7, 0x1

    :cond_49
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p1

    move-object/from16 v0, v18

    goto/16 :goto_28

    :cond_4a
    move-object/from16 v18, v0

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p1

    goto/16 :goto_27

    :cond_4b
    move-object/from16 v18, v0

    mul-int/lit8 v7, v7, 0x28

    add-int/2addr v7, v8

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_35
    if-ge v0, v10, :cond_4e

    aget-object v5, v3, v0

    const/4 v8, 0x0

    :goto_36
    if-ge v8, v13, :cond_4d

    aget-byte v11, v5, v8

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4c

    add-int/lit8 v2, v2, 0x1

    :cond_4c
    add-int/lit8 v8, v8, 0x1

    goto :goto_36

    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_4e
    mul-int/2addr v10, v13

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    div-int/2addr v0, v10

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v7

    if-ge v0, v15, :cond_4f

    move v15, v0

    move v12, v9

    goto :goto_37

    :cond_4f
    move/from16 v12, p0

    :goto_37
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p1

    move-object/from16 v0, v18

    const/16 v14, 0x8

    goto/16 :goto_24

    :cond_50
    move-object/from16 v18, v0

    move/from16 p0, v12

    move/from16 v3, p0

    goto :goto_38

    :cond_51
    move-object/from16 v18, v0

    :goto_38
    iput v3, v1, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    move-object/from16 v2, p1

    move-object/from16 v0, v18

    invoke-static {v0, v2, v6, v3, v4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    iput-object v4, v1, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    return-object v1

    :cond_52
    new-instance v1, Lcom/google/zxing/WriterException;

    const-string v3, "Interleaving error: "

    const-string v4, " and "

    invoke-static {v2, v3, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " differ."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_53
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Bits size does not equal capacity"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data bits cannot fit in the QR Code"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v3, Lcom/google/zxing/common/BitArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is bigger than "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x1

    sub-int/2addr v9, v14

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_58
    move v13, v12

    move v10, v14

    const/4 v14, 0x1

    move-object v12, v2

    move-object v2, v1

    const/4 v1, 0x0

    add-int/lit8 v6, v6, 0x1

    move-object v1, v2

    move v14, v10

    move-object v2, v12

    move v12, v13

    const/16 v13, 0x8

    goto/16 :goto_b

    :cond_59
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    move v13, v12

    move v10, v14

    const/4 v14, 0x1

    move-object v12, v2

    move-object v2, v1

    const/4 v1, 0x0

    add-int/lit8 v6, v6, 0x1

    move-object v1, v2

    move v14, v10

    move-object v2, v12

    move v12, v13

    const/16 v13, 0x8

    goto/16 :goto_a

    :cond_5b
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isOnlyDoubleByteKanji(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length v0, p0

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_4

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x81

    if-lt v3, v4, :cond_1

    const/16 v4, 0x9f

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0xe0

    if-lt v3, v4, :cond_3

    const/16 v4, 0xeb

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_3
    :goto_1
    return v2

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z
    .locals 6

    iget v0, p1, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    iget-object p1, p1, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget-object p1, p1, p2

    iget-object p2, p1, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v5, p2, v3

    iget v5, v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    mul-int/2addr v4, p1

    sub-int/2addr v0, v4

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    if-lt v0, p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method
