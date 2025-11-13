.class public Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;
.super Ljava/lang/Object;
.source "RFC3394WrapEngine.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/Wrapper;


# instance fields
.field private blacklist engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private blacklist forWrapping:Z

.field private blacklist iv:[B

.field private blacklist param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

.field private blacklist wrapCipherMode:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Z)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    return-void

    nop

    :array_0
    .array-data 1
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
    .end array-data
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    :cond_0
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v0, v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV not equal to 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist unwrap([BII)[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-boolean v4, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    if-nez v4, :cond_5

    div-int/lit8 v4, v3, 0x8

    mul-int/lit8 v5, v4, 0x8

    if-ne v5, v3, :cond_4

    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v5, v5

    sub-int v5, v3, v5

    new-array v5, v5, [B

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v6, v6

    new-array v6, v6, [B

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v7, v7

    const/16 v8, 0x8

    add-int/2addr v7, v8

    new-array v7, v7, [B

    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    const/4 v10, 0x0

    invoke-static {v1, v2, v6, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    add-int/2addr v9, v2

    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v11

    sub-int v11, v3, v11

    invoke-static {v1, v9, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-boolean v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    const/4 v12, 0x1

    xor-int/2addr v11, v12

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v9, v11, v13}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    sub-int/2addr v4, v12

    const/4 v9, 0x5

    :goto_0
    if-ltz v9, :cond_2

    move v11, v4

    :goto_1
    if-lt v11, v12, :cond_1

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v13, v13

    invoke-static {v6, v10, v7, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v13, v11, -0x1

    mul-int/2addr v13, v8

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v14, v14

    invoke-static {v5, v13, v7, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v13, v4, v9

    add-int/2addr v13, v11

    const/4 v14, 0x1

    :goto_2
    if-eqz v13, :cond_0

    int-to-byte v15, v13

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v12, v12

    sub-int/2addr v12, v14

    aget-byte v16, v7, v12

    xor-int v8, v16, v15

    int-to-byte v8, v8

    aput-byte v8, v7, v12

    ushr-int/lit8 v13, v13, 0x8

    add-int/lit8 v14, v14, 0x1

    const/16 v8, 0x8

    const/4 v12, 0x1

    goto :goto_2

    :cond_0
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v8, v7, v10, v7, v10}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    const/16 v8, 0x8

    invoke-static {v7, v10, v6, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v12, v11, -0x1

    mul-int/2addr v12, v8

    invoke-static {v7, v8, v5, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v11, v11, -0x1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v9, -0x1

    const/4 v12, 0x1

    goto :goto_0

    :cond_2
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {v6, v8}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v8

    if-eqz v8, :cond_3

    return-object v5

    :cond_3
    new-instance v8, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v9, "checksum failed"

    invoke-direct {v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v6, "unwrap data must be a multiple of 8 bytes"

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "not set for unwrapping"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public blacklist wrap([BII)[B
    .locals 12

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    if-eqz v0, :cond_4

    div-int/lit8 v0, p3, 0x8

    mul-int/lit8 v1, v0, 0x8

    if-ne v1, p3, :cond_3

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v1, v1

    add-int/2addr v1, p3

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v2, v2

    const/16 v3, 0x8

    add-int/2addr v2, v3

    new-array v2, v2, [B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v4, v4

    invoke-static {p1, p2, v1, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-boolean v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v4, v5, v7}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x6

    if-eq v4, v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    if-gt v5, v0, :cond_1

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v7, v7

    invoke-static {v1, v6, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int/lit8 v7, v5, 0x8

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v8, v8

    invoke-static {v1, v7, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7, v2, v6, v2, v6}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    mul-int v7, v0, v4

    add-int/2addr v7, v5

    const/4 v8, 0x1

    :goto_2
    if-eqz v7, :cond_0

    int-to-byte v9, v7

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v10, v10

    sub-int/2addr v10, v8

    aget-byte v11, v2, v10

    xor-int/2addr v11, v9

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    ushr-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    invoke-static {v2, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int/lit8 v8, v5, 0x8

    invoke-static {v2, v3, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v2, "wrap data must be a multiple of 8 bytes"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not set for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
