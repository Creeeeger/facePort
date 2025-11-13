.class public final Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final field:Lcom/google/zxing/common/reedsolomon/GenericGF;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-void
.end method


# virtual methods
.method public final decodeWithECCount(I[I)I
    .locals 17

    move/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x1

    array-length v3, v1

    if-eqz v3, :cond_1c

    array-length v3, v1

    const/4 v4, 0x0

    if-le v3, v2, :cond_2

    aget v5, v1, v4

    if-nez v5, :cond_2

    move v5, v2

    :goto_0
    if-ge v5, v3, :cond_0

    aget v6, v1, v5

    if-nez v6, :cond_0

    add-int/2addr v5, v2

    goto :goto_0

    :cond_0
    if-ne v5, v3, :cond_1

    filled-new-array {v4}, [I

    move-result-object v3

    goto :goto_1

    :cond_1
    sub-int/2addr v3, v5

    new-array v6, v3, [I

    invoke-static {v1, v5, v6, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v6

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    new-array v5, v0, [I

    move-object/from16 v6, p0

    move v8, v2

    move v7, v4

    :goto_2
    iget-object v9, v6, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    if-ge v7, v0, :cond_8

    iget v10, v9, Lcom/google/zxing/common/reedsolomon/GenericGF;->generatorBase:I

    add-int/2addr v10, v7

    iget-object v11, v9, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    aget v10, v11, v10

    if-nez v10, :cond_3

    array-length v9, v3

    sub-int/2addr v9, v2

    aget v9, v3, v9

    goto :goto_5

    :cond_3
    if-ne v10, v2, :cond_5

    array-length v9, v3

    move v10, v4

    move v11, v10

    :goto_3
    if-ge v11, v9, :cond_4

    aget v12, v3, v11

    sget-object v13, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    xor-int/2addr v10, v12

    add-int/2addr v11, v2

    goto :goto_3

    :cond_4
    move v9, v10

    goto :goto_5

    :cond_5
    aget v11, v3, v4

    array-length v12, v3

    move v13, v2

    :goto_4
    if-ge v13, v12, :cond_6

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v11

    aget v14, v3, v13

    xor-int/2addr v11, v14

    add-int/2addr v13, v2

    goto :goto_4

    :cond_6
    move v9, v11

    :goto_5
    add-int/lit8 v10, v0, -0x1

    sub-int/2addr v10, v7

    aput v9, v5, v10

    if-eqz v9, :cond_7

    move v8, v4

    :cond_7
    add-int/2addr v7, v2

    goto :goto_2

    :cond_8
    if-eqz v8, :cond_9

    return v4

    :cond_9
    new-instance v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    invoke-direct {v3, v9, v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    invoke-virtual {v9, v0, v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;->buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v6

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v7

    if-ge v6, v7, :cond_a

    goto :goto_6

    :cond_a
    move-object v15, v5

    move-object v5, v3

    move-object v3, v15

    :goto_6
    iget-object v6, v9, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v7, v9, Lcom/google/zxing/common/reedsolomon/GenericGF;->one:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object v8, v6

    move-object v15, v5

    move-object v5, v3

    move-object v3, v15

    :goto_7
    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    if-lt v10, v0, :cond_e

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v10

    move-object v11, v6

    :goto_8
    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v12

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v13

    if-lt v12, v13, :cond_b

    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v12

    if-nez v12, :cond_b

    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v12

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v13

    invoke-virtual {v5, v13}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v13

    invoke-virtual {v9, v13, v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v13

    invoke-virtual {v9, v12, v13}, Lcom/google/zxing/common/reedsolomon/GenericGF;->buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v11

    invoke-virtual {v3, v12, v13}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v5

    goto :goto_8

    :cond_b
    invoke-virtual {v11, v7}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v10

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v11

    if-ge v10, v11, :cond_c

    move-object v15, v5

    move-object v5, v3

    move-object v3, v15

    move-object/from16 v16, v8

    move-object v8, v7

    move-object/from16 v7, v16

    goto :goto_7

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Division algorithm failed to reduce polynomial? r: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", rLast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v1, "r_{i-1} was zero"

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-virtual {v7, v4}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v9, v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v5

    invoke-virtual {v3, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v0

    filled-new-array {v5, v0}, [Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v0

    aget-object v3, v0, v4

    aget-object v0, v0, v2

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v5

    if-ne v5, v2, :cond_f

    invoke-virtual {v3, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v3

    filled-new-array {v3}, [I

    move-result-object v3

    goto :goto_a

    :cond_f
    new-array v6, v5, [I

    move v7, v2

    move v8, v4

    :goto_9
    iget v10, v9, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    if-ge v7, v10, :cond_11

    if-ge v8, v5, :cond_11

    invoke-virtual {v3, v7}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->evaluateAt(I)I

    move-result v10

    if-nez v10, :cond_10

    invoke-virtual {v9, v7}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v10

    aput v10, v6, v8

    add-int/2addr v8, v2

    :cond_10
    add-int/2addr v7, v2

    goto :goto_9

    :cond_11
    if-ne v8, v5, :cond_1a

    move-object v3, v6

    :goto_a
    array-length v5, v3

    new-array v6, v5, [I

    move v7, v4

    :goto_b
    if-ge v7, v5, :cond_16

    aget v8, v3, v7

    invoke-virtual {v9, v8}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v8

    move v11, v2

    move v10, v4

    :goto_c
    if-ge v10, v5, :cond_14

    if-eq v7, v10, :cond_13

    aget v12, v3, v10

    invoke-virtual {v9, v12, v8}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v12

    and-int/lit8 v13, v12, 0x1

    if-nez v13, :cond_12

    or-int/2addr v12, v2

    goto :goto_d

    :cond_12
    and-int/lit8 v12, v12, -0x2

    :goto_d
    invoke-virtual {v9, v11, v12}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v11

    :cond_13
    add-int/2addr v10, v2

    goto :goto_c

    :cond_14
    invoke-virtual {v0, v8}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->evaluateAt(I)I

    move-result v10

    invoke-virtual {v9, v11}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v10

    aput v10, v6, v7

    iget v11, v9, Lcom/google/zxing/common/reedsolomon/GenericGF;->generatorBase:I

    if-eqz v11, :cond_15

    invoke-virtual {v9, v10, v8}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v8

    aput v8, v6, v7

    :cond_15
    add-int/2addr v7, v2

    goto :goto_b

    :cond_16
    :goto_e
    array-length v0, v3

    if-ge v4, v0, :cond_19

    array-length v0, v1

    sub-int/2addr v0, v2

    aget v5, v3, v4

    if-eqz v5, :cond_18

    iget-object v7, v9, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    aget v5, v7, v5

    sub-int/2addr v0, v5

    if-ltz v0, :cond_17

    aget v5, v1, v0

    aget v7, v6, v4

    xor-int/2addr v5, v7

    aput v5, v1, v0

    add-int/2addr v4, v2

    goto :goto_e

    :cond_17
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v1, "Bad error location"

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_19
    array-length v0, v3

    return v0

    :cond_1a
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string v1, "Error locator degree does not match number of roots"

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string/jumbo v1, "sigmaTilde(0) was zero"

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
