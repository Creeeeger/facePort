.class public Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;
.super Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
.source "PKCS12ParametersGenerator.java"


# static fields
.field public static final blacklist IV_MATERIAL:I = 0x2

.field public static final blacklist KEY_MATERIAL:I = 0x1

.field public static final blacklist MAC_MATERIAL:I = 0x3


# instance fields
.field private blacklist digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

.field private blacklist u:I

.field private blacklist v:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Digest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unsupported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist adjust([BI[B)V
    .locals 4

    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p3, v0

    and-int/lit16 v0, v0, 0xff

    array-length v1, p3

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    array-length v1, p3

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    int-to-byte v2, v0

    aput-byte v2, p1, v1

    ushr-int/lit8 v0, v0, 0x8

    array-length v1, p3

    add-int/lit8 v1, v1, -0x2

    :goto_0
    if-ltz v1, :cond_0

    aget-byte v2, p3, v1

    and-int/lit16 v2, v2, 0xff

    add-int v3, p2, v1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    ushr-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist generateDerivedKey(II)[B
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget v2, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    new-array v2, v2, [B

    new-array v3, v1, [B

    const/4 v4, 0x0

    :goto_0
    array-length v5, v2

    if-eq v4, v5, :cond_0

    move/from16 v5, p1

    int-to-byte v6, v5

    aput-byte v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move/from16 v5, p1

    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    array-length v4, v4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    array-length v7, v7

    iget v8, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    iget v8, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int/2addr v7, v8

    mul-int/2addr v4, v7

    new-array v4, v4, [B

    const/4 v7, 0x0

    :goto_1
    array-length v8, v4

    if-eq v7, v8, :cond_1

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    array-length v9, v9

    rem-int v9, v7, v9

    aget-byte v8, v8, v9

    aput-byte v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    new-array v4, v6, [B

    :goto_2
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    array-length v7, v7

    if-eqz v7, :cond_4

    iget v7, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    array-length v8, v8

    iget v9, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    iget v9, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int/2addr v8, v9

    mul-int/2addr v7, v8

    new-array v7, v7, [B

    const/4 v8, 0x0

    :goto_3
    array-length v9, v7

    if-eq v8, v9, :cond_3

    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    array-length v10, v10

    rem-int v10, v8, v10

    aget-byte v9, v9, v10

    aput-byte v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    goto :goto_4

    :cond_4
    new-array v7, v6, [B

    :goto_4
    array-length v8, v4

    array-length v9, v7

    add-int/2addr v8, v9

    new-array v8, v8, [B

    array-length v9, v4

    invoke-static {v4, v6, v8, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v9, v4

    array-length v10, v7

    invoke-static {v7, v6, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v9, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    new-array v9, v9, [B

    iget v10, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    add-int/2addr v10, v1

    add-int/lit8 v10, v10, -0x1

    iget v11, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    div-int/2addr v10, v11

    iget v11, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    new-array v11, v11, [B

    const/4 v12, 0x1

    :goto_5
    if-gt v12, v10, :cond_9

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    array-length v14, v2

    invoke-interface {v13, v2, v6, v14}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    array-length v14, v8

    invoke-interface {v13, v8, v6, v14}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v13, v11, v6}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    const/4 v13, 0x1

    :goto_6
    iget v14, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->iterationCount:I

    if-ge v13, v14, :cond_5

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    array-length v15, v11

    invoke-interface {v14, v11, v6, v15}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v14, v11, v6}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_5
    const/4 v13, 0x0

    :goto_7
    array-length v14, v9

    if-eq v13, v14, :cond_6

    array-length v14, v11

    rem-int v14, v13, v14

    aget-byte v14, v11, v14

    aput-byte v14, v9, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_6
    const/4 v13, 0x0

    :goto_8
    array-length v14, v8

    iget v15, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int/2addr v14, v15

    if-eq v13, v14, :cond_7

    iget v14, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    mul-int/2addr v14, v13

    invoke-direct {v0, v8, v14, v9}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->adjust([BI[B)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_7
    if-ne v12, v10, :cond_8

    add-int/lit8 v13, v12, -0x1

    iget v14, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int/2addr v13, v14

    array-length v14, v3

    add-int/lit8 v15, v12, -0x1

    iget v6, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int/2addr v15, v6

    sub-int/2addr v14, v15

    const/4 v6, 0x0

    invoke-static {v11, v6, v3, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    :cond_8
    add-int/lit8 v13, v12, -0x1

    iget v14, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int/2addr v13, v14

    array-length v14, v11

    invoke-static {v11, v6, v3, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_9
    return-object v3
.end method


# virtual methods
.method public blacklist generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .locals 3

    div-int/lit8 p1, p1, 0x8

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public blacklist generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .locals 3

    div-int/lit8 p1, p1, 0x8

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public blacklist generateDerivedParameters(II)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .locals 5

    div-int/lit8 p1, p1, 0x8

    div-int/lit8 p2, p2, 0x8

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, p2}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v1

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v2, v3, v1, v4, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v2
.end method
