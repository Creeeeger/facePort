.class public final Lcom/google/zxing/aztec/AztecWriter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 18

    move-object/from16 v0, p2

    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v2, p5

    check-cast v2, Ljava/util/EnumMap;

    invoke-virtual {v2, v1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v2, v3}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_1
    const/16 v3, 0x21

    :goto_1
    sget-object v5, Lcom/google/zxing/EncodeHintType;->AZTEC_LAYERS:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v2, v5}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    sget-object v5, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    if-ne v0, v5, :cond_4c

    if-eqz v1, :cond_3

    move-object/from16 v5, p1

    move-object v0, v1

    goto :goto_3

    :cond_3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    move-object/from16 v5, p1

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    new-instance v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;

    invoke-direct {v5, v0, v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v0, Lcom/google/zxing/aztec/encoder/State;->INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;

    iget-object v1, v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->charset:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECI(Ljava/nio/charset/Charset;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/zxing/aztec/encoder/State;->appendFLGn(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v0

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No ECI code for character set "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_4
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    iget-object v6, v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    array-length v8, v6

    const/16 v9, 0xa

    const/4 v10, 0x3

    const/4 v11, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/16 v15, 0x20

    if-ge v1, v8, :cond_1b

    add-int/lit8 v8, v1, 0x1

    array-length v4, v6

    if-ge v8, v4, :cond_6

    aget-byte v4, v6, v8

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_6
    aget-byte v7, v6, v1

    const/16 v12, 0xd

    if-eq v7, v12, :cond_b

    const/16 v9, 0x2c

    if-eq v7, v9, :cond_a

    const/16 v9, 0x2e

    if-eq v7, v9, :cond_9

    const/16 v9, 0x3a

    if-eq v7, v9, :cond_8

    :cond_7
    const/4 v12, 0x0

    goto :goto_7

    :cond_8
    if-ne v4, v15, :cond_7

    const/4 v12, 0x5

    goto :goto_7

    :cond_9
    if-ne v4, v15, :cond_7

    move v12, v10

    goto :goto_7

    :cond_a
    if-ne v4, v15, :cond_7

    move v12, v11

    goto :goto_7

    :cond_b
    if-ne v4, v9, :cond_7

    move v12, v13

    :goto_7
    if-lez v12, :cond_11

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/aztec/encoder/State;

    invoke-virtual {v6, v1}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v7

    invoke-virtual {v7, v11, v12}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v9, v6, Lcom/google/zxing/aztec/encoder/State;->mode:I

    if-eq v9, v11, :cond_d

    invoke-virtual {v7, v11, v12}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_d
    if-eq v12, v10, :cond_e

    if-ne v12, v11, :cond_f

    :cond_e
    rsub-int/lit8 v9, v12, 0x10

    invoke-virtual {v7, v13, v9}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v7

    invoke-virtual {v7, v13, v14}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_f
    iget v7, v6, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    if-lez v7, :cond_c

    invoke-virtual {v6, v1}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    invoke-static {v4}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    move v1, v8

    move v4, v14

    goto/16 :goto_c

    :cond_11
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/aztec/encoder/State;

    aget-byte v8, v6, v1

    and-int/lit16 v8, v8, 0xff

    int-to-char v8, v8

    iget v9, v7, Lcom/google/zxing/aztec/encoder/State;->mode:I

    sget-object v10, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v9, v10, v9

    aget v9, v9, v8

    if-lez v9, :cond_12

    move v9, v14

    goto :goto_a

    :cond_12
    const/4 v9, 0x0

    :goto_a
    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_b
    iget v14, v7, Lcom/google/zxing/aztec/encoder/State;->mode:I

    if-gt v12, v11, :cond_17

    aget-object v16, v10, v12

    aget v11, v16, v8

    if-lez v11, :cond_16

    if-nez v15, :cond_13

    invoke-virtual {v7, v1}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v15

    :cond_13
    if-eqz v9, :cond_14

    if-eq v12, v14, :cond_14

    if-ne v12, v13, :cond_15

    :cond_14
    invoke-virtual {v15, v12, v11}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_15
    if-nez v9, :cond_16

    sget-object v13, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v13, v13, v14

    aget v13, v13, v12

    if-ltz v13, :cond_16

    invoke-virtual {v15, v12, v11}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_16
    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x4

    const/4 v13, 0x2

    goto :goto_b

    :cond_17
    iget v9, v7, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    if-gtz v9, :cond_18

    aget-object v9, v10, v14

    aget v8, v9, v8

    if-nez v8, :cond_19

    :cond_18
    invoke-virtual {v7, v1}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_19
    const/4 v11, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x1

    goto :goto_9

    :cond_1a
    invoke-static {v4}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    const/4 v4, 0x1

    :goto_c
    add-int/2addr v1, v4

    goto/16 :goto_5

    :cond_1b
    new-instance v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;

    invoke-direct {v1, v5}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;-><init>(Lcom/google/zxing/aztec/encoder/HighLevelEncoder;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/aztec/encoder/State;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v6

    invoke-virtual {v0, v4}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v0

    iget-object v0, v0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    :goto_d
    if-eqz v0, :cond_1c

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/google/zxing/aztec/encoder/Token;->previous:Lcom/google/zxing/aztec/encoder/Token;

    goto :goto_d

    :cond_1c
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_e
    if-ltz v4, :cond_1d

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/aztec/encoder/Token;

    invoke-virtual {v5, v0, v6}, Lcom/google/zxing/aztec/encoder/Token;->appendTo(Lcom/google/zxing/common/BitArray;[B)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    :cond_1d
    iget v1, v0, Lcom/google/zxing/common/BitArray;->size:I

    const/16 v4, 0x64

    const/16 v5, 0xb

    invoke-static {v1, v3, v4, v5}, Landroidx/datastore/preferences/protobuf/BooleanArrayList$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v3

    add-int/2addr v1, v3

    sget-object v4, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    if-eqz v2, :cond_24

    if-gez v2, :cond_1e

    const/4 v1, 0x1

    goto :goto_f

    :cond_1e
    const/4 v1, 0x0

    :goto_f
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eqz v1, :cond_1f

    const/4 v15, 0x4

    :cond_1f
    if-gt v8, v15, :cond_23

    if-eqz v1, :cond_20

    const/16 v6, 0x58

    goto :goto_10

    :cond_20
    const/16 v6, 0x70

    :goto_10
    mul-int/lit8 v2, v8, 0x10

    add-int/2addr v2, v6

    mul-int/2addr v2, v8

    aget v4, v4, v8

    rem-int v6, v2, v4

    sub-int v6, v2, v6

    invoke-static {v0, v4}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    iget v7, v0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v3, v7

    const-string v10, "Data to large for user specified layer"

    if-gt v3, v6, :cond_22

    if-eqz v1, :cond_2d

    mul-int/lit8 v3, v4, 0x40

    if-gt v7, v3, :cond_21

    goto/16 :goto_16

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal value "

    const-string v3, " for layers"

    invoke-static {v2, v1, v3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_11
    if-gt v8, v15, :cond_4b

    if-gt v8, v10, :cond_25

    const/4 v12, 0x1

    goto :goto_12

    :cond_25
    const/4 v12, 0x0

    :goto_12
    if-eqz v12, :cond_26

    add-int/lit8 v13, v8, 0x1

    goto :goto_13

    :cond_26
    move v13, v8

    :goto_13
    if-eqz v12, :cond_27

    const/16 v14, 0x58

    goto :goto_14

    :cond_27
    const/16 v14, 0x70

    :goto_14
    mul-int/lit8 v17, v13, 0x10

    add-int v17, v17, v14

    mul-int v14, v17, v13

    if-le v1, v14, :cond_29

    :cond_28
    :goto_15
    move/from16 v7, p3

    move/from16 v12, p4

    move v6, v9

    const/4 v9, 0x5

    const/4 v10, 0x1

    const/4 v13, 0x2

    goto/16 :goto_27

    :cond_29
    if-eqz v2, :cond_2a

    aget v6, v4, v13

    if-eq v11, v6, :cond_2b

    :cond_2a
    aget v2, v4, v13

    invoke-static {v0, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v6

    move v11, v2

    move-object v2, v6

    :cond_2b
    rem-int v6, v14, v11

    sub-int v6, v14, v6

    if-eqz v12, :cond_2c

    iget v7, v2, Lcom/google/zxing/common/BitArray;->size:I

    mul-int/lit8 v10, v11, 0x40

    if-le v7, v10, :cond_2c

    goto :goto_15

    :cond_2c
    iget v7, v2, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v7, v3

    if-gt v7, v6, :cond_28

    move-object v0, v2

    move v4, v11

    move v1, v12

    move v8, v13

    move v2, v14

    :cond_2d
    :goto_16
    invoke-static {v0, v2, v4}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v2

    iget v0, v0, Lcom/google/zxing/common/BitArray;->size:I

    div-int/2addr v0, v4

    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    if-eqz v1, :cond_2e

    add-int/lit8 v4, v8, -0x1

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    const/4 v6, 0x6

    invoke-virtual {v3, v0, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v0, 0x1c

    const/4 v6, 0x4

    invoke-static {v3, v0, v6}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    goto :goto_17

    :cond_2e
    const/4 v4, 0x1

    const/4 v6, 0x4

    add-int/lit8 v7, v8, -0x1

    const/4 v10, 0x5

    invoke-virtual {v3, v7, v10}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    sub-int/2addr v0, v4

    invoke-virtual {v3, v0, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v0, 0x28

    invoke-static {v3, v0, v6}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    :goto_17
    if-eqz v1, :cond_2f

    goto :goto_18

    :cond_2f
    const/16 v5, 0xe

    :goto_18
    mul-int/lit8 v3, v8, 0x4

    add-int/2addr v3, v5

    new-array v4, v3, [I

    if-eqz v1, :cond_31

    const/4 v5, 0x0

    :goto_19
    if-ge v5, v3, :cond_30

    aput v5, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_30
    move v7, v3

    goto :goto_1b

    :cond_31
    add-int/lit8 v5, v3, 0x1

    div-int/lit8 v6, v3, 0x2

    add-int/lit8 v7, v6, -0x1

    div-int/lit8 v7, v7, 0xf

    const/4 v10, 0x2

    mul-int/2addr v7, v10

    add-int/2addr v7, v5

    div-int/lit8 v5, v7, 0x2

    const/4 v10, 0x0

    :goto_1a
    if-ge v10, v6, :cond_32

    div-int/lit8 v11, v10, 0xf

    add-int/2addr v11, v10

    sub-int v12, v6, v10

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    sub-int v14, v5, v11

    sub-int/2addr v14, v13

    aput v14, v4, v12

    add-int v12, v6, v10

    add-int/2addr v11, v5

    add-int/2addr v11, v13

    aput v11, v4, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_1a

    :cond_32
    :goto_1b
    new-instance v5, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v5, v7}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_1c
    if-ge v6, v8, :cond_3a

    sub-int v11, v8, v6

    const/4 v12, 0x4

    mul-int/2addr v11, v12

    if-eqz v1, :cond_33

    const/16 v13, 0x9

    goto :goto_1d

    :cond_33
    const/16 v13, 0xc

    :goto_1d
    add-int/2addr v11, v13

    const/4 v13, 0x0

    :goto_1e
    if-ge v13, v11, :cond_39

    mul-int/lit8 v14, v13, 0x2

    const/4 v12, 0x0

    :goto_1f
    const/4 v15, 0x2

    if-ge v12, v15, :cond_38

    add-int v15, v10, v14

    add-int/2addr v15, v12

    invoke-virtual {v2, v15}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v15

    if-eqz v15, :cond_34

    mul-int/lit8 v15, v6, 0x2

    add-int v17, v15, v12

    aget v9, v4, v17

    add-int/2addr v15, v13

    aget v15, v4, v15

    invoke-virtual {v5, v9, v15}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_34
    mul-int/lit8 v9, v11, 0x2

    add-int/2addr v9, v10

    add-int/2addr v9, v14

    add-int/2addr v9, v12

    invoke-virtual {v2, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_35

    mul-int/lit8 v9, v6, 0x2

    add-int v15, v9, v13

    aget v15, v4, v15

    add-int/lit8 v17, v3, -0x1

    sub-int v17, v17, v9

    sub-int v17, v17, v12

    aget v9, v4, v17

    invoke-virtual {v5, v15, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_35
    mul-int/lit8 v9, v11, 0x4

    add-int/2addr v9, v10

    add-int/2addr v9, v14

    add-int/2addr v9, v12

    invoke-virtual {v2, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_36

    add-int/lit8 v9, v3, -0x1

    mul-int/lit8 v15, v6, 0x2

    sub-int/2addr v9, v15

    sub-int v15, v9, v12

    aget v15, v4, v15

    sub-int/2addr v9, v13

    aget v9, v4, v9

    invoke-virtual {v5, v15, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_36
    mul-int/lit8 v9, v11, 0x6

    add-int/2addr v9, v10

    add-int/2addr v9, v14

    add-int/2addr v9, v12

    invoke-virtual {v2, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_37

    add-int/lit8 v9, v3, -0x1

    mul-int/lit8 v15, v6, 0x2

    sub-int/2addr v9, v15

    sub-int/2addr v9, v13

    aget v9, v4, v9

    add-int/2addr v15, v12

    aget v15, v4, v15

    invoke-virtual {v5, v9, v15}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_37
    add-int/lit8 v12, v12, 0x1

    const/16 v9, 0xa

    goto :goto_1f

    :cond_38
    add-int/lit8 v13, v13, 0x1

    const/16 v9, 0xa

    const/4 v12, 0x4

    goto :goto_1e

    :cond_39
    mul-int/lit8 v11, v11, 0x8

    add-int/2addr v10, v11

    add-int/lit8 v6, v6, 0x1

    const/16 v9, 0xa

    goto/16 :goto_1c

    :cond_3a
    div-int/lit8 v2, v7, 0x2

    const/4 v4, 0x7

    if-eqz v1, :cond_3f

    const/4 v6, 0x0

    :goto_20
    if-ge v6, v4, :cond_44

    add-int/lit8 v8, v2, -0x3

    add-int/2addr v8, v6

    invoke-virtual {v0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_3b

    add-int/lit8 v9, v2, -0x5

    invoke-virtual {v5, v8, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_3b
    add-int/lit8 v9, v6, 0x7

    invoke-virtual {v0, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_3c

    add-int/lit8 v9, v2, 0x5

    invoke-virtual {v5, v9, v8}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_3c
    rsub-int/lit8 v9, v6, 0x14

    invoke-virtual {v0, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_3d

    add-int/lit8 v9, v2, 0x5

    invoke-virtual {v5, v8, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_3d
    rsub-int/lit8 v9, v6, 0x1b

    invoke-virtual {v0, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_3e

    add-int/lit8 v9, v2, -0x5

    invoke-virtual {v5, v9, v8}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_3f
    const/16 v6, 0xa

    const/4 v8, 0x0

    :goto_21
    if-ge v8, v6, :cond_44

    add-int/lit8 v9, v2, -0x5

    add-int/2addr v9, v8

    div-int/lit8 v10, v8, 0x5

    add-int/2addr v10, v9

    invoke-virtual {v0, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_40

    add-int/lit8 v9, v2, -0x7

    invoke-virtual {v5, v10, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_40
    add-int/lit8 v9, v8, 0xa

    invoke-virtual {v0, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_41

    add-int/lit8 v9, v2, 0x7

    invoke-virtual {v5, v9, v10}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_41
    rsub-int/lit8 v9, v8, 0x1d

    invoke-virtual {v0, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_42

    add-int/lit8 v9, v2, 0x7

    invoke-virtual {v5, v10, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_42
    rsub-int/lit8 v9, v8, 0x27

    invoke-virtual {v0, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_43

    add-int/lit8 v9, v2, -0x7

    invoke-virtual {v5, v9, v10}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_43
    add-int/lit8 v8, v8, 0x1

    goto :goto_21

    :cond_44
    if-eqz v1, :cond_45

    const/4 v9, 0x5

    invoke-static {v5, v2, v9}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    goto :goto_24

    :cond_45
    invoke-static {v5, v2, v4}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_22
    div-int/lit8 v6, v3, 0x2

    const/4 v10, 0x1

    sub-int/2addr v6, v10

    if-ge v1, v6, :cond_47

    and-int/lit8 v0, v2, 0x1

    :goto_23
    if-ge v0, v7, :cond_46

    sub-int v6, v2, v4

    invoke-virtual {v5, v6, v0}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v8, v2, v4

    invoke-virtual {v5, v8, v0}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    invoke-virtual {v5, v0, v6}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    invoke-virtual {v5, v0, v8}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_23

    :cond_46
    add-int/lit8 v1, v1, 0xf

    add-int/lit8 v4, v4, 0x10

    const/4 v0, 0x2

    goto :goto_22

    :cond_47
    :goto_24
    new-instance v0, Lcom/google/zxing/aztec/encoder/AztecCode;

    invoke-direct {v0}, Lcom/google/zxing/aztec/encoder/AztecCode;-><init>()V

    iget v0, v5, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v1, v5, Lcom/google/zxing/common/BitMatrix;->height:I

    move/from16 v7, p3

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v12, p4

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int v4, v2, v0

    div-int v6, v3, v1

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int v6, v0, v4

    sub-int v6, v2, v6

    const/4 v13, 0x2

    div-int/2addr v6, v13

    mul-int v7, v1, v4

    sub-int v7, v3, v7

    div-int/2addr v7, v13

    new-instance v8, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v8, v2, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v1, :cond_4a

    move v9, v6

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v0, :cond_49

    invoke-virtual {v5, v3, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_48

    invoke-virtual {v8, v9, v7, v4, v4}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_48
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v9, v4

    goto :goto_26

    :cond_49
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v7, v4

    goto :goto_25

    :cond_4a
    return-object v8

    :goto_27
    add-int/lit8 v8, v8, 0x1

    move v9, v6

    const/4 v10, 0x3

    goto/16 :goto_11

    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data too large for an Aztec code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
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
