.class public abstract Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ALPHANUMERIC_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    return-void
.end method

.method public static decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    div-int/lit8 v2, v1, 0x2d

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v1, v1, 0x2d

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_1
    if-ne p2, v1, :cond_3

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result p2

    const/4 v2, 0x6

    if-lt p2, v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    if-eqz p3, :cond_6

    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ge v0, p0, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 p2, 0x25

    if-ne p0, p2, :cond_5

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v1

    if-ge v0, p0, :cond_4

    add-int/lit8 p0, v0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p3

    if-ne p3, p2, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const/16 p0, 0x1d

    invoke-virtual {p1, v0, p0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public static decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 26

    move/from16 v0, p2

    const/16 v1, 0x40

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/16 v4, 0x80

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/16 v7, 0x8

    mul-int/lit8 v8, v0, 0x8

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v9

    if-gt v8, v9, :cond_2a

    new-array v8, v0, [B

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v0, :cond_0

    move-object/from16 v11, p0

    invoke-virtual {v11, v7}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v8, v10

    add-int/2addr v10, v6

    goto :goto_0

    :cond_0
    if-nez p3, :cond_29

    sget-object v10, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    if-eqz p5, :cond_1

    sget-object v10, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v11, p5

    check-cast v11, Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto/16 :goto_f

    :cond_1
    if-le v0, v3, :cond_4

    aget-byte v10, v8, v9

    const/4 v11, -0x2

    if-ne v10, v11, :cond_2

    aget-byte v12, v8, v6

    if-eq v12, v5, :cond_3

    :cond_2
    if-ne v10, v5, :cond_4

    aget-byte v10, v8, v6

    if-ne v10, v11, :cond_4

    :cond_3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    goto/16 :goto_f

    :cond_4
    if-le v0, v2, :cond_5

    aget-byte v10, v8, v9

    const/16 v11, -0x11

    if-ne v10, v11, :cond_5

    aget-byte v10, v8, v6

    const/16 v11, -0x45

    if-ne v10, v11, :cond_5

    aget-byte v10, v8, v3

    const/16 v11, -0x41

    if-ne v10, v11, :cond_5

    move v10, v6

    goto :goto_1

    :cond_5
    move v10, v9

    :goto_1
    move v12, v6

    move v13, v12

    move v14, v13

    move v11, v9

    move v15, v11

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v24, v23

    :goto_2
    if-ge v11, v0, :cond_6

    if-nez v12, :cond_7

    if-nez v13, :cond_7

    if-eqz v14, :cond_6

    goto :goto_3

    :cond_6
    move/from16 v5, v20

    move/from16 v1, v21

    goto/16 :goto_e

    :cond_7
    :goto_3
    aget-byte v7, v8, v11

    and-int/lit16 v2, v7, 0xff

    if-eqz v14, :cond_a

    if-lez v15, :cond_b

    and-int/2addr v7, v4

    if-nez v7, :cond_9

    :goto_4
    const/16 v5, 0x8

    :cond_8
    const/4 v14, 0x0

    goto :goto_7

    :cond_9
    add-int/2addr v15, v5

    :cond_a
    :goto_5
    const/16 v5, 0x8

    goto :goto_7

    :cond_b
    and-int/lit16 v5, v7, 0x80

    if-eqz v5, :cond_a

    and-int/lit8 v5, v7, 0x40

    if-nez v5, :cond_c

    goto :goto_4

    :cond_c
    add-int/lit8 v5, v15, 0x1

    and-int/lit8 v25, v7, 0x20

    if-nez v25, :cond_d

    add-int/lit8 v17, v17, 0x1

    :goto_6
    move v15, v5

    goto :goto_5

    :cond_d
    add-int/lit8 v5, v15, 0x2

    and-int/lit8 v25, v7, 0x10

    if-nez v25, :cond_e

    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    :cond_e
    const/4 v5, 0x3

    add-int/2addr v15, v5

    const/16 v5, 0x8

    and-int/2addr v7, v5

    if-nez v7, :cond_8

    add-int/lit8 v19, v19, 0x1

    :goto_7
    const/16 v7, 0xa0

    const/16 v5, 0x7f

    if-eqz v12, :cond_11

    if-le v2, v5, :cond_f

    if-ge v2, v7, :cond_f

    const/4 v12, 0x0

    goto :goto_8

    :cond_f
    const/16 v3, 0x9f

    if-le v2, v3, :cond_11

    const/16 v3, 0xc0

    if-lt v2, v3, :cond_10

    const/16 v3, 0xd7

    if-eq v2, v3, :cond_10

    const/16 v3, 0xf7

    if-ne v2, v3, :cond_11

    :cond_10
    add-int/lit8 v22, v22, 0x1

    :cond_11
    :goto_8
    if-eqz v13, :cond_1b

    if-lez v16, :cond_14

    if-lt v2, v1, :cond_12

    if-eq v2, v5, :cond_12

    const/16 v3, 0xfc

    if-le v2, v3, :cond_13

    :cond_12
    const/4 v3, -0x1

    goto :goto_9

    :cond_13
    const/4 v3, -0x1

    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_d

    :goto_9
    const/4 v13, 0x0

    goto :goto_d

    :cond_14
    const/4 v3, -0x1

    if-eq v2, v4, :cond_15

    if-eq v2, v7, :cond_15

    const/16 v1, 0xef

    if-le v2, v1, :cond_16

    :cond_15
    move/from16 v5, v20

    move/from16 v1, v21

    goto :goto_c

    :cond_16
    if-le v2, v7, :cond_18

    const/16 v1, 0xe0

    if-ge v2, v1, :cond_18

    move/from16 v1, v21

    add-int/lit8 v21, v1, 0x1

    add-int/lit8 v1, v24, 0x1

    if-le v1, v9, :cond_17

    move v9, v1

    move/from16 v24, v9

    :goto_a
    const/16 v23, 0x0

    goto :goto_d

    :cond_17
    move/from16 v24, v1

    goto :goto_a

    :cond_18
    move/from16 v1, v21

    if-le v2, v5, :cond_1a

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v2, v23, 0x1

    move/from16 v5, v20

    move/from16 v21, v1

    if-le v2, v5, :cond_19

    move/from16 v20, v2

    move/from16 v23, v20

    :goto_b
    const/16 v24, 0x0

    goto :goto_d

    :cond_19
    move/from16 v23, v2

    move/from16 v20, v5

    goto :goto_b

    :cond_1a
    move/from16 v5, v20

    move/from16 v21, v1

    const/16 v23, 0x0

    goto :goto_b

    :goto_c
    move/from16 v21, v1

    move/from16 v20, v5

    goto :goto_9

    :cond_1b
    move/from16 v5, v20

    move/from16 v1, v21

    const/4 v3, -0x1

    :goto_d
    add-int/2addr v11, v6

    move v5, v3

    const/16 v1, 0x40

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/16 v7, 0x8

    goto/16 :goto_2

    :goto_e
    if-eqz v14, :cond_1c

    if-lez v15, :cond_1c

    const/4 v14, 0x0

    :cond_1c
    if-eqz v13, :cond_1d

    if-lez v16, :cond_1d

    const/4 v13, 0x0

    :cond_1d
    if-eqz v14, :cond_1f

    if-nez v10, :cond_1e

    add-int v17, v17, v18

    add-int v17, v17, v19

    if-lez v17, :cond_1f

    :cond_1e
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_f

    :cond_1f
    if-eqz v13, :cond_21

    sget-boolean v2, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    if-nez v2, :cond_20

    const/4 v2, 0x3

    if-ge v9, v2, :cond_20

    if-lt v5, v2, :cond_21

    :cond_20
    sget-object v0, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    goto :goto_f

    :cond_21
    if-eqz v12, :cond_25

    if-eqz v13, :cond_25

    const/4 v2, 0x2

    if-ne v9, v2, :cond_22

    if-eq v1, v2, :cond_23

    :cond_22
    mul-int/lit8 v1, v22, 0xa

    if-lt v1, v0, :cond_24

    :cond_23
    sget-object v0, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    goto :goto_f

    :cond_24
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_f

    :cond_25
    if-eqz v12, :cond_26

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_f

    :cond_26
    if-eqz v13, :cond_27

    sget-object v0, Lcom/google/zxing/common/StringUtils;->SHIFT_JIS_CHARSET:Ljava/nio/charset/Charset;

    goto :goto_f

    :cond_27
    if-eqz v14, :cond_28

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_f

    :cond_28
    sget-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    goto :goto_f

    :cond_29
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v8, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p4

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method public static decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 4

    sget-object v0, Lcom/google/zxing/common/StringUtils;->GB2312_CHARSET:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_3

    mul-int/lit8 v0, p2, 0xd

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-gt v0, v1, :cond_2

    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-lez p2, :cond_1

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    div-int/lit8 v3, v2, 0x60

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit8 v2, v2, 0x60

    or-int/2addr v2, v3

    const/16 v3, 0xa00

    if-ge v2, v3, :cond_0

    const v3, 0xa1a1

    :goto_1
    add-int/2addr v2, v3

    goto :goto_2

    :cond_0
    const v3, 0xa6a1

    goto :goto_1

    :goto_2
    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    sget-object p2, Lcom/google/zxing/common/StringUtils;->GB2312_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method public static decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 3

    :goto_0
    const/4 v0, 0x3

    const/16 v1, 0xa

    if-lt p2, v0, :cond_2

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v0

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_0

    div-int/lit8 v2, v0, 0x64

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    div-int/lit8 v2, v0, 0xa

    rem-int/2addr v2, v1

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x3

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result p2

    const/4 v0, 0x7

    if-lt p2, v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result p0

    const/16 p2, 0x64

    if-ge p0, p2, :cond_3

    div-int/lit8 p2, p0, 0xa

    invoke-static {p2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/2addr p0, v1

    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_8

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result p2

    const/4 v0, 0x4

    if-lt p2, v0, :cond_7

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result p0

    if-ge p0, v1, :cond_6

    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_8
    :goto_1
    return-void
.end method

.method public static toAlphaNumericChar(I)C
    .locals 2

    sget-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-char p0, v0, p0

    return p0

    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method
