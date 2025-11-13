.class public Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;
.super Lcom/android/internal/org/bouncycastle/math/ec/AbstractECMultiplier;
.source "GLVMultiplier.java"


# instance fields
.field protected final blacklist curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

.field protected final blacklist glvEndomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need curve with known group order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected blacklist multiplyPositive(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 6

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;->decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;->hasEfficientPointMap()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-static {v4, p1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-static {v4, p1}, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoUtil;->mapPoint(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-static {p1, v2, v4, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
