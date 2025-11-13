.class public abstract Lcom/android/internal/org/bouncycastle/math/raw/Nat;
.super Ljava/lang/Object;
.source "Nat.java"


# static fields
.field private static final blacklist M:J = 0xffffffffL


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add(I[I[I[I)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p3, v2

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist add33At(II[II)I
    .locals 7

    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    ushr-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p3, 0x2

    invoke-static {p0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist add33At(II[III)I
    .locals 7

    add-int v0, p3, p4

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    add-int v4, p3, p4

    long-to-int v5, v0

    aput v5, p2, v4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int v5, p3, p4

    add-int/lit8 v5, v5, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    add-int v2, p3, p4

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    ushr-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist add33To(II[I)I
    .locals 9

    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v5, 0x20

    ushr-long/2addr v1, v5

    const/4 v6, 0x1

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    add-long/2addr v1, v3

    long-to-int v3, v1

    aput v3, p2, v6

    ushr-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static blacklist add33To(II[II)I
    .locals 7

    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    ushr-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist addBothTo(I[II[II[II)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    add-int v7, p6, v2

    aget v7, p5, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int v3, p6, v2

    long-to-int v4, v0

    aput v4, p5, v3

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addBothTo(I[I[I[I)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    aget v7, p3, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p3, v2

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addDWordAt(IJ[II)I
    .locals 7

    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    add-long/2addr v0, v4

    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p4, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    ushr-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist addDWordAt(IJ[III)I
    .locals 7

    add-int v0, p4, p5

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    add-long/2addr v0, v4

    add-int v4, p4, p5

    long-to-int v5, v0

    aput v5, p3, v4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int v5, p4, p5

    add-int/lit8 v5, v5, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    add-int v2, p4, p5

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    ushr-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p5, 0x2

    invoke-static {p0, p3, p4, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist addDWordTo(IJ[I)I
    .locals 9

    const/4 v0, 0x0

    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p3, v0

    const/16 v5, 0x20

    ushr-long/2addr v1, v5

    const/4 v6, 0x1

    aget v7, p3, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    ushr-long v7, p1, v5

    add-long/2addr v3, v7

    add-long/2addr v1, v3

    long-to-int v3, v1

    aput v3, p3, v6

    ushr-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p3, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static blacklist addDWordTo(IJ[II)I
    .locals 7

    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    add-long/2addr v0, v4

    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p4, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    ushr-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    invoke-static {p0, p3, p4, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist addTo(I[II[II)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int v3, p4, v2

    long-to-int v4, v0

    aput v4, p3, v3

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addTo(I[II[III)I
    .locals 9

    int-to-long v0, p5

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p0, :cond_0

    add-int v5, p2, v4

    aget v5, p1, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int v7, p4, v4

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int v5, p4, v4

    long-to-int v6, v0

    aput v6, p3, v5

    const/16 v5, 0x20

    ushr-long/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addTo(I[I[I)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p2, v2

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addToEachOther(I[II[II)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int v3, p2, v2

    long-to-int v4, v0

    aput v4, p1, v3

    add-int v3, p4, v2

    long-to-int v4, v0

    aput v4, p3, v3

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addWordAt(II[II)I
    .locals 6

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p2, p3

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist addWordAt(II[III)I
    .locals 6

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int v4, p3, p4

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int v2, p3, p4

    long-to-int v3, v0

    aput v3, p2, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p4, 0x1

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist addWordTo(II[I)I
    .locals 7

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v4, 0x0

    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v2, v5

    add-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p2, v4

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v4

    :goto_0
    return v4
.end method

.method public static blacklist addWordTo(II[II)I
    .locals 6

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p2, p3

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist cadd(II[I[I[I)I
    .locals 11

    and-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p0, :cond_0

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    aget v9, p3, v6

    int-to-long v9, v9

    and-long/2addr v9, v0

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    aput v7, p4, v6

    const/16 v7, 0x20

    ushr-long/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    long-to-int v2, v4

    return v2
.end method

.method public static blacklist cmov(II[II[II)V
    .locals 4

    and-int/lit8 v0, p1, 0x1

    neg-int p1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p5, v0

    aget v1, p4, v1

    add-int v2, p3, v0

    aget v2, p2, v2

    xor-int/2addr v2, v1

    and-int v3, v2, p1

    xor-int/2addr v1, v3

    add-int v3, p5, v0

    aput v1, p4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static blacklist compare(I[II[II)I
    .locals 4

    add-int/lit8 v0, p0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    add-int v1, p2, v0

    aget v1, p1, v1

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    add-int v3, p4, v0

    aget v3, p3, v3

    xor-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    const/4 v3, -0x1

    return v3

    :cond_0
    if-le v1, v2, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist compare(I[I[I)I
    .locals 4

    add-int/lit8 v0, p0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    aget v1, p1, v0

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    aget v3, p2, v0

    xor-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    const/4 v3, -0x1

    return v3

    :cond_0
    if-le v1, v2, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist copy(I[II[II)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static blacklist copy(I[I[I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static blacklist copy(I[I)[I
    .locals 2

    new-array v0, p0, [I

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist copy64(I[JI[JI)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static blacklist copy64(I[J[J)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static blacklist copy64(I[J)[J
    .locals 2

    new-array v0, p0, [J

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist create(I)[I
    .locals 1

    new-array v0, p0, [I

    return-object v0
.end method

.method public static blacklist create64(I)[J
    .locals 1

    new-array v0, p0, [J

    return-object v0
.end method

.method public static blacklist csub(II[II[II[II)I
    .locals 12

    and-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    move v7, p0

    if-ge v6, v7, :cond_0

    add-int v8, p3, v6

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-int v10, p5, v6

    aget v10, p4, v10

    int-to-long v10, v10

    and-long/2addr v10, v0

    sub-long/2addr v8, v10

    add-long/2addr v4, v8

    add-int v8, p7, v6

    long-to-int v9, v4

    aput v9, p6, v8

    const/16 v8, 0x20

    shr-long/2addr v4, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    long-to-int v2, v4

    return v2
.end method

.method public static blacklist csub(II[I[I[I)I
    .locals 11

    and-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p0, :cond_0

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    aget v9, p3, v6

    int-to-long v9, v9

    and-long/2addr v9, v0

    sub-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    aput v7, p4, v6

    const/16 v7, 0x20

    shr-long/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    long-to-int v2, v4

    return v2
.end method

.method public static blacklist dec(I[I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-ge v0, p0, :cond_1

    aget v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, p1, v0

    if-eq v2, v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static blacklist dec(I[I[I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-ge v0, p0, :cond_2

    aget v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    if-eq v2, v1, :cond_1

    :goto_1
    if-ge v0, p0, :cond_0

    aget v1, p1, v0

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    return v1
.end method

.method public static blacklist decAt(I[II)I
    .locals 3

    move v0, p2

    :goto_0
    const/4 v1, -0x1

    if-ge v0, p0, :cond_1

    aget v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, p1, v0

    if-eq v2, v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static blacklist decAt(I[III)I
    .locals 4

    move v0, p3

    :goto_0
    const/4 v1, -0x1

    if-ge v0, p0, :cond_1

    add-int v2, p2, v0

    aget v3, p1, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, p1, v2

    if-eq v3, v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static blacklist diff(I[II[II[II)Z
    .locals 8

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[II[II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static/range {p0 .. p6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[II[II[II)I

    goto :goto_0

    :cond_0
    move v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p1

    move v5, p2

    move-object v6, p5

    move v7, p6

    invoke-static/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[II[II[II)I

    :goto_0
    return v0
.end method

.method public static blacklist eq(I[I[I)Z
    .locals 3

    add-int/lit8 v0, p0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget v1, p1, v0

    aget v2, p2, v0

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist equalTo(I[II)I
    .locals 3

    const/4 v0, 0x0

    aget v0, p1, v0

    xor-int/2addr v0, p2

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p0, :cond_0

    aget v2, p1, v1

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist equalTo(I[III)I
    .locals 3

    aget v0, p1, p2

    xor-int/2addr v0, p3

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p0, :cond_0

    add-int v2, p2, v1

    aget v2, p1, v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist equalTo(I[II[II)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    add-int v2, p2, v1

    aget v2, p1, v2

    add-int v3, p4, v1

    aget v3, p3, v3

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist equalTo(I[I[I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget v2, p1, v1

    aget v3, p2, v1

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist equalToZero(I[I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget v2, p1, v1

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist equalToZero(I[II)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    add-int v2, p2, v1

    aget v2, p1, v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist fromBigInteger(ILjava/math/BigInteger;)[I
    .locals 4

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p0, :cond_1

    add-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v0, v0, 0x5

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v1, v2

    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist fromBigInteger64(ILjava/math/BigInteger;)[J
    .locals 5

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p0, :cond_1

    add-int/lit8 v0, p0, 0x3f

    shr-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist getBit([II)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    shr-int/lit8 v1, p1, 0x5

    if-ltz v1, :cond_2

    array-length v2, p0

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    and-int/lit8 v0, p1, 0x1f

    aget v2, p0, v1

    ushr-int/2addr v2, v0

    and-int/lit8 v2, v2, 0x1

    return v2

    :cond_2
    :goto_0
    return v0
.end method

.method public static blacklist gte(I[II[II)Z
    .locals 5

    add-int/lit8 v0, p0, -0x1

    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    add-int v2, p2, v0

    aget v2, p1, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    add-int v4, p4, v0

    aget v4, p3, v4

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    if-le v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static blacklist gte(I[I[I)Z
    .locals 5

    add-int/lit8 v0, p0, -0x1

    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    aget v2, p1, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    aget v4, p2, v0

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    if-le v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static blacklist inc(I[I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-ge v0, p0, :cond_1

    aget v2, p1, v0

    add-int/2addr v2, v1

    aput v2, p1, v0

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static blacklist inc(I[I[I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-ge v0, p0, :cond_2

    aget v2, p1, v0

    add-int/2addr v2, v1

    aput v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    if-eqz v2, :cond_1

    :goto_1
    if-ge v0, p0, :cond_0

    aget v1, p1, v0

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    return v1
.end method

.method public static blacklist incAt(I[II)I
    .locals 3

    move v0, p2

    :goto_0
    const/4 v1, 0x1

    if-ge v0, p0, :cond_1

    aget v2, p1, v0

    add-int/2addr v2, v1

    aput v2, p1, v0

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static blacklist incAt(I[III)I
    .locals 4

    move v0, p3

    :goto_0
    const/4 v1, 0x1

    if-ge v0, p0, :cond_1

    add-int v2, p2, v0

    aget v3, p1, v2

    add-int/2addr v3, v1

    aput v3, p1, v2

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static blacklist isOne(I[I)Z
    .locals 4

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-ge v1, p0, :cond_2

    aget v3, p1, v1

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static blacklist isZero(I[I)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget v1, p1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist lessThan(I[II[II)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist lessThan(I[I[I)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist mul(I[II[II[II)V
    .locals 9

    add-int v0, p6, p0

    aget v2, p1, p2

    move v1, p0

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWord(II[II[II)I

    move-result v1

    aput v1, p5, v0

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p6, v0

    add-int/2addr v1, p0

    add-int v2, p2, v0

    aget v4, p1, v2

    add-int v8, p6, v0

    move v3, p0

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-static/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v2

    aput v2, p5, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static blacklist mul(I[I[I[I)V
    .locals 8

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {p0, v0, p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWord(II[I[I)I

    move-result v0

    aput v0, p3, p0

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v7, v0, p0

    aget v2, p1, v0

    const/4 v4, 0x0

    move v1, p0

    move-object v3, p2

    move-object v5, p3

    move v6, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v1

    aput v1, p3, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static blacklist mul([III[III[II)V
    .locals 9

    add-int v6, p7, p5

    aget v1, p0, p1

    move v0, p5

    move-object v2, p3

    move v3, p4

    move-object v4, p6

    move/from16 v5, p7

    invoke-static/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWord(II[II[II)I

    move-result v0

    aput v0, p6, v6

    const/4 v0, 0x1

    move v6, v0

    :goto_0
    move v7, p2

    if-ge v6, v7, :cond_0

    add-int v0, p7, v6

    add-int v8, v0, p5

    add-int v0, p1, v6

    aget v1, p0, v0

    add-int v5, p7, v6

    move v0, p5

    move-object v2, p3

    move v3, p4

    move-object v4, p6

    invoke-static/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v0

    aput v0, p6, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static blacklist mul31BothAdd(II[II[I[II)I
    .locals 15

    const-wide/16 v0, 0x0

    move/from16 v2, p1

    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    move/from16 v7, p3

    int-to-long v8, v7

    and-long/2addr v8, v5

    const/4 v10, 0x0

    :cond_0
    aget v11, p2, v10

    int-to-long v11, v11

    and-long/2addr v11, v5

    mul-long/2addr v11, v3

    aget v13, p4, v10

    int-to-long v13, v13

    and-long/2addr v13, v5

    mul-long/2addr v13, v8

    add-long/2addr v11, v13

    add-int v13, p6, v10

    aget v13, p5, v13

    int-to-long v13, v13

    and-long/2addr v13, v5

    add-long/2addr v11, v13

    add-long/2addr v0, v11

    add-int v11, p6, v10

    long-to-int v12, v0

    aput v12, p5, v11

    const/16 v11, 0x20

    ushr-long/2addr v0, v11

    add-int/lit8 v10, v10, 0x1

    move v11, p0

    if-lt v10, v11, :cond_0

    long-to-int v5, v0

    return v5
.end method

.method public static blacklist mulAddTo(I[II[II[II)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    add-int v3, p2, v2

    aget v4, p1, v3

    move v3, p0

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move v8, p6

    invoke-static/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int v3, p6, p0

    aget v3, p5, v3

    int-to-long v3, v3

    and-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int v3, p6, p0

    long-to-int v4, v0

    aput v4, p5, v3

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 p6, p6, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist mulAddTo(I[I[I[I)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v8, v2

    :goto_0
    if-ge v8, p0, :cond_0

    aget v3, p1, v8

    const/4 v5, 0x0

    move v2, p0

    move-object v4, p2

    move-object v6, p3

    move v7, v8

    invoke-static/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int v2, v8, p0

    aget v2, p3, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int v2, v8, p0

    long-to-int v3, v0

    aput v3, p3, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist mulWord(II[II[II)I
    .locals 9

    const-wide/16 v0, 0x0

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v6, 0x0

    :cond_0
    add-int v7, p3, v6

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-long/2addr v0, v7

    add-int v7, p5, v6

    long-to-int v8, v0

    aput v8, p4, v7

    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    add-int/lit8 v6, v6, 0x1

    if-lt v6, p0, :cond_0

    long-to-int v4, v0

    return v4
.end method

.method public static blacklist mulWord(II[I[I)I
    .locals 9

    const-wide/16 v0, 0x0

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v6, 0x0

    :cond_0
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-long/2addr v0, v7

    long-to-int v7, v0

    aput v7, p3, v6

    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    add-int/lit8 v6, v6, 0x1

    if-lt v6, p0, :cond_0

    long-to-int v4, v0

    return v4
.end method

.method public static blacklist mulWordAddTo(II[II[II)I
    .locals 12

    const-wide/16 v0, 0x0

    move v2, p1

    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    const/4 v7, 0x0

    :cond_0
    add-int v8, p3, v7

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v5

    mul-long/2addr v8, v3

    add-int v10, p5, v7

    aget v10, p4, v10

    int-to-long v10, v10

    and-long/2addr v10, v5

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    add-int v8, p5, v7

    long-to-int v9, v0

    aput v9, p4, v8

    const/16 v8, 0x20

    ushr-long/2addr v0, v8

    add-int/lit8 v7, v7, 0x1

    move v8, p0

    if-lt v7, v8, :cond_0

    long-to-int v5, v0

    return v5
.end method

.method public static blacklist mulWordDwordAddAt(IIJ[II)I
    .locals 13

    move-object/from16 v0, p4

    const-wide/16 v1, 0x0

    move v3, p1

    int-to-long v4, v3

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    and-long v8, p2, v6

    mul-long/2addr v8, v4

    add-int/lit8 v10, p5, 0x0

    aget v10, v0, v10

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v8, v10

    add-long/2addr v1, v8

    add-int/lit8 v8, p5, 0x0

    long-to-int v9, v1

    aput v9, v0, v8

    const/16 v8, 0x20

    ushr-long/2addr v1, v8

    ushr-long v9, p2, v8

    mul-long/2addr v9, v4

    add-int/lit8 v11, p5, 0x1

    aget v11, v0, v11

    int-to-long v11, v11

    and-long/2addr v11, v6

    add-long/2addr v9, v11

    add-long/2addr v1, v9

    add-int/lit8 v9, p5, 0x1

    long-to-int v10, v1

    aput v10, v0, v9

    ushr-long/2addr v1, v8

    add-int/lit8 v9, p5, 0x2

    aget v9, v0, v9

    int-to-long v9, v9

    and-long/2addr v6, v9

    add-long/2addr v1, v6

    add-int/lit8 v6, p5, 0x2

    long-to-int v7, v1

    aput v7, v0, v6

    ushr-long/2addr v1, v8

    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move v7, p0

    goto :goto_0

    :cond_0
    add-int/lit8 v6, p5, 0x3

    move v7, p0

    invoke-static {p0, v0, v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v6

    :goto_0
    return v6
.end method

.method public static blacklist shiftDownBit(I[II)I
    .locals 4

    move v0, p0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    aget v1, p1, v0

    ushr-int/lit8 v2, v1, 0x1

    shl-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p1, v0

    move p2, v1

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, p2, 0x1f

    return v1
.end method

.method public static blacklist shiftDownBit(I[III)I
    .locals 5

    move v0, p0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    add-int v1, p2, v0

    aget v1, p1, v1

    add-int v2, p2, v0

    ushr-int/lit8 v3, v1, 0x1

    shl-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p1, v2

    move p3, v1

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, p3, 0x1f

    return v1
.end method

.method public static blacklist shiftDownBit(I[III[II)I
    .locals 5

    move v0, p0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    add-int v1, p2, v0

    aget v1, p1, v1

    add-int v2, p5, v0

    ushr-int/lit8 v3, v1, 0x1

    shl-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p4, v2

    move p3, v1

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, p3, 0x1f

    return v1
.end method

.method public static blacklist shiftDownBit(I[II[I)I
    .locals 4

    move v0, p0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    aget v1, p1, v0

    ushr-int/lit8 v2, v1, 0x1

    shl-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p3, v0

    move p2, v1

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, p2, 0x1f

    return v1
.end method

.method public static blacklist shiftDownBits(I[III)I
    .locals 4

    move v0, p0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    aget v1, p1, v0

    ushr-int v2, v1, p2

    neg-int v3, p2

    shl-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p1, v0

    move p3, v1

    goto :goto_0

    :cond_0
    neg-int v1, p2

    shl-int v1, p3, v1

    return v1
.end method

.method public static blacklist shiftDownBits(I[IIII)I
    .locals 5

    move v0, p0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    add-int v1, p2, v0

    aget v1, p1, v1

    add-int v2, p2, v0

    ushr-int v3, v1, p3

    neg-int v4, p3

    shl-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p1, v2

    move p4, v1

    goto :goto_0

    :cond_0
    neg-int v1, p3

    shl-int v1, p4, v1

    return v1
.end method

.method public static blacklist shiftDownBits(I[IIII[II)I
    .locals 5

    move v0, p0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    add-int v1, p2, v0

    aget v1, p1, v1

    add-int v2, p6, v0

    ushr-int v3, v1, p3

    neg-int v4, p3

    shl-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p5, v2

    move p4, v1

    goto :goto_0

    :cond_0
    neg-int v1, p3

    shl-int v1, p4, v1

    return v1
.end method

.method public static blacklist shiftDownBits(I[III[I)I
    .locals 4

    move v0, p0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    aget v1, p1, v0

    ushr-int v2, v1, p2

    neg-int v3, p2

    shl-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p4, v0

    move p3, v1

    goto :goto_0

    :cond_0
    neg-int v1, p2

    shl-int v1, p3, v1

    return v1
.end method

.method public static blacklist shiftDownWord(I[II)I
    .locals 2

    move v0, p0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    aget v1, p1, v0

    aput p2, p1, v0

    move p2, v1

    goto :goto_0

    :cond_0
    return p2
.end method

.method public static blacklist shiftUpBit(I[II)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget v1, p1, v0

    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p1, v0

    move p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p2, 0x1f

    return v0
.end method

.method public static blacklist shiftUpBit(I[III)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p2, v0

    aget v1, p1, v1

    add-int v2, p2, v0

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p1, v2

    move p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p3, 0x1f

    return v0
.end method

.method public static blacklist shiftUpBit(I[III[II)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p2, v0

    aget v1, p1, v1

    add-int v2, p5, v0

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p4, v2

    move p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p3, 0x1f

    return v0
.end method

.method public static blacklist shiftUpBit(I[II[I)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget v1, p1, v0

    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p3, v0

    move p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p2, 0x1f

    return v0
.end method

.method public static blacklist shiftUpBit64(I[JIJ[JI)J
    .locals 9

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x3f

    if-ge v0, p0, :cond_0

    add-int v2, p2, v0

    aget-wide v2, p1, v2

    add-int v4, p6, v0

    const/4 v5, 0x1

    shl-long v5, v2, v5

    ushr-long v7, p3, v1

    or-long/2addr v5, v7

    aput-wide v5, p5, v4

    move-wide p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    ushr-long v0, p3, v1

    return-wide v0
.end method

.method public static blacklist shiftUpBits(I[III)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget v1, p1, v0

    shl-int v2, v1, p2

    neg-int v3, p2

    ushr-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p1, v0

    move p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    neg-int v0, p2

    ushr-int v0, p3, v0

    return v0
.end method

.method public static blacklist shiftUpBits(I[IIII)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p2, v0

    aget v1, p1, v1

    add-int v2, p2, v0

    shl-int v3, v1, p3

    neg-int v4, p3

    ushr-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p1, v2

    move p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    neg-int v0, p3

    ushr-int v0, p4, v0

    return v0
.end method

.method public static blacklist shiftUpBits(I[IIII[II)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p2, v0

    aget v1, p1, v1

    add-int v2, p6, v0

    shl-int v3, v1, p3

    neg-int v4, p3

    ushr-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p5, v2

    move p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    neg-int v0, p3

    ushr-int v0, p4, v0

    return v0
.end method

.method public static blacklist shiftUpBits(I[III[I)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget v1, p1, v0

    shl-int v2, v1, p2

    neg-int v3, p2

    ushr-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p4, v0

    move p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    neg-int v0, p2

    ushr-int v0, p3, v0

    return v0
.end method

.method public static blacklist shiftUpBits64(I[JIIJ)J
    .locals 8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p2, v0

    aget-wide v1, p1, v1

    add-int v3, p2, v0

    shl-long v4, v1, p3

    neg-int v6, p3

    ushr-long v6, p4, v6

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    move-wide p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    neg-int v0, p3

    ushr-long v0, p4, v0

    return-wide v0
.end method

.method public static blacklist shiftUpBits64(I[JIIJ[JI)J
    .locals 8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p2, v0

    aget-wide v1, p1, v1

    add-int v3, p7, v0

    shl-long v4, v1, p3

    neg-int v6, p3

    ushr-long v6, p4, v6

    or-long/2addr v4, v6

    aput-wide v4, p6, v3

    move-wide p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    neg-int v0, p3

    ushr-long v0, p4, v0

    return-wide v0
.end method

.method public static blacklist square(I[II[II)V
    .locals 18

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    shl-int/lit8 v5, v0, 0x1

    const/4 v6, 0x0

    move/from16 v7, p0

    move v8, v5

    :goto_0
    add-int/lit8 v7, v7, -0x1

    add-int v9, v2, v7

    aget v9, v1, v9

    int-to-long v9, v9

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    mul-long v13, v9, v9

    add-int/lit8 v8, v8, -0x1

    add-int v15, v4, v8

    shl-int/lit8 v16, v6, 0x1f

    const/16 v17, 0x21

    ushr-long v11, v13, v17

    long-to-int v11, v11

    or-int v11, v16, v11

    aput v11, v3, v15

    add-int/lit8 v8, v8, -0x1

    add-int v11, v4, v8

    const/4 v12, 0x1

    move-wide v15, v9

    move v10, v8

    ushr-long v8, v13, v12

    long-to-int v8, v8

    aput v8, v3, v11

    long-to-int v6, v13

    if-gtz v7, :cond_1

    const-wide/16 v8, 0x0

    add-int/lit8 v11, v4, 0x2

    const/4 v12, 0x1

    :goto_1
    if-ge v12, v0, :cond_0

    invoke-static {v1, v2, v12, v3, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->squareWordAddTo([III[II)I

    move-result v13

    int-to-long v13, v13

    const-wide v15, 0xffffffffL

    and-long/2addr v13, v15

    add-long/2addr v8, v13

    aget v13, v3, v11

    int-to-long v13, v13

    and-long/2addr v13, v15

    add-long/2addr v8, v13

    add-int/lit8 v13, v11, 0x1

    long-to-int v14, v8

    aput v14, v3, v11

    const/16 v11, 0x20

    ushr-long/2addr v8, v11

    aget v14, v3, v13

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    add-long/2addr v8, v14

    add-int/lit8 v14, v13, 0x1

    long-to-int v15, v8

    aput v15, v3, v13

    ushr-long/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    move v11, v14

    goto :goto_1

    :cond_0
    aget v12, v1, v2

    shl-int/lit8 v12, v12, 0x1f

    invoke-static {v5, v3, v4, v12}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[III)I

    return-void

    :cond_1
    move v8, v10

    goto :goto_0
.end method

.method public static blacklist square(I[I[I)V
    .locals 13

    shl-int/lit8 v0, p0, 0x1

    const/4 v1, 0x0

    move v2, p0

    move v3, v0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    aget v4, p1, v2

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    mul-long v8, v4, v4

    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v10, v1, 0x1f

    const/16 v11, 0x21

    ushr-long v11, v8, v11

    long-to-int v11, v11

    or-int/2addr v10, v11

    aput v10, p2, v3

    add-int/lit8 v3, v3, -0x1

    const/4 v10, 0x1

    ushr-long v10, v8, v10

    long-to-int v10, v10

    aput v10, p2, v3

    long-to-int v1, v8

    if-gtz v2, :cond_0

    const-wide/16 v4, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    :goto_0
    if-ge v9, p0, :cond_1

    invoke-static {p1, v9, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->squareWordAddTo([II[I)I

    move-result v10

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v4, v10

    aget v10, p2, v8

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v4, v10

    add-int/lit8 v10, v8, 0x1

    long-to-int v11, v4

    aput v11, p2, v8

    const/16 v8, 0x20

    ushr-long/2addr v4, v8

    aget v11, p2, v10

    int-to-long v11, v11

    and-long/2addr v11, v6

    add-long/2addr v4, v11

    add-int/lit8 v11, v10, 0x1

    long-to-int v12, v4

    aput v12, p2, v10

    ushr-long/2addr v4, v8

    add-int/lit8 v9, v9, 0x1

    move v8, v11

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    aget v6, p1, v6

    shl-int/lit8 v6, v6, 0x1f

    invoke-static {v0, p2, v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II)I

    return-void
.end method

.method public static blacklist squareWordAdd([III[II)I
    .locals 11

    const-wide/16 v0, 0x0

    add-int v2, p1, p2

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v6, 0x0

    :cond_0
    add-int v7, p1, v6

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int v9, p2, p4

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    add-int v7, p2, p4

    long-to-int v8, v0

    aput v8, p3, v7

    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    add-int/lit8 p4, p4, 0x1

    add-int/lit8 v6, v6, 0x1

    if-lt v6, p2, :cond_0

    long-to-int v4, v0

    return v4
.end method

.method public static blacklist squareWordAdd([II[I)I
    .locals 11

    const-wide/16 v0, 0x0

    aget v2, p0, p1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v6, 0x0

    :cond_0
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int v9, p1, v6

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    add-int v7, p1, v6

    long-to-int v8, v0

    aput v8, p2, v7

    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    add-int/lit8 v6, v6, 0x1

    if-lt v6, p1, :cond_0

    long-to-int v4, v0

    return v4
.end method

.method public static blacklist squareWordAddTo([III[II)I
    .locals 11

    const-wide/16 v0, 0x0

    add-int v2, p1, p2

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v6, 0x0

    :cond_0
    add-int v7, p1, v6

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int v9, p2, p4

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    add-int v7, p2, p4

    long-to-int v8, v0

    aput v8, p3, v7

    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    add-int/lit8 p4, p4, 0x1

    add-int/lit8 v6, v6, 0x1

    if-lt v6, p2, :cond_0

    long-to-int v4, v0

    return v4
.end method

.method public static blacklist squareWordAddTo([II[I)I
    .locals 11

    const-wide/16 v0, 0x0

    aget v2, p0, p1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v6, 0x0

    :cond_0
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int v9, p1, v6

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    add-int v7, p1, v6

    long-to-int v8, v0

    aput v8, p2, v7

    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    add-int/lit8 v6, v6, 0x1

    if-lt v6, p1, :cond_0

    long-to-int v4, v0

    return v4
.end method

.method public static blacklist sub(I[II[II[II)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int v3, p6, v2

    long-to-int v4, v0

    aput v4, p5, v3

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist sub(I[I[I[I)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p3, v2

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist sub33At(II[II)I
    .locals 7

    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    shr-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p3, 0x2

    invoke-static {p0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist sub33At(II[III)I
    .locals 7

    add-int v0, p3, p4

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    add-int v4, p3, p4

    long-to-int v5, v0

    aput v5, p2, v4

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int v5, p3, p4

    add-int/lit8 v5, v5, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    add-int v2, p3, p4

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    shr-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist sub33From(II[I)I
    .locals 9

    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v5, 0x20

    shr-long/2addr v1, v5

    const/4 v6, 0x1

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    const-wide/16 v7, 0x1

    sub-long/2addr v3, v7

    add-long/2addr v1, v3

    long-to-int v3, v1

    aput v3, p2, v6

    shr-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static blacklist sub33From(II[II)I
    .locals 7

    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    shr-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist subBothFrom(I[II[II[II)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    add-int v3, p6, v2

    aget v3, p5, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p2, v2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int v3, p6, v2

    long-to-int v4, v0

    aput v4, p5, v3

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subBothFrom(I[I[I[I)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    aget v3, p3, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p3, v2

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subDWordAt(IJ[II)I
    .locals 7

    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    sub-long/2addr v0, v4

    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int/lit8 v5, p4, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    shr-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist subDWordAt(IJ[III)I
    .locals 7

    add-int v0, p4, p5

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    sub-long/2addr v0, v4

    add-int v4, p4, p5

    long-to-int v5, v0

    aput v5, p3, v4

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int v5, p4, p5

    add-int/lit8 v5, v5, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    add-int v2, p4, p5

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    shr-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p5, 0x2

    invoke-static {p0, p3, p4, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist subDWordFrom(IJ[I)I
    .locals 9

    const/4 v0, 0x0

    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p3, v0

    const/16 v5, 0x20

    shr-long/2addr v1, v5

    const/4 v6, 0x1

    aget v7, p3, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    ushr-long v7, p1, v5

    sub-long/2addr v3, v7

    add-long/2addr v1, v3

    long-to-int v3, v1

    aput v3, p3, v6

    shr-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, p3, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static blacklist subDWordFrom(IJ[II)I
    .locals 7

    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    sub-long/2addr v0, v4

    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int/lit8 v5, p4, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    shr-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    invoke-static {p0, p3, p4, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist subFrom(I[II[II)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    add-int v3, p4, v2

    aget v3, p3, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p2, v2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int v3, p4, v2

    long-to-int v4, v0

    aput v4, p3, v3

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subFrom(I[I[I)I
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    aget v3, p2, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    aput v3, p2, v2

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subWordAt(II[II)I
    .locals 6

    aget v0, p2, p3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p2, p3

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist subWordAt(II[III)I
    .locals 6

    add-int v0, p3, p4

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-int v2, p3, p4

    long-to-int v3, v0

    aput v3, p2, v2

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p4, 0x1

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist subWordFrom(II[I)I
    .locals 7

    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v3, v5

    sub-long/2addr v1, v3

    long-to-int v3, v1

    aput v3, p2, v0

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static blacklist subWordFrom(II[II)I
    .locals 6

    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static blacklist toBigInteger(I[I)Ljava/math/BigInteger;
    .locals 4

    shl-int/lit8 v0, p0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    aget v2, p1, v1

    if-eqz v2, :cond_0

    add-int/lit8 v3, p0, -0x1

    sub-int/2addr v3, v1

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static blacklist zero(I[I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    const/4 v1, 0x0

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static blacklist zero(I[II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    add-int v1, p2, v0

    const/4 v2, 0x0

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static blacklist zero64(I[J)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    const-wide/16 v1, 0x0

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
