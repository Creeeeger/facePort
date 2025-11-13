.class public abstract Lkotlinx/coroutines/internal/SystemPropsKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final systemProp(Ljava/lang/String;JJJ)J
    .locals 23

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    move-wide/from16 v8, p1

    goto/16 :goto_5

    :cond_0
    const/16 v6, 0xa

    invoke-static {v6}, Lkotlin/text/CharsKt;->checkRadix(I)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    :goto_0
    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v11

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-gez v11, :cond_5

    const/4 v11, 0x1

    if-ne v7, v11, :cond_3

    goto :goto_0

    :cond_3
    const/16 v14, 0x2d

    if-ne v10, v14, :cond_4

    const-wide/high16 v12, -0x8000000000000000L

    move v9, v11

    goto :goto_1

    :cond_4
    const/16 v14, 0x2b

    if-ne v10, v14, :cond_1

    move/from16 v22, v11

    move v11, v9

    move/from16 v9, v22

    goto :goto_1

    :cond_5
    move v11, v9

    :goto_1
    const-wide/16 v16, 0x0

    move-wide/from16 v14, v16

    const-wide v16, -0x38e38e38e38e38eL    # -2.772000429909333E291

    :goto_2
    if-ge v9, v7, :cond_a

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, v6}, Ljava/lang/Character;->digit(II)I

    move-result v10

    if-gez v10, :cond_6

    goto :goto_0

    :cond_6
    cmp-long v18, v14, v16

    if-gez v18, :cond_7

    const-wide v18, -0x38e38e38e38e38eL    # -2.772000429909333E291

    cmp-long v16, v16, v18

    if-nez v16, :cond_1

    move/from16 p2, v9

    int-to-long v8, v6

    div-long v16, v12, v8

    cmp-long v8, v14, v16

    if-gez v8, :cond_8

    goto :goto_0

    :cond_7
    move/from16 p2, v9

    const-wide v18, -0x38e38e38e38e38eL    # -2.772000429909333E291

    :cond_8
    int-to-long v8, v6

    mul-long/2addr v14, v8

    int-to-long v8, v10

    add-long v20, v12, v8

    cmp-long v10, v14, v20

    if-gez v10, :cond_9

    goto :goto_0

    :cond_9
    sub-long/2addr v14, v8

    add-int/lit8 v9, p2, 0x1

    goto :goto_2

    :cond_a
    if-eqz v11, :cond_b

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :goto_3
    move-object v8, v6

    goto :goto_4

    :cond_b
    neg-long v6, v14

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_3

    :goto_4
    const-string v6, "\'"

    const-string v7, "System property \'"

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v1, v8

    if-gtz v5, :cond_c

    cmp-long v5, v8, v3

    if-gtz v5, :cond_c

    :goto_5
    return-wide v8

    :cond_c
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' should be in range "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".."

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", but is \'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' has unrecognized value \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final systemProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget v0, Lkotlinx/coroutines/internal/SystemPropsKt__SystemPropsKt;->AVAILABLE_PROCESSORS:I

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static systemProp$default(IIIILjava/lang/String;)I
    .locals 7

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x8

    if-eqz p3, :cond_1

    const p2, 0x7fffffff

    :cond_1
    int-to-long v1, p0

    int-to-long v3, p1

    int-to-long v5, p2

    move-object v0, p4

    invoke-static/range {v0 .. v6}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp(Ljava/lang/String;JJJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method
