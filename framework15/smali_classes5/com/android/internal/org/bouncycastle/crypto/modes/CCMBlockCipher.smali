.class public Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;
.super Ljava/lang/Object;
.source "CCMBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;
    }
.end annotation


# instance fields
.field private blacklist associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private blacklist blockSize:I

.field private blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private blacklist data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private blacklist forEncryption:Z

.field private blacklist initialAssociatedText:[B

.field private blacklist keyParam:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

.field private blacklist macBlock:[B

.field private blacklist macSize:I

.field private blacklist nonce:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>(Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>(Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist calculateMac([BII[B)I
    .locals 10

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    const/16 v1, 0x10

    new-array v2, v1, [B

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    aget-byte v3, v2, v4

    or-int/lit8 v3, v3, 0x40

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    :cond_0
    aget-byte v3, v2, v4

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    div-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x7

    shl-int/lit8 v5, v5, 0x3

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    aget-byte v3, v2, v4

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v5, v5

    rsub-int/lit8 v5, v5, 0xf

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x7

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v5, v5

    invoke-static {v3, v4, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, p3

    const/4 v5, 0x1

    :goto_0
    if-lez v3, :cond_1

    array-length v6, v2

    sub-int/2addr v6, v5

    and-int/lit16 v7, v3, 0xff

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    ushr-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    array-length v6, v2

    invoke-interface {v0, v2, v4, v6}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->getAssociatedTextLength()I

    move-result v6

    const v7, 0xff00

    if-ge v6, v7, :cond_2

    shr-int/lit8 v7, v6, 0x8

    int-to-byte v7, v7

    invoke-interface {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    int-to-byte v7, v6

    invoke-interface {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    const/4 v7, 0x2

    goto :goto_1

    :cond_2
    const/4 v7, -0x1

    invoke-interface {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    const/4 v7, -0x2

    invoke-interface {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    shr-int/lit8 v7, v6, 0x18

    int-to-byte v7, v7

    invoke-interface {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    shr-int/lit8 v7, v6, 0x10

    int-to-byte v7, v7

    invoke-interface {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    shr-int/lit8 v7, v6, 0x8

    int-to-byte v7, v7

    invoke-interface {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    int-to-byte v7, v6

    invoke-interface {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    const/4 v7, 0x6

    :goto_1
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    array-length v9, v9

    invoke-interface {v0, v8, v4, v9}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    :cond_3
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v8

    if-lez v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v9

    invoke-interface {v0, v8, v4, v9}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    :cond_4
    add-int v8, v7, v6

    rem-int/2addr v8, v1

    if-eqz v8, :cond_5

    move v7, v8

    :goto_2
    if-eq v7, v1, :cond_5

    invoke-interface {v0, v4}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    invoke-interface {v0, p4, v4}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    move-result v1

    return v1
.end method

.method private blacklist getAssociatedTextLength()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    array-length v1, v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method private blacklist getMacSize(ZI)I
    .locals 2

    if-eqz p1, :cond_1

    const/16 v0, 0x20

    if-lt p2, v0, :cond_0

    const/16 v0, 0x80

    if-gt p2, v0, :cond_0

    and-int/lit8 v0, p2, 0xf

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tag length in octets must be one of {4,6,8,10,12,14,16}"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    ushr-int/lit8 v0, p2, 0x3

    return v0
.end method

.method private blacklist hasAssociatedText()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->getAssociatedTextLength()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v4

    const/4 v3, 0x0

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->processPacket([BII[BI)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->reset()V

    return v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CCM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMac()[B
    .locals 4

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public blacklist getOutputSize(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v1, v0

    return v1

    :cond_0
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int v1, v0, v1

    :goto_0
    return v1
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public blacklist getUpdateOutputSize(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->getMacSize(ZI)I

    move-result v1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getKey()Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    const/16 v1, 0x40

    invoke-direct {p0, p1, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->getMacSize(ZI)I

    move-result v1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    nop

    :goto_0
    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    :cond_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v1, v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v1, v1

    const/16 v2, 0xd

    if-gt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->reset()V

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "nonce must have length from 7 to 13 octets"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid parameters passed to CCM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist processAADByte(B)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public blacklist processAADBytes([BII)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public blacklist processByte(B[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist processBytes([BII[BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist processPacket([BII[BI)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;,
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    if-eqz v6, :cond_a

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v6, v6

    rsub-int/lit8 v7, v6, 0xf

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-ge v7, v8, :cond_1

    mul-int/lit8 v8, v7, 0x8

    shl-int v8, v9, v8

    if-ge v3, v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "CCM packet too large for choice of q."

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    :goto_0
    iget v8, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v8, v8, [B

    add-int/lit8 v10, v7, -0x1

    and-int/lit8 v10, v10, 0x7

    int-to-byte v10, v10

    const/4 v11, 0x0

    aput-byte v10, v8, v11

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v12, v12

    invoke-static {v10, v11, v8, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v9, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v9, v10}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iget-boolean v10, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    new-instance v12, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    invoke-direct {v12, v13, v8}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v9, v10, v12}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    move/from16 v10, p2

    move/from16 v12, p5

    iget-boolean v13, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    const-string v14, "Output buffer too short."

    if-eqz v13, :cond_4

    iget v13, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v13, v3

    array-length v15, v4

    add-int v11, v13, v5

    if-lt v15, v11, :cond_3

    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-direct {v0, v1, v2, v3, v11}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    iget v11, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v11, v11, [B

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15, v11, v15}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_1
    add-int v14, v2, v3

    iget v15, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    sub-int/2addr v14, v15

    if-ge v10, v14, :cond_2

    invoke-interface {v9, v1, v10, v4, v12}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget v14, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v12, v14

    iget v14, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v10, v14

    goto :goto_1

    :cond_2
    iget v14, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v14, v14, [B

    add-int v15, v3, v2

    sub-int/2addr v15, v10

    move/from16 v16, v6

    const/4 v6, 0x0

    invoke-static {v1, v10, v14, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v9, v14, v6, v14, v6}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int v15, v3, v2

    sub-int/2addr v15, v10

    invoke-static {v14, v6, v4, v12, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v15, v5, v3

    move/from16 v17, v7

    iget v7, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    invoke-static {v11, v6, v4, v15, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_3
    move/from16 v16, v6

    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v6, v14}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    move/from16 v16, v6

    move/from16 v17, v7

    iget v6, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-lt v3, v6, :cond_9

    iget v6, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int v13, v3, v6

    array-length v6, v4

    add-int v7, v13, v5

    if-lt v6, v7, :cond_8

    add-int v6, v2, v13

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    iget v11, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    const/4 v14, 0x0

    invoke-static {v1, v6, v7, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-interface {v9, v6, v14, v7, v14}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget v6, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    :goto_2
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v7, v7

    if-eq v6, v7, :cond_5

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    aput-byte v14, v7, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v14, 0x0

    goto :goto_2

    :cond_5
    :goto_3
    add-int v6, v2, v13

    iget v7, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    sub-int/2addr v6, v7

    if-ge v10, v6, :cond_6

    invoke-interface {v9, v1, v10, v4, v12}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget v6, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v12, v6

    iget v6, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v10, v6

    goto :goto_3

    :cond_6
    iget v6, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v6, v6, [B

    sub-int v7, v10, v2

    sub-int v7, v13, v7

    const/4 v11, 0x0

    invoke-static {v1, v10, v6, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v9, v6, v11, v6, v11}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    sub-int v7, v10, v2

    sub-int v7, v13, v7

    invoke-static {v6, v11, v4, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v7, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v7, v7, [B

    invoke-direct {v0, v4, v5, v13, v7}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-static {v11, v7}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v11

    if-eqz v11, :cond_7

    :goto_4
    return v13

    :cond_7
    new-instance v11, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v14, "mac check in CCM failed"

    invoke-direct {v11, v14}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_8
    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v6, v14}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_9
    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v7, "data too short"

    invoke-direct {v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_a
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "CCM cipher unitialized."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public blacklist processPacket([BII)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v0, p3

    new-array v0, v0, [B

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-lt p3, v0, :cond_1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int v0, p3, v0

    new-array v0, v0, [B

    :goto_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->processPacket([BII[BI)I

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "data too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    return-void
.end method
