.class public Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;
.super Ljava/lang/Object;
.source "DESedeWrapEngine.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/Wrapper;


# static fields
.field private static final blacklist IV2:[B


# instance fields
.field blacklist digest:[B

.field private blacklist engine:Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

.field private blacklist forWrapping:Z

.field private blacklist iv:[B

.field private blacklist param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

.field private blacklist paramPlusIV:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

.field blacklist sha1:Lcom/android/internal/org/bouncycastle/crypto/Digest;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    return-void

    :array_0
    .array-data 1
        0x4at
        -0x23t
        -0x5et
        0x2ct
        0x79t
        -0x18t
        0x21t
        0x5t
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    return-void
.end method

.method private blacklist calculateCMSKeyChecksum([B)[B
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    invoke-interface {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private blacklist checkCMSKeyChecksum([B[B)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    return v0
.end method

.method private static blacklist reverse([B)[B
    .locals 4

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    array-length v2, p0

    add-int/lit8 v3, v1, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "DESede"

    return-object v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    :goto_0
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v1, :cond_4

    new-array v1, v2, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    goto :goto_1

    :cond_1
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_4

    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v1, v1

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "IV is not 8 octets"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You should not supply an IV for unwrapping"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    return-void
.end method

.method public blacklist unwrap([BII)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v0

    rem-int v1, p3, v0

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    new-array v2, p3, [B

    const/4 v4, 0x0

    :goto_0
    if-eq v4, p3, :cond_0

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    add-int v6, p2, v4

    invoke-virtual {v5, p1, v6, v2, v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr v4, v0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->reverse([B)[B

    move-result-object v4

    const/16 v5, 0x8

    new-array v6, v5, [B

    iput-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v6, v4

    sub-int/2addr v6, v5

    new-array v6, v6, [B

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-static {v4, v3, v7, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v4

    sub-int/2addr v7, v5

    invoke-static {v4, v5, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v7, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-direct {v7, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    iput-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v7, v3, v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    array-length v7, v6

    new-array v7, v7, [B

    const/4 v8, 0x0

    :goto_1
    array-length v9, v7

    if-eq v8, v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v9, v6, v8, v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr v8, v0

    goto :goto_1

    :cond_1
    array-length v8, v7

    sub-int/2addr v8, v5

    new-array v8, v8, [B

    new-array v9, v5, [B

    array-length v10, v7

    sub-int/2addr v10, v5

    invoke-static {v7, v3, v8, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v7

    sub-int/2addr v10, v5

    invoke-static {v7, v10, v9, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->checkCMSKeyChecksum([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v8

    :cond_2
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v5, "Checksum inside ciphertext is corrupted"

    invoke-direct {v3, v5}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ciphertext not multiple of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Null pointer as ciphertext"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not set for unwrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist wrap([BII)[B
    .locals 11

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v0, :cond_3

    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object v2

    array-length v3, v0

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [B

    array-length v4, v0

    invoke-static {v0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v0

    array-length v5, v2

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v4

    array-length v5, v3

    rem-int/2addr v5, v4

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    array-length v5, v3

    new-array v5, v5, [B

    const/4 v6, 0x0

    :goto_0
    array-length v8, v3

    if-eq v6, v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v8, v3, v6, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr v6, v4

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v6, v6

    array-length v8, v5

    add-int/2addr v6, v8

    new-array v6, v6, [B

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v9, v9

    invoke-static {v8, v1, v6, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v8, v8

    array-length v9, v5

    invoke-static {v5, v1, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->reverse([B)[B

    move-result-object v1

    new-instance v8, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    invoke-direct {v8, v9, v10}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v9, v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    const/4 v7, 0x0

    :goto_1
    array-length v9, v1

    if-eq v7, v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v9, v1, v7, v1, v7}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr v7, v4

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v5, "Not multiple of block length"

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
