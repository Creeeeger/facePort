.class public final Lcom/google/protobuf/Utf8$SafeProcessor;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final isValidUtf8([BII)Z
    .locals 7

    :goto_0
    if-ge p2, p3, :cond_0

    aget-byte p0, p1, p2

    if-ltz p0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    if-lt p2, p3, :cond_1

    goto/16 :goto_3

    :cond_1
    :goto_1
    if-lt p2, p3, :cond_2

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    if-gez v1, :cond_c

    const/16 v2, -0x20

    const/4 v3, -0x1

    const/16 v4, -0x41

    if-ge v1, v2, :cond_5

    if-lt v0, p3, :cond_3

    move p0, v1

    goto :goto_3

    :cond_3
    const/16 v2, -0x3e

    if-lt v1, v2, :cond_4

    add-int/lit8 p2, p2, 0x2

    aget-byte v0, p1, v0

    if-le v0, v4, :cond_1

    :cond_4
    :goto_2
    move p0, v3

    goto :goto_3

    :cond_5
    const/16 v5, -0x10

    if-ge v1, v5, :cond_9

    add-int/lit8 v5, p3, -0x1

    if-lt v0, v5, :cond_6

    invoke-static {p1, v0, p3}, Lcom/google/protobuf/Utf8;->access$1100([BII)I

    move-result p0

    goto :goto_3

    :cond_6
    add-int/lit8 v5, p2, 0x2

    aget-byte v0, p1, v0

    if-gt v0, v4, :cond_4

    const/16 v6, -0x60

    if-ne v1, v2, :cond_7

    if-lt v0, v6, :cond_4

    :cond_7
    const/16 v2, -0x13

    if-ne v1, v2, :cond_8

    if-ge v0, v6, :cond_4

    :cond_8
    add-int/lit8 p2, p2, 0x3

    aget-byte v0, p1, v5

    if-le v0, v4, :cond_1

    goto :goto_2

    :cond_9
    add-int/lit8 v2, p3, -0x2

    if-lt v0, v2, :cond_a

    invoke-static {p1, v0, p3}, Lcom/google/protobuf/Utf8;->access$1100([BII)I

    move-result p0

    goto :goto_3

    :cond_a
    add-int/lit8 v2, p2, 0x2

    aget-byte v0, p1, v0

    if-gt v0, v4, :cond_4

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_4

    add-int/lit8 v0, p2, 0x3

    aget-byte v1, p1, v2

    if-gt v1, v4, :cond_4

    add-int/lit8 p2, p2, 0x4

    aget-byte v0, p1, v0

    if-le v0, v4, :cond_1

    goto :goto_2

    :goto_3
    if-nez p0, :cond_b

    const/4 p0, 0x1

    goto :goto_4

    :cond_b
    const/4 p0, 0x0

    :goto_4
    return p0

    :cond_c
    move p2, v0

    goto :goto_1
.end method
