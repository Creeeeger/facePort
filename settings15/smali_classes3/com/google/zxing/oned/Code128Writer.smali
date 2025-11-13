.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static findCType(ILjava/lang/CharSequence;)Lcom/google/zxing/oned/Code128Writer$CType;
    .locals 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    if-lt p0, v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xf1

    if-ne v2, v3, :cond_1

    sget-object p0, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object p0

    :cond_1
    const/16 v3, 0x30

    if-lt v2, v3, :cond_5

    const/16 v4, 0x39

    if-le v2, v4, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 p0, p0, 0x1

    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    if-lt p0, v0, :cond_3

    return-object v1

    :cond_3
    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    if-lt p0, v3, :cond_5

    if-le p0, v4, :cond_4

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object p0

    :cond_5
    :goto_0
    return-object v1
.end method

.method public static produceResult(ILjava/util/Collection;)[Z
    .locals 6

    rem-int/lit8 p0, p0, 0x67

    sget-object v0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object p0, v0, p0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p0, 0x6a

    aget-object p0, v0, p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    add-int/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-array p0, v1, [Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    return-object p0
.end method


# virtual methods
.method public final encode(Ljava/lang/String;)[Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/oned/Code128Writer;->encode(Ljava/lang/String;Ljava/util/Map;)[Z

    move-result-object p0

    return-object p0
.end method

.method public final encode(Ljava/lang/String;Ljava/util/Map;)[Z
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/16 v5, 0x20

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v10, v9, :cond_3b

    const/16 v11, 0x50

    if-gt v10, v11, :cond_3b

    if-eqz v1, :cond_3

    sget-object v14, Lcom/google/zxing/EncodeHintType;->FORCE_CODE_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v1, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    packed-switch v15, :pswitch_data_0

    :goto_0
    const/4 v15, -0x1

    goto :goto_1

    :pswitch_0
    const-string v15, "C"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    goto :goto_0

    :cond_0
    move v15, v8

    goto :goto_1

    :pswitch_1
    const-string v15, "B"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    goto :goto_0

    :cond_1
    move v15, v9

    goto :goto_1

    :pswitch_2
    const-string v15, "A"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    goto :goto_0

    :cond_2
    move v15, v6

    :goto_1
    packed-switch v15, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported code set hint: "

    invoke-virtual {v1, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    const/16 v14, 0x63

    goto :goto_2

    :pswitch_4
    const/16 v14, 0x64

    goto :goto_2

    :pswitch_5
    const/16 v14, 0x65

    goto :goto_2

    :cond_3
    const/4 v14, -0x1

    :goto_2
    move v15, v6

    :goto_3
    const/16 v12, 0xf4

    if-ge v15, v10, :cond_a

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v11, 0x7f

    packed-switch v13, :pswitch_data_2

    if-gt v13, v11, :cond_4

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad character in input: ASCII value="

    invoke-static {v13, v1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_4
    :pswitch_6
    packed-switch v14, :pswitch_data_3

    goto :goto_5

    :pswitch_7
    const/16 v12, 0x5f

    if-le v13, v12, :cond_8

    if-le v13, v11, :cond_5

    goto :goto_5

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad character in input for forced code set A: ASCII value="

    invoke-static {v13, v1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    if-lt v13, v5, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad character in input for forced code set B: ASCII value="

    invoke-static {v13, v1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    const/16 v7, 0x30

    if-lt v13, v7, :cond_9

    const/16 v7, 0x39

    if-le v13, v7, :cond_7

    if-le v13, v11, :cond_9

    :cond_7
    const/16 v7, 0xf2

    if-eq v13, v7, :cond_9

    const/16 v7, 0xf3

    if-eq v13, v7, :cond_9

    if-eq v13, v12, :cond_9

    :cond_8
    :goto_5
    add-int/2addr v15, v9

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad character in input for forced code set C: ASCII value="

    invoke-static {v13, v1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/16 v17, 0x69

    if-eqz v1, :cond_1c

    sget-object v7, Lcom/google/zxing/EncodeHintType;->CODE128_COMPACT:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance v1, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    new-array v12, v8, [I

    aput v7, v12, v9

    aput v3, v12, v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    iput-object v7, v1, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->memoizedCost:[[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    new-array v12, v8, [I

    aput v7, v12, v9

    aput v3, v12, v6

    const-class v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-static {v3, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    iput-object v3, v1, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->minPath:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->NONE:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    invoke-virtual {v1, v0, v3, v6}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->encode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    filled-new-array {v6}, [I

    move-result-object v12

    filled-new-array {v9}, [I

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    move v15, v6

    :goto_6
    if-ge v15, v13, :cond_1b

    iget-object v6, v1, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->minPath:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aget-object v6, v6, v16

    aget-object v6, v6, v15

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    sget-object v5, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    sget-object v11, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    sget-object v10, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-eqz v4, :cond_10

    if-eq v4, v9, :cond_e

    if-eq v4, v8, :cond_c

    if-eq v4, v2, :cond_b

    goto :goto_a

    :cond_b
    const/16 v4, 0x62

    invoke-static {v7, v4, v12, v14, v15}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    goto :goto_a

    :cond_c
    if-nez v15, :cond_d

    move/from16 v3, v17

    goto :goto_7

    :cond_d
    const/16 v3, 0x63

    :goto_7
    invoke-static {v7, v3, v12, v14, v15}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    move-object v3, v5

    goto :goto_a

    :cond_e
    if-nez v15, :cond_f

    const/16 v3, 0x68

    goto :goto_8

    :cond_f
    const/16 v3, 0x64

    :goto_8
    invoke-static {v7, v3, v12, v14, v15}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    move-object v3, v10

    goto :goto_a

    :cond_10
    if-nez v15, :cond_11

    const/16 v3, 0x67

    goto :goto_9

    :cond_11
    const/16 v3, 0x65

    :goto_9
    invoke-static {v7, v3, v12, v14, v15}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    move-object v3, v11

    :goto_a
    if-ne v3, v5, :cond_13

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xf1

    if-ne v4, v5, :cond_12

    const/16 v4, 0x66

    invoke-static {v7, v4, v12, v14, v15}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    goto :goto_c

    :cond_12
    const/16 v4, 0x66

    add-int/lit8 v5, v15, 0x2

    invoke-virtual {v0, v15, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v7, v5, v12, v14, v15}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    add-int/lit8 v5, v15, 0x1

    if-ge v5, v13, :cond_1a

    move v15, v5

    goto :goto_c

    :cond_13
    const/16 v4, 0x66

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sget-object v4, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    packed-switch v5, :pswitch_data_4

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v16, 0x20

    add-int/lit8 v5, v5, -0x20

    goto :goto_b

    :pswitch_a
    if-ne v3, v11, :cond_14

    if-ne v6, v4, :cond_15

    :cond_14
    if-ne v3, v10, :cond_16

    if-ne v6, v4, :cond_16

    :cond_15
    const/16 v5, 0x65

    goto :goto_b

    :cond_16
    const/16 v5, 0x64

    goto :goto_b

    :pswitch_b
    const/16 v5, 0x60

    goto :goto_b

    :pswitch_c
    const/16 v5, 0x61

    goto :goto_b

    :pswitch_d
    const/16 v5, 0x66

    :goto_b
    if-ne v3, v11, :cond_17

    if-ne v6, v4, :cond_18

    :cond_17
    if-ne v3, v10, :cond_19

    if-ne v6, v4, :cond_19

    :cond_18
    if-gez v5, :cond_19

    const/16 v4, 0x60

    add-int/2addr v5, v4

    :cond_19
    invoke-static {v7, v5, v12, v14, v15}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    :cond_1a
    :goto_c
    add-int/2addr v15, v9

    const/16 v5, 0x20

    const/4 v6, 0x0

    goto/16 :goto_6

    :cond_1b
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->memoizedCost:[[I

    iput-object v0, v1, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->minPath:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    const/4 v1, 0x0

    aget v0, v12, v1

    invoke-static {v0, v7}, Lcom/google/zxing/oned/Code128Writer;->produceResult(ILjava/util/Collection;)[Z

    move-result-object v0

    goto/16 :goto_1c

    :cond_1c
    move v1, v6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v1

    move v7, v6

    move v10, v9

    :goto_d
    if-ge v6, v4, :cond_3a

    const/4 v11, -0x1

    if-ne v14, v11, :cond_2f

    invoke-static {v6, v0}, Lcom/google/zxing/oned/Code128Writer;->findCType(ILjava/lang/CharSequence;)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v13

    sget-object v15, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v13, v15, :cond_1e

    const/16 v11, 0x65

    if-ne v7, v11, :cond_1d

    :goto_e
    const/16 v19, 0xf1

    goto/16 :goto_16

    :cond_1d
    const/16 v11, 0x64

    goto :goto_e

    :cond_1e
    const/16 v11, 0x65

    sget-object v9, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v13, v9, :cond_24

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v6, v9, :cond_1f

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v13, 0x20

    if-lt v9, v13, :cond_20

    if-ne v7, v11, :cond_1f

    const/16 v11, 0x60

    const/16 v13, 0xf1

    if-lt v9, v11, :cond_21

    if-lt v9, v13, :cond_22

    if-gt v9, v12, :cond_22

    goto :goto_f

    :cond_1f
    const/16 v11, 0x60

    const/16 v13, 0xf1

    goto :goto_11

    :cond_20
    const/16 v11, 0x60

    const/16 v13, 0xf1

    :cond_21
    :goto_f
    move/from16 v19, v13

    :goto_10
    const/16 v11, 0x65

    goto :goto_16

    :cond_22
    :goto_11
    move/from16 v19, v13

    :cond_23
    :goto_12
    const/16 v11, 0x64

    goto :goto_16

    :cond_24
    const/16 v19, 0xf1

    sget-object v11, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    const/16 v12, 0x65

    if-ne v7, v12, :cond_25

    if-ne v13, v11, :cond_25

    goto :goto_10

    :cond_25
    const/16 v12, 0x63

    if-ne v7, v12, :cond_26

    move v11, v12

    goto :goto_16

    :cond_26
    sget-object v12, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    const/16 v3, 0x64

    if-ne v7, v3, :cond_2d

    if-ne v13, v11, :cond_28

    :cond_27
    :goto_13
    const/4 v3, 0x4

    goto :goto_12

    :cond_28
    add-int/lit8 v3, v6, 0x2

    invoke-static {v3, v0}, Lcom/google/zxing/oned/Code128Writer;->findCType(ILjava/lang/CharSequence;)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v3

    if-eq v3, v9, :cond_27

    if-ne v3, v15, :cond_29

    goto :goto_13

    :cond_29
    if-ne v3, v11, :cond_2b

    add-int/lit8 v3, v6, 0x3

    invoke-static {v3, v0}, Lcom/google/zxing/oned/Code128Writer;->findCType(ILjava/lang/CharSequence;)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v3

    if-ne v3, v12, :cond_27

    const/4 v3, 0x4

    :cond_2a
    :goto_14
    const/16 v11, 0x63

    goto :goto_16

    :cond_2b
    const/4 v3, 0x4

    add-int/lit8 v9, v6, 0x4

    :goto_15
    invoke-static {v9, v0}, Lcom/google/zxing/oned/Code128Writer;->findCType(ILjava/lang/CharSequence;)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v11

    if-ne v11, v12, :cond_2c

    add-int/2addr v9, v8

    goto :goto_15

    :cond_2c
    if-ne v11, v15, :cond_2a

    goto :goto_12

    :cond_2d
    const/4 v3, 0x4

    if-ne v13, v11, :cond_2e

    const/4 v9, 0x1

    add-int/lit8 v11, v6, 0x1

    invoke-static {v11, v0}, Lcom/google/zxing/oned/Code128Writer;->findCType(ILjava/lang/CharSequence;)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v13

    :cond_2e
    if-ne v13, v12, :cond_23

    goto :goto_14

    :cond_2f
    const/16 v19, 0xf1

    move v11, v14

    :goto_16
    if-ne v11, v7, :cond_35

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    packed-switch v9, :pswitch_data_5

    const/16 v9, 0x64

    if-eq v7, v9, :cond_33

    const/16 v9, 0x65

    if-eq v7, v9, :cond_31

    const/4 v9, 0x1

    add-int/lit8 v11, v6, 0x1

    if-eq v11, v4, :cond_30

    add-int/lit8 v9, v6, 0x2

    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v9, 0x65

    const/16 v12, 0x20

    :goto_17
    const/4 v13, 0x1

    goto :goto_19

    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad number of characters for digit only encoding."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v12, 0x20

    add-int/lit8 v11, v9, -0x20

    if-gez v11, :cond_32

    add-int/lit8 v9, v9, 0x40

    :goto_18
    move v11, v6

    move v6, v9

    const/16 v9, 0x65

    goto :goto_17

    :cond_32
    const/16 v9, 0x65

    const/4 v13, 0x1

    move/from16 v20, v11

    move v11, v6

    move/from16 v6, v20

    goto :goto_19

    :cond_33
    const/16 v12, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int/2addr v9, v12

    goto :goto_18

    :pswitch_e
    const/16 v9, 0x65

    const/16 v12, 0x20

    if-ne v7, v9, :cond_34

    move v11, v6

    move v6, v9

    goto :goto_17

    :cond_34
    move v11, v6

    const/16 v6, 0x64

    goto :goto_17

    :pswitch_f
    const/16 v9, 0x65

    const/16 v12, 0x20

    move v11, v6

    const/16 v6, 0x60

    goto :goto_17

    :pswitch_10
    const/16 v9, 0x65

    const/16 v12, 0x20

    move v11, v6

    const/16 v6, 0x61

    goto :goto_17

    :pswitch_11
    const/16 v9, 0x65

    const/16 v12, 0x20

    move v11, v6

    const/16 v6, 0x66

    goto :goto_17

    :goto_19
    add-int/2addr v11, v13

    move v13, v7

    const/16 v7, 0x64

    goto :goto_1b

    :cond_35
    const/16 v9, 0x65

    const/16 v12, 0x20

    if-nez v7, :cond_38

    const/16 v7, 0x64

    if-eq v11, v7, :cond_37

    if-eq v11, v9, :cond_36

    move/from16 v13, v17

    goto :goto_1a

    :cond_36
    const/16 v13, 0x67

    goto :goto_1a

    :cond_37
    const/16 v13, 0x68

    goto :goto_1a

    :cond_38
    const/16 v7, 0x64

    move v13, v11

    :goto_1a
    move/from16 v20, v11

    move v11, v6

    move v6, v13

    move/from16 v13, v20

    :goto_1b
    sget-object v15, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v15, v15, v6

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    mul-int/2addr v6, v10

    add-int/2addr v1, v6

    const/4 v6, 0x1

    if-eqz v11, :cond_39

    add-int/2addr v10, v6

    :cond_39
    move v9, v6

    move v6, v11

    move v7, v13

    const/16 v12, 0xf4

    goto/16 :goto_d

    :cond_3a
    invoke-static {v1, v5}, Lcom/google/zxing/oned/Code128Writer;->produceResult(ILjava/util/Collection;)[Z

    move-result-object v0

    :goto_1c
    return-object v0

    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Contents length should be between 1 and 80 characters, but got "

    invoke-static {v10, v1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xf1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x63
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xf1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xf1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public final getSupportedWriteFormats()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
