.class public final Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final cachedGenerators:Ljava/util/List;

.field public final field:Lcom/google/zxing/common/reedsolomon/GenericGF;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    new-instance p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    const/4 v1, 0x1

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final encode(I[I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_e

    array-length v3, v2

    sub-int/2addr v3, v1

    if-lez v3, :cond_d

    iget-object v4, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    const-string v6, "GenericGFPolys do not have same GenericGF field"

    iget-object v7, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    if-lt v1, v4, :cond_5

    iget-object v4, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-static {v4, v5}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v9, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    :goto_0
    if-gt v9, v1, :cond_5

    new-instance v10, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    add-int/lit8 v11, v9, -0x1

    iget v12, v7, Lcom/google/zxing/common/reedsolomon/GenericGF;->generatorBase:I

    add-int/2addr v11, v12

    iget-object v12, v7, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    aget v11, v12, v11

    filled-new-array {v5, v11}, [I

    move-result-object v11

    invoke-direct {v10, v7, v11}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v12, v10, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v4}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_3

    :cond_0
    iget-object v4, v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v12, v4

    iget-object v10, v10, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v13, v10

    add-int v14, v12, v13

    sub-int/2addr v14, v5

    new-array v14, v14, [I

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v12, :cond_2

    aget v5, v4, v15

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v13, :cond_1

    add-int v16, v15, v8

    aget v17, v14, v16

    move-object/from16 v18, v4

    aget v4, v10, v8

    invoke-virtual {v11, v5, v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v4

    xor-int v4, v17, v4

    aput v4, v14, v16

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v18

    goto :goto_2

    :cond_1
    move-object/from16 v18, v4

    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    invoke-direct {v4, v11, v14}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    goto :goto_4

    :cond_3
    :goto_3
    iget-object v4, v11, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    :goto_4
    iget-object v5, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    new-array v4, v3, [I

    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    invoke-direct {v5, v7, v4}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    const/4 v4, 0x1

    invoke-virtual {v5, v1, v4}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v7, v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v4

    iget-object v6, v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v8, v6

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    sub-int/2addr v8, v4

    aget v4, v6, v8

    if-eqz v4, :cond_a

    iget-object v6, v7, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    aget v4, v6, v4

    iget v6, v7, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    sub-int/2addr v6, v4

    sub-int/2addr v6, v9

    iget-object v4, v7, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    aget v4, v4, v6

    iget-object v6, v7, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object v8, v6

    :goto_5
    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v9

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v10

    if-lt v9, v10, :cond_8

    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v9

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v10

    iget-object v11, v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v12, v11

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    sub-int/2addr v12, v10

    aget v10, v11, v12

    invoke-virtual {v7, v10, v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v10

    invoke-virtual {v0, v9, v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v11

    if-ltz v9, :cond_7

    if-nez v10, :cond_6

    move-object v10, v6

    goto :goto_6

    :cond_6
    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [I

    const/4 v12, 0x0

    aput v10, v9, v12

    new-instance v10, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    invoke-direct {v10, v7, v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    :goto_6
    invoke-virtual {v8, v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v8

    invoke-virtual {v5, v11}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v5

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    filled-new-array {v8, v5}, [Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v0

    const/4 v4, 0x1

    aget-object v0, v0, v4

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v4, v0

    sub-int/2addr v1, v4

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v1, :cond_9

    add-int v4, v3, v5

    const/4 v6, 0x0

    aput v6, v2, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    add-int/2addr v3, v1

    array-length v1, v0

    invoke-static {v0, v6, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Divide by 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No data bytes provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No error correction bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
