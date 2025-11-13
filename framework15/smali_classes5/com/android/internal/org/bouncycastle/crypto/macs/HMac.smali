.class public Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;
.super Ljava/lang/Object;
.source "HMac.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/Mac;


# static fields
.field private static final blacklist IPAD:B = 0x36t

.field private static final blacklist OPAD:B = 0x5ct

.field private static blacklist blockLengths:Ljava/util/Hashtable;


# instance fields
.field private blacklist blockLength:I

.field private blacklist digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

.field private blacklist digestSize:I

.field private blacklist inputPad:[B

.field private blacklist ipadState:Lcom/android/internal/org/bouncycastle/util/Memoable;

.field private blacklist opadState:Lcom/android/internal/org/bouncycastle/util/Memoable;

.field private blacklist outputBuf:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const/16 v1, 0x40

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MD5"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v2, "SHA-1"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v2, "SHA-224"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v2, "SHA-256"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const/16 v1, 0x80

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SHA-384"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    const-string v2, "SHA-512"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V
    .locals 1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->getByteLength(Lcom/android/internal/org/bouncycastle/crypto/Digest;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;I)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digestSize:I

    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digestSize:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    return-void
.end method

.method private static blacklist getByteLength(Lcom/android/internal/org/bouncycastle/crypto/Digest;)I
    .locals 4

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->blockLengths:Ljava/util/Hashtable;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown digest passed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist xorPad([BIB)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-byte v1, p0, v0

    xor-int/2addr v1, p2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .locals 5

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->opadState:Lcom/android/internal/org/bouncycastle/util/Memoable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    check-cast v0, Lcom/android/internal/org/bouncycastle/util/Memoable;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->opadState:Lcom/android/internal/org/bouncycastle/util/Memoable;

    invoke-interface {v0, v2}, Lcom/android/internal/org/bouncycastle/util/Memoable;->reset(Lcom/android/internal/org/bouncycastle/util/Memoable;)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    array-length v3, v3

    invoke-interface {v0, v2, v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    :goto_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result v0

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    :goto_1
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    aput-byte v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->ipadState:Lcom/android/internal/org/bouncycastle/util/Memoable;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    check-cast v1, Lcom/android/internal/org/bouncycastle/util/Memoable;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->ipadState:Lcom/android/internal/org/bouncycastle/util/Memoable;

    invoke-interface {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Memoable;->reset(Lcom/android/internal/org/bouncycastle/util/Memoable;)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v4, v4

    invoke-interface {v2, v3, v1, v4}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    :goto_2
    return v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/HMAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMacSize()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digestSize:I

    return v0
.end method

.method public blacklist getUnderlyingDigest()Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public blacklist init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->reset()V

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v1, v0

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v2, v0, v3, v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    invoke-interface {v2, v4, v3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digestSize:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    move v2, v1

    :goto_1
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v4, v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    aput-byte v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    invoke-static {v2, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    const/16 v5, 0x36

    invoke-static {v2, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->xorPad([BIB)V

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    const/16 v5, 0x5c

    invoke-static {v2, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->xorPad([BIB)V

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    instance-of v2, v2, Lcom/android/internal/org/bouncycastle/util/Memoable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    check-cast v2, Lcom/android/internal/org/bouncycastle/util/Memoable;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/util/Memoable;->copy()Lcom/android/internal/org/bouncycastle/util/Memoable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->opadState:Lcom/android/internal/org/bouncycastle/util/Memoable;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->opadState:Lcom/android/internal/org/bouncycastle/util/Memoable;

    check-cast v2, Lcom/android/internal/org/bouncycastle/crypto/Digest;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->outputBuf:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->blockLength:I

    invoke-interface {v2, v4, v3, v5}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    :cond_2
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v5, v5

    invoke-interface {v2, v4, v3, v5}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    instance-of v2, v2, Lcom/android/internal/org/bouncycastle/util/Memoable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    check-cast v2, Lcom/android/internal/org/bouncycastle/util/Memoable;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/util/Memoable;->copy()Lcom/android/internal/org/bouncycastle/util/Memoable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->ipadState:Lcom/android/internal/org/bouncycastle/util/Memoable;

    :cond_3
    return-void
.end method

.method public blacklist reset()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->reset()V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->inputPad:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public blacklist update(B)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public blacklist update([BII)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method
