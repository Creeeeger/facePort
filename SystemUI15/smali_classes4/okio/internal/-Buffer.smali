.class public abstract Lokio/internal/-Buffer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final HEX_DIGIT_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "0123456789abcdef"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lokio/internal/-Buffer;->HEX_DIGIT_BYTES:[B

    return-void
.end method

.method public static final readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x1

    if-lez v0, :cond_0

    sub-long v3, p1, v1

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v5, 0xd

    if-ne v0, v5, :cond_0

    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3, v4, p1}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    :goto_0
    return-object p1
.end method

.method public static final selectPrefix(Lokio/Buffer;Lokio/Options;Z)I
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget v3, v0, Lokio/Segment;->pos:I

    iget v4, v0, Lokio/Segment;->limit:I

    move-object/from16 v5, p1

    iget-object v5, v5, Lokio/Options;->trie:[I

    const/4 v6, 0x0

    iget-object v7, v0, Lokio/Segment;->data:[B

    move-object v9, v0

    move v10, v2

    move v8, v6

    :goto_1
    add-int/lit8 v11, v8, 0x1

    aget v12, v5, v8

    add-int/lit8 v8, v8, 0x2

    aget v11, v5, v11

    if-eq v11, v2, :cond_2

    move v10, v11

    :cond_2
    if-nez v9, :cond_3

    goto :goto_4

    :cond_3
    const/4 v11, 0x0

    if-gez v12, :cond_b

    mul-int/lit8 v12, v12, -0x1

    add-int v13, v12, v8

    :goto_2
    add-int/lit8 v12, v3, 0x1

    aget-byte v3, v7, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v14, v8, 0x1

    aget v8, v5, v8

    if-eq v3, v8, :cond_4

    return v10

    :cond_4
    if-ne v14, v13, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    move v3, v6

    :goto_3
    if-ne v12, v4, :cond_9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v9, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v7, v4, Lokio/Segment;->pos:I

    iget v8, v4, Lokio/Segment;->limit:I

    iget-object v9, v4, Lokio/Segment;->data:[B

    if-ne v4, v0, :cond_8

    if-eqz v3, :cond_6

    move v4, v8

    move-object v8, v11

    goto :goto_5

    :cond_6
    :goto_4
    if-eqz p2, :cond_7

    return v1

    :cond_7
    return v10

    :cond_8
    move/from16 v16, v8

    move-object v8, v4

    move/from16 v4, v16

    goto :goto_5

    :cond_9
    move-object v8, v9

    move-object v9, v7

    move v7, v12

    :goto_5
    if-eqz v3, :cond_a

    aget v3, v5, v14

    move/from16 v16, v7

    move v7, v4

    move/from16 v4, v16

    move-object/from16 v17, v9

    move-object v9, v8

    move-object/from16 v8, v17

    goto :goto_7

    :cond_a
    move v3, v7

    move-object v7, v9

    move-object v9, v8

    move v8, v14

    goto :goto_2

    :cond_b
    add-int/lit8 v13, v3, 0x1

    aget-byte v3, v7, v3

    and-int/lit16 v3, v3, 0xff

    add-int v14, v8, v12

    :goto_6
    if-ne v8, v14, :cond_c

    return v10

    :cond_c
    aget v15, v5, v8

    if-ne v3, v15, :cond_10

    add-int/2addr v8, v12

    aget v3, v5, v8

    if-ne v13, v4, :cond_d

    iget-object v9, v9, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v9, Lokio/Segment;->pos:I

    iget v7, v9, Lokio/Segment;->limit:I

    iget-object v8, v9, Lokio/Segment;->data:[B

    if-ne v9, v0, :cond_e

    move-object v9, v11

    goto :goto_7

    :cond_d
    move-object v8, v7

    move v7, v4

    move v4, v13

    :cond_e
    :goto_7
    if-ltz v3, :cond_f

    return v3

    :cond_f
    neg-int v3, v3

    move-object/from16 v16, v8

    move v8, v3

    move v3, v4

    move v4, v7

    move-object/from16 v7, v16

    goto/16 :goto_1

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_6
.end method
