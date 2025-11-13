.class public abstract Lokio/Options$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V
    .locals 21

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v10, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const-string v6, "Failed requirement."

    if-eqz v5, :cond_12

    move v5, v2

    :goto_1
    if-ge v5, v10, :cond_2

    move-object/from16 v7, p4

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokio/ByteString;

    invoke-virtual {v7}, Lokio/ByteString;->getSize$okio()I

    move-result v7

    if-lt v7, v1, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object/from16 v12, p4

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    add-int/lit8 v6, v10, -0x1

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->getSize$okio()I

    move-result v7

    const/4 v13, -0x1

    if-ne v1, v7, :cond_3

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokio/ByteString;

    move-object/from16 v20, v7

    move v7, v2

    move v2, v5

    move-object/from16 v5, v20

    goto :goto_2

    :cond_3
    move v7, v2

    move v2, v13

    :goto_2
    invoke-virtual {v5, v1}, Lokio/ByteString;->internalGet$okio(I)B

    move-result v8

    invoke-virtual {v6, v1}, Lokio/ByteString;->internalGet$okio(I)B

    move-result v9

    const/4 v14, 0x4

    const/4 v15, 0x2

    if-eq v8, v9, :cond_d

    add-int/lit8 v3, v7, 0x1

    :goto_3
    if-ge v3, v10, :cond_5

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    invoke-virtual {v5, v1}, Lokio/ByteString;->internalGet$okio(I)B

    move-result v5

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/ByteString;

    invoke-virtual {v6, v1}, Lokio/ByteString;->internalGet$okio(I)B

    move-result v6

    if-eq v5, v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    iget-wide v5, v0, Lokio/Buffer;->size:J

    int-to-long v8, v14

    div-long/2addr v5, v8

    add-long v5, v5, p0

    int-to-long v14, v15

    add-long/2addr v5, v14

    mul-int/lit8 v3, v4, 0x2

    int-to-long v14, v3

    add-long/2addr v14, v5

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeInt(I)V

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    move v2, v7

    :goto_4
    if-ge v2, v10, :cond_8

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3, v1}, Lokio/ByteString;->internalGet$okio(I)B

    move-result v3

    if-eq v2, v7, :cond_6

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4, v1}, Lokio/ByteString;->internalGet$okio(I)B

    move-result v4

    if-eq v3, v4, :cond_7

    :cond_6
    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Lokio/Buffer;->writeInt(I)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    :goto_5
    if-ge v7, v10, :cond_c

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    invoke-virtual {v2, v1}, Lokio/ByteString;->internalGet$okio(I)B

    move-result v2

    add-int/lit8 v3, v7, 0x1

    move v4, v3

    :goto_6
    if-ge v4, v10, :cond_a

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    invoke-virtual {v5, v1}, Lokio/ByteString;->internalGet$okio(I)B

    move-result v5

    if-eq v2, v5, :cond_9

    move v5, v4

    goto :goto_7

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_a
    move v5, v10

    :goto_7
    if-ne v3, v5, :cond_b

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->getSize$okio()I

    move-result v3

    if-ne v2, v3, :cond_b

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    move/from16 v17, v5

    move-object v13, v6

    move-wide/from16 v18, v8

    goto :goto_8

    :cond_b
    iget-wide v2, v6, Lokio/Buffer;->size:J

    div-long/2addr v2, v8

    add-long/2addr v2, v14

    long-to-int v2, v2

    mul-int/2addr v2, v13

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    add-int/lit8 v16, v1, 0x1

    move-wide v2, v14

    move-object v4, v6

    move/from16 v17, v5

    move/from16 v5, v16

    move-object v13, v6

    move-object/from16 v6, p4

    move-wide/from16 v18, v8

    move/from16 v8, v17

    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    :goto_8
    move-object v6, v13

    move/from16 v7, v17

    move-wide/from16 v8, v18

    const/4 v13, -0x1

    goto :goto_5

    :cond_c
    move-object v13, v6

    invoke-virtual {v0, v13}, Lokio/Buffer;->writeAll(Lokio/Source;)V

    goto/16 :goto_b

    :cond_d
    invoke-virtual {v5}, Lokio/ByteString;->getSize$okio()I

    move-result v4

    invoke-virtual {v6}, Lokio/ByteString;->getSize$okio()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v8, v1

    :goto_9
    if-ge v8, v4, :cond_e

    invoke-virtual {v5, v8}, Lokio/ByteString;->internalGet$okio(I)B

    move-result v9

    invoke-virtual {v6, v8}, Lokio/ByteString;->internalGet$okio(I)B

    move-result v13

    if-ne v9, v13, :cond_e

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_e
    iget-wide v8, v0, Lokio/Buffer;->size:J

    int-to-long v13, v14

    div-long/2addr v8, v13

    add-long v8, v8, p0

    move-wide/from16 v17, v13

    int-to-long v13, v15

    add-long/2addr v8, v13

    int-to-long v13, v3

    add-long/2addr v8, v13

    const-wide/16 v13, 0x1

    add-long/2addr v8, v13

    neg-int v4, v3

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeInt(I)V

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    add-int v4, v1, v3

    :goto_a
    if-ge v1, v4, :cond_f

    invoke-virtual {v5, v1}, Lokio/ByteString;->internalGet$okio(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_f
    add-int/lit8 v1, v7, 0x1

    if-ne v1, v10, :cond_11

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->getSize$okio()I

    move-result v1

    if-ne v4, v1, :cond_10

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeInt(I)V

    goto :goto_b

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v12, Lokio/Buffer;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iget-wide v1, v12, Lokio/Buffer;->size:J

    div-long v1, v1, v17

    add-long/2addr v1, v8

    long-to-int v1, v1

    const/4 v2, -0x1

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeInt(I)V

    move-wide v1, v8

    move-object v3, v12

    move-object/from16 v5, p4

    move v6, v7

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    invoke-virtual {v0, v12}, Lokio/Buffer;->writeAll(Lokio/Source;)V

    :goto_b
    return-void

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
