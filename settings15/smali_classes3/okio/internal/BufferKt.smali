.class public abstract Lokio/internal/BufferKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final HEX_DIGIT_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "0123456789abcdef"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lokio/internal/BufferKt;->HEX_DIGIT_BYTES:[B

    return-void
.end method

.method public static final readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;
    .locals 6

    const-string v0, "$this$readUtf8Line"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x1

    if-lez v0, :cond_0

    sub-long v3, p1, v1

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v5, 0xd

    int-to-byte v5, v5

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

    move-object/from16 v1, p1

    const-string v2, "$this$selectPrefix"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "options"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eqz v0, :cond_12

    iget v4, v0, Lokio/Segment;->pos:I

    iget v5, v0, Lokio/Segment;->limit:I

    iget-object v1, v1, Lokio/Options;->trie:[I

    const/4 v6, 0x0

    iget-object v7, v0, Lokio/Segment;->data:[B

    move-object v9, v0

    move v10, v3

    move v8, v6

    :goto_0
    add-int/lit8 v11, v8, 0x1

    aget v12, v1, v8

    add-int/lit8 v8, v8, 0x2

    aget v11, v1, v11

    if-eq v11, v3, :cond_0

    move v10, v11

    :cond_0
    if-nez v9, :cond_1

    goto :goto_3

    :cond_1
    const/4 v11, 0x0

    if-gez v12, :cond_b

    mul-int/lit8 v12, v12, -0x1

    add-int v13, v12, v8

    :goto_1
    add-int/lit8 v12, v4, 0x1

    aget-byte v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v14, v8, 0x1

    aget v8, v1, v8

    if-eq v4, v8, :cond_2

    return v10

    :cond_2
    if-ne v14, v13, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    move v4, v6

    :goto_2
    if-ne v12, v5, :cond_9

    if-eqz v9, :cond_8

    iget-object v5, v9, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v5, :cond_7

    iget v7, v5, Lokio/Segment;->pos:I

    iget v8, v5, Lokio/Segment;->limit:I

    iget-object v9, v5, Lokio/Segment;->data:[B

    if-ne v5, v0, :cond_6

    if-nez v4, :cond_5

    :goto_3
    if-eqz p2, :cond_4

    return v2

    :cond_4
    return v10

    :cond_5
    move v5, v8

    move-object v8, v11

    goto :goto_4

    :cond_6
    move/from16 v16, v8

    move-object v8, v5

    move/from16 v5, v16

    goto :goto_4

    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v11

    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v11

    :cond_9
    move-object v8, v9

    move-object v9, v7

    move v7, v12

    :goto_4
    if-eqz v4, :cond_a

    aget v4, v1, v14

    move/from16 v16, v7

    move v7, v5

    move/from16 v5, v16

    move-object/from16 v17, v9

    move-object v9, v8

    move-object/from16 v8, v17

    goto :goto_6

    :cond_a
    move v4, v7

    move-object v7, v9

    move-object v9, v8

    move v8, v14

    goto :goto_1

    :cond_b
    add-int/lit8 v13, v4, 0x1

    aget-byte v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    add-int v14, v8, v12

    :goto_5
    if-ne v8, v14, :cond_c

    return v10

    :cond_c
    aget v15, v1, v8

    if-ne v4, v15, :cond_11

    add-int/2addr v8, v12

    aget v4, v1, v8

    if-ne v13, v5, :cond_e

    iget-object v9, v9, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v9, :cond_d

    iget v5, v9, Lokio/Segment;->pos:I

    iget v7, v9, Lokio/Segment;->limit:I

    iget-object v8, v9, Lokio/Segment;->data:[B

    if-ne v9, v0, :cond_f

    move-object v9, v11

    goto :goto_6

    :cond_d
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v11

    :cond_e
    move-object v8, v7

    move v7, v5

    move v5, v13

    :cond_f
    :goto_6
    if-ltz v4, :cond_10

    return v4

    :cond_10
    neg-int v4, v4

    move-object/from16 v16, v8

    move v8, v4

    move v4, v5

    move v5, v7

    move-object/from16 v7, v16

    goto/16 :goto_0

    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_12
    if-eqz p2, :cond_13

    goto :goto_7

    :cond_13
    move v2, v3

    :goto_7
    return v2
.end method
