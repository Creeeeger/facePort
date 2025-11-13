.class public Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;
.super Ljava/lang/Object;
.source "Tables8kGCMMultiplier.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private blacklist H:[B

.field private blacklist T:[[[J


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist init([B)V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    const/16 v1, 0x10

    const/16 v2, 0x20

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v4, 0x2

    aput v4, v0, v4

    aput v1, v0, v3

    const/4 v4, 0x0

    aput v2, v0, v4

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[J

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_4

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    aget-object v4, v4, v0

    if-nez v0, :cond_2

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    aget-object v6, v4, v3

    invoke-static {v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B[J)V

    aget-object v5, v4, v3

    aget-object v6, v4, v3

    invoke-static {v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP3([J[J)V

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    add-int/lit8 v6, v0, -0x1

    aget-object v5, v5, v6

    aget-object v5, v5, v3

    aget-object v6, v4, v3

    invoke-static {v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP4([J[J)V

    :goto_2
    const/4 v5, 0x2

    :goto_3
    if-ge v5, v1, :cond_3

    shr-int/lit8 v6, v5, 0x1

    aget-object v6, v4, v6

    aget-object v7, v4, v5

    invoke-static {v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->divideP([J[J)V

    aget-object v6, v4, v5

    aget-object v7, v4, v3

    add-int/lit8 v8, v5, 0x1

    aget-object v8, v4, v8

    invoke-static {v6, v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([J[J[J)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public blacklist multiplyH([B)V
    .locals 13

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/16 v4, 0xf

    :goto_0
    const/4 v5, 0x0

    if-ltz v4, :cond_0

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    add-int v7, v4, v4

    const/4 v8, 0x1

    add-int/2addr v7, v8

    aget-object v6, v6, v7

    aget-byte v7, p1, v4

    and-int/lit8 v7, v7, 0xf

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    add-int v9, v4, v4

    aget-object v7, v7, v9

    aget-byte v9, p1, v4

    and-int/lit16 v9, v9, 0xf0

    ushr-int/lit8 v9, v9, 0x4

    aget-object v7, v7, v9

    aget-wide v9, v6, v5

    aget-wide v11, v7, v5

    xor-long/2addr v9, v11

    xor-long/2addr v0, v9

    aget-wide v9, v6, v8

    aget-wide v11, v7, v8

    xor-long v8, v9, v11

    xor-long/2addr v2, v8

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1, p1, v5}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    const/16 v4, 0x8

    invoke-static {v2, v3, p1, v4}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    return-void
.end method
