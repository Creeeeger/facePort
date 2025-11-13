.class public final Lcom/google/common/collect/ImmutableMap$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public alternatingKeysAndValues:[Ljava/lang/Object;

.field public duplicateKey:Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

.field public size:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    return-void
.end method


# virtual methods
.method public final buildOrThrow()Lcom/google/common/collect/ImmutableMap;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/google/common/collect/ImmutableMap$Builder;->duplicateKey:Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    if-nez v3, :cond_16

    iget v3, v0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    iget-object v4, v0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    if-nez v3, :cond_0

    sget-object v1, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/ImmutableMap;

    check-cast v1, Lcom/google/common/collect/RegularImmutableMap;

    goto/16 :goto_d

    :cond_0
    sget-object v5, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/ImmutableMap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ne v3, v2, :cond_1

    aget-object v1, v4, v6

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v1, v4, v2

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/common/collect/RegularImmutableMap;

    invoke-direct {v1, v2, v5, v4}, Lcom/google/common/collect/RegularImmutableMap;-><init>(ILjava/lang/Object;[Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_1
    array-length v7, v4

    shr-int/2addr v7, v2

    invoke-static {v3, v7}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)V

    invoke-static {v3}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v7

    if-ne v3, v2, :cond_2

    aget-object v7, v4, v6

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v7, v4, v2

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    move v6, v1

    goto/16 :goto_c

    :cond_2
    add-int/lit8 v8, v7, -0x1

    const/16 v9, 0x80

    const/4 v10, 0x3

    const/4 v11, -0x1

    if-gt v7, v9, :cond_8

    new-array v7, v7, [B

    invoke-static {v7, v11}, Ljava/util/Arrays;->fill([BB)V

    move v9, v6

    move v11, v9

    :goto_1
    if-ge v9, v3, :cond_6

    mul-int/lit8 v12, v9, 0x2

    mul-int/lit8 v13, v11, 0x2

    aget-object v14, v4, v12

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/2addr v12, v2

    aget-object v12, v4, v12

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v15

    invoke-static {v15}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v15

    :goto_2
    and-int/2addr v15, v8

    aget-byte v1, v7, v15

    const/16 v6, 0xff

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_4

    int-to-byte v1, v13

    aput-byte v1, v7, v15

    if-ge v11, v9, :cond_3

    aput-object v14, v4, v13

    xor-int/lit8 v1, v13, 0x1

    aput-object v12, v4, v1

    :cond_3
    add-int/2addr v11, v2

    goto :goto_3

    :cond_4
    aget-object v6, v4, v1

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v5, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    xor-int/2addr v1, v2

    aget-object v6, v4, v1

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v5, v14, v12, v6}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v4, v1

    :goto_3
    add-int/2addr v9, v2

    const/4 v1, 0x2

    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    add-int/2addr v15, v2

    const/4 v1, 0x2

    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    if-ne v11, v3, :cond_7

    move-object v5, v7

    :goto_4
    const/4 v6, 0x2

    goto/16 :goto_c

    :cond_7
    new-array v1, v10, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v7, v1, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v6, 0x2

    aput-object v5, v1, v6

    :goto_5
    move-object v5, v1

    goto/16 :goto_c

    :cond_8
    move v6, v1

    const v1, 0x8000

    if-gt v7, v1, :cond_e

    new-array v1, v7, [S

    invoke-static {v1, v11}, Ljava/util/Arrays;->fill([SS)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_6
    if-ge v7, v3, :cond_c

    mul-int/lit8 v11, v7, 0x2

    mul-int/lit8 v12, v9, 0x2

    aget-object v6, v4, v11

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/2addr v11, v2

    aget-object v11, v4, v11

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-static {v13}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v13

    :goto_7
    and-int/2addr v13, v8

    aget-short v14, v1, v13

    const v15, 0xffff

    and-int/2addr v14, v15

    if-ne v14, v15, :cond_a

    int-to-short v14, v12

    aput-short v14, v1, v13

    if-ge v9, v7, :cond_9

    aput-object v6, v4, v12

    xor-int/lit8 v6, v12, 0x1

    aput-object v11, v4, v6

    :cond_9
    add-int/2addr v9, v2

    goto :goto_8

    :cond_a
    aget-object v15, v4, v14

    invoke-virtual {v6, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    new-instance v5, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    xor-int/lit8 v12, v14, 0x1

    aget-object v13, v4, v12

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v5, v6, v11, v13}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v4, v12

    :goto_8
    add-int/2addr v7, v2

    const/4 v6, 0x2

    goto :goto_6

    :cond_b
    add-int/2addr v13, v2

    goto :goto_7

    :cond_c
    if-ne v9, v3, :cond_d

    move-object v5, v1

    const/4 v1, 0x2

    goto/16 :goto_0

    :cond_d
    new-array v6, v10, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    const/4 v1, 0x2

    aput-object v5, v6, v1

    move-object v5, v6

    goto/16 :goto_0

    :cond_e
    move v1, v6

    new-array v6, v7, [I

    invoke-static {v6, v11}, Ljava/util/Arrays;->fill([II)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_9
    if-ge v9, v3, :cond_12

    mul-int/lit8 v12, v9, 0x2

    mul-int/lit8 v13, v7, 0x2

    aget-object v1, v4, v12

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/2addr v12, v2

    aget-object v12, v4, v12

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-static {v14}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v14

    :goto_a
    and-int/2addr v14, v8

    aget v15, v6, v14

    if-ne v15, v11, :cond_10

    aput v13, v6, v14

    if-ge v7, v9, :cond_f

    aput-object v1, v4, v13

    xor-int/lit8 v1, v13, 0x1

    aput-object v12, v4, v1

    :cond_f
    add-int/2addr v7, v2

    goto :goto_b

    :cond_10
    aget-object v11, v4, v15

    invoke-virtual {v1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    new-instance v5, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    xor-int/lit8 v11, v15, 0x1

    aget-object v13, v4, v11

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v5, v1, v12, v13}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v4, v11

    :goto_b
    add-int/2addr v9, v2

    const/4 v1, 0x2

    const/4 v11, -0x1

    goto :goto_9

    :cond_11
    add-int/2addr v14, v2

    const/4 v11, -0x1

    goto :goto_a

    :cond_12
    if-ne v7, v3, :cond_13

    move-object v5, v6

    goto/16 :goto_4

    :cond_13
    new-array v1, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v1, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v6, 0x2

    aput-object v5, v1, v6

    goto/16 :goto_5

    :goto_c
    instance-of v1, v5, [Ljava/lang/Object;

    if-eqz v1, :cond_14

    check-cast v5, [Ljava/lang/Object;

    aget-object v1, v5, v6

    check-cast v1, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    iput-object v1, v0, Lcom/google/common/collect/ImmutableMap$Builder;->duplicateKey:Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    const/4 v1, 0x0

    aget-object v1, v5, v1

    aget-object v2, v5, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v2, v3, 0x2

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    :cond_14
    new-instance v1, Lcom/google/common/collect/RegularImmutableMap;

    invoke-direct {v1, v3, v5, v4}, Lcom/google/common/collect/RegularImmutableMap;-><init>(ILjava/lang/Object;[Ljava/lang/Object;)V

    :goto_d
    iget-object v0, v0, Lcom/google/common/collect/ImmutableMap$Builder;->duplicateKey:Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    if-nez v0, :cond_15

    return-object v1

    :cond_15
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;->exception()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_16
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;->exception()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    array-length v2, v1

    if-le v0, v2, :cond_0

    array-length v2, v1

    invoke-static {v2, v0}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    mul-int/lit8 v2, v1, 0x2

    aput-object p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    aput-object p2, v0, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "null value in entry: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "=null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "null key in entry: null="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
