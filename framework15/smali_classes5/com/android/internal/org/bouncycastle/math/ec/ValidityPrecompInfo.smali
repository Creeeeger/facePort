.class Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;
.super Ljava/lang/Object;
.source "ValidityPrecompInfo.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;


# static fields
.field static final blacklist PRECOMP_NAME:Ljava/lang/String; = "bc_validity"


# instance fields
.field private blacklist curveEquationPassed:Z

.field private blacklist failed:Z

.field private blacklist orderPassed:Z


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->failed:Z

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->curveEquationPassed:Z

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->orderPassed:Z

    return-void
.end method


# virtual methods
.method blacklist hasCurveEquationPassed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->curveEquationPassed:Z

    return v0
.end method

.method blacklist hasFailed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->failed:Z

    return v0
.end method

.method blacklist hasOrderPassed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->orderPassed:Z

    return v0
.end method

.method blacklist reportCurveEquationPassed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->curveEquationPassed:Z

    return-void
.end method

.method blacklist reportFailed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->failed:Z

    return-void
.end method

.method blacklist reportOrderPassed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->orderPassed:Z

    return-void
.end method
