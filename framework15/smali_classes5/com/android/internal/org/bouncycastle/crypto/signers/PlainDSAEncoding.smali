.class public Lcom/android/internal/org/bouncycastle/crypto/signers/PlainDSAEncoding;
.super Ljava/lang/Object;
.source "PlainDSAEncoding.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;


# static fields
.field public static final blacklist INSTANCE:Lcom/android/internal/org/bouncycastle/crypto/signers/PlainDSAEncoding;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/signers/PlainDSAEncoding;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/signers/PlainDSAEncoding;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/signers/PlainDSAEncoding;->INSTANCE:Lcom/android/internal/org/bouncycastle/crypto/signers/PlainDSAEncoding;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist encodeValue(Ljava/math/BigInteger;Ljava/math/BigInteger;[BII)V
    .locals 6

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/signers/PlainDSAEncoding;->checkValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    sub-int/2addr v1, p5

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    array-length v3, v0

    sub-int/2addr v3, v1

    sub-int v4, p5, v3

    add-int v5, p4, v4

    invoke-static {p3, p4, v5, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BIIB)V

    add-int v2, p4, v4

    invoke-static {v0, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method protected blacklist checkValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    return-object p2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist decode(Ljava/math/BigInteger;[B)[Ljava/math/BigInteger;
    .locals 4

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->getUnsignedByteLength(Ljava/math/BigInteger;)I

    move-result v0

    array-length v1, p2

    mul-int/lit8 v2, v0, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/math/BigInteger;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/android/internal/org/bouncycastle/crypto/signers/PlainDSAEncoding;->decodeValue(Ljava/math/BigInteger;[BII)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/internal/org/bouncycastle/crypto/signers/PlainDSAEncoding;->decodeValue(Ljava/math/BigInteger;[BII)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Encoding has incorrect length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected blacklist decodeValue(Ljava/math/BigInteger;[BII)Ljava/math/BigInteger;
    .locals 3

    add-int v0, p3, p4

    invoke-static {p2, p3, v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/org/bouncycastle/crypto/signers/PlainDSAEncoding;->checkValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public blacklist encode(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 8

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->getUnsignedByteLength(Ljava/math/BigInteger;)I

    move-result v6

    mul-int/lit8 v0, v6, 0x2

    new-array v7, v0, [B

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v7

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/signers/PlainDSAEncoding;->encodeValue(Ljava/math/BigInteger;Ljava/math/BigInteger;[BII)V

    move-object v2, p3

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/signers/PlainDSAEncoding;->encodeValue(Ljava/math/BigInteger;Ljava/math/BigInteger;[BII)V

    return-object v7
.end method
