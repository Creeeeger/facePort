.class public Lcom/android/internal/org/bouncycastle/crypto/io/DigestOutputStream;
.super Ljava/io/OutputStream;
.source "DigestOutputStream.java"


# instance fields
.field protected blacklist digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/io/DigestOutputStream;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public blacklist getDigest()[B
    .locals 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/io/DigestOutputStream;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/io/DigestOutputStream;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method public whitelist test-api write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/io/DigestOutputStream;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public whitelist test-api write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/io/DigestOutputStream;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method
