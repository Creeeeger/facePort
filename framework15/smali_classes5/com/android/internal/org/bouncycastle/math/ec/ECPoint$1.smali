.class Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$1;
.super Ljava/lang/Object;
.source "ECPoint.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->implIsValid(ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

.field final synthetic blacklist val$checkOrder:Z

.field final synthetic blacklist val$decompressed:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$1;->val$decompressed:Z

    iput-boolean p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$1;->val$checkOrder:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist precompute(Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;
    .locals 2

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;-><init>()V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->hasFailed()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->hasCurveEquationPassed()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$1;->val$decompressed:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->satisfiesCurveEquation()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->reportFailed()V

    return-object v0

    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->reportCurveEquationPassed()V

    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$1;->val$checkOrder:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->hasOrderPassed()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->satisfiesOrder()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->reportFailed()V

    return-object v0

    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->reportOrderPassed()V

    :cond_6
    return-object v0
.end method
