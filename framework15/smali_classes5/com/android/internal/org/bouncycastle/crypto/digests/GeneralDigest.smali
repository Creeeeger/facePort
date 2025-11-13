.class public abstract Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;
.super Ljava/lang/Object;
.source "GeneralDigest.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;
.implements Lcom/android/internal/org/bouncycastle/util/Memoable;


# static fields
.field private static final blacklist BYTE_LENGTH:I = 0x40


# instance fields
.field private blacklist byteCount:J

.field private final blacklist xBuf:[B

.field private blacklist xBufOff:I


# direct methods
.method protected constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;)V

    return-void
.end method

.method protected constructor blacklist <init>([B)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    return-void
.end method


# virtual methods
.method protected blacklist copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;)V
    .locals 4

    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    iget-wide v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    return-void
.end method

.method public blacklist finish()V
    .locals 3

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->update(B)V

    :goto_0
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->update(B)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->processLength(J)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->processBlock()V

    return-void
.end method

.method public blacklist getByteLength()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method protected blacklist populateState([B)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    const/16 v2, 0x8

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    return-void
.end method

.method protected abstract blacklist processBlock()V
.end method

.method protected abstract blacklist processLength(J)V
.end method

.method protected abstract blacklist processWord([BI)V
.end method

.method public blacklist reset()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist update(B)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    aput-byte p1, v0, v1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    return-void
.end method

.method public blacklist update([BII)V
    .locals 6

    const/4 v0, 0x0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    if-eqz v2, :cond_1

    :goto_0
    if-ge v1, p3, :cond_1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v1, p2

    aget-byte v1, p1, v1

    aput-byte v1, v2, v3

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    move v1, v4

    goto :goto_1

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    :goto_1
    sub-int v0, p3, v1

    and-int/lit8 v0, v0, -0x4

    add-int/2addr v0, v1

    :goto_2
    if-ge v1, v0, :cond_2

    add-int v2, p2, v1

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v1, p3, :cond_3

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v1, p2

    aget-byte v1, p1, v1

    aput-byte v1, v2, v3

    move v1, v4

    goto :goto_3

    :cond_3
    iget-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    return-void
.end method
