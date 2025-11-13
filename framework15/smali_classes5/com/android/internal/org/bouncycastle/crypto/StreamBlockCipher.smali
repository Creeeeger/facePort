.class public abstract Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;
.super Ljava/lang/Object;
.source "StreamBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
.implements Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;


# instance fields
.field private final blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    return-void
.end method


# virtual methods
.method protected abstract blacklist calculateByte(B)B
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public blacklist processBytes([BII[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_1

    move v0, p2

    add-int v1, p2, p3

    move v2, p5

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;->calculateByte(B)B

    move-result v0

    aput-byte v0, p4, v2

    move v2, v3

    move v0, v4

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

    const-string/jumbo v1, "input buffer too small"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist returnByte(B)B
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;->calculateByte(B)B

    move-result v0

    return v0
.end method
