.class public Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;
.super Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
.source "PKCS5S2ParametersGenerator.java"


# instance fields
.field private blacklist hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

.field private blacklist state:[B


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    return-void
.end method

.method private blacklist F([BI[B[BI)V
    .locals 6

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    array-length v2, p1

    invoke-interface {v1, p1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    array-length v2, p3

    invoke-interface {v1, p3, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    invoke-interface {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length v2, v2

    invoke-static {v1, v0, p4, p5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p2, :cond_2

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length v4, v4

    invoke-interface {v2, v3, v0, v4}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    invoke-interface {v2, v3, v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length v3, v3

    if-eq v2, v3, :cond_1

    add-int v3, p5, v2

    aget-byte v4, p4, v3

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    aget-byte v5, v5, v2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "iteration count must be at least 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist generateDerivedKey(I)[B
    .locals 14

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    add-int v1, p1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    const/4 v2, 0x4

    new-array v2, v2, [B

    mul-int v3, v1, v0

    new-array v9, v3, [B

    const/4 v3, 0x0

    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->password:[B

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    move-object v10, v4

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v4, v10}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    const/4 v4, 0x1

    move v11, v3

    move v12, v4

    :goto_0
    if-gt v12, v1, :cond_1

    const/4 v3, 0x3

    move v13, v3

    :goto_1
    aget-byte v3, v2, v13

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v13

    if-nez v3, :cond_0

    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->salt:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->iterationCount:I

    move-object v3, p0

    move-object v6, v2

    move-object v7, v9

    move v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->F([BI[B[BI)V

    add-int/2addr v11, v0

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    return-object v9
.end method


# virtual methods
.method public blacklist generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public blacklist generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .locals 3

    div-int/lit8 p1, p1, 0x8

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public blacklist generateDerivedParameters(II)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .locals 4

    div-int/lit8 p1, p1, 0x8

    div-int/lit8 p2, p2, 0x8

    add-int v0, p1, p2

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v1
.end method
