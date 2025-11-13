.class public Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;
.source "ECFieldElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# static fields
.field public static final blacklist GNB:I = 0x1

.field public static final blacklist PPB:I = 0x3

.field public static final blacklist TPB:I = 0x2


# instance fields
.field private blacklist ks:[I

.field private blacklist m:I

.field private blacklist representation:I

.field blacklist x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;


# direct methods
.method public constructor blacklist <init>(IIIILjava/math/BigInteger;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;-><init>()V

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p5}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p1, :cond_3

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    filled-new-array {p2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    goto :goto_0

    :cond_0
    if-ge p3, p4, :cond_2

    if-lez p3, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    filled-new-array {p2, p3, p4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    :goto_0
    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v0, p5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "k2 must be larger than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "k2 must be smaller than k3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x value invalid in F2m field element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;-><init>()V

    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 5

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I)V

    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {v2, v3, v4, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v2
.end method

.method public blacklist addOne()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addOne()Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist bitLength()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v0

    return v0
.end method

.method public blacklist divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public blacklist getFieldName()Ljava/lang/String;
    .locals 1

    const-string v0, "F2m"

    return-object v0
.end method

.method public blacklist getFieldSize()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public blacklist getK1()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public blacklist getK2()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getK3()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getM()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public blacklist getRepresentation()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 6

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->modInverse(I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist isOne()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->isOne()Z

    move-result v0

    return v0
.end method

.method public blacklist isZero()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->isZero()Z

    move-result v0

    return v0
.end method

.method public blacklist multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 7

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-object v4, p1

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v4, v4, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    iget v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->modMultiply(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist multiplyMinusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->multiplyPlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist multiplyPlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 9

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-object v2, p2

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-object v3, p3

    check-cast v3, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v3, v3, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v5

    if-eq v4, v0, :cond_0

    if-ne v4, v1, :cond_1

    :cond_0
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I)V

    iget v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduce(I[I)V

    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {v6, v7, v8, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v6
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 0

    return-object p0
.end method

.method public blacklist sqrt()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->isOne()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->squarePow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method public blacklist square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 6

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->modSquare(I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist squareMinusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->squarePlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist squarePlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 8

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-object v2, p2

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->square(I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v4

    if-ne v3, v0, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I)V

    iget v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduce(I[I)V

    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {v5, v6, v7, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v5
.end method

.method public blacklist squarePow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 6

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->modSquareN(II[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    :goto_0
    return-object v0
.end method

.method public blacklist subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist testBitZero()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->testBitZero()Z

    move-result v0

    return v0
.end method

.method public blacklist toBigInteger()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
