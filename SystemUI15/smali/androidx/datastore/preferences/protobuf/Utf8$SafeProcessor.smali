.class public final Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;
.super Landroidx/datastore/preferences/protobuf/Utf8$Processor;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method


# virtual methods
.method public final decodeUtf8(II[B)Ljava/lang/String;
    .locals 9

    or-int p0, p1, p2

    array-length v0, p3

    sub-int/2addr v0, p1

    sub-int/2addr v0, p2

    or-int/2addr p0, v0

    if-ltz p0, :cond_e

    add-int p0, p1, p2

    new-array p2, p2, [C

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge p1, p0, :cond_0

    aget-byte v2, p3, p1

    if-ltz v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v1, 0x1

    int-to-char v2, v2

    aput-char v2, p2, v1

    move v1, v3

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p1, p0, :cond_d

    add-int/lit8 v2, p1, 0x1

    aget-byte v3, p3, p1

    if-ltz v3, :cond_2

    add-int/lit8 p1, v1, 0x1

    int-to-char v3, v3

    aput-char v3, p2, v1

    :goto_2
    if-ge v2, p0, :cond_1

    aget-byte v1, p3, v2

    if-ltz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p1, 0x1

    int-to-char v1, v1

    aput-char v1, p2, p1

    move p1, v3

    goto :goto_2

    :cond_1
    move v1, p1

    move p1, v2

    goto :goto_1

    :cond_2
    const/16 v4, -0x20

    if-ge v3, v4, :cond_5

    if-ge v2, p0, :cond_4

    add-int/lit8 p1, p1, 0x2

    aget-byte v2, p3, v2

    add-int/lit8 v4, v1, 0x1

    const/16 v5, -0x3e

    if-lt v3, v5, :cond_3

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v5

    if-nez v5, :cond_3

    and-int/lit8 v3, v3, 0x1f

    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p2, v1

    move v1, v4

    goto :goto_1

    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_5
    const/16 v5, -0x10

    if-ge v3, v5, :cond_a

    add-int/lit8 v5, p0, -0x1

    if-ge v2, v5, :cond_9

    add-int/lit8 v5, p1, 0x2

    aget-byte v2, p3, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte v5, p3, v5

    add-int/lit8 v6, v1, 0x1

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v7

    if-nez v7, :cond_8

    const/16 v7, -0x60

    if-ne v3, v4, :cond_6

    if-lt v2, v7, :cond_8

    :cond_6
    const/16 v4, -0x13

    if-ne v3, v4, :cond_7

    if-ge v2, v7, :cond_8

    :cond_7
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v4

    if-nez v4, :cond_8

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0xc

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v2, v3

    and-int/lit8 v3, v5, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p2, v1

    move v1, v6

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_9
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_a
    add-int/lit8 v4, p0, -0x2

    if-ge v2, v4, :cond_c

    add-int/lit8 v4, p1, 0x2

    aget-byte v2, p3, v2

    add-int/lit8 v5, p1, 0x3

    aget-byte v4, p3, v4

    add-int/lit8 p1, p1, 0x4

    aget-byte v5, p3, v5

    add-int/lit8 v6, v1, 0x1

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v7

    if-nez v7, :cond_b

    shl-int/lit8 v7, v3, 0x1c

    add-int/lit8 v8, v2, 0x70

    add-int/2addr v8, v7

    shr-int/lit8 v7, v8, 0x1e

    if-nez v7, :cond_b

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v7

    if-nez v7, :cond_b

    and-int/lit8 v3, v3, 0x7

    shl-int/lit8 v3, v3, 0x12

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v2, v3

    and-int/lit8 v3, v4, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    and-int/lit8 v3, v5, 0x3f

    or-int/2addr v2, v3

    ushr-int/lit8 v3, v2, 0xa

    const v4, 0xd7c0

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, p2, v1

    and-int/lit16 v2, v2, 0x3ff

    const v3, 0xdc00

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p2, v6

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_c
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2, v0, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_e
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "buffer length=%d, index=%d, size=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final encodeUtf8(Ljava/lang/CharSequence;[BII)I
    .locals 6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/2addr p4, p3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x80

    if-ge v0, p0, :cond_0

    add-int v2, v0, p3

    if-ge v2, p4, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ge v3, v1, :cond_0

    int-to-byte v1, v3

    aput-byte v1, p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ne v0, p0, :cond_1

    add-int/2addr p3, p0

    return p3

    :cond_1
    add-int/2addr p3, v0

    :goto_1
    if-ge v0, p0, :cond_b

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ge v2, v1, :cond_2

    if-ge p3, p4, :cond_2

    add-int/lit8 v3, p3, 0x1

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    move p3, v3

    goto/16 :goto_2

    :cond_2
    const/16 v3, 0x800

    if-ge v2, v3, :cond_3

    add-int/lit8 v3, p4, -0x2

    if-gt p3, v3, :cond_3

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v4, v2, 0x6

    or-int/lit16 v4, v4, 0x3c0

    int-to-byte v4, v4

    aput-byte v4, p2, p3

    add-int/lit8 p3, p3, 0x2

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v1

    int-to-byte v2, v2

    aput-byte v2, p2, v3

    goto :goto_2

    :cond_3
    const v3, 0xdfff

    const v4, 0xd800

    if-lt v2, v4, :cond_4

    if-ge v3, v2, :cond_5

    :cond_4
    add-int/lit8 v5, p4, -0x3

    if-gt p3, v5, :cond_5

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v4, v2, 0xc

    or-int/lit16 v4, v4, 0x1e0

    int-to-byte v4, v4

    aput-byte v4, p2, p3

    add-int/lit8 v4, p3, 0x2

    ushr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v1

    int-to-byte v5, v5

    aput-byte v5, p2, v3

    add-int/lit8 p3, p3, 0x3

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v1

    int-to-byte v2, v2

    aput-byte v2, p2, v4

    goto :goto_2

    :cond_5
    add-int/lit8 v5, p4, -0x4

    if-gt p3, v5, :cond_8

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v3, v4, :cond_7

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v2, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    add-int/lit8 v2, p3, 0x1

    ushr-int/lit8 v4, v0, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    aput-byte v4, p2, p3

    add-int/lit8 v4, p3, 0x2

    ushr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v1

    int-to-byte v5, v5

    aput-byte v5, p2, v2

    add-int/lit8 v2, p3, 0x3

    ushr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v1

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    add-int/lit8 p3, p3, 0x4

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p2, v2

    move v0, v3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_6
    move v0, v3

    :cond_7
    new-instance p1, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p1, v0, p0}, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw p1

    :cond_8
    if-gt v4, v2, :cond_a

    if-gt v2, v3, :cond_a

    add-int/lit8 p2, v0, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-eq p2, p4, :cond_9

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p1

    if-nez p1, :cond_a

    :cond_9
    new-instance p1, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {p1, v0, p0}, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw p1

    :cond_a
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed writing "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, " at index "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    return p3
.end method

.method public final partialIsValidUtf8(II[B)I
    .locals 7

    :goto_0
    if-ge p1, p2, :cond_0

    aget-byte p0, p3, p1

    if-ltz p0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    if-lt p1, p2, :cond_1

    goto/16 :goto_3

    :cond_1
    :goto_1
    if-lt p1, p2, :cond_2

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p3, p1

    if-gez v1, :cond_b

    const/16 v2, -0x20

    const/4 v3, -0x1

    const/16 v4, -0x41

    if-ge v1, v2, :cond_5

    if-lt v0, p2, :cond_3

    move p0, v1

    goto :goto_3

    :cond_3
    const/16 v2, -0x3e

    if-lt v1, v2, :cond_4

    add-int/lit8 p1, p1, 0x2

    aget-byte v0, p3, v0

    if-le v0, v4, :cond_1

    :cond_4
    :goto_2
    move p0, v3

    goto :goto_3

    :cond_5
    const/16 v5, -0x10

    if-ge v1, v5, :cond_9

    add-int/lit8 v5, p2, -0x1

    if-lt v0, v5, :cond_6

    invoke-static {v0, p2, p3}, Landroidx/datastore/preferences/protobuf/Utf8;->access$1100(II[B)I

    move-result p0

    goto :goto_3

    :cond_6
    add-int/lit8 v5, p1, 0x2

    aget-byte v0, p3, v0

    if-gt v0, v4, :cond_4

    const/16 v6, -0x60

    if-ne v1, v2, :cond_7

    if-lt v0, v6, :cond_4

    :cond_7
    const/16 v2, -0x13

    if-ne v1, v2, :cond_8

    if-ge v0, v6, :cond_4

    :cond_8
    add-int/lit8 p1, p1, 0x3

    aget-byte v0, p3, v5

    if-le v0, v4, :cond_1

    goto :goto_2

    :cond_9
    add-int/lit8 v2, p2, -0x2

    if-lt v0, v2, :cond_a

    invoke-static {v0, p2, p3}, Landroidx/datastore/preferences/protobuf/Utf8;->access$1100(II[B)I

    move-result p0

    goto :goto_3

    :cond_a
    add-int/lit8 v2, p1, 0x2

    aget-byte v0, p3, v0

    if-gt v0, v4, :cond_4

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_4

    add-int/lit8 v0, p1, 0x3

    aget-byte v1, p3, v2

    if-gt v1, v4, :cond_4

    add-int/lit8 p1, p1, 0x4

    aget-byte v0, p3, v0

    if-le v0, v4, :cond_1

    goto :goto_2

    :goto_3
    return p0

    :cond_b
    move p1, v0

    goto :goto_1
.end method
