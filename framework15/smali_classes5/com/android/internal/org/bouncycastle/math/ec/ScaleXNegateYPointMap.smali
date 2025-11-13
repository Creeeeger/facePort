.class public Lcom/android/internal/org/bouncycastle/math/ec/ScaleXNegateYPointMap;
.super Ljava/lang/Object;
.source "ScaleXNegateYPointMap.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;


# instance fields
.field protected final blacklist scale:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ScaleXNegateYPointMap;->scale:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    return-void
.end method


# virtual methods
.method public blacklist map(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ScaleXNegateYPointMap;->scale:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->scaleXNegateY(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
