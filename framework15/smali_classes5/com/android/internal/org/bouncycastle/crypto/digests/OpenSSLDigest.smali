.class public Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;
.super Ljava/lang/Object;
.source "OpenSSLDigest.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA512;,
        Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA384;,
        Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA256;,
        Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA224;,
        Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;,
        Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$MD5;
    }
.end annotation


# instance fields
.field private final blacklist byteSize:I

.field private final blacklist delegate:Ljava/security/MessageDigest;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "AndroidOpenSSL"

    invoke-static {p1, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->byteSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    array-length v1, p1

    sub-int/2addr v1, p2

    invoke-virtual {v0, p1, p2, v1}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getByteLength()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->byteSize:I

    return v0
.end method

.method public blacklist getDigestSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    return v0
.end method

.method public blacklist reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    return-void
.end method

.method public blacklist update(B)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public blacklist update([BII)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
