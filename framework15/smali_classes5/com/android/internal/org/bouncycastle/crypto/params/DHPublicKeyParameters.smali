.class public Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;
.source "DHPublicKeyParameters.java"


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;

.field private static final blacklist TWO:Ljava/math/BigInteger;


# instance fields
.field private blacklist y:Ljava/math/BigInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;-><init>(ZLcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->validate(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->y:Ljava/math/BigInteger;

    return-void
.end method

.method private static blacklist legendre(Ljava/math/BigInteger;Ljava/math/BigInteger;)I
    .locals 10

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v1

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    const/4 v5, 0x0

    aget v6, v1, v5

    if-nez v6, :cond_0

    invoke-static {v4, v1, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownWord(I[II)I

    goto :goto_0

    :cond_0
    aget v6, v1, v5

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/util/Integers;->numberOfTrailingZeros(I)I

    move-result v6

    if-lez v6, :cond_1

    invoke-static {v4, v1, v6, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftDownBits(I[III)I

    aget v7, v2, v5

    ushr-int/lit8 v8, v7, 0x1

    xor-int/2addr v8, v7

    shl-int/lit8 v9, v6, 0x1

    and-int/2addr v8, v9

    xor-int/2addr v3, v8

    :cond_1
    invoke-static {v4, v1, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->compare(I[I[I)I

    move-result v7

    if-nez v7, :cond_3

    nop

    invoke-static {v4, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v6

    if-eqz v6, :cond_2

    and-int/lit8 v5, v3, 0x2

    rsub-int/lit8 v5, v5, 0x1

    :cond_2
    return v5

    :cond_3
    if-gez v7, :cond_4

    aget v8, v1, v5

    aget v5, v2, v5

    and-int/2addr v5, v8

    xor-int/2addr v3, v5

    move-object v5, v1

    move-object v1, v2

    move-object v2, v5

    :cond_4
    :goto_1
    add-int/lit8 v5, v4, -0x1

    aget v5, v1, v5

    if-nez v5, :cond_5

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_5
    invoke-static {v4, v1, v2, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    goto :goto_0
.end method

.method private blacklist validate(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)Ljava/math/BigInteger;
    .locals 5

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_3

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_3

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-ne v2, v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->legendre(Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v2

    if-ne v3, v2, :cond_2

    return-object p1

    :cond_1
    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p1

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Y value does not appear to be in correct group"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid DH public key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "y value cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->y:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public blacklist getY()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->y:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->y:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
