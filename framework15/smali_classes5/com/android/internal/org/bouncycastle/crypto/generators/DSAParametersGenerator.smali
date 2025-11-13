.class public Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;
.super Ljava/lang/Object;
.source "DSAParametersGenerator.java"


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;

.field private static final blacklist TWO:Ljava/math/BigInteger;

.field private static final blacklist ZERO:Ljava/math/BigInteger;


# instance fields
.field private blacklist L:I

.field private blacklist N:I

.field private blacklist certainty:I

.field private blacklist digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

.field private blacklist iterations:I

.field private blacklist random:Ljava/security/SecureRandom;

.field private blacklist usageIndex:I

.field private blacklist use186_3:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    return-void
.end method

.method private static blacklist calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 6

    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :goto_0
    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-static {v2, v1, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    return-object v3

    :cond_0
    goto :goto_0
.end method

.method private static blacklist calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist calculateGenerator_FIPS186_3_Verifiable(Lcom/android/internal/org/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;
    .locals 10

    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const-string v1, "6767656E"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, p3

    array-length v3, v1

    add-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    array-length v4, p3

    const/4 v5, 0x0

    invoke-static {p3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p3

    array-length v6, v1

    invoke-static {v1, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v2

    add-int/lit8 v4, v4, -0x3

    int-to-byte v6, p4

    aput-byte v6, v2, v4

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v4, v4, [B

    const/4 v6, 0x1

    :goto_0
    const/high16 v7, 0x10000

    if-ge v6, v7, :cond_1

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    invoke-static {p0, v2, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v7, v0, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    sget-object v9, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    if-ltz v9, :cond_0

    return-object v8

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private blacklist generateParameters_FIPS186_2()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .locals 16

    move-object/from16 v0, p0

    const/16 v1, 0x14

    new-array v2, v1, [B

    new-array v3, v1, [B

    new-array v4, v1, [B

    new-array v1, v1, [B

    iget v5, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    div-int/lit16 v5, v5, 0xa0

    iget v7, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    div-int/lit8 v7, v7, 0x8

    new-array v7, v7, [B

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v8}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SHA-1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :goto_0
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v8, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    const/4 v9, 0x0

    invoke-static {v8, v2, v3, v9}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    array-length v8, v2

    invoke-static {v2, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-static {v8, v4, v4, v9}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    const/4 v8, 0x0

    :goto_1
    array-length v10, v1

    if-eq v8, v10, :cond_0

    aget-byte v10, v3, v8

    aget-byte v11, v4, v8

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    aget-byte v8, v1, v9

    or-int/lit8 v8, v8, -0x80

    int-to-byte v8, v8

    aput-byte v8, v1, v9

    const/16 v8, 0x13

    aget-byte v10, v1, v8

    or-int/2addr v10, v6

    int-to-byte v10, v10

    aput-byte v10, v1, v8

    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, v8}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    const/4 v11, 0x0

    :goto_2
    const/16 v12, 0x1000

    if-ge v11, v12, :cond_5

    const/4 v12, 0x1

    :goto_3
    if-gt v12, v5, :cond_2

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    array-length v14, v7

    array-length v15, v3

    mul-int/2addr v15, v12

    sub-int/2addr v14, v15

    invoke-static {v13, v10, v7, v14}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_2
    array-length v12, v7

    array-length v13, v3

    mul-int/2addr v13, v5

    sub-int/2addr v12, v13

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-static {v13, v10, v3, v9}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    array-length v13, v3

    sub-int/2addr v13, v12

    invoke-static {v3, v13, v7, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v13, v7, v9

    or-int/lit8 v13, v13, -0x80

    int-to-byte v13, v13

    aput-byte v13, v7, v9

    new-instance v12, Ljava/math/BigInteger;

    invoke-direct {v12, v6, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    sget-object v14, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->bitLength()I

    move-result v15

    iget v6, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    if-eq v15, v6, :cond_3

    goto :goto_4

    :cond_3
    invoke-direct {v0, v14}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v14, v8, v6}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    new-instance v9, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v15, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    invoke-direct {v15, v2, v11}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v9, v14, v8, v6, v15}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v9

    :cond_4
    :goto_4
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_6
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v8, "can only use SHA-1 for generating FIPS 186-2 parameters"

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private blacklist generateParameters_FIPS186_3()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    iget v3, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    div-int/lit8 v4, v3, 0x8

    new-array v4, v4, [B

    iget v5, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    div-int/2addr v5, v2

    iget v7, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    sub-int/2addr v7, v6

    rem-int/2addr v7, v2

    iget v8, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    div-int/lit8 v8, v8, 0x8

    new-array v8, v8, [B

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v9

    new-array v9, v9, [B

    :goto_0
    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v10, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v10, 0x0

    invoke-static {v1, v4, v9, v10}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    new-instance v11, Ljava/math/BigInteger;

    invoke-direct {v11, v6, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    iget v13, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    sub-int/2addr v13, v6

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v12

    iget v13, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    sub-int/2addr v13, v6

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-direct {v0, v12}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v13

    if-nez v13, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v13

    iget v14, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    mul-int/lit8 v14, v14, 0x4

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_6

    const/16 v16, 0x1

    move/from16 v6, v16

    :goto_2
    if-gt v6, v5, :cond_1

    invoke-static {v13}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    array-length v10, v8

    move/from16 v17, v2

    array-length v2, v9

    mul-int/2addr v2, v6

    sub-int/2addr v10, v2

    invoke-static {v1, v13, v8, v10}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v17

    const/4 v10, 0x0

    goto :goto_2

    :cond_1
    move/from16 v17, v2

    array-length v2, v8

    array-length v6, v9

    mul-int/2addr v6, v5

    sub-int/2addr v2, v6

    invoke-static {v13}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    const/4 v6, 0x0

    invoke-static {v1, v13, v9, v6}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/internal/org/bouncycastle/crypto/Digest;[B[BI)V

    array-length v10, v9

    sub-int/2addr v10, v2

    invoke-static {v9, v10, v8, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v10, v8, v6

    or-int/lit8 v10, v10, -0x80

    int-to-byte v10, v10

    aput-byte v10, v8, v6

    new-instance v2, Ljava/math/BigInteger;

    const/4 v10, 0x1

    invoke-direct {v2, v10, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v12, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    move-object/from16 v18, v2

    invoke-virtual {v10}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    move/from16 v19, v3

    iget v3, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    if-eq v2, v3, :cond_2

    move-object/from16 v20, v1

    move/from16 v21, v5

    goto :goto_4

    :cond_2
    invoke-direct {v0, v10}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    if-ltz v2, :cond_4

    iget v2, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    invoke-static {v1, v10, v12, v4, v2}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Verifiable(Lcom/android/internal/org/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    move-object/from16 v20, v1

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    move/from16 v21, v5

    iget v5, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    invoke-direct {v1, v4, v15, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BII)V

    invoke-direct {v3, v10, v12, v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v3

    :cond_3
    move-object/from16 v20, v1

    move/from16 v21, v5

    goto :goto_3

    :cond_4
    move-object/from16 v20, v1

    move/from16 v21, v5

    :goto_3
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v10, v12, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    invoke-direct {v3, v4, v15}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v2, v10, v12, v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v2

    :cond_5
    move-object/from16 v20, v1

    move/from16 v21, v5

    :goto_4
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v17

    move/from16 v3, v19

    move-object/from16 v1, v20

    move/from16 v5, v21

    const/4 v6, 0x1

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_6
    move-object/from16 v20, v1

    move/from16 v17, v2

    move/from16 v19, v3

    move/from16 v21, v5

    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method private static blacklist getDefaultN(I)I
    .locals 1

    const/16 v0, 0x400

    if-le p0, v0, :cond_0

    const/16 v0, 0x100

    goto :goto_0

    :cond_0
    const/16 v0, 0xa0

    :goto_0
    return v0
.end method

.method private static blacklist getMinimumIterations(I)I
    .locals 2

    const/16 v0, 0x400

    if-gt p0, v0, :cond_0

    const/16 v0, 0x28

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p0, -0x1

    div-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v1, 0x30

    :goto_0
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

.method private static blacklist inc([B)V
    .locals 2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private blacklist isProbablePrime(Ljava/math/BigInteger;)Z
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist generateParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_3()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_2()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public blacklist init(IILjava/security/SecureRandom;)V
    .locals 2

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->getDefaultN(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->getMinimumIterations(I)I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->iterations:I

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    return-void
.end method

.method public blacklist init(Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getL()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getN()I

    move-result v1

    const/16 v2, 0x400

    if-lt v0, v2, :cond_7

    const/16 v3, 0xc00

    if-gt v0, v3, :cond_7

    rem-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_7

    if-ne v0, v2, :cond_1

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "N must be 160 for L = 1024"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    const/16 v2, 0x800

    const/16 v4, 0x100

    if-ne v0, v2, :cond_3

    const/16 v2, 0xe0

    if-eq v1, v2, :cond_3

    if-ne v1, v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "N must be 224 or 256 for L = 2048"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    if-ne v0, v3, :cond_5

    if-ne v1, v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "N must be 256 for L = 3072"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    if-lt v2, v1, :cond_6

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getCertainty()I

    move-result v2

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->getMinimumIterations(I)I

    move-result v2

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->iterations:I

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    iput-boolean v4, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getUsageIndex()I

    move-result v2

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    return-void

    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Digest output size too small for value of N"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "L values must be between 1024 and 3072 and a multiple of 1024"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
