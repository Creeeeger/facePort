.class public abstract Lcom/android/internal/org/bouncycastle/math/raw/Bits;
.super Ljava/lang/Object;
.source "Bits.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist bitPermuteStep(III)I
    .locals 2

    ushr-int v0, p0, p2

    xor-int/2addr v0, p0

    and-int/2addr v0, p1

    shl-int v1, v0, p2

    xor-int/2addr v1, v0

    xor-int/2addr v1, p0

    return v1
.end method

.method public static blacklist bitPermuteStep(JJI)J
    .locals 4

    ushr-long v0, p0, p4

    xor-long/2addr v0, p0

    and-long/2addr v0, p2

    shl-long v2, v0, p4

    xor-long/2addr v2, v0

    xor-long/2addr v2, p0

    return-wide v2
.end method

.method public static blacklist bitPermuteStepSimple(III)I
    .locals 2

    and-int v0, p0, p1

    shl-int/2addr v0, p2

    ushr-int v1, p0, p2

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    return v0
.end method

.method public static blacklist bitPermuteStepSimple(JJI)J
    .locals 4

    and-long v0, p0, p2

    shl-long/2addr v0, p4

    ushr-long v2, p0, p4

    and-long/2addr v2, p2

    or-long/2addr v0, v2

    return-wide v0
.end method
