.class public Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;
.super Ljava/lang/Object;
.source "DSAValidationParameters.java"


# instance fields
.field private blacklist counter:I

.field private blacklist seed:[B

.field private blacklist usageIndex:I


# direct methods
.method public constructor blacklist <init>([BI)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BII)V

    return-void
.end method

.method public constructor blacklist <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    iput p3, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->usageIndex:I

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    iget v2, v0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    return v1
.end method

.method public blacklist getCounter()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    return v0
.end method

.method public blacklist getSeed()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUsageIndex()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->usageIndex:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
