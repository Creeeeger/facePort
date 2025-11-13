.class public abstract Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final EXP900:[Ljava/math/BigInteger;

.field public static final MIXED_CHARS:[C

.field public static final PUNCT_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    const-string v0, "0123456789&\r\t,:#-.$/+%*=^"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/math/BigInteger;

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v1, 0x0

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v2, v0, v1

    const-wide/16 v1, 0x384

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v0, 0x2

    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v0, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static decodeBase900toBase10(I[I)Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, p0, :cond_0

    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v5, p0, v2

    sub-int/2addr v5, v3

    aget-object v3, v4, v5

    aget v4, p1, v2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x31

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method public static decodeTextCompaction([I[IILcom/google/zxing/common/ECIStringBuilder;Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;)Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    .locals 16

    move-object/from16 v0, p3

    move/from16 v5, p2

    move-object/from16 v2, p4

    move-object v3, v2

    move-object v4, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_19

    aget v7, p0, v6

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    sget-object v9, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    sget-object v10, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    sget-object v11, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    sget-object v12, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    const/16 v14, 0x1a

    const/16 v15, 0x391

    const/16 v1, 0x384

    if-eqz v8, :cond_14

    const/4 v13, 0x1

    if-eq v8, v13, :cond_10

    const/4 v9, 0x2

    if-eq v8, v9, :cond_c

    const/4 v9, 0x3

    sget-object v10, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    const/16 v11, 0x1d

    if-eq v8, v9, :cond_8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_4

    const/4 v9, 0x5

    if-eq v8, v9, :cond_0

    :goto_1
    const/4 v1, 0x0

    goto/16 :goto_b

    :cond_0
    if-ge v7, v11, :cond_1

    aget-char v1, v10, v7

    :goto_2
    move-object v3, v4

    goto/16 :goto_b

    :cond_1
    if-eq v7, v11, :cond_3

    if-eq v7, v1, :cond_3

    if-eq v7, v15, :cond_2

    goto :goto_3

    :cond_2
    aget v1, p1, v6

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    :goto_3
    move-object v3, v4

    goto :goto_1

    :cond_3
    move-object v3, v12

    goto :goto_1

    :cond_4
    if-ge v7, v14, :cond_5

    add-int/lit8 v7, v7, 0x41

    int-to-char v1, v7

    goto :goto_2

    :cond_5
    if-eq v7, v14, :cond_7

    if-eq v7, v1, :cond_6

    move-object v12, v4

    :cond_6
    const/4 v13, 0x0

    goto :goto_4

    :cond_7
    move-object v12, v4

    const/16 v13, 0x20

    :goto_4
    move-object v3, v12

    :goto_5
    move v1, v13

    goto/16 :goto_b

    :cond_8
    if-ge v7, v11, :cond_9

    aget-char v1, v10, v7

    goto/16 :goto_b

    :cond_9
    if-eq v7, v11, :cond_b

    if-eq v7, v1, :cond_b

    if-eq v7, v15, :cond_a

    goto :goto_1

    :cond_a
    aget v1, p1, v6

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_1

    :cond_b
    move-object v2, v12

    move-object v3, v2

    goto :goto_1

    :cond_c
    const/16 v8, 0x19

    if-ge v7, v8, :cond_d

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v1, v1, v7

    goto/16 :goto_b

    :cond_d
    if-eq v7, v1, :cond_f

    if-eq v7, v15, :cond_e

    packed-switch v7, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    move-object v4, v3

    move-object v3, v11

    :goto_6
    const/4 v13, 0x0

    goto :goto_5

    :pswitch_1
    move-object v2, v10

    :goto_7
    move-object v3, v2

    goto :goto_6

    :pswitch_2
    const/16 v13, 0x20

    goto :goto_5

    :pswitch_3
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_7

    :cond_e
    aget v1, p1, v6

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_6

    :cond_f
    :pswitch_4
    move-object v2, v12

    goto :goto_7

    :cond_10
    if-ge v7, v14, :cond_11

    add-int/lit8 v7, v7, 0x61

    :goto_8
    int-to-char v1, v7

    goto :goto_b

    :cond_11
    if-eq v7, v1, :cond_13

    if-eq v7, v15, :cond_12

    packed-switch v7, :pswitch_data_1

    goto :goto_6

    :pswitch_5
    move-object v4, v3

    move-object v3, v11

    goto :goto_6

    :pswitch_6
    move-object v2, v9

    :goto_9
    move-object v3, v2

    goto :goto_6

    :pswitch_7
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v4, v3

    const/4 v13, 0x0

    move-object v3, v1

    goto :goto_5

    :cond_12
    aget v1, p1, v6

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_6

    :cond_13
    move-object v2, v12

    goto :goto_9

    :cond_14
    if-ge v7, v14, :cond_15

    add-int/lit8 v7, v7, 0x41

    goto :goto_8

    :cond_15
    if-eq v7, v1, :cond_17

    if-eq v7, v15, :cond_16

    packed-switch v7, :pswitch_data_2

    goto :goto_6

    :pswitch_8
    move-object v4, v3

    move-object v3, v11

    goto :goto_6

    :pswitch_9
    move-object v2, v9

    :goto_a
    move-object v3, v2

    goto :goto_6

    :pswitch_a
    move-object v2, v10

    goto :goto_a

    :cond_16
    aget v1, p1, v6

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    goto :goto_6

    :cond_17
    move-object v2, v12

    goto :goto_a

    :goto_b
    if-eqz v1, :cond_18

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/ECIStringBuilder;->append(C)V

    :cond_18
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_19
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_2
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_2
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public static numericCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I
    .locals 8

    const/16 v0, 0xf

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    aget v4, p0, v1

    if-ge p1, v4, :cond_5

    if-nez v2, :cond_5

    add-int/lit8 v5, p1, 0x1

    aget v6, p0, p1

    const/4 v7, 0x1

    if-ne v5, v4, :cond_1

    move v2, v7

    :cond_1
    const/16 v4, 0x384

    if-ge v6, v4, :cond_2

    aput v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    :goto_1
    move p1, v5

    goto :goto_2

    :cond_2
    if-eq v6, v4, :cond_3

    const/16 v4, 0x385

    if-eq v6, v4, :cond_3

    const/16 v4, 0x39f

    if-eq v6, v4, :cond_3

    const/16 v4, 0x3a0

    if-eq v6, v4, :cond_3

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :cond_3
    :pswitch_0
    move v2, v7

    :goto_2
    rem-int/lit8 v4, v3, 0xf

    if-eqz v4, :cond_4

    const/16 v4, 0x386

    if-eq v6, v4, :cond_4

    if-eqz v2, :cond_0

    :cond_4
    if-lez v3, :cond_0

    invoke-static {v3, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10(I[I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/google/zxing/common/ECIStringBuilder;->currentBytes:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v1

    goto :goto_0

    :cond_5
    return p1

    :pswitch_data_0
    .packed-switch 0x39a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static textCompaction([IILcom/google/zxing/common/ECIStringBuilder;)I
    .locals 11

    const/4 v0, 0x0

    aget v1, p0, v0

    sub-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [I

    new-array v1, v1, [I

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move v4, v0

    move v5, v4

    :goto_0
    aget v6, p0, v0

    if-ge p1, v6, :cond_5

    if-nez v4, :cond_5

    add-int/lit8 v6, p1, 0x1

    aget v7, p0, p1

    const/16 v8, 0x384

    if-ge v7, v8, :cond_0

    div-int/lit8 p1, v7, 0x1e

    aput p1, v2, v5

    add-int/lit8 p1, v5, 0x1

    rem-int/lit8 v7, v7, 0x1e

    aput v7, v2, p1

    add-int/lit8 v5, v5, 0x2

    :goto_1
    move p1, v6

    goto :goto_0

    :cond_0
    const/16 v9, 0x391

    if-eq v7, v9, :cond_4

    const/16 v9, 0x39f

    if-eq v7, v9, :cond_2

    const/16 v9, 0x3a0

    if-eq v7, v9, :cond_1

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    goto :goto_1

    :pswitch_0
    add-int/lit8 p1, v5, 0x1

    aput v8, v2, v5

    move v5, p1

    goto :goto_1

    :cond_1
    :pswitch_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v2, v1, v5, p2, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILcom/google/zxing/common/ECIStringBuilder;Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;)Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-result-object v1

    add-int/lit8 p1, p1, 0x2

    aget v2, p0, v6

    invoke-virtual {p2, v2}, Lcom/google/zxing/common/ECIStringBuilder;->appendECI(I)V

    aget v2, p0, v0

    if-gt p1, v2, :cond_3

    sub-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x2

    new-array v3, v2, [I

    new-array v2, v2, [I

    move v5, v0

    move-object v10, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v10

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_4
    aput v9, v2, v5

    add-int/lit8 p1, p1, 0x2

    aget v6, p0, v6

    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v2, v1, v5, p2, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILcom/google/zxing/common/ECIStringBuilder;Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;)Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
