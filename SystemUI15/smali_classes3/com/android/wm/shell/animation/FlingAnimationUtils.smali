.class public final Lcom/android/wm/shell/animation/FlingAnimationUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAnimatorProperties:Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;

.field public mCachedStartGradient:F

.field public mCachedVelocityFactor:F

.field public final mHighVelocityPxPerSecond:F

.field public mInterpolator:Landroid/view/animation/PathInterpolator;

.field public final mLinearOutSlowInX2:F

.field public final mMaxLengthSeconds:F

.field public final mMinVelocityPxPerSecond:F

.field public final mSpeedUpFactor:F

.field public final mY2:F


# direct methods
.method public constructor <init>(Landroid/util/DisplayMetrics;F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/animation/FlingAnimationUtils;-><init>(Landroid/util/DisplayMetrics;FF)V

    return-void
.end method

.method public constructor <init>(Landroid/util/DisplayMetrics;FF)V
    .locals 6

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/animation/FlingAnimationUtils;-><init>(Landroid/util/DisplayMetrics;FFFF)V

    return-void
.end method

.method public constructor <init>(Landroid/util/DisplayMetrics;FFFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;-><init>(I)V

    iput-object v0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mCachedStartGradient:F

    iput v0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mCachedVelocityFactor:F

    iput p2, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mMaxLengthSeconds:F

    iput p3, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mSpeedUpFactor:F

    const/4 p2, 0x0

    cmpg-float p2, p4, p2

    if-gez p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    const p4, 0x3eb33333    # 0.35f

    mul-float/2addr p2, p4

    const p4, 0x3f2e147b    # 0.68f

    mul-float/2addr p4, p3

    add-float/2addr p4, p2

    iput p4, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mLinearOutSlowInX2:F

    goto :goto_0

    :cond_0
    iput p4, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mLinearOutSlowInX2:F

    :goto_0
    iput p5, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mY2:F

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x437a0000    # 250.0f

    mul-float/2addr p2, p1

    iput p2, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    const p2, 0x453b8000    # 3000.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mHighVelocityPxPerSecond:F

    return-void
.end method


# virtual methods
.method public final apply(Landroid/animation/Animator;FFFF)V
    .locals 0

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->getProperties(FFFF)Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;

    move-result-object p0

    iget-wide p2, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;->mDuration:J

    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object p0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public final applyDismissing(Landroid/animation/Animator;FFFF)V
    .locals 6

    iget v0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mMaxLengthSeconds:F

    float-to-double v0, v0

    sub-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float/2addr p2, p5

    float-to-double v2, p2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v0

    double-to-float p2, v2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    iget p5, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    sub-float v0, p4, p5

    iget v1, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mHighVelocityPxPerSecond:F

    sub-float/2addr v1, p5

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float/2addr v1, v0

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v0, v3

    add-float/2addr v0, v1

    div-float v1, v0, v3

    new-instance v4, Landroid/view/animation/PathInterpolator;

    invoke-direct {v4, v2, v2, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    mul-float/2addr v1, p3

    div-float/2addr v1, p4

    cmpg-float v0, v1, p2

    iget-object p0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;

    if-gtz v0, :cond_0

    iput-object v4, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;->mInterpolator:Landroid/view/animation/Interpolator;

    move p2, v1

    goto :goto_0

    :cond_0
    cmpl-float p5, p4, p5

    if-ltz p5, :cond_1

    new-instance p5, Lcom/android/wm/shell/animation/FlingAnimationUtils$VelocityInterpolator;

    const/4 v0, 0x0

    invoke-direct {p5, p2, p4, p3, v0}, Lcom/android/wm/shell/animation/FlingAnimationUtils$VelocityInterpolator;-><init>(FFFI)V

    new-instance p3, Lcom/android/wm/shell/animation/FlingAnimationUtils$InterpolatorInterpolator;

    sget-object p4, Lcom/android/wm/shell/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {p3, p5, v4, p4}, Lcom/android/wm/shell/animation/FlingAnimationUtils$InterpolatorInterpolator;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    iput-object p3, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_1
    sget-object p3, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    iput-object p3, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;->mInterpolator:Landroid/view/animation/Interpolator;

    :goto_0
    const/high16 p3, 0x447a0000    # 1000.0f

    mul-float/2addr p2, p3

    float-to-long p2, p2

    iput-wide p2, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;->mDuration:J

    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object p0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public final getProperties(FFFF)Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;
    .locals 7

    iget v0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mMaxLengthSeconds:F

    float-to-double v0, v0

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, p4

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    double-to-float p1, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget p4, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mSpeedUpFactor:F

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const v0, 0x453b8000    # 3000.0f

    div-float v0, p3, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    iget v2, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mLinearOutSlowInX2:F

    iget v3, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mY2:F

    div-float v4, v3, v2

    sub-float/2addr v1, v0

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v5, v1

    mul-float/2addr v4, v0

    add-float/2addr v4, v5

    mul-float v5, v4, p2

    div-float/2addr v5, p3

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance p4, Ljava/lang/Throwable;

    invoke-direct {p4}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "FlingAnimationUtils"

    const-string v1, "Invalid velocity factor"

    invoke-static {v0, v1, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p4, Lcom/android/wm/shell/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_1
    iget v6, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mCachedStartGradient:F

    cmpl-float v6, v4, v6

    if-nez v6, :cond_2

    iget v6, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mCachedVelocityFactor:F

    cmpl-float v6, v0, v6

    if-eqz v6, :cond_3

    :cond_2
    mul-float/2addr v1, p4

    mul-float p4, v1, v4

    :try_start_0
    new-instance v6, Landroid/view/animation/PathInterpolator;

    invoke-direct {v6, v1, p4, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v6, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mInterpolator:Landroid/view/animation/PathInterpolator;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iput v4, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mCachedStartGradient:F

    iput v0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mCachedVelocityFactor:F

    :cond_3
    iget-object p4, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mInterpolator:Landroid/view/animation/PathInterpolator;

    :goto_1
    cmpg-float v0, v5, p1

    iget-object v1, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;

    if-gtz v0, :cond_4

    iput-object p4, v1, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;->mInterpolator:Landroid/view/animation/Interpolator;

    move p1, v5

    goto :goto_2

    :cond_4
    iget p0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    cmpl-float p0, p3, p0

    if-ltz p0, :cond_5

    new-instance p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$VelocityInterpolator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/android/wm/shell/animation/FlingAnimationUtils$VelocityInterpolator;-><init>(FFFI)V

    new-instance p2, Lcom/android/wm/shell/animation/FlingAnimationUtils$InterpolatorInterpolator;

    sget-object p3, Lcom/android/wm/shell/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {p2, p0, p4, p3}, Lcom/android/wm/shell/animation/FlingAnimationUtils$InterpolatorInterpolator;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    iput-object p2, v1, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_5
    sget-object p0, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object p0, v1, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;->mInterpolator:Landroid/view/animation/Interpolator;

    :goto_2
    const/high16 p0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p0

    float-to-long p0, p1

    iput-wide p0, v1, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties;->mDuration:J

    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal path with x1="

    const-string p3, " y1="

    const-string v0, " x2="

    invoke-static {p2, v1, p3, p4, v0}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " y2="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
