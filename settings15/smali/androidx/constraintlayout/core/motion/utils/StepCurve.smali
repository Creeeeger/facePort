.class public final Landroidx/constraintlayout/core/motion/utils/StepCurve;
.super Landroidx/constraintlayout/core/motion/utils/Easing;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCurveFit:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;


# virtual methods
.method public final get(D)D
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/StepCurve;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getPos(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public final getDiff(D)D
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/core/motion/utils/StepCurve;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/MonotonicCurveFit;->getSlope(D)D

    move-result-wide p0

    return-wide p0
.end method
