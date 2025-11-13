.class public Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;
.super Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;
.source "OFBBlockCipher.java"


# instance fields
.field private blacklist IV:[B

.field private final blacklist blockSize:I

.field private blacklist byteCount:I

.field private final blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private blacklist ofbOutV:[B

.field private blacklist ofbV:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x8

    mul-int/2addr v0, v1

    if-gt p2, v0, :cond_0

    if-lt p2, v1, :cond_0

    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0FB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected blacklist calculateByte(B)B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    aget-byte v0, v0, v2

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    if-ne v2, v3, :cond_1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    array-length v5, v5

    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    sub-int/2addr v5, v6

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbOutV:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    array-length v4, v4

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/OFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBlockSize()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    return v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    array-length v3, v2

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    array-length v4, v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    array-length v4, v4

    array-length v6, v2

    sub-int/2addr v4, v6

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    array-length v4, v4

    array-length v6, v2

    sub-int/2addr v4, v6

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->reset()V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    :cond_2
    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->reset()V

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, v1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public blacklist processBlock([BI[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->processBytes([BII[BI)I

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->blockSize:I

    return v0
.end method

.method public blacklist reset()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->ofbV:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->IV:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->byteCount:I

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method
