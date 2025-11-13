.class public abstract Lcom/android/internal/org/bouncycastle/math/Primes;
.super Ljava/lang/Object;
.source "Primes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;,
        Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;
    }
.end annotation


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;

.field public static final blacklist SMALL_FACTOR_LIMIT:I = 0xd3

.field private static final blacklist THREE:Ljava/math/BigInteger;

.field private static final blacklist TWO:Ljava/math/BigInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/Primes;->THREE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must be non-null and >= 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist enhancedMRProbablePrimeTest(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;
    .locals 13

    const-string v0, "candidate"

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    if-lt p2, v0, :cond_b

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->-$$Nest$smprobablyPrime()Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->-$$Nest$smprovablyCompositeWithFactor(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, p0

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p2, :cond_a

    sget-object v6, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {v6, v2, p1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    sget-object v8, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-lez v8, :cond_2

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->-$$Nest$smprovablyCompositeWithFactor(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    move-result-object v8

    return-object v8

    :cond_2
    invoke-virtual {v6, v4, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    sget-object v9, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v8, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    move-object v10, v8

    const/4 v11, 0x1

    :goto_1
    if-ge v11, v3, :cond_6

    sget-object v12, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v8, v12, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    sget-object v12, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v12}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_2

    :cond_5
    move-object v10, v8

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-nez v9, :cond_9

    sget-object v11, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    move-object v10, v8

    sget-object v11, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v8, v11, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    sget-object v11, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    move-object v10, v8

    :cond_7
    sget-object v11, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    sget-object v11, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-lez v11, :cond_8

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->-$$Nest$smprovablyCompositeWithFactor(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    move-result-object v11

    return-object v11

    :cond_8
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->-$$Nest$smprovablyCompositeNotPrimePower()Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    move-result-object v11

    return-object v11

    :cond_9
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->-$$Nest$smprobablyPrime()Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    move-result-object v5

    return-object v5

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'iterations\' must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'random\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist extract32([B)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x4

    array-length v2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    array-length v3, p0

    add-int/lit8 v4, v2, 0x1

    sub-int/2addr v3, v4

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x8

    shl-int v4, v3, v4

    or-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static blacklist generateSTRandomPrime(Lcom/android/internal/org/bouncycastle/crypto/Digest;I[B)Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/Primes;->implSTRandomPrime(Lcom/android/internal/org/bouncycastle/crypto/Digest;I[B)Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'inputSeed\' cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'length\' must be >= 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'hash\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist hasAnySmallFactors(Ljava/math/BigInteger;)Z
    .locals 1

    const-string v0, "candidate"

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/Primes;->implHasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v0

    return v0
.end method

.method private static blacklist hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-interface {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p0, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-void
.end method

.method private static blacklist hashGen(Lcom/android/internal/org/bouncycastle/crypto/Digest;[BI)Ljava/math/BigInteger;
    .locals 5

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    mul-int v1, p2, v0

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, p2, :cond_0

    sub-int/2addr v1, v0

    invoke-static {p0, p1, v2, v1}, Lcom/android/internal/org/bouncycastle/math/Primes;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    invoke-static {p1, v4}, Lcom/android/internal/org/bouncycastle/math/Primes;->inc([BI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v3
.end method

.method private static blacklist implHasAnySmallFactors(Ljava/math/BigInteger;)Z
    .locals 6

    const v0, 0xd4c2086

    int-to-long v1, v0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    rem-int/lit8 v2, v1, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_13

    rem-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_13

    rem-int/lit8 v2, v1, 0x5

    if-eqz v2, :cond_13

    rem-int/lit8 v2, v1, 0x7

    if-eqz v2, :cond_13

    rem-int/lit8 v2, v1, 0xb

    if-eqz v2, :cond_13

    rem-int/lit8 v2, v1, 0xd

    if-eqz v2, :cond_13

    rem-int/lit8 v2, v1, 0x11

    if-eqz v2, :cond_13

    rem-int/lit8 v2, v1, 0x13

    if-eqz v2, :cond_13

    rem-int/lit8 v2, v1, 0x17

    if-nez v2, :cond_0

    goto/16 :goto_9

    :cond_0
    const v0, 0x37ed0ed

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    rem-int/lit8 v2, v1, 0x1d

    if-eqz v2, :cond_12

    rem-int/lit8 v2, v1, 0x1f

    if-eqz v2, :cond_12

    rem-int/lit8 v2, v1, 0x25

    if-eqz v2, :cond_12

    rem-int/lit8 v2, v1, 0x29

    if-eqz v2, :cond_12

    rem-int/lit8 v2, v1, 0x2b

    if-nez v2, :cond_1

    goto/16 :goto_8

    :cond_1
    const v0, 0x23cd611f

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    rem-int/lit8 v2, v1, 0x2f

    if-eqz v2, :cond_11

    rem-int/lit8 v2, v1, 0x35

    if-eqz v2, :cond_11

    rem-int/lit8 v2, v1, 0x3b

    if-eqz v2, :cond_11

    rem-int/lit8 v2, v1, 0x3d

    if-eqz v2, :cond_11

    rem-int/lit8 v2, v1, 0x43

    if-nez v2, :cond_2

    goto/16 :goto_7

    :cond_2
    const v0, 0x20691a3

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    rem-int/lit8 v2, v1, 0x47

    if-eqz v2, :cond_10

    rem-int/lit8 v2, v1, 0x49

    if-eqz v2, :cond_10

    rem-int/lit8 v2, v1, 0x4f

    if-eqz v2, :cond_10

    rem-int/lit8 v2, v1, 0x53

    if-nez v2, :cond_3

    goto/16 :goto_6

    :cond_3
    const v0, 0x55a60cb

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    rem-int/lit8 v2, v1, 0x59

    if-eqz v2, :cond_f

    rem-int/lit8 v2, v1, 0x61

    if-eqz v2, :cond_f

    rem-int/lit8 v2, v1, 0x65

    if-eqz v2, :cond_f

    rem-int/lit8 v2, v1, 0x67

    if-nez v2, :cond_4

    goto/16 :goto_5

    :cond_4
    const v0, 0x9f9f361

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    rem-int/lit8 v2, v1, 0x6b

    if-eqz v2, :cond_e

    rem-int/lit8 v2, v1, 0x6d

    if-eqz v2, :cond_e

    rem-int/lit8 v2, v1, 0x71

    if-eqz v2, :cond_e

    rem-int/lit8 v2, v1, 0x7f

    if-nez v2, :cond_5

    goto/16 :goto_4

    :cond_5
    const v0, 0x1627b25d

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    rem-int/lit16 v2, v1, 0x83

    if-eqz v2, :cond_d

    rem-int/lit16 v2, v1, 0x89

    if-eqz v2, :cond_d

    rem-int/lit16 v2, v1, 0x8b

    if-eqz v2, :cond_d

    rem-int/lit16 v2, v1, 0x95

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    const v0, 0x2676ed77

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    rem-int/lit16 v2, v1, 0x97

    if-eqz v2, :cond_c

    rem-int/lit16 v2, v1, 0x9d

    if-eqz v2, :cond_c

    rem-int/lit16 v2, v1, 0xa3

    if-eqz v2, :cond_c

    rem-int/lit16 v2, v1, 0xa7

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    const v0, 0x3fcf739d

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    rem-int/lit16 v2, v1, 0xad

    if-eqz v2, :cond_b

    rem-int/lit16 v2, v1, 0xb3

    if-eqz v2, :cond_b

    rem-int/lit16 v2, v1, 0xb5

    if-eqz v2, :cond_b

    rem-int/lit16 v2, v1, 0xbf

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    const v0, 0x5f281a99

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    rem-int/lit16 v2, v1, 0xc1

    if-eqz v2, :cond_a

    rem-int/lit16 v2, v1, 0xc5

    if-eqz v2, :cond_a

    rem-int/lit16 v2, v1, 0xc7

    if-eqz v2, :cond_a

    rem-int/lit16 v2, v1, 0xd3

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x0

    return v2

    :cond_a
    :goto_0
    return v3

    :cond_b
    :goto_1
    return v3

    :cond_c
    :goto_2
    return v3

    :cond_d
    :goto_3
    return v3

    :cond_e
    :goto_4
    return v3

    :cond_f
    :goto_5
    return v3

    :cond_10
    :goto_6
    return v3

    :cond_11
    :goto_7
    return v3

    :cond_12
    :goto_8
    return v3

    :cond_13
    :goto_9
    return v3
.end method

.method private static blacklist implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z
    .locals 4

    invoke-virtual {p4, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    if-ge v2, p3, :cond_3

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v3, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :cond_4
    :goto_2
    const/4 v1, 0x1

    return v1
.end method

.method private static blacklist implSTRandomPrime(Lcom/android/internal/org/bouncycastle/crypto/Digest;I[B)Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    const/16 v4, 0x21

    const-string v5, "Too many iterations in Shawe-Taylor Random_Prime Routine"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v1, v4, :cond_2

    const/4 v4, 0x0

    new-array v8, v3, [B

    new-array v9, v3, [B

    :goto_0
    const/4 v10, 0x0

    invoke-static {v0, v2, v8, v10}, Lcom/android/internal/org/bouncycastle/math/Primes;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    invoke-static {v2, v7}, Lcom/android/internal/org/bouncycastle/math/Primes;->inc([BI)V

    invoke-static {v0, v2, v9, v10}, Lcom/android/internal/org/bouncycastle/math/Primes;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    invoke-static {v2, v7}, Lcom/android/internal/org/bouncycastle/math/Primes;->inc([BI)V

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/math/Primes;->extract32([B)I

    move-result v10

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/math/Primes;->extract32([B)I

    move-result v11

    xor-int/2addr v10, v11

    rsub-int/lit8 v11, v1, 0x20

    const/4 v12, -0x1

    ushr-int v11, v12, v11

    and-int/2addr v10, v11

    add-int/lit8 v11, v1, -0x1

    shl-int v11, v7, v11

    or-int/2addr v11, v7

    or-int/2addr v10, v11

    add-int/2addr v4, v7

    int-to-long v11, v10

    const-wide v13, 0xffffffffL

    and-long/2addr v11, v13

    invoke-static {v11, v12}, Lcom/android/internal/org/bouncycastle/math/Primes;->isPrime32(J)Z

    move-result v13

    if-eqz v13, :cond_0

    new-instance v5, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;

    invoke-static {v11, v12}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v5, v7, v2, v4, v6}, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BILcom/android/internal/org/bouncycastle/math/Primes$STOutput-IA;)V

    return-object v5

    :cond_0
    mul-int/lit8 v13, v1, 0x4

    if-gt v4, v13, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    add-int/lit8 v4, v1, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-static {v0, v4, v2}, Lcom/android/internal/org/bouncycastle/math/Primes;->implSTRandomPrime(Lcom/android/internal/org/bouncycastle/crypto/Digest;I[B)Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;->getPrime()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;->getPrimeSeed()[B

    move-result-object v2

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;->getPrimeGenCounter()I

    move-result v9

    mul-int/lit8 v10, v3, 0x8

    add-int/lit8 v11, v1, -0x1

    div-int/2addr v11, v10

    move v12, v9

    add-int/lit8 v13, v11, 0x1

    invoke-static {v0, v2, v13}, Lcom/android/internal/org/bouncycastle/math/Primes;->hashGen(Lcom/android/internal/org/bouncycastle/crypto/Digest;[BI)Ljava/math/BigInteger;

    move-result-object v13

    sget-object v14, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v15, v1, -0x1

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    add-int/lit8 v15, v1, -0x1

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v8, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v14

    sget-object v15, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v15}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    sget-object v6, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v15, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    const/4 v15, 0x0

    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    move/from16 v17, v3

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    if-le v7, v1, :cond_3

    sget-object v7, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    move-object/from16 p2, v3

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v7, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v7, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v7, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v7, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object/from16 p2, v3

    :goto_2
    const/4 v7, 0x1

    add-int/2addr v9, v7

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/math/Primes;->implHasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v16

    if-nez v16, :cond_5

    add-int/lit8 v7, v11, 0x1

    invoke-static {v0, v2, v7}, Lcom/android/internal/org/bouncycastle/math/Primes;->hashGen(Lcom/android/internal/org/bouncycastle/crypto/Digest;[BI)Ljava/math/BigInteger;

    move-result-object v7

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/Primes;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object/from16 v18, v4

    sget-object v4, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move-object v7, v5

    int-to-long v4, v15

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v15, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    move-object/from16 p2, v0

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v5, v8, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v6, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;

    const/4 v6, 0x0

    invoke-direct {v0, v3, v2, v9, v6}, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BILcom/android/internal/org/bouncycastle/math/Primes$STOutput-IA;)V

    return-object v0

    :cond_4
    const/4 v6, 0x0

    move-object v0, v6

    move-object v6, v4

    goto :goto_3

    :cond_5
    move-object/from16 v18, v4

    move-object v7, v5

    const/4 v0, 0x0

    add-int/lit8 v4, v11, 0x1

    invoke-static {v2, v4}, Lcom/android/internal/org/bouncycastle/math/Primes;->inc([BI)V

    :goto_3
    mul-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v12

    if-ge v9, v4, :cond_6

    add-int/lit8 v15, v15, 0x2

    invoke-virtual {v3, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v5, v7

    move-object/from16 v4, v18

    goto/16 :goto_1

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist inc([BI)V
    .locals 2

    array-length v0, p0

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    add-int/2addr p1, v1

    int-to-byte v1, p1

    aput-byte v1, p0, v0

    ushr-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static blacklist isMRProbablePrime(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z
    .locals 10

    const-string v0, "candidate"

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-lt p2, v0, :cond_4

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v2, p0

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p2, :cond_3

    sget-object v8, Lcom/android/internal/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {v8, v4, p1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-static {v2, v3, v6, v5, v8}, Lcom/android/internal/org/bouncycastle/math/Primes;->implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z

    move-result v9

    if-nez v9, :cond_2

    return v1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'iterations\' must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'random\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist isMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 5

    const-string v0, "candidate"

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    const-string v0, "base"

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    move-object v0, p0

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0, v1, v3, v2, p1}, Lcom/android/internal/org/bouncycastle/math/Primes;->implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z

    move-result v4

    return v4

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'base\' must be < (\'candidate\' - 1)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist isPrime32(J)Z
    .locals 15

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    const-wide/16 v0, 0x5

    cmp-long v4, p0, v0

    const-wide/16 v5, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gtz v4, :cond_2

    const-wide/16 v2, 0x2

    cmp-long v2, p0, v2

    if-eqz v2, :cond_0

    cmp-long v2, p0, v5

    if-eqz v2, :cond_0

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    move v7, v8

    :cond_1
    return v7

    :cond_2
    const-wide/16 v9, 0x1

    and-long/2addr v9, p0

    cmp-long v4, v9, v2

    if-eqz v4, :cond_8

    rem-long v4, p0, v5

    cmp-long v4, v4, v2

    if-eqz v4, :cond_8

    rem-long v0, p0, v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    :goto_0
    array-length v6, v0

    const-wide/16 v9, 0x1e

    if-ge v1, v6, :cond_6

    aget-wide v11, v0, v1

    add-long/2addr v11, v4

    rem-long v13, p0, v11

    cmp-long v6, v13, v2

    if-nez v6, :cond_5

    cmp-long v2, p0, v9

    if-gez v2, :cond_4

    move v7, v8

    :cond_4
    return v7

    :cond_5
    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    add-long/2addr v4, v9

    mul-long v9, v4, v4

    cmp-long v6, v9, p0

    if-ltz v6, :cond_7

    return v8

    :cond_7
    const/4 v1, 0x0

    goto :goto_0

    :cond_8
    :goto_1
    return v7

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size limit exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 8
        0x1
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
    .end array-data
.end method
