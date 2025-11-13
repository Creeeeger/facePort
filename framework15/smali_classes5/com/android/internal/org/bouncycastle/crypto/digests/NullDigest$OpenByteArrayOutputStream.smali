.class Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "NullDigest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenByteArrayOutputStream"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist copy([BI)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;->buf:[B

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;->size()I

    move-result v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public whitelist test-api reset()V
    .locals 1

    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest$OpenByteArrayOutputStream;->buf:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clear([B)V

    return-void
.end method
