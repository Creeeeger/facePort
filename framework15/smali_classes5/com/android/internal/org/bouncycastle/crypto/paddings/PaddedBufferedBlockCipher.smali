.class public Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;
.super Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;
.source "PaddedBufferedBlockCipher.java"


# instance fields
.field blacklist padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PKCS7Padding;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PKCS7Padding;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->forEncryption:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    if-ne v2, v0, :cond_1

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p2

    array-length v4, p1

    if-gt v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    invoke-interface {v2, v4, v3, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v3, "output buffer too short"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    invoke-interface {v2, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    add-int v5, p2, v1

    invoke-interface {v2, v4, v3, p1, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    if-ne v2, v0, :cond_3

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    invoke-interface {v2, v4, v3, v5, v3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    invoke-interface {v2, v4}, Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;->padCount([B)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    nop

    :goto_1
    return v1

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    throw v2

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v3, "last block incomplete in decryption"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist getOutputSize(I)I
    .locals 4

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    if-nez v1, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v2, v2

    add-int/2addr v2, v0

    return v2

    :cond_0
    return v0

    :cond_1
    sub-int v2, v0, v1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v3, v3

    add-int/2addr v2, v3

    return v2
.end method

.method public blacklist getUpdateOutputSize(I)I
    .locals 4

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v2, v2

    sub-int v2, v0, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    :cond_0
    sub-int v2, v0, v1

    return v2
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->forEncryption:Z

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;->init(Ljava/security/SecureRandom;)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;->init(Ljava/security/SecureRandom;)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    :goto_0
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

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    aput-byte p1, v1, v2

    return v0
.end method

.method public blacklist processBytes([BII[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-ltz p3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getBlockSize()I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getUpdateOutputSize(I)I

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

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v3, v3

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    sub-int/2addr v3, v4

    if-le p3, v3, :cond_2

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6, p4, p5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v2, v4

    iput v6, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    sub-int/2addr p3, v3

    add-int/2addr p2, v3

    :goto_1
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    array-length v4, v4

    if-le p3, v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    add-int v5, p5, v2

    invoke-interface {v4, p1, p2, p4, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    add-int/2addr v4, p3

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->bufOff:I

    return v2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
