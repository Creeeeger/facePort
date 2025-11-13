.class public Lcom/android/internal/org/bouncycastle/crypto/params/DESedeParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;
.source "DESedeParameters.java"


# static fields
.field public static final blacklist DES_EDE_KEY_LENGTH:I = 0x18


# direct methods
.method public constructor blacklist <init>([B)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;-><init>([B)V

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attempt to create weak DESede key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist isReal2Key([BI)Z
    .locals 4

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    add-int/lit8 v2, p1, 0x8

    if-eq v1, v2, :cond_1

    aget-byte v2, p0, v1

    add-int/lit8 v3, v1, 0x8

    aget-byte v3, p0, v3

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static blacklist isReal3Key([BI)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    :goto_0
    add-int/lit8 v4, p1, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_3

    aget-byte v4, p0, v3

    add-int/lit8 v7, v3, 0x8

    aget-byte v7, p0, v7

    if-eq v4, v7, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    or-int/2addr v0, v4

    aget-byte v4, p0, v3

    add-int/lit8 v7, v3, 0x10

    aget-byte v7, p0, v7

    if-eq v4, v7, :cond_1

    move v4, v6

    goto :goto_2

    :cond_1
    move v4, v5

    :goto_2
    or-int/2addr v1, v4

    add-int/lit8 v4, v3, 0x8

    aget-byte v4, p0, v4

    add-int/lit8 v7, v3, 0x10

    aget-byte v7, p0, v7

    if-eq v4, v7, :cond_2

    move v5, v6

    :cond_2
    or-int/2addr v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    move v5, v6

    :cond_4
    return v5
.end method

.method public static blacklist isRealEDEKey([BI)Z
    .locals 2

    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DESedeParameters;->isReal2Key([BI)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DESedeParameters;->isReal3Key([BI)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static blacklist isWeakKey([BI)Z
    .locals 1

    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DESedeParameters;->isWeakKey([BII)Z

    move-result v0

    return v0
.end method

.method public static blacklist isWeakKey([BII)Z
    .locals 2

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;->isWeakKey([BI)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
