.class public Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest;
.super Ljava/lang/Object;
.source "NullDigest.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/Digest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;
    }
.end annotation


# instance fields
.field private blacklist bOut:Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;-><init>(Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream-IA;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest;->bOut:Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest;->bOut:Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest;->bOut:Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;->copy([BI)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest;->reset()V

    return v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "NULL"

    return-object v0
.end method

.method public blacklist getDigestSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest;->bOut:Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public blacklist reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest;->bOut:Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;->reset()V

    return-void
.end method

.method public blacklist update(B)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest;->bOut:Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public blacklist update([BII)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest;->bOut:Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;->write([BII)V

    return-void
.end method
