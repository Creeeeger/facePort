.class public Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;
.super Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;
.source "UcmKeyStoreRSACipherSpi.java"


# instance fields
.field private blacklist mBuffer:[B

.field private blacklist mBufferOffset:I

.field private blacklist mIsInputTooLarge:Z

.field private blacklist mModulusSizeBytes:I


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreGenericCipher;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mIsInputTooLarge:Z

    iput v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBuffer:[B

    return-void
.end method


# virtual methods
.method public blacklist doFinalInternal(I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBuffer:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBuffer:[B

    array-length v0, v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mIsInputTooLarge:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBufferOffset:I

    iget-object v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBuffer:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBuffer:[B

    array-length v0, v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBuffer:[B

    iget-object v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBuffer:[B

    array-length v3, v3

    iget v4, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBufferOffset:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBufferOffset:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBuffer:[B

    iget v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBufferOffset:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBuffer:[B

    :goto_0
    iput v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBufferOffset:I

    return-object v0

    :cond_2
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input must be under "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBuffer:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    const-string v1, "Invalid input data"

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getModulusSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    return v0
.end method

.method public blacklist initInternal(Ljava/security/Key;)Lcom/samsung/ucm/keystore/UcmKeyStoreKey;
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;

    invoke-virtual {v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBufferOffset:I

    iput-boolean v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mIsInputTooLarge:Z

    iget v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mModulusSizeBytes:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBuffer:[B

    return-object v0
.end method

.method public blacklist isModeSupported(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "NONE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ECB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isPaddingSupported(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "NOPADDING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "PKCS1PADDING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    :pswitch_1
    const/4 v0, 0x2

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x1b3dfcb5 -> :sswitch_1
        0x36127310 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist update([BII)V
    .locals 2

    iget v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBufferOffset:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBuffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mIsInputTooLarge:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBuffer:[B

    iget v1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBufferOffset:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBufferOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreRSACipherSpi;->mBufferOffset:I

    return-void
.end method
