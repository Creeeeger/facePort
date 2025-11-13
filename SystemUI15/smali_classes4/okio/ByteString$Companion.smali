.class public final Lokio/ByteString$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lokio/ByteString$Companion;-><init>()V

    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)Lokio/ByteString;
    .locals 17

    move-object/from16 v0, p0

    const/16 v2, 0x41

    const/4 v4, 0x1

    sget-object v5, Lokio/-Base64;->BASE64:[B

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    :goto_0
    const/16 v6, 0x9

    const/16 v7, 0x20

    const/16 v8, 0xd

    const/16 v9, 0xa

    if-lez v5, :cond_1

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3d

    if-eq v10, v11, :cond_0

    if-eq v10, v9, :cond_0

    if-eq v10, v8, :cond_0

    if-eq v10, v7, :cond_0

    if-eq v10, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    int-to-long v10, v5

    const-wide/16 v12, 0x6

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x8

    div-long/2addr v10, v12

    long-to-int v10, v10

    new-array v11, v10, [B

    const/4 v12, 0x0

    move v13, v12

    move v14, v13

    move v15, v14

    :goto_2
    const/16 v16, 0x0

    if-ge v12, v5, :cond_c

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v2, v1, :cond_2

    const/16 v3, 0x5b

    if-ge v1, v3, :cond_2

    sub-int/2addr v1, v2

    goto :goto_6

    :cond_2
    const/16 v3, 0x61

    if-gt v3, v1, :cond_3

    const/16 v3, 0x7b

    if-ge v1, v3, :cond_3

    add-int/lit8 v1, v1, -0x47

    goto :goto_6

    :cond_3
    const/16 v3, 0x30

    if-gt v3, v1, :cond_4

    const/16 v3, 0x3a

    if-ge v1, v3, :cond_4

    add-int/lit8 v1, v1, 0x4

    goto :goto_6

    :cond_4
    const/16 v3, 0x2b

    if-eq v1, v3, :cond_a

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_5

    goto :goto_5

    :cond_5
    const/16 v3, 0x2f

    if-eq v1, v3, :cond_9

    const/16 v3, 0x5f

    if-ne v1, v3, :cond_6

    goto :goto_4

    :cond_6
    if-eq v1, v9, :cond_8

    if-eq v1, v8, :cond_8

    if-eq v1, v7, :cond_8

    if-ne v1, v6, :cond_7

    goto :goto_3

    :cond_7
    move-object/from16 v11, v16

    goto :goto_a

    :cond_8
    :goto_3
    const/4 v3, 0x3

    goto :goto_8

    :cond_9
    :goto_4
    const/16 v1, 0x3f

    goto :goto_6

    :cond_a
    :goto_5
    const/16 v1, 0x3e

    :goto_6
    shl-int/lit8 v3, v14, 0x6

    or-int/2addr v1, v3

    add-int/2addr v13, v4

    rem-int/lit8 v3, v13, 0x4

    if-nez v3, :cond_b

    add-int/lit8 v3, v15, 0x1

    shr-int/lit8 v14, v1, 0x10

    int-to-byte v14, v14

    aput-byte v14, v11, v15

    const/4 v14, 0x2

    add-int/lit8 v16, v15, 0x2

    shr-int/lit8 v14, v1, 0x8

    int-to-byte v14, v14

    aput-byte v14, v11, v3

    const/4 v3, 0x3

    add-int/2addr v15, v3

    int-to-byte v14, v1

    aput-byte v14, v11, v16

    :goto_7
    move v14, v1

    goto :goto_8

    :cond_b
    const/4 v3, 0x3

    goto :goto_7

    :goto_8
    add-int/2addr v12, v4

    goto :goto_2

    :cond_c
    const/4 v3, 0x3

    rem-int/lit8 v13, v13, 0x4

    if-eq v13, v4, :cond_7

    const/4 v0, 0x2

    if-eq v13, v0, :cond_e

    if-eq v13, v3, :cond_d

    goto :goto_9

    :cond_d
    shl-int/lit8 v1, v14, 0x6

    add-int/2addr v4, v15

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v11, v15

    add-int/2addr v15, v0

    shr-int/lit8 v0, v1, 0x8

    int-to-byte v0, v0

    aput-byte v0, v11, v4

    goto :goto_9

    :cond_e
    shl-int/lit8 v0, v14, 0xc

    add-int/2addr v4, v15

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    aput-byte v0, v11, v15

    move v15, v4

    :goto_9
    if-ne v15, v10, :cond_f

    goto :goto_a

    :cond_f
    invoke-static {v11, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    :goto_a
    if-eqz v11, :cond_10

    new-instance v0, Lokio/ByteString;

    invoke-direct {v0, v11}, Lokio/ByteString;-><init>([B)V

    move-object/from16 v16, v0

    :cond_10
    return-object v16
.end method

.method public static decodeHex(Ljava/lang/String;)Lokio/ByteString;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lokio/internal/-ByteString;->access$decodeHexDigit(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lokio/internal/-ByteString;->access$decodeHexDigit(C)I

    move-result v3

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lokio/ByteString;

    invoke-direct {p0, v1}, Lokio/ByteString;-><init>([B)V

    return-object p0

    :cond_1
    const-string v0, "Unexpected hex string: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .locals 2

    new-instance v0, Lokio/ByteString;

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    iput-object p0, v0, Lokio/ByteString;->utf8:Ljava/lang/String;

    return-object v0
.end method

.method public static of$default(Lokio/ByteString$Companion;[B)Lokio/ByteString;
    .locals 7

    sget v0, Lokio/-SegmentedByteString;->DEFAULT__ByteString_size:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length p0, p1

    array-length v0, p1

    int-to-long v1, v0

    const/4 v0, 0x0

    int-to-long v3, v0

    int-to-long v5, p0

    invoke-static/range {v1 .. v6}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    new-instance v1, Lokio/ByteString;

    array-length v2, p1

    invoke-static {p0, v2}, Lkotlin/collections/ArraysKt__ArraysJVMKt;->copyOfRangeToIndexCheck(II)V

    invoke-static {p1, v0, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-direct {v1, p0}, Lokio/ByteString;-><init>([B)V

    return-object v1
.end method
