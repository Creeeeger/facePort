.class public final Lcom/google/zxing/aztec/AztecWriter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/zxing/Writer;


# virtual methods
.method public final encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 18

    move-object/from16 v0, p2

    const/16 v2, 0x21

    const/4 v3, 0x0

    if-eqz p5, :cond_3

    sget-object v4, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v5, p5

    check-cast v5, Ljava/util/EnumMap;

    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    sget-object v6, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v5, v6}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_1
    sget-object v6, Lcom/google/zxing/EncodeHintType;->AZTEC_LAYERS:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v5, v6}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v3

    goto :goto_1

    :cond_3
    move v5, v3

    const/4 v4, 0x0

    :goto_1
    sget-object v6, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    if-ne v0, v6, :cond_51

    if-eqz v4, :cond_4

    move-object/from16 v6, p1

    move-object v0, v4

    goto :goto_2

    :cond_4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    move-object/from16 v6, p1

    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    new-instance v6, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;

    invoke-direct {v6, v0, v4}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v0, Lcom/google/zxing/aztec/encoder/State;->INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/16 v9, 0x2e

    if-eqz v4, :cond_9

    invoke-static {v4}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECI(Ljava/nio/charset/Charset;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v4

    invoke-virtual {v0, v8, v3}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v10

    iget-object v10, v10, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    if-gez v4, :cond_5

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/google/zxing/aztec/encoder/SimpleToken;

    invoke-direct {v4, v10, v3, v7}, Lcom/google/zxing/aztec/encoder/SimpleToken;-><init>(Lcom/google/zxing/aztec/encoder/Token;II)V

    move v10, v7

    goto :goto_4

    :cond_5
    const v11, 0xf423f

    if-gt v4, v11, :cond_7

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v11, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    array-length v11, v4

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lcom/google/zxing/aztec/encoder/SimpleToken;

    invoke-direct {v12, v10, v11, v7}, Lcom/google/zxing/aztec/encoder/SimpleToken;-><init>(Lcom/google/zxing/aztec/encoder/Token;II)V

    array-length v10, v4

    move v11, v3

    :goto_3
    if-ge v11, v10, :cond_6

    aget-byte v13, v4, v11

    sub-int/2addr v13, v9

    new-instance v14, Lcom/google/zxing/aztec/encoder/SimpleToken;

    invoke-direct {v14, v12, v13, v8}, Lcom/google/zxing/aztec/encoder/SimpleToken;-><init>(Lcom/google/zxing/aztec/encoder/Token;II)V

    add-int/lit8 v11, v11, 0x1

    move-object v12, v14

    goto :goto_3

    :cond_6
    array-length v4, v4

    mul-int/2addr v4, v8

    add-int/2addr v4, v7

    move v10, v4

    move-object v4, v12

    :goto_4
    new-instance v11, Lcom/google/zxing/aztec/encoder/State;

    iget v12, v0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    add-int/2addr v12, v10

    iget v0, v0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    invoke-direct {v11, v4, v0, v3, v12}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    move-object v0, v11

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ECI code must be between 0 and 999999"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No ECI code for character set "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_5
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move v4, v3

    :goto_6
    iget-object v10, v6, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    array-length v11, v10

    const/16 v12, 0xa

    const/4 v14, 0x2

    const/16 v1, 0x20

    if-ge v4, v11, :cond_20

    add-int/lit8 v11, v4, 0x1

    array-length v3, v10

    if-ge v11, v3, :cond_a

    aget-byte v3, v10, v11

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :goto_7
    aget-byte v13, v10, v4

    const/16 v15, 0xd

    if-eq v13, v15, :cond_f

    const/16 v12, 0x2c

    if-eq v13, v12, :cond_e

    if-eq v13, v9, :cond_d

    const/16 v12, 0x3a

    if-eq v13, v12, :cond_c

    :cond_b
    const/4 v13, 0x0

    goto :goto_8

    :cond_c
    if-ne v3, v1, :cond_b

    const/4 v13, 0x5

    goto :goto_8

    :cond_d
    if-ne v3, v1, :cond_b

    move v13, v7

    goto :goto_8

    :cond_e
    if-ne v3, v1, :cond_b

    move v13, v8

    goto :goto_8

    :cond_f
    if-ne v3, v12, :cond_b

    move v13, v14

    :goto_8
    if-lez v13, :cond_15

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/aztec/encoder/State;

    invoke-virtual {v3, v4}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v10

    invoke-virtual {v10, v8, v13}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v12, v3, Lcom/google/zxing/aztec/encoder/State;->mode:I

    if-eq v12, v8, :cond_11

    invoke-virtual {v10, v8, v13}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_11
    if-eq v13, v7, :cond_12

    if-ne v13, v8, :cond_13

    :cond_12
    rsub-int/lit8 v12, v13, 0x10

    invoke-virtual {v10, v14, v12}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v10

    const/4 v12, 0x1

    invoke-virtual {v10, v14, v12}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_13
    iget v10, v3, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    if-lez v10, :cond_10

    invoke-virtual {v3, v4}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_14
    invoke-static {v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    move v4, v11

    :goto_a
    const/4 v1, 0x1

    goto/16 :goto_e

    :cond_15
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/aztec/encoder/State;

    aget-byte v11, v10, v4

    and-int/lit16 v11, v11, 0xff

    int-to-char v11, v11

    iget v12, v3, Lcom/google/zxing/aztec/encoder/State;->mode:I

    sget-object v13, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v12, v13, v12

    aget v12, v12, v11

    if-lez v12, :cond_16

    const/4 v12, 0x1

    goto :goto_c

    :cond_16
    const/4 v12, 0x0

    :goto_c
    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_d
    iget v9, v3, Lcom/google/zxing/aztec/encoder/State;->mode:I

    if-gt v15, v8, :cond_1c

    aget-object v17, v13, v15

    aget v8, v17, v11

    if-lez v8, :cond_1b

    if-nez v16, :cond_17

    invoke-virtual {v3, v4}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v16

    :cond_17
    move-object/from16 v7, v16

    if-eqz v12, :cond_18

    if-eq v15, v9, :cond_18

    if-ne v15, v14, :cond_19

    :cond_18
    invoke-virtual {v7, v15, v8}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_19
    if-nez v12, :cond_1a

    sget-object v14, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v9, v14, v9

    aget v9, v9, v15

    if-ltz v9, :cond_1a

    invoke-virtual {v7, v15, v8}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1a
    move-object/from16 v16, v7

    :cond_1b
    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v14, 0x2

    goto :goto_d

    :cond_1c
    iget v7, v3, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    if-gtz v7, :cond_1d

    aget-object v7, v13, v9

    aget v7, v7, v11

    if-nez v7, :cond_1e

    :cond_1d
    invoke-virtual {v3, v4}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1e
    const/4 v7, 0x3

    const/4 v8, 0x4

    const/16 v9, 0x2e

    const/4 v14, 0x2

    goto :goto_b

    :cond_1f
    invoke-static {v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    goto/16 :goto_a

    :goto_e
    add-int/2addr v4, v1

    const/4 v3, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/16 v9, 0x2e

    goto/16 :goto_6

    :cond_20
    new-instance v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v3}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/aztec/encoder/State;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v10

    invoke-virtual {v0, v4}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v0

    iget-object v0, v0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    :goto_f
    if-eqz v0, :cond_21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/google/zxing/aztec/encoder/Token;->previous:Lcom/google/zxing/aztec/encoder/Token;

    goto :goto_f

    :cond_21
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    :goto_10
    if-ltz v4, :cond_22

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/aztec/encoder/Token;

    invoke-virtual {v6, v0, v10}, Lcom/google/zxing/aztec/encoder/Token;->appendTo(Lcom/google/zxing/common/BitArray;[B)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_10

    :cond_22
    iget v3, v0, Lcom/google/zxing/common/BitArray;->size:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    const/16 v4, 0xb

    add-int/2addr v2, v4

    add-int/2addr v3, v2

    sget-object v6, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    if-eqz v5, :cond_29

    if-gez v5, :cond_23

    const/4 v3, 0x1

    goto :goto_11

    :cond_23
    const/4 v3, 0x0

    :goto_11
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-eqz v3, :cond_24

    const/4 v1, 0x4

    :cond_24
    if-gt v9, v1, :cond_28

    if-eqz v3, :cond_25

    const/16 v7, 0x58

    goto :goto_12

    :cond_25
    const/16 v7, 0x70

    :goto_12
    mul-int/lit8 v1, v9, 0x10

    add-int/2addr v1, v7

    mul-int/2addr v1, v9

    aget v5, v6, v9

    rem-int v6, v1, v5

    sub-int v6, v1, v6

    invoke-static {v5, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    iget v7, v0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v2, v7

    const-string v8, "Data to large for user specified layer"

    if-gt v2, v6, :cond_27

    if-eqz v3, :cond_32

    mul-int/lit8 v2, v5, 0x40

    if-gt v7, v2, :cond_26

    goto/16 :goto_18

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal value "

    const-string v2, " for layers"

    invoke-static {v5, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_13
    if-gt v9, v1, :cond_50

    const/4 v11, 0x3

    if-gt v9, v11, :cond_2a

    const/4 v13, 0x1

    goto :goto_14

    :cond_2a
    const/4 v13, 0x0

    :goto_14
    if-eqz v13, :cond_2b

    add-int/lit8 v14, v9, 0x1

    goto :goto_15

    :cond_2b
    move v14, v9

    :goto_15
    if-eqz v13, :cond_2c

    const/16 v15, 0x58

    goto :goto_16

    :cond_2c
    const/16 v15, 0x70

    :goto_16
    mul-int/lit8 v16, v14, 0x10

    add-int v16, v16, v15

    mul-int v15, v16, v14

    if-le v3, v15, :cond_2e

    :cond_2d
    :goto_17
    move/from16 v7, p3

    move/from16 v14, p4

    move v8, v12

    const/4 v12, 0x5

    const/4 v13, 0x1

    const/4 v15, 0x2

    goto/16 :goto_29

    :cond_2e
    if-eqz v5, :cond_2f

    aget v1, v6, v14

    if-eq v10, v1, :cond_30

    :cond_2f
    aget v1, v6, v14

    invoke-static {v1, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v5

    move v10, v1

    :cond_30
    rem-int v1, v15, v10

    sub-int v1, v15, v1

    if-eqz v13, :cond_31

    iget v7, v5, Lcom/google/zxing/common/BitArray;->size:I

    mul-int/lit8 v8, v10, 0x40

    if-le v7, v8, :cond_31

    goto :goto_17

    :cond_31
    iget v7, v5, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v7, v2

    if-gt v7, v1, :cond_2d

    move-object v0, v5

    move v5, v10

    move v3, v13

    move v9, v14

    move v1, v15

    :cond_32
    :goto_18
    invoke-static {v1, v5, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(IILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v1

    iget v0, v0, Lcom/google/zxing/common/BitArray;->size:I

    div-int/2addr v0, v5

    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2}, Lcom/google/zxing/common/BitArray;-><init>()V

    if-eqz v3, :cond_33

    add-int/lit8 v5, v9, -0x1

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    const/4 v6, 0x6

    invoke-virtual {v2, v0, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v0, 0x1c

    const/4 v6, 0x4

    invoke-static {v0, v6, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(IILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    goto :goto_19

    :cond_33
    const/4 v5, 0x1

    const/4 v6, 0x4

    add-int/lit8 v7, v9, -0x1

    const/4 v8, 0x5

    invoke-virtual {v2, v7, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    sub-int/2addr v0, v5

    invoke-virtual {v2, v0, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v0, 0x28

    invoke-static {v0, v6, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(IILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    :goto_19
    if-eqz v3, :cond_34

    goto :goto_1a

    :cond_34
    const/16 v4, 0xe

    :goto_1a
    mul-int/lit8 v2, v9, 0x4

    add-int/2addr v2, v4

    new-array v4, v2, [I

    if-eqz v3, :cond_36

    const/4 v5, 0x0

    :goto_1b
    if-ge v5, v2, :cond_35

    aput v5, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_35
    move v7, v2

    goto :goto_1d

    :cond_36
    add-int/lit8 v5, v2, 0x1

    div-int/lit8 v6, v2, 0x2

    add-int/lit8 v7, v6, -0x1

    div-int/lit8 v7, v7, 0xf

    const/4 v8, 0x2

    mul-int/2addr v7, v8

    add-int/2addr v7, v5

    div-int/lit8 v5, v7, 0x2

    const/4 v8, 0x0

    :goto_1c
    if-ge v8, v6, :cond_37

    div-int/lit8 v10, v8, 0xf

    add-int/2addr v10, v8

    sub-int v11, v6, v8

    const/4 v13, 0x1

    sub-int/2addr v11, v13

    sub-int v14, v5, v10

    sub-int/2addr v14, v13

    aput v14, v4, v11

    add-int v11, v6, v8

    add-int/2addr v10, v5

    add-int/2addr v10, v13

    aput v10, v4, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    :cond_37
    :goto_1d
    new-instance v5, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v5, v7, v7}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_1e
    if-ge v6, v9, :cond_3f

    sub-int v10, v9, v6

    const/4 v13, 0x4

    mul-int/2addr v10, v13

    if-eqz v3, :cond_38

    const/16 v11, 0x9

    goto :goto_1f

    :cond_38
    const/16 v11, 0xc

    :goto_1f
    add-int/2addr v10, v11

    const/4 v11, 0x0

    :goto_20
    if-ge v11, v10, :cond_3e

    mul-int/lit8 v14, v11, 0x2

    const/4 v13, 0x0

    :goto_21
    const/4 v15, 0x2

    if-ge v13, v15, :cond_3d

    add-int v15, v8, v14

    add-int/2addr v15, v13

    invoke-virtual {v1, v15}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v15

    if-eqz v15, :cond_39

    mul-int/lit8 v15, v6, 0x2

    add-int v16, v15, v13

    aget v12, v4, v16

    add-int/2addr v15, v11

    aget v15, v4, v15

    invoke-virtual {v5, v12, v15}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_39
    mul-int/lit8 v12, v10, 0x2

    add-int/2addr v12, v8

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    invoke-virtual {v1, v12}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v12

    if-eqz v12, :cond_3a

    mul-int/lit8 v12, v6, 0x2

    add-int v15, v12, v11

    aget v15, v4, v15

    add-int/lit8 v16, v2, -0x1

    sub-int v16, v16, v12

    sub-int v16, v16, v13

    aget v12, v4, v16

    invoke-virtual {v5, v15, v12}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_3a
    mul-int/lit8 v12, v10, 0x4

    add-int/2addr v12, v8

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    invoke-virtual {v1, v12}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v12

    if-eqz v12, :cond_3b

    add-int/lit8 v12, v2, -0x1

    mul-int/lit8 v15, v6, 0x2

    sub-int/2addr v12, v15

    sub-int v15, v12, v13

    aget v15, v4, v15

    sub-int/2addr v12, v11

    aget v12, v4, v12

    invoke-virtual {v5, v15, v12}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_3b
    mul-int/lit8 v12, v10, 0x6

    add-int/2addr v12, v8

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    invoke-virtual {v1, v12}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v12

    if-eqz v12, :cond_3c

    add-int/lit8 v12, v2, -0x1

    mul-int/lit8 v15, v6, 0x2

    sub-int/2addr v12, v15

    sub-int/2addr v12, v11

    aget v12, v4, v12

    add-int/2addr v15, v13

    aget v15, v4, v15

    invoke-virtual {v5, v12, v15}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_3c
    add-int/lit8 v13, v13, 0x1

    const/16 v12, 0xa

    goto :goto_21

    :cond_3d
    add-int/lit8 v11, v11, 0x1

    const/16 v12, 0xa

    const/4 v13, 0x4

    goto :goto_20

    :cond_3e
    mul-int/lit8 v10, v10, 0x8

    add-int/2addr v8, v10

    add-int/lit8 v6, v6, 0x1

    const/16 v12, 0xa

    goto/16 :goto_1e

    :cond_3f
    div-int/lit8 v1, v7, 0x2

    const/4 v4, 0x7

    if-eqz v3, :cond_44

    const/4 v6, 0x0

    :goto_22
    if-ge v6, v4, :cond_49

    add-int/lit8 v8, v1, -0x3

    add-int/2addr v8, v6

    invoke-virtual {v0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_40

    add-int/lit8 v9, v1, -0x5

    invoke-virtual {v5, v8, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_40
    add-int/lit8 v9, v6, 0x7

    invoke-virtual {v0, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_41

    add-int/lit8 v9, v1, 0x5

    invoke-virtual {v5, v9, v8}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_41
    rsub-int/lit8 v9, v6, 0x14

    invoke-virtual {v0, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_42

    add-int/lit8 v9, v1, 0x5

    invoke-virtual {v5, v8, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_42
    rsub-int/lit8 v9, v6, 0x1b

    invoke-virtual {v0, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_43

    add-int/lit8 v9, v1, -0x5

    invoke-virtual {v5, v9, v8}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    :cond_44
    const/4 v6, 0x0

    const/16 v8, 0xa

    :goto_23
    if-ge v6, v8, :cond_49

    add-int/lit8 v9, v1, -0x5

    add-int/2addr v9, v6

    div-int/lit8 v10, v6, 0x5

    add-int/2addr v10, v9

    invoke-virtual {v0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_45

    add-int/lit8 v9, v1, -0x7

    invoke-virtual {v5, v10, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_45
    add-int/lit8 v9, v6, 0xa

    invoke-virtual {v0, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_46

    add-int/lit8 v9, v1, 0x7

    invoke-virtual {v5, v9, v10}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_46
    rsub-int/lit8 v9, v6, 0x1d

    invoke-virtual {v0, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_47

    add-int/lit8 v9, v1, 0x7

    invoke-virtual {v5, v10, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_47
    rsub-int/lit8 v9, v6, 0x27

    invoke-virtual {v0, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_48

    add-int/lit8 v9, v1, -0x7

    invoke-virtual {v5, v9, v10}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_48
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_49
    if-eqz v3, :cond_4a

    const/4 v12, 0x5

    invoke-static {v5, v1, v12}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    goto :goto_26

    :cond_4a
    invoke-static {v5, v1, v4}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    const/4 v0, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_24
    div-int/lit8 v6, v2, 0x2

    const/4 v13, 0x1

    sub-int/2addr v6, v13

    if-ge v3, v6, :cond_4c

    and-int/lit8 v0, v1, 0x1

    :goto_25
    if-ge v0, v7, :cond_4b

    sub-int v6, v1, v4

    invoke-virtual {v5, v6, v0}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v8, v1, v4

    invoke-virtual {v5, v8, v0}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    invoke-virtual {v5, v0, v6}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    invoke-virtual {v5, v0, v8}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_25

    :cond_4b
    add-int/lit8 v3, v3, 0xf

    add-int/lit8 v4, v4, 0x10

    const/4 v0, 0x2

    goto :goto_24

    :cond_4c
    :goto_26
    iget v0, v5, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v1, v5, Lcom/google/zxing/common/BitMatrix;->height:I

    move/from16 v7, p3

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v14, p4

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int v4, v2, v0

    div-int v6, v3, v1

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int v6, v0, v4

    sub-int v6, v2, v6

    const/4 v15, 0x2

    div-int/2addr v6, v15

    mul-int v7, v1, v4

    sub-int v7, v3, v7

    div-int/2addr v7, v15

    new-instance v8, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v8, v2, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v1, :cond_4f

    move v9, v6

    const/4 v3, 0x0

    :goto_28
    if-ge v3, v0, :cond_4e

    invoke-virtual {v5, v3, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_4d

    invoke-virtual {v8, v9, v7, v4, v4}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_4d
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v9, v4

    goto :goto_28

    :cond_4e
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v7, v4

    goto :goto_27

    :cond_4f
    return-object v8

    :goto_29
    add-int/lit8 v9, v9, 0x1

    move v12, v8

    const/16 v1, 0x20

    goto/16 :goto_13

    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data too large for an Aztec code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can only encode AZTEC, but got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
