.class public final Lcom/google/zxing/oned/Code93Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ALPHABET:[C

.field public static final ASTERISK_ENCODING:I

.field public static final CHARACTER_ENCODINGS:[I


# instance fields
.field public final counters:[I

.field public final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    const/16 v1, 0x2f

    aget v0, v0, v1

    sput v0, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    return-void

    :array_0
    .array-data 4
        0x114
        0x148
        0x144
        0x142
        0x128
        0x124
        0x122
        0x150
        0x112
        0x10a
        0x1a8
        0x1a4
        0x1a2
        0x194
        0x192
        0x18a
        0x168
        0x164
        0x162
        0x134
        0x11a
        0x158
        0x14c
        0x146
        0x12c
        0x116
        0x1b4
        0x1b2
        0x1ac
        0x1a6
        0x196
        0x19a
        0x16c
        0x166
        0x136
        0x13a
        0x12e
        0x1d4
        0x1d2
        0x1ca
        0x16e
        0x176
        0x1ae
        0x126
        0x1da
        0x1d6
        0x132
        0x15e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/Code93Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    return-void
.end method

.method public static checkOneChecksum(IILjava/lang/CharSequence;)V
    .locals 6

    add-int/lit8 v0, p0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ltz v0, :cond_1

    const-string v4, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    mul-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/2addr v3, v1

    if-le v3, p1, :cond_0

    move v3, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {p2, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    rem-int/lit8 v2, v2, 0x2f

    sget-object p1, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    aget-char p1, p1, v2

    if-ne p0, p1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p0

    throw p0
.end method

.method public static toPattern([I)I
    .locals 8

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    aget v4, p0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p0

    move v2, v1

    move v4, v2

    :goto_1
    if-ge v2, v0, :cond_5

    aget v5, p0, v2

    int-to-float v5, v5

    const/high16 v6, 0x41100000    # 9.0f

    mul-float/2addr v5, v6

    int-to-float v6, v3

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_4

    const/4 v7, 0x4

    if-le v5, v7, :cond_1

    goto :goto_3

    :cond_1
    and-int/lit8 v7, v2, 0x1

    if-nez v7, :cond_2

    move v7, v1

    :goto_2
    if-ge v7, v5, :cond_3

    shl-int/lit8 v4, v4, 0x1

    or-int/2addr v4, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    shl-int/2addr v4, v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    const/4 p0, -0x1

    return p0

    :cond_5
    return v4
.end method


# virtual methods
.method public final decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 11

    iget p3, p2, Lcom/google/zxing/common/BitArray;->size:I

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/zxing/oned/Code93Reader;->counters:[I

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([II)V

    array-length v3, v2

    move v5, v0

    move v6, v5

    move v4, v1

    :goto_0
    if-ge v1, p3, :cond_1a

    invoke-virtual {p2, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v5, :cond_0

    aget v7, v2, v6

    add-int/2addr v7, v8

    aput v7, v2, v6

    goto/16 :goto_b

    :cond_0
    add-int/lit8 v7, v3, -0x1

    if-ne v6, v7, :cond_19

    invoke-static {v2}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v7

    sget v9, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    const/4 v10, 0x2

    if-ne v7, v9, :cond_18

    filled-new-array {v4, v1}, [I

    move-result-object p3

    aget v1, p3, v8

    invoke-virtual {p2, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v1

    iget v3, p2, Lcom/google/zxing/common/BitArray;->size:I

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([II)V

    iget-object p0, p0, Lcom/google/zxing/oned/Code93Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_1
    invoke-static {v1, p2, v2}, Lcom/google/zxing/oned/OneDReader;->recordPattern(ILcom/google/zxing/common/BitArray;[I)V

    invoke-static {v2}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v4

    if-ltz v4, :cond_17

    move v5, v0

    :goto_2
    sget-object v6, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    array-length v7, v6

    if-ge v5, v7, :cond_16

    aget v6, v6, v5

    if-ne v6, v4, :cond_15

    sget-object v4, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v5, v2

    move v6, v0

    move v7, v1

    :goto_3
    if-ge v6, v5, :cond_1

    aget v9, v2, v6

    add-int/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_1
    invoke-virtual {p2, v7}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v5

    const/16 v6, 0x2a

    if-ne v4, v6, :cond_14

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    array-length v4, v2

    move v6, v0

    move v7, v6

    :goto_4
    if-ge v6, v4, :cond_2

    aget v9, v2, v6

    add-int/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_2
    if-eq v5, v3, :cond_13

    invoke-virtual {p2, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result p2

    if-eqz p2, :cond_13

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lt p2, v10, :cond_12

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/lit8 v2, p2, -0x2

    const/16 v3, 0x14

    invoke-static {v2, v3, p0}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(IILjava/lang/CharSequence;)V

    sub-int/2addr p2, v8

    const/16 v2, 0xf

    invoke-static {p2, v2, p0}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(IILjava/lang/CharSequence;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v10

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v3, v0

    :goto_5
    if-ge v3, p2, :cond_11

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x61

    if-lt v4, v5, :cond_10

    const/16 v5, 0x64

    if-gt v4, v5, :cond_10

    add-int/lit8 v5, p2, -0x1

    if-ge v3, v5, :cond_f

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x4f

    const/16 v9, 0x5a

    const/16 v10, 0x41

    packed-switch v4, :pswitch_data_0

    :goto_6
    move v4, v0

    goto/16 :goto_8

    :pswitch_0
    if-lt v5, v10, :cond_3

    if-gt v5, v9, :cond_3

    add-int/lit8 v5, v5, 0x20

    :goto_7
    int-to-char v4, v5

    goto/16 :goto_8

    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_1
    if-lt v5, v10, :cond_4

    if-gt v5, v6, :cond_4

    add-int/lit8 v5, v5, -0x20

    goto :goto_7

    :cond_4
    if-ne v5, v9, :cond_5

    const/16 v4, 0x3a

    goto :goto_8

    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_2
    if-lt v5, v10, :cond_6

    const/16 v4, 0x45

    if-gt v5, v4, :cond_6

    add-int/lit8 v5, v5, -0x26

    goto :goto_7

    :cond_6
    const/16 v4, 0x46

    if-lt v5, v4, :cond_7

    const/16 v4, 0x4a

    if-gt v5, v4, :cond_7

    add-int/lit8 v5, v5, -0xb

    goto :goto_7

    :cond_7
    const/16 v4, 0x4b

    if-lt v5, v4, :cond_8

    if-gt v5, v6, :cond_8

    add-int/lit8 v5, v5, 0x10

    goto :goto_7

    :cond_8
    const/16 v4, 0x50

    if-lt v5, v4, :cond_9

    const/16 v4, 0x54

    if-gt v5, v4, :cond_9

    add-int/lit8 v5, v5, 0x2b

    goto :goto_7

    :cond_9
    const/16 v4, 0x55

    if-ne v5, v4, :cond_a

    goto :goto_6

    :cond_a
    const/16 v4, 0x56

    if-ne v5, v4, :cond_b

    const/16 v4, 0x40

    goto :goto_8

    :cond_b
    const/16 v4, 0x57

    if-ne v5, v4, :cond_c

    const/16 v4, 0x60

    goto :goto_8

    :cond_c
    const/16 v4, 0x58

    if-lt v5, v4, :cond_d

    if-gt v5, v9, :cond_d

    const/16 v4, 0x7f

    goto :goto_8

    :cond_d
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_3
    if-lt v5, v10, :cond_e

    if-gt v5, v9, :cond_e

    add-int/lit8 v5, v5, -0x40

    goto :goto_7

    :goto_8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_10
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_9
    add-int/2addr v3, v8

    goto/16 :goto_5

    :cond_11
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aget p2, p3, v8

    aget p3, p3, v0

    add-int/2addr p2, p3

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    int-to-float v0, v1

    int-to-float v1, v7

    div-float/2addr v1, p3

    add-float/2addr v1, v0

    new-instance p3, Lcom/google/zxing/Result;

    new-instance v0, Lcom/google/zxing/ResultPoint;

    int-to-float p1, p1

    invoke-direct {v0, p2, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance p2, Lcom/google/zxing/ResultPoint;

    invoke-direct {p2, v1, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    filled-new-array {v0, p2}, [Lcom/google/zxing/ResultPoint;

    move-result-object p1

    sget-object p2, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, p1, p2}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    sget-object p0, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    const-string p1, "]G0"

    invoke-virtual {p3, p0, p1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    return-object p3

    :cond_12
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_13
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_14
    move v1, v5

    goto/16 :goto_1

    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_16
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_17
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_18
    aget v7, v2, v0

    aget v9, v2, v8

    add-int/2addr v7, v9

    add-int/2addr v4, v7

    add-int/lit8 v7, v6, -0x1

    invoke-static {v2, v10, v2, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v0, v2, v7

    aput v0, v2, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_a

    :cond_19
    add-int/lit8 v6, v6, 0x1

    :goto_a
    aput v8, v2, v6

    xor-int/lit8 v5, v5, 0x1

    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
