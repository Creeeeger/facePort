.class public Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;
.super Ljava/lang/Object;
.source "RC4Engine.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;


# static fields
.field private static final blacklist STATE_LENGTH:I = 0x100


# instance fields
.field private blacklist engineState:[B

.field private blacklist workingKey:[B

.field private blacklist x:I

.field private blacklist y:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    return-void
.end method

.method private blacklist setKey([B)V
    .locals 7

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    const/16 v1, 0x100

    if-nez v0, :cond_0

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v5, v5, v3

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    and-int/lit16 v2, v4, 0xff

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v4, v4, v3

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v6, v6, v2

    aput-byte v6, v5, v3

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aput-byte v4, v5, v2

    add-int/lit8 v5, v0, 0x1

    array-length v6, p1

    rem-int v0, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "RC4"

    return-object v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->setKey([B)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid parameter passed to RC4 init - "

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

.method public blacklist processBytes([BII[BI)I
    .locals 8

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v1, v1, v2

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    aput-byte v1, v2, v3

    add-int v2, v0, p5

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v5, v5, v6

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v6, v6, v7

    add-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p3

    :cond_1
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v1, "output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->setKey([B)V

    return-void
.end method

.method public blacklist returnByte(B)B
    .locals 5

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v0, v0, v1

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    add-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    aput-byte v0, v1, v2

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v3, v3, v4

    add-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    xor-int/2addr v1, p1

    int-to-byte v1, v1

    return v1
.end method
