.class public Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;
.super Ljava/lang/Object;
.source "BufferedBlockCipher.java"


# instance fields
.field protected blacklist buf:[B

.field protected blacklist bufOff:I

.field protected blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field protected blacklist forEncryption:Z

.field protected blacklist partialBlockOkay:Z

.field protected blacklist pgpCFB:Z


# direct methods
.method protected constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-lez v2, :cond_0

    const-string v4, "PGP"

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->pgpCFB:Z

    iget-boolean v4, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->pgpCFB:Z

    if-nez v4, :cond_3

    instance-of v4, p1, Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    if-lez v2, :cond_2

    const-string v4, "OpenPGP"

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    :cond_2
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->partialBlockOkay:Z

    goto :goto_2

    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->partialBlockOkay:Z

    :goto_2
    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v1, p2

    array-length v2, p1

    if-gt v1, v2, :cond_2

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->partialBlockOkay:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    move v0, v1

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-static {v1, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v2, "data not block size aligned"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    nop

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    return v0

    :cond_2
    :try_start_1
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v2, "output buffer too short for doFinal()"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    throw v0
.end method

.method public blacklist getBlockSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public blacklist getOutputSize(I)I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    return v0
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public blacklist getUpdateOutputSize(I)I
    .locals 3

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->pgpCFB:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    :goto_0
    sub-int v2, v0, v1

    return v2
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public blacklist processByte(B[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    aput-byte p1, v1, v2

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    :cond_0
    return v0
.end method

.method public blacklist processBytes([BII[BI)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-ltz p3, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v1

    if-lez v1, :cond_1

    add-int v2, p5, v1

    array-length v3, p4

    if-gt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v3, "output buffer too short"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v3, v3

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    if-le p3, v3, :cond_2

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v5, v6, v4, p4, p5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v5

    add-int/2addr v2, v5

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    sub-int/2addr p3, v3

    add-int/2addr p2, v3

    :goto_1
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v5, v5

    if-le p3, v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    add-int v6, p5, v2

    invoke-interface {v5, p1, p2, p4, v6}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v5

    add-int/2addr v2, v5

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v5, v6, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v5, p3

    iput v5, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v6, v6

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    add-int v7, p5, v2

    invoke-interface {v5, v6, v4, p4, v7}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v5

    add-int/2addr v2, v5

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    :cond_3
    return v2

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist reset()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method
