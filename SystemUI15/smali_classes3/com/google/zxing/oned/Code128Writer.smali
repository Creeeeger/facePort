.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method public static findCType(ILjava/lang/CharSequence;)Lcom/google/zxing/oned/Code128Writer$CType;
    .locals 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p0, v0, :cond_0

    sget-object p0, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object p0

    :cond_0
    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xf1

    if-ne v1, v2, :cond_1

    sget-object p0, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object p0

    :cond_1
    const/16 v2, 0x30

    if-lt v1, v2, :cond_6

    const/16 v3, 0x39

    if-le v1, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p0, p0, 0x1

    if-lt p0, v0, :cond_3

    sget-object p0, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object p0

    :cond_3
    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    if-lt p0, v2, :cond_5

    if-le p0, v3, :cond_4

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object p0

    :cond_5
    :goto_0
    sget-object p0, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object p0

    :cond_6
    :goto_1
    sget-object p0, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    return-object p0
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

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/16 v4, 0x20

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v8, :cond_3a

    const/16 v10, 0x50

    if-gt v9, v10, :cond_3a

    if-eqz p2, :cond_3

    sget-object v13, Lcom/google/zxing/EncodeHintType;->FORCE_CODE_SET:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v14, p2

    check-cast v14, Ljava/util/EnumMap;

    invoke-virtual {v14, v13}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual {v14, v13}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    :goto_0
    move v14, v6

    goto :goto_1

    :pswitch_0
    const-string v14, "C"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    goto :goto_0

    :cond_0
    move v14, v7

    goto :goto_1

    :pswitch_1
    const-string v14, "B"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    goto :goto_0

    :cond_1
    move v14, v8

    goto :goto_1

    :pswitch_2
    const-string v14, "A"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_0

    :cond_2
    move v14, v5

    :goto_1
    packed-switch v14, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported code set hint: "

    invoke-virtual {v1, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    const/16 v13, 0x63

    goto :goto_2

    :pswitch_4
    const/16 v13, 0x64

    goto :goto_2

    :pswitch_5
    const/16 v13, 0x65

    goto :goto_2

    :cond_3
    move v13, v6

    :goto_2
    move v14, v5

    :goto_3
    const/16 v15, 0xf4

    if-ge v14, v9, :cond_a

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x7f

    packed-switch v11, :pswitch_data_2

    if-gt v11, v12, :cond_4

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad character in input: ASCII value="

    invoke-static {v11, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_4
    :pswitch_6
    packed-switch v13, :pswitch_data_3

    goto :goto_5

    :pswitch_7
    const/16 v15, 0x5f

    if-le v11, v15, :cond_8

    if-le v11, v12, :cond_5

    goto :goto_5

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad character in input for forced code set A: ASCII value="

    invoke-static {v11, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    if-lt v11, v4, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad character in input for forced code set B: ASCII value="

    invoke-static {v11, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    const/16 v10, 0x30

    if-lt v11, v10, :cond_9

    const/16 v10, 0x39

    if-le v11, v10, :cond_7

    if-le v11, v12, :cond_9

    :cond_7
    const/16 v10, 0xf2

    if-eq v11, v10, :cond_9

    const/16 v10, 0xf3

    if-eq v11, v10, :cond_9

    if-eq v11, v15, :cond_9

    :cond_8
    :goto_5
    add-int/2addr v14, v8

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad character in input for forced code set C: ASCII value="

    invoke-static {v11, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/16 v10, 0xf1

    const/16 v11, 0x66

    const/16 v17, 0x69

    if-eqz p2, :cond_1c

    sget-object v9, Lcom/google/zxing/EncodeHintType;->CODE128_COMPACT:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v12, p2

    check-cast v12, Ljava/util/EnumMap;

    invoke-virtual {v12, v9}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c

    invoke-virtual {v12, v9}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1c

    new-instance v6, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;

    invoke-direct {v6, v5}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;-><init>(I)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    new-array v12, v7, [I

    aput v9, v12, v8

    aput v2, v12, v5

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[I

    iput-object v9, v6, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->memoizedCost:[[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    new-array v12, v7, [I

    aput v9, v12, v8

    aput v2, v12, v5

    const-class v2, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-static {v2, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    iput-object v2, v6, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->minPath:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    sget-object v2, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->NONE:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    invoke-virtual {v6, v0, v2, v5}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->encode(Ljava/lang/CharSequence;Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;I)I

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    filled-new-array {v5}, [I

    move-result-object v12

    filled-new-array {v8}, [I

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    move v14, v5

    :goto_6
    if-ge v14, v15, :cond_1b

    iget-object v5, v6, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->minPath:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    aget-object v5, v5, v19

    aget-object v5, v5, v14

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_10

    if-eq v3, v8, :cond_e

    if-eq v3, v7, :cond_c

    if-eq v3, v1, :cond_b

    goto :goto_a

    :cond_b
    const/16 v3, 0x62

    invoke-static {v9, v3, v12, v13, v14}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    goto :goto_a

    :cond_c
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-nez v14, :cond_d

    move/from16 v3, v17

    goto :goto_7

    :cond_d
    const/16 v3, 0x63

    :goto_7
    invoke-static {v9, v3, v12, v13, v14}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    goto :goto_a

    :cond_e
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-nez v14, :cond_f

    const/16 v3, 0x68

    goto :goto_8

    :cond_f
    const/16 v3, 0x64

    :goto_8
    invoke-static {v9, v3, v12, v13, v14}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    goto :goto_a

    :cond_10
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-nez v14, :cond_11

    const/16 v3, 0x67

    goto :goto_9

    :cond_11
    const/16 v3, 0x65

    :goto_9
    invoke-static {v9, v3, v12, v13, v14}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    :goto_a
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->C:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v2, v3, :cond_13

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v10, :cond_12

    invoke-static {v9, v11, v12, v13, v14}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    goto :goto_c

    :cond_12
    add-int/lit8 v3, v14, 0x2

    invoke-virtual {v0, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v9, v3, v12, v13, v14}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    add-int/lit8 v3, v14, 0x1

    if-ge v3, v15, :cond_1a

    move v14, v3

    goto :goto_c

    :cond_13
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_4

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v4

    goto :goto_b

    :pswitch_a
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v2, v3, :cond_14

    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-ne v5, v3, :cond_15

    :cond_14
    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v2, v3, :cond_16

    sget-object v3, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-ne v5, v3, :cond_16

    :cond_15
    const/16 v3, 0x65

    goto :goto_b

    :cond_16
    const/16 v3, 0x64

    goto :goto_b

    :pswitch_b
    const/16 v3, 0x60

    goto :goto_b

    :pswitch_c
    const/16 v3, 0x61

    goto :goto_b

    :pswitch_d
    move v3, v11

    :goto_b
    sget-object v11, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->A:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v2, v11, :cond_17

    sget-object v11, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-ne v5, v11, :cond_18

    :cond_17
    sget-object v11, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;->B:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Charset;

    if-ne v2, v11, :cond_19

    sget-object v11, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;->SHIFT:Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    if-ne v5, v11, :cond_19

    :cond_18
    if-gez v3, :cond_19

    const/16 v5, 0x60

    add-int/2addr v3, v5

    :cond_19
    invoke-static {v9, v3, v12, v13, v14}, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->addPattern(Ljava/util/Collection;I[I[II)V

    :cond_1a
    :goto_c
    add-int/2addr v14, v8

    const/4 v5, 0x0

    const/16 v11, 0x66

    goto/16 :goto_6

    :cond_1b
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->memoizedCost:[[I

    iput-object v0, v6, Lcom/google/zxing/oned/Code128Writer$MinimalEncoder;->minPath:[[Lcom/google/zxing/oned/Code128Writer$MinimalEncoder$Latch;

    const/4 v3, 0x0

    aget v0, v12, v3

    invoke-static {v0, v9}, Lcom/google/zxing/oned/Code128Writer;->produceResult(ILjava/util/Collection;)[Z

    move-result-object v0

    goto/16 :goto_1b

    :cond_1c
    move v3, v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v11, v3

    move v12, v11

    move v14, v8

    :goto_d
    if-ge v3, v5, :cond_39

    if-ne v13, v6, :cond_2e

    invoke-static {v3, v0}, Lcom/google/zxing/oned/Code128Writer;->findCType(ILjava/lang/CharSequence;)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v6

    sget-object v8, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v6, v8, :cond_1e

    const/16 v2, 0x65

    if-ne v12, v2, :cond_1d

    :goto_e
    move v1, v2

    :goto_f
    const/4 v2, 0x4

    goto/16 :goto_15

    :cond_1d
    :goto_10
    const/16 v1, 0x64

    goto :goto_f

    :cond_1e
    const/16 v2, 0x65

    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v6, v1, :cond_22

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_1f

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v4, :cond_20

    if-ne v12, v2, :cond_1f

    const/16 v2, 0x60

    if-lt v1, v2, :cond_21

    if-lt v1, v10, :cond_1d

    if-gt v1, v15, :cond_1d

    goto :goto_11

    :cond_1f
    const/16 v2, 0x60

    goto :goto_10

    :cond_20
    const/16 v2, 0x60

    :cond_21
    :goto_11
    const/16 v1, 0x65

    goto :goto_f

    :cond_22
    if-ne v12, v2, :cond_23

    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v6, v2, :cond_23

    goto :goto_11

    :cond_23
    const/16 v2, 0x63

    if-ne v12, v2, :cond_24

    goto :goto_e

    :cond_24
    const/16 v2, 0x64

    if-ne v12, v2, :cond_2c

    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v6, v2, :cond_25

    goto :goto_10

    :cond_25
    add-int/lit8 v6, v3, 0x2

    invoke-static {v6, v0}, Lcom/google/zxing/oned/Code128Writer;->findCType(ILjava/lang/CharSequence;)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v6

    if-eq v6, v1, :cond_26

    if-ne v6, v8, :cond_27

    :cond_26
    const/4 v2, 0x4

    goto :goto_13

    :cond_27
    if-ne v6, v2, :cond_28

    const/4 v1, 0x3

    add-int/lit8 v2, v3, 0x3

    invoke-static {v2, v0}, Lcom/google/zxing/oned/Code128Writer;->findCType(ILjava/lang/CharSequence;)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v2

    sget-object v6, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v2, v6, :cond_1d

    const/16 v1, 0x63

    goto :goto_f

    :cond_28
    const/4 v1, 0x3

    const/4 v2, 0x4

    add-int/lit8 v6, v3, 0x4

    :goto_12
    invoke-static {v6, v0}, Lcom/google/zxing/oned/Code128Writer;->findCType(ILjava/lang/CharSequence;)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v8

    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v8, v1, :cond_29

    add-int/2addr v6, v7

    const/4 v1, 0x3

    goto :goto_12

    :cond_29
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v8, v1, :cond_2b

    :cond_2a
    :goto_13
    const/16 v1, 0x64

    goto :goto_15

    :cond_2b
    :goto_14
    const/16 v1, 0x63

    goto :goto_15

    :cond_2c
    const/4 v2, 0x4

    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v6, v1, :cond_2d

    const/4 v1, 0x1

    add-int/lit8 v8, v3, 0x1

    invoke-static {v8, v0}, Lcom/google/zxing/oned/Code128Writer;->findCType(ILjava/lang/CharSequence;)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v6

    :cond_2d
    sget-object v1, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v6, v1, :cond_2a

    goto :goto_14

    :cond_2e
    move v1, v13

    :goto_15
    if-ne v1, v12, :cond_34

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    packed-switch v1, :pswitch_data_5

    const/16 v1, 0x64

    if-eq v12, v1, :cond_32

    const/16 v1, 0x65

    if-eq v12, v1, :cond_30

    const/4 v1, 0x1

    add-int/lit8 v8, v3, 0x1

    if-eq v8, v5, :cond_2f

    add-int/lit8 v1, v3, 0x2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v3, v8

    :goto_16
    const/16 v6, 0x65

    :goto_17
    const/4 v8, 0x1

    goto :goto_18

    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad number of characters for digit only encoding."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v6, v1, -0x20

    if-gez v6, :cond_31

    add-int/lit8 v1, v1, 0x40

    goto :goto_16

    :cond_31
    move v1, v6

    goto :goto_16

    :cond_32
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v4

    goto :goto_16

    :pswitch_e
    const/16 v6, 0x65

    if-ne v12, v6, :cond_33

    move v1, v6

    goto :goto_17

    :cond_33
    const/16 v1, 0x64

    goto :goto_17

    :pswitch_f
    const/16 v6, 0x65

    const/16 v1, 0x60

    goto :goto_17

    :pswitch_10
    const/16 v6, 0x65

    const/16 v1, 0x61

    goto :goto_17

    :pswitch_11
    const/16 v6, 0x65

    const/16 v1, 0x66

    goto :goto_17

    :goto_18
    add-int/2addr v3, v8

    const/16 v8, 0x64

    goto :goto_1a

    :cond_34
    const/16 v6, 0x65

    if-nez v12, :cond_37

    const/16 v8, 0x64

    if-eq v1, v8, :cond_36

    if-eq v1, v6, :cond_35

    move/from16 v12, v17

    goto :goto_19

    :cond_35
    const/16 v12, 0x67

    goto :goto_19

    :cond_36
    const/16 v12, 0x68

    goto :goto_19

    :cond_37
    const/16 v8, 0x64

    move v12, v1

    :goto_19
    move/from16 v20, v12

    move v12, v1

    move/from16 v1, v20

    :goto_1a
    sget-object v16, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v2, v16, v1

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    mul-int/2addr v1, v14

    add-int/2addr v11, v1

    const/4 v1, 0x1

    if-eqz v3, :cond_38

    add-int/2addr v14, v1

    :cond_38
    move v8, v1

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v6, -0x1

    goto/16 :goto_d

    :cond_39
    invoke-static {v11, v9}, Lcom/google/zxing/oned/Code128Writer;->produceResult(ILjava/util/Collection;)[Z

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Contents length should be between 1 and 80 characters, but got "

    invoke-static {v9, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

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
