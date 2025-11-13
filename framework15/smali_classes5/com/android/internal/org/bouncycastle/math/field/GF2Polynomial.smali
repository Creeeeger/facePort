.class Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;
.super Ljava/lang/Object;
.source "GF2Polynomial.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/field/Polynomial;


# instance fields
.field protected final blacklist exponents:[I


# direct methods
.method constructor blacklist <init>([I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result v1

    return v1
.end method

.method public blacklist getDegree()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public blacklist getExponentsPresent()[I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method
