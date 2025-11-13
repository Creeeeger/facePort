.class public final Lcom/google/zxing/oned/CodaBarReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ALPHABET:[C

.field public static final CHARACTER_ENCODINGS:[I

.field public static final STARTEND_ENCODING:[C


# instance fields
.field public counterLength:I

.field public counters:[I

.field public final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789-$:/.+ABCD"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    return-void

    :array_0
    .array-data 4
        0x3
        0x6
        0x9
        0x60
        0x12
        0x42
        0x21
        0x24
        0x30
        0x48
        0xc
        0x18
        0x45
        0x51
        0x54
        0x15
        0x1a
        0x29
        0xb
        0xe
    .end array-data

    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    return-void
.end method

.method public static arrayContains([CC)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public final decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    iput v4, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    invoke-virtual {v1, v4}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v3

    iget v5, v1, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v3, v5, :cond_1c

    const/4 v6, 0x1

    move v7, v4

    move v8, v6

    :goto_0
    if-ge v3, v5, :cond_2

    invoke-virtual {v1, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eq v9, v8, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    iget-object v9, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    iget v10, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    aput v7, v9, v10

    add-int/2addr v10, v6

    iput v10, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    array-length v7, v9

    if-lt v10, v7, :cond_1

    mul-int/lit8 v7, v10, 0x2

    new-array v7, v7, [I

    invoke-static {v9, v4, v7, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v7, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    :cond_1
    xor-int/lit8 v8, v8, 0x1

    move v7, v6

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    iget v3, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    aput v7, v1, v3

    add-int/2addr v3, v6

    iput v3, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    array-length v5, v1

    if-lt v3, v5, :cond_3

    mul-int/lit8 v5, v3, 0x2

    new-array v5, v5, [I

    invoke-static {v1, v4, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    :cond_3
    move v1, v6

    :goto_2
    iget v3, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-ge v1, v3, :cond_1b

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_5

    sget-object v7, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v3, v7, v3

    sget-object v8, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    invoke-static {v8, v3}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    move v9, v4

    :goto_3
    add-int/lit8 v10, v1, 0x7

    if-ge v3, v10, :cond_4

    iget-object v10, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v10, v10, v3

    add-int/2addr v9, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    if-eq v1, v6, :cond_6

    iget-object v3, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int/lit8 v10, v1, -0x1

    aget v3, v3, v10

    div-int/lit8 v9, v9, 0x2

    if-lt v3, v9, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v9, p1

    move/from16 v23, v6

    move v6, v4

    move/from16 v4, v23

    goto/16 :goto_13

    :cond_6
    :goto_4
    iget-object v3, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    move v9, v1

    :goto_5
    invoke-virtual {v0, v9}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I

    move-result v10

    if-eq v10, v5, :cond_1a

    int-to-char v11, v10

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v9, 0x8

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-le v12, v6, :cond_7

    aget-char v10, v7, v10

    invoke-static {v8, v10}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_6

    :cond_7
    iget v10, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-lt v11, v10, :cond_19

    :goto_6
    iget-object v10, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int/lit8 v9, v9, 0x7

    aget v10, v10, v9

    const/4 v12, -0x8

    move v13, v4

    :goto_7
    if-ge v12, v5, :cond_8

    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v15, v11, v12

    aget v14, v14, v15

    add-int/2addr v13, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_8
    iget v5, v0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    const/4 v12, 0x2

    if-ge v11, v5, :cond_a

    div-int/2addr v13, v12

    if-lt v10, v13, :cond_9

    goto :goto_8

    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_a
    :goto_8
    const/4 v5, 0x4

    new-array v10, v5, [I

    aput v4, v10, v4

    aput v4, v10, v6

    aput v4, v10, v12

    const/4 v11, 0x3

    aput v4, v10, v11

    new-array v13, v5, [I

    aput v4, v13, v4

    aput v4, v13, v6

    aput v4, v13, v12

    aput v4, v13, v11

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    sub-int/2addr v14, v6

    move/from16 v16, v1

    move v15, v4

    :goto_9
    const/16 v17, 0x6

    sget-object v18, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    if-gt v15, v14, :cond_c

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    :goto_a
    if-ltz v17, :cond_b

    and-int/lit8 v19, v17, 0x1

    and-int/lit8 v20, v18, 0x1

    mul-int/lit8 v20, v20, 0x2

    add-int v20, v20, v19

    aget v19, v10, v20

    iget-object v11, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v21, v16, v17

    aget v11, v11, v21

    add-int v19, v19, v11

    aput v19, v10, v20

    aget v11, v13, v20

    add-int/2addr v11, v6

    aput v11, v13, v20

    shr-int/lit8 v18, v18, 0x1

    add-int/lit8 v17, v17, -0x1

    const/4 v11, 0x3

    goto :goto_a

    :cond_b
    add-int/lit8 v16, v16, 0x8

    add-int/lit8 v15, v15, 0x1

    const/4 v11, 0x3

    goto :goto_9

    :cond_c
    new-array v11, v5, [F

    new-array v5, v5, [F

    move v15, v4

    :goto_b
    if-ge v15, v12, :cond_d

    const/16 v16, 0x0

    aput v16, v5, v15

    add-int/lit8 v16, v15, 0x2

    aget v6, v10, v15

    int-to-float v6, v6

    aget v4, v13, v15

    int-to-float v4, v4

    div-float/2addr v6, v4

    aget v4, v10, v16

    int-to-float v4, v4

    aget v12, v13, v16

    int-to-float v12, v12

    div-float v22, v4, v12

    add-float v22, v22, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v22, v22, v6

    aput v22, v5, v16

    aput v22, v11, v15

    mul-float/2addr v4, v6

    const/high16 v6, 0x3fc00000    # 1.5f

    add-float/2addr v4, v6

    div-float/2addr v4, v12

    aput v4, v11, v16

    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v12, 0x2

    goto :goto_b

    :cond_d
    move v6, v1

    const/4 v4, 0x0

    :goto_c
    if-gt v4, v14, :cond_10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    aget v10, v18, v10

    move/from16 v12, v17

    :goto_d
    if-ltz v12, :cond_f

    and-int/lit8 v13, v12, 0x1

    and-int/lit8 v15, v10, 0x1

    const/16 v16, 0x2

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v13

    iget-object v13, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v21, v6, v12

    aget v13, v13, v21

    int-to-float v13, v13

    aget v21, v5, v15

    cmpg-float v21, v13, v21

    if-ltz v21, :cond_e

    aget v15, v11, v15

    cmpl-float v13, v13, v15

    if-gtz v13, :cond_e

    shr-int/lit8 v10, v10, 0x1

    add-int/lit8 v12, v12, -0x1

    goto :goto_d

    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_f
    const/16 v16, 0x2

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_10
    const/4 v4, 0x0

    :goto_e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v4, v5, :cond_11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    aget-char v5, v7, v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_11
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    invoke-static {v8, v5}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v8, v4}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_16

    if-eqz v2, :cond_13

    sget-object v4, Lcom/google/zxing/DecodeHintType;->RETURN_CODABAR_START_END:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_f

    :cond_12
    const/4 v6, 0x0

    goto :goto_10

    :cond_13
    :goto_f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :goto_10
    move v4, v6

    :goto_11
    if-ge v4, v1, :cond_14

    iget-object v2, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v2, v2, v4

    add-int/2addr v6, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_14
    int-to-float v2, v6

    :goto_12
    if-ge v1, v9, :cond_15

    iget-object v4, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    aget v4, v4, v1

    add-int/2addr v6, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_15
    int-to-float v0, v6

    new-instance v1, Lcom/google/zxing/Result;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/zxing/ResultPoint;

    move/from16 v9, p1

    int-to-float v5, v9

    invoke-direct {v4, v2, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v2, Lcom/google/zxing/ResultPoint;

    invoke-direct {v2, v0, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    filled-new-array {v4, v2}, [Lcom/google/zxing/ResultPoint;

    move-result-object v0

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v0, v2}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    sget-object v0, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    const-string v2, "]F0"

    invoke-virtual {v1, v0, v2}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    return-object v1

    :cond_16
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_17
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_18
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_19
    move/from16 v9, p1

    move/from16 v23, v6

    move v6, v4

    move/from16 v4, v23

    move v9, v11

    move/from16 v23, v6

    move v6, v4

    move/from16 v4, v23

    goto/16 :goto_5

    :cond_1a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :goto_13
    add-int/lit8 v1, v1, 0x2

    move/from16 v23, v6

    move v6, v4

    move/from16 v4, v23

    goto/16 :goto_2

    :cond_1b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public final toNarrowWidePattern(I)I
    .locals 9

    add-int/lit8 v0, p1, 0x7

    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    const v1, 0x7fffffff

    const/4 v3, 0x0

    move v4, p1

    move v5, v1

    move v6, v3

    :goto_0
    if-ge v4, v0, :cond_3

    aget v7, p0, v4

    if-ge v7, v5, :cond_1

    move v5, v7

    :cond_1
    if-le v7, v6, :cond_2

    move v6, v7

    :cond_2
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_3
    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v4, p1, 0x1

    move v6, v3

    :goto_1
    if-ge v4, v0, :cond_6

    aget v7, p0, v4

    if-ge v7, v1, :cond_4

    move v1, v7

    :cond_4
    if-le v7, v6, :cond_5

    move v6, v7

    :cond_5
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_6
    add-int/2addr v1, v6

    div-int/lit8 v1, v1, 0x2

    const/16 v0, 0x80

    move v4, v3

    move v6, v4

    :goto_2
    const/4 v7, 0x7

    if-ge v4, v7, :cond_9

    and-int/lit8 v7, v4, 0x1

    if-nez v7, :cond_7

    move v7, v5

    goto :goto_3

    :cond_7
    move v7, v1

    :goto_3
    shr-int/lit8 v0, v0, 0x1

    add-int v8, p1, v4

    aget v8, p0, v8

    if-le v8, v7, :cond_8

    or-int/2addr v6, v0

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    sget-object p0, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    array-length p1, p0

    if-ge v3, p1, :cond_b

    aget p0, p0, v3

    if-ne p0, v6, :cond_a

    return v3

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    return v2
.end method
