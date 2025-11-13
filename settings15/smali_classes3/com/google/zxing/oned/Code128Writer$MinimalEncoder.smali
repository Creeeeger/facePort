.class public final Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public memoizedCost:[[I

.field public minPath:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;


# direct methods
.method public static addPattern(Ljava/util/Collection;I[I[II)V
    .locals 1

    sget-object v0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v0, v0, p1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    if-eqz p4, :cond_0

    aget p4, p3, p0

    add-int/lit8 p4, p4, 0x1

    aput p4, p3, p0

    :cond_0
    aget p4, p2, p0

    aget p3, p3, p0

    mul-int/2addr p1, p3

    add-int/2addr p1, p4

    aput p1, p2, p0

    return-void
.end method

.method public static canEncode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)Z
    .locals 7

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 v1, 0xf4

    const/16 v2, 0xf3

    const/16 v3, 0xf2

    const/16 v4, 0xf1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v6, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return v5

    :cond_0
    if-eq v0, v4, :cond_1

    add-int/2addr p2, v6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ge p2, p1, :cond_2

    const/16 p1, 0x30

    if-lt v0, p1, :cond_2

    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    if-lt p0, p1, :cond_2

    if-gt p0, v1, :cond_2

    :cond_1
    move v5, v6

    :cond_2
    return v5

    :cond_3
    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_4

    const-string p0, " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f\u00ff"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_5

    :cond_4
    move v5, v6

    :cond_5
    return v5

    :cond_6
    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_7

    if-eq v0, v1, :cond_7

    const-string p0, " !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f\u00ff"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_8

    :cond_7
    move v5, v6

    :cond_8
    return v5
.end method


# virtual methods
.method public final encode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->memoizedCost:[[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    aget v4, v4, v3

    if-lez v4, :cond_0

    return v4

    :cond_0
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->NONE:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    add-int/lit8 v5, v3, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lt v5, v6, :cond_1

    move v6, v7

    goto :goto_0

    :cond_1
    move v6, v8

    :goto_0
    sget-object v9, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    sget-object v10, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    filled-new-array {v9, v10}, [Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    move-result-object v9

    const v10, 0x7fffffff

    move-object v12, v4

    move v11, v10

    :goto_1
    const/4 v13, 0x2

    if-gt v8, v7, :cond_7

    aget-object v14, v9, v8

    invoke-static {v1, v14, v3}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->canEncode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)Z

    move-result v14

    if-eqz v14, :cond_6

    aget-object v14, v9, v8

    if-eq v2, v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->valueOf(Ljava/lang/String;)Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    move-result-object v14

    move v15, v13

    goto :goto_2

    :cond_2
    move-object v14, v4

    move v15, v7

    :goto_2
    if-nez v6, :cond_3

    aget-object v7, v9, v8

    invoke-virtual {v0, v1, v7, v5}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->encode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    move-result v7

    add-int/2addr v15, v7

    :cond_3
    if-ge v15, v11, :cond_4

    move-object v12, v14

    move v11, v15

    :cond_4
    add-int/lit8 v7, v8, 0x1

    rem-int/2addr v7, v13

    aget-object v7, v9, v7

    if-ne v2, v7, :cond_6

    sget-object v7, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-nez v6, :cond_5

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->encode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    move-result v14

    add-int/2addr v14, v13

    move v13, v14

    :cond_5
    if-ge v13, v11, :cond_6

    move-object v12, v7

    move v11, v13

    :cond_6
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_7
    sget-object v5, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    invoke-static {v1, v5, v3}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->canEncode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)Z

    move-result v6

    if-eqz v6, :cond_b

    if-eq v2, v5, :cond_8

    sget-object v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    move v6, v13

    goto :goto_3

    :cond_8
    const/4 v6, 0x1

    :goto_3
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xf1

    if-ne v7, v8, :cond_9

    const/4 v7, 0x1

    goto :goto_4

    :cond_9
    move v7, v13

    :goto_4
    add-int/2addr v7, v3

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v7, v8, :cond_a

    invoke-virtual {v0, v1, v5, v7}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->encode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    move-result v5

    add-int/2addr v6, v5

    :cond_a
    if-ge v6, v11, :cond_b

    move-object v12, v4

    move v11, v6

    :cond_b
    if-eq v11, v10, :cond_c

    iget-object v1, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->memoizedCost:[[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v1, v1, v4

    aput v11, v1, v3

    iget-object v0, v0, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->minPath:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    aput-object v12, v0, v3

    return v11

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Bad character in input: ASCII value="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
