.class public Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;
.super Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;
.source "SICBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/SkippingStreamCipher;


# instance fields
.field private blacklist IV:[B

.field private final blacklist blockSize:I

.field private blacklist byteCount:I

.field private final blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private blacklist counter:[B

.field private blacklist counterOut:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    return-void
.end method

.method private blacklist adjustCounter(J)V
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const-wide/16 v2, 0xff

    const-wide/16 v4, 0x1

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v6, v0

    add-long/2addr v6, p1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v8, v0

    div-long/2addr v6, v8

    move-wide v8, v6

    cmp-long v0, v8, v2

    if-lez v0, :cond_1

    const/4 v0, 0x5

    :goto_0
    if-lt v0, v1, :cond_1

    mul-int/lit8 v2, v0, 0x8

    shl-long v2, v4, v2

    :goto_1
    cmp-long v10, v8, v2

    if-ltz v10, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounterAt(I)V

    sub-long/2addr v8, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    long-to-int v0, v8

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounter(I)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v2, v2

    mul-long/2addr v2, v6

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    goto :goto_5

    :cond_2
    neg-long v6, p1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v8, v0

    sub-long/2addr v6, v8

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v8, v0

    div-long/2addr v6, v8

    move-wide v8, v6

    cmp-long v0, v8, v2

    if-lez v0, :cond_4

    const/4 v0, 0x5

    :goto_2
    if-lt v0, v1, :cond_4

    mul-int/lit8 v2, v0, 0x8

    shl-long v2, v4, v2

    :goto_3
    cmp-long v10, v8, v2

    if-lez v10, :cond_3

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->decrementCounterAt(I)V

    sub-long/2addr v8, v2

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    const-wide/16 v0, 0x0

    :goto_4
    cmp-long v2, v0, v8

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->decrementCounterAt(I)V

    add-long/2addr v0, v4

    goto :goto_4

    :cond_5
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v4, v2

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int v0, v0

    if-ltz v0, :cond_6

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    goto :goto_5

    :cond_6
    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->decrementCounterAt(I)V

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    :goto_5
    return-void
.end method

.method private blacklist checkCounter()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v1, v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Counter in CTR/SIC mode out of range."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method private blacklist decrementCounterAt(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    sub-int/2addr v0, p1

    :cond_0
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    if-eq v3, v1, :cond_0

    return-void

    :cond_1
    return-void
.end method

.method private blacklist incrementCounter(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v3, v3

    sub-int/2addr v3, v2

    aget-byte v4, v1, v3

    add-int/2addr v4, p1

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v3, v3

    sub-int/2addr v3, v2

    aget-byte v1, v1, v3

    if-ge v1, v0, :cond_0

    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounterAt(I)V

    :cond_0
    return-void
.end method

.method private blacklist incrementCounterAt(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    sub-int/2addr v0, p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    if-eqz v2, :cond_0

    nop

    :cond_1
    return-void
.end method


# virtual methods
.method protected blacklist calculateByte(B)B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v0, v0, v2

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v3, v3

    if-ne v2, v3, :cond_1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounterAt(I)V

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->checkCounter()V

    :cond_1
    return v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/SIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBlockSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public blacklist getPosition()J
    .locals 6

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-lt v1, v2, :cond_2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v3, v3

    if-ge v1, v3, :cond_0

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    sub-int/2addr v3, v4

    goto :goto_1

    :cond_0
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    :goto_1
    if-gez v3, :cond_1

    add-int/lit8 v4, v1, -0x1

    aget-byte v5, v0, v4

    sub-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit16 v3, v3, 0x100

    :cond_1
    int-to-byte v4, v3

    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x8

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v1

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v3, v3

    mul-long/2addr v1, v3

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v2, v2

    const-string v3, " bytes."

    if-lt v1, v2, :cond_3

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0x8

    if-le v2, v1, :cond_0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    div-int/lit8 v2, v1, 0x2

    :cond_0
    move v1, v2

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v4, v4

    sub-int/2addr v2, v4

    if-gt v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->reset()V

    nop

    return-void

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CTR/SIC mode requires IV of at least: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    sub-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CTR/SIC mode requires IV no greater than: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CTR/SIC mode requires ParametersWithIV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist processBlock([BI[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->processBytes([BII[BI)I

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    return v0
.end method

.method public blacklist reset()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    return-void
.end method

.method public blacklist seekTo(J)J
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->reset()V

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist skip(J)J
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->adjustCounter(J)V

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->checkCounter()V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    invoke-interface {v0, v1, v2, v3, v2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    return-wide p1
.end method
