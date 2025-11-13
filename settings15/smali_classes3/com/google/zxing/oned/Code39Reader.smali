.class public final Lcom/google/zxing/oned/Code39Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CHARACTER_ENCODINGS:[I


# instance fields
.field public final counters:[I

.field public final decodeRowResult:Ljava/lang/StringBuilder;

.field public final usingCheckDigit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    return-void

    :array_0
    .array-data 4
        0x34
        0x121
        0x61
        0x160
        0x31
        0x130
        0x70
        0x25
        0x124
        0x64
        0x109
        0x49
        0x148
        0x19
        0x118
        0x58
        0xd
        0x10c
        0x4c
        0x1c
        0x103
        0x43
        0x142
        0x13
        0x112
        0x52
        0x7
        0x106
        0x46
        0x16
        0x181
        0xc1
        0x1c0
        0x91
        0x190
        0xd0
        0x85
        0x184
        0xc4
        0xa8
        0xa2
        0x8a
        0x2a
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/16 p1, 0x9

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/zxing/oned/Code39Reader;->counters:[I

    return-void
.end method

.method public static toNarrowWidePattern([I)I
    .locals 10

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    const v4, 0x7fffffff

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_1

    aget v6, p0, v5

    if-ge v6, v4, :cond_0

    if-le v6, v2, :cond_0

    move v4, v6

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    move v3, v2

    move v5, v3

    move v6, v5

    :goto_2
    if-ge v2, v0, :cond_3

    aget v7, p0, v2

    if-le v7, v4, :cond_2

    add-int/lit8 v8, v0, -0x1

    sub-int/2addr v8, v2

    const/4 v9, 0x1

    shl-int v8, v9, v8

    or-int/2addr v5, v8

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v6, v7

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x3

    const/4 v7, -0x1

    if-ne v3, v2, :cond_6

    :goto_3
    if-ge v1, v0, :cond_5

    if-lez v3, :cond_5

    aget v2, p0, v1

    if-le v2, v4, :cond_4

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v2, v2, 0x2

    if-lt v2, v6, :cond_4

    return v7

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return v5

    :cond_6
    if-gt v3, v2, :cond_7

    return v7

    :cond_7
    move v2, v4

    goto :goto_0
.end method


# virtual methods
.method public final decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/google/zxing/oned/Code39Reader;->counters:[I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    iget-object v4, v0, Lcom/google/zxing/oned/Code39Reader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget v5, v1, Lcom/google/zxing/common/BitArray;->size:I

    invoke-virtual {v1, v3}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v6

    array-length v7, v2

    move v9, v3

    move v10, v9

    move v8, v6

    :goto_0
    if-ge v6, v5, :cond_10

    invoke-virtual {v1, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v9, :cond_0

    aget v11, v2, v10

    add-int/2addr v11, v12

    aput v11, v2, v10

    move/from16 v11, p1

    goto/16 :goto_a

    :cond_0
    add-int/lit8 v11, v7, -0x1

    if-ne v10, v11, :cond_f

    invoke-static {v2}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    move-result v11

    const/4 v13, 0x2

    const/16 v14, 0x94

    if-ne v11, v14, :cond_e

    sub-int v11, v6, v8

    div-int/2addr v11, v13

    sub-int v11, v8, v11

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {v1, v11, v8}, Lcom/google/zxing/common/BitArray;->isRange(II)Z

    move-result v11

    if-eqz v11, :cond_e

    filled-new-array {v8, v6}, [I

    move-result-object v5

    aget v6, v5, v12

    invoke-virtual {v1, v6}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v6

    iget v7, v1, Lcom/google/zxing/common/BitArray;->size:I

    :goto_1
    invoke-static {v6, v1, v2}, Lcom/google/zxing/oned/OneDReader;->recordPattern(ILcom/google/zxing/common/BitArray;[I)V

    invoke-static {v2}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    move-result v8

    if-ltz v8, :cond_d

    move v9, v3

    :goto_2
    const/16 v10, 0x2a

    const-string v11, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    const/16 v15, 0x2b

    if-ge v9, v15, :cond_2

    sget-object v16, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v3, v16, v9

    if-ne v3, v8, :cond_1

    invoke-virtual {v11, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    if-ne v8, v14, :cond_c

    move v3, v10

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v8, v2

    move v14, v6

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_3

    aget v17, v2, v9

    add-int v14, v14, v17

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    invoke-virtual {v1, v14}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v8

    if-ne v3, v10, :cond_b

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v12

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    array-length v1, v2

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_5
    if-ge v3, v1, :cond_4

    aget v10, v2, v3

    add-int/2addr v9, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    sub-int v1, v8, v6

    sub-int/2addr v1, v9

    if-eq v8, v7, :cond_6

    mul-int/2addr v1, v13

    if-lt v1, v9, :cond_5

    goto :goto_6

    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_6
    :goto_6
    iget-boolean v0, v0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    if-eqz v0, :cond_9

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v12

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v1, v0, :cond_7

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    rem-int/2addr v2, v15

    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_8

    :cond_8
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_9
    :goto_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget v1, v5, v12

    const/4 v2, 0x0

    aget v2, v5, v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v3, v6

    int-to-float v4, v9

    div-float/2addr v4, v2

    add-float/2addr v4, v3

    new-instance v2, Lcom/google/zxing/Result;

    new-instance v3, Lcom/google/zxing/ResultPoint;

    move/from16 v11, p1

    int-to-float v5, v11

    invoke-direct {v3, v1, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v1, Lcom/google/zxing/ResultPoint;

    invoke-direct {v1, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    filled-new-array {v3, v1}, [Lcom/google/zxing/ResultPoint;

    move-result-object v1

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4, v1, v3}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    sget-object v0, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    const-string v1, "]A0"

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    return-object v2

    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_b
    move/from16 v11, p1

    move v6, v8

    const/4 v3, 0x0

    const/16 v14, 0x94

    goto/16 :goto_1

    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_e
    move/from16 v11, p1

    aget v14, v2, v3

    aget v15, v2, v12

    add-int/2addr v14, v15

    add-int/2addr v8, v14

    add-int/lit8 v14, v10, -0x1

    invoke-static {v2, v13, v2, v3, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v3, v2, v14

    aput v3, v2, v10

    add-int/lit8 v10, v10, -0x1

    goto :goto_9

    :cond_f
    move/from16 v11, p1

    add-int/lit8 v10, v10, 0x1

    :goto_9
    aput v12, v2, v10

    xor-int/lit8 v9, v9, 0x1

    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method
