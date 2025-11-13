.class public Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;
.super Ljava/lang/Object;
.source "EndoPreCompInfo.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field protected blacklist endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

.field protected blacklist mappedPoint:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getEndomorphism()Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    return-object v0
.end method

.method public blacklist getMappedPoint()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->mappedPoint:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public blacklist setEndomorphism(Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->endomorphism:Lcom/android/internal/org/bouncycastle/math/ec/endo/ECEndomorphism;

    return-void
.end method

.method public blacklist setMappedPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->mappedPoint:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    return-void
.end method
