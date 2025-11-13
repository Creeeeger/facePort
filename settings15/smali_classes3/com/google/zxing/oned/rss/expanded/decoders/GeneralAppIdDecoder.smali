.class public final Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final buffer:Ljava/lang/StringBuilder;

.field public final current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

.field public final information:Lcom/google/zxing/common/BitArray;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->NUMERIC:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    iput-object v1, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    return-void
.end method

.method public static extractNumericValueFromBitArray(IILcom/google/zxing/common/BitArray;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_1

    add-int v2, p0, v0

    invoke-virtual {p2, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-int v2, p1, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public final decodeAllCodes(ILjava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeGeneralPurposeField(ILjava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-result-object v1

    iget-object v2, v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->newString:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v2, v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->remaining:Z

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->remainingValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    iget v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;->newPosition:I

    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    move p1, v1

    move-object v1, v2

    goto :goto_0
.end method

.method public final decodeGeneralPurposeField(ILjava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, v0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    move/from16 v4, p1

    iput v4, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    :goto_0
    iget v4, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    iget-object v5, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    sget-object v6, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->ALPHA:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    sget-object v7, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->ISO_IEC_646:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    sget-object v8, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->NUMERIC:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    iget-object v9, v0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    const/16 v10, 0x24

    const/4 v11, 0x5

    const/16 v16, 0x2e

    const/16 v17, 0x2f

    const/16 v14, 0xf

    const/16 v15, 0x3f

    const/16 v12, 0x10

    if-ne v5, v6, :cond_e

    :goto_1
    iget v5, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    add-int/lit8 v6, v5, 0x5

    iget v3, v9, Lcom/google/zxing/common/BitArray;->size:I

    if-le v6, v3, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-static {v5, v11, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(IILcom/google/zxing/common/BitArray;)I

    move-result v3

    const/4 v6, 0x6

    if-lt v3, v11, :cond_2

    if-ge v3, v12, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v5, 0x6

    iget v13, v9, Lcom/google/zxing/common/BitArray;->size:I

    if-le v3, v13, :cond_3

    goto/16 :goto_7

    :cond_3
    invoke-static {v5, v6, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(IILcom/google/zxing/common/BitArray;)I

    move-result v3

    if-lt v3, v12, :cond_8

    if-ge v3, v15, :cond_8

    :goto_2
    iget v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    invoke-static {v3, v11, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(IILcom/google/zxing/common/BitArray;)I

    move-result v5

    if-ne v5, v14, :cond_4

    new-instance v5, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v3, v3, 0x5

    invoke-direct {v5, v10, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(CI)V

    :goto_3
    const/16 v13, 0x20

    goto :goto_6

    :cond_4
    if-lt v5, v11, :cond_5

    if-ge v5, v14, :cond_5

    new-instance v6, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v3, v3, 0x5

    add-int/lit8 v5, v5, 0x2b

    int-to-char v5, v5

    invoke-direct {v6, v5, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(CI)V

    move-object v5, v6

    goto :goto_3

    :cond_5
    invoke-static {v3, v6, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(IILcom/google/zxing/common/BitArray;)I

    move-result v5

    const/16 v13, 0x20

    if-lt v5, v13, :cond_6

    const/16 v6, 0x3a

    if-ge v5, v6, :cond_6

    new-instance v6, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v3, v3, 0x6

    add-int/lit8 v5, v5, 0x21

    int-to-char v5, v5

    invoke-direct {v6, v5, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(CI)V

    :goto_4
    move-object v5, v6

    goto :goto_6

    :cond_6
    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Decoding invalid alphanumeric value: "

    invoke-static {v5, v1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move/from16 v5, v17

    goto :goto_5

    :pswitch_1
    move/from16 v5, v16

    goto :goto_5

    :pswitch_2
    const/16 v5, 0x2d

    goto :goto_5

    :pswitch_3
    const/16 v5, 0x2c

    goto :goto_5

    :pswitch_4
    const/16 v5, 0x2a

    :goto_5
    new-instance v6, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v3, v3, 0x6

    invoke-direct {v6, v5, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(CI)V

    goto :goto_4

    :goto_6
    iget v3, v5, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;->newPosition:I

    iput v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    iget-char v5, v5, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->value:C

    if-ne v5, v10, :cond_7

    new-instance v5, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V

    goto :goto_c

    :cond_7
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_8
    :goto_7
    iget v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    add-int/lit8 v5, v3, 0x3

    iget v6, v9, Lcom/google/zxing/common/BitArray;->size:I

    if-le v5, v6, :cond_9

    goto :goto_9

    :cond_9
    :goto_8
    if-ge v3, v5, :cond_c

    invoke-virtual {v9, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_b

    :goto_9
    iget v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    invoke-virtual {v0, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaTo646ToAlphaLatch(I)Z

    move-result v3

    if-eqz v3, :cond_d

    iget v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    add-int/lit8 v5, v3, 0x5

    iget v6, v9, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v5, v6, :cond_a

    add-int/lit8 v3, v3, 0x5

    iput v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    goto :goto_a

    :cond_a
    iput v6, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    :goto_a
    iput-object v7, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    goto :goto_b

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_c
    iget v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    add-int/lit8 v3, v3, 0x3

    iput v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    iput-object v8, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    :cond_d
    :goto_b
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    invoke-direct {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>()V

    :goto_c
    iget-boolean v5, v3, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->finished:Z

    goto/16 :goto_23

    :cond_e
    const/16 v13, 0x20

    const/16 v3, 0x8

    const/4 v13, 0x7

    if-ne v5, v7, :cond_1f

    :goto_d
    iget v5, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    add-int/lit8 v7, v5, 0x5

    iget v15, v9, Lcom/google/zxing/common/BitArray;->size:I

    if-le v7, v15, :cond_f

    goto/16 :goto_12

    :cond_f
    invoke-static {v5, v11, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(IILcom/google/zxing/common/BitArray;)I

    move-result v7

    const/16 v15, 0x74

    const/16 v10, 0x40

    if-lt v7, v11, :cond_10

    if-ge v7, v12, :cond_10

    goto :goto_e

    :cond_10
    add-int/lit8 v7, v5, 0x7

    iget v12, v9, Lcom/google/zxing/common/BitArray;->size:I

    if-le v7, v12, :cond_11

    goto/16 :goto_12

    :cond_11
    invoke-static {v5, v13, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(IILcom/google/zxing/common/BitArray;)I

    move-result v7

    if-lt v7, v10, :cond_12

    if-ge v7, v15, :cond_12

    goto :goto_e

    :cond_12
    add-int/lit8 v7, v5, 0x8

    iget v12, v9, Lcom/google/zxing/common/BitArray;->size:I

    if-le v7, v12, :cond_13

    goto/16 :goto_12

    :cond_13
    invoke-static {v5, v3, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(IILcom/google/zxing/common/BitArray;)I

    move-result v5

    const/16 v7, 0xe8

    if-lt v5, v7, :cond_19

    const/16 v7, 0xfd

    if-ge v5, v7, :cond_19

    :goto_e
    iget v5, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    invoke-static {v5, v11, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(IILcom/google/zxing/common/BitArray;)I

    move-result v7

    if-ne v7, v14, :cond_14

    new-instance v7, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v5, v5, 0x5

    const/16 v10, 0x24

    invoke-direct {v7, v10, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(CI)V

    goto/16 :goto_11

    :cond_14
    if-lt v7, v11, :cond_15

    if-ge v7, v14, :cond_15

    new-instance v10, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v5, v5, 0x5

    add-int/lit8 v7, v7, 0x2b

    int-to-char v7, v7

    invoke-direct {v10, v7, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(CI)V

    :goto_f
    move-object v7, v10

    goto/16 :goto_11

    :cond_15
    invoke-static {v5, v13, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(IILcom/google/zxing/common/BitArray;)I

    move-result v7

    const/16 v12, 0x5a

    if-lt v7, v10, :cond_16

    if-ge v7, v12, :cond_16

    new-instance v10, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v5, v5, 0x7

    add-int/lit8 v7, v7, 0x1

    int-to-char v7, v7

    invoke-direct {v10, v7, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(CI)V

    goto :goto_f

    :cond_16
    if-lt v7, v12, :cond_17

    if-ge v7, v15, :cond_17

    new-instance v10, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v5, v5, 0x7

    add-int/lit8 v7, v7, 0x7

    int-to-char v7, v7

    invoke-direct {v10, v7, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(CI)V

    goto :goto_f

    :cond_17
    invoke-static {v5, v3, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(IILcom/google/zxing/common/BitArray;)I

    move-result v7

    packed-switch v7, :pswitch_data_1

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_5
    const/16 v7, 0x20

    goto :goto_10

    :pswitch_6
    const/16 v7, 0x5f

    goto :goto_10

    :pswitch_7
    const/16 v7, 0x3f

    goto :goto_10

    :pswitch_8
    const/16 v7, 0x3e

    goto :goto_10

    :pswitch_9
    const/16 v7, 0x3d

    goto :goto_10

    :pswitch_a
    const/16 v7, 0x3c

    goto :goto_10

    :pswitch_b
    const/16 v7, 0x3b

    goto :goto_10

    :pswitch_c
    const/16 v7, 0x3a

    goto :goto_10

    :pswitch_d
    move/from16 v7, v17

    goto :goto_10

    :pswitch_e
    move/from16 v7, v16

    goto :goto_10

    :pswitch_f
    const/16 v7, 0x2d

    goto :goto_10

    :pswitch_10
    const/16 v7, 0x2c

    goto :goto_10

    :pswitch_11
    const/16 v7, 0x2b

    goto :goto_10

    :pswitch_12
    const/16 v7, 0x2a

    goto :goto_10

    :pswitch_13
    const/16 v7, 0x29

    goto :goto_10

    :pswitch_14
    const/16 v7, 0x28

    goto :goto_10

    :pswitch_15
    const/16 v7, 0x27

    goto :goto_10

    :pswitch_16
    const/16 v7, 0x26

    goto :goto_10

    :pswitch_17
    const/16 v7, 0x25

    goto :goto_10

    :pswitch_18
    const/16 v7, 0x22

    goto :goto_10

    :pswitch_19
    const/16 v7, 0x21

    :goto_10
    new-instance v10, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;

    add-int/lit8 v5, v5, 0x8

    invoke-direct {v10, v7, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;-><init>(CI)V

    goto :goto_f

    :goto_11
    iget v5, v7, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;->newPosition:I

    iput v5, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    iget-char v7, v7, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->value:C

    const/16 v10, 0x24

    if-ne v7, v10, :cond_18

    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    new-instance v5, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V

    move-object v3, v5

    goto :goto_17

    :cond_18
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v12, 0x10

    const/16 v15, 0x3f

    goto/16 :goto_d

    :cond_19
    :goto_12
    iget v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    add-int/lit8 v5, v3, 0x3

    iget v7, v9, Lcom/google/zxing/common/BitArray;->size:I

    if-le v5, v7, :cond_1a

    goto :goto_14

    :cond_1a
    :goto_13
    if-ge v3, v5, :cond_1d

    invoke-virtual {v9, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_1c

    :goto_14
    iget v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    invoke-virtual {v0, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaTo646ToAlphaLatch(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    add-int/lit8 v5, v3, 0x5

    iget v7, v9, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v5, v7, :cond_1b

    add-int/lit8 v3, v3, 0x5

    iput v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    goto :goto_15

    :cond_1b
    iput v7, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    :goto_15
    iput-object v6, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    goto :goto_16

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_1d
    iget v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    add-int/lit8 v3, v3, 0x3

    iput v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    iput-object v8, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    :cond_1e
    :goto_16
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    invoke-direct {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>()V

    :goto_17
    iget-boolean v5, v3, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->finished:Z

    goto/16 :goto_23

    :cond_1f
    :goto_18
    iget v5, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    add-int/lit8 v7, v5, 0x7

    iget v8, v9, Lcom/google/zxing/common/BitArray;->size:I

    if-le v7, v8, :cond_21

    add-int/lit8 v5, v5, 0x4

    if-gt v5, v8, :cond_20

    goto :goto_1a

    :cond_20
    const/4 v5, 0x0

    goto :goto_1b

    :cond_21
    move v7, v5

    :goto_19
    add-int/lit8 v8, v5, 0x3

    if-ge v7, v8, :cond_23

    invoke-virtual {v9, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_22

    :goto_1a
    const/4 v5, 0x1

    goto :goto_1b

    :cond_22
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_23
    invoke-virtual {v9, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    :goto_1b
    const/4 v7, 0x4

    if-eqz v5, :cond_2a

    iget v5, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    add-int/lit8 v8, v5, 0x7

    iget v10, v9, Lcom/google/zxing/common/BitArray;->size:I

    const/16 v11, 0xa

    if-le v8, v10, :cond_25

    invoke-static {v5, v7, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(IILcom/google/zxing/common/BitArray;)I

    move-result v5

    if-nez v5, :cond_24

    new-instance v5, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;

    iget v7, v9, Lcom/google/zxing/common/BitArray;->size:I

    invoke-direct {v5, v7, v11, v11}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;-><init>(III)V

    goto :goto_1c

    :cond_24
    new-instance v7, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;

    iget v8, v9, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v7, v8, v5, v11}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;-><init>(III)V

    move-object v5, v7

    goto :goto_1c

    :cond_25
    invoke-static {v5, v13, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(IILcom/google/zxing/common/BitArray;)I

    move-result v5

    sub-int/2addr v5, v3

    div-int/lit8 v7, v5, 0xb

    rem-int/lit8 v5, v5, 0xb

    new-instance v10, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;

    invoke-direct {v10, v8, v7, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;-><init>(III)V

    move-object v5, v10

    :goto_1c
    iget v7, v5, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;->newPosition:I

    iput v7, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    iget v8, v5, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->firstDigit:I

    if-ne v8, v11, :cond_26

    const/4 v10, 0x1

    goto :goto_1d

    :cond_26
    const/4 v10, 0x0

    :goto_1d
    iget v5, v5, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->secondDigit:I

    if-eqz v10, :cond_28

    if-ne v5, v11, :cond_27

    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v7, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    goto :goto_1e

    :cond_27
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v7, v6, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;I)V

    :goto_1e
    new-instance v5, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V

    :goto_1f
    move-object v3, v5

    goto :goto_22

    :cond_28
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ne v5, v11, :cond_29

    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    iget v5, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    new-instance v5, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v8, 0x1

    invoke-direct {v5, v3, v8}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;Z)V

    goto :goto_1f

    :cond_29
    const/4 v8, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_18

    :cond_2a
    iget v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    add-int/lit8 v5, v3, 0x1

    iget v8, v9, Lcom/google/zxing/common/BitArray;->size:I

    if-le v5, v8, :cond_2b

    goto :goto_21

    :cond_2b
    const/4 v5, 0x0

    :goto_20
    if-ge v5, v7, :cond_2d

    add-int v8, v5, v3

    iget v10, v9, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v8, v10, :cond_2d

    invoke-virtual {v9, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_2c

    goto :goto_21

    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_2d
    iput-object v6, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    iget v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    add-int/2addr v3, v7

    iput v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    :goto_21
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;

    invoke-direct {v3}, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;-><init>()V

    :goto_22
    iget-boolean v5, v3, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->finished:Z

    :goto_23
    iget v6, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    if-eq v4, v6, :cond_2e

    goto :goto_24

    :cond_2e
    if-nez v5, :cond_2f

    goto :goto_25

    :cond_2f
    :goto_24
    if-eqz v5, :cond_31

    :goto_25
    iget-object v0, v3, Lcom/google/zxing/oned/rss/expanded/decoders/BlockParsedResult;->decodedInformation:Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    if-eqz v0, :cond_30

    iget-boolean v1, v0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->remaining:Z

    if-eqz v1, :cond_30

    new-instance v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->remainingValue:I

    invoke-direct {v1, v6, v2, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;I)V

    return-object v1

    :cond_30
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_31
    const/4 v3, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe8
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final isAlphaTo646ToAlphaLatch(I)Z
    .locals 4

    add-int/lit8 v0, p1, 0x1

    iget-object p0, p0, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/google/zxing/common/BitArray;

    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    add-int v1, v0, p1

    iget v3, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v1, v3, :cond_3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
