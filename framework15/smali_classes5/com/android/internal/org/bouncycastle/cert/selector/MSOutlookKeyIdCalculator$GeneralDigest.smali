.class abstract Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;
.super Ljava/lang/Object;
.source "MSOutlookKeyIdCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "GeneralDigest"
.end annotation


# static fields
.field private static final blacklist BYTE_LENGTH:I = 0x40


# instance fields
.field private blacklist byteCount:J

.field private blacklist xBuf:[B

.field private blacklist xBufOff:I


# direct methods
.method protected constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->copyIn(Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;)V

    return-void
.end method


# virtual methods
.method protected blacklist copyIn(Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;)V
    .locals 4

    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    iget-wide v0, p1, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    return-void
.end method

.method public blacklist finish()V
    .locals 3

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->update(B)V

    :goto_0
    iget v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->update(B)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->processLength(J)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->processBlock()V

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

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist update(B)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    aput-byte p1, v0, v1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->processWord([BI)V

    iput v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    return-void
.end method

.method public blacklist update([BII)V
    .locals 4

    nop

    :goto_0
    iget v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBufOff:I

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v0, v0

    if-le p3, v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->processWord([BI)V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v0, v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->xBuf:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->byteCount:J

    goto :goto_1

    :cond_1
    :goto_2
    if-lez p3, :cond_2

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method
