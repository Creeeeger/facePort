.class public abstract Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.source "ECFieldElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractF2m"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist halfTrace()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 6

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;->getFieldSize()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x1

    move-object v4, p0

    :cond_0
    :goto_0
    if-lez v2, :cond_1

    shl-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    add-int/lit8 v2, v2, -0x1

    ushr-int v3, v1, v2

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    goto :goto_0

    :cond_1
    return-object v4

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Half-trace only defined for odd m"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist hasFastTrace()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist trace()I
    .locals 6

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;->getFieldSize()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x1

    move-object v3, p0

    :cond_0
    :goto_0
    if-lez v1, :cond_1

    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    add-int/lit8 v1, v1, -0x1

    ushr-int v2, v0, v1

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    return v4

    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    return v4

    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Internal error in trace calculation"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
