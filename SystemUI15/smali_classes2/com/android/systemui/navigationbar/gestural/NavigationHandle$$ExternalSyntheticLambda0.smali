.class public final synthetic Lcom/android/systemui/navigationbar/gestural/NavigationHandle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/animation/Interpolator;


# virtual methods
.method public final getInterpolation(F)F
    .locals 2

    sget-object p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->PULSE_ANIMATION_PROGRESS:Lcom/android/systemui/navigationbar/gestural/NavigationHandle$1;

    const p0, 0x3f666666    # 0.9f

    cmpg-float v0, p1, p0

    if-gtz v0, :cond_0

    sget-object v0, Lcom/android/app/animation/Interpolators;->LEGACY:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p0}, Lcom/android/app/animation/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FFF)F

    move-result p0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, p0, v1}, Lcom/android/app/animation/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FFF)F

    move-result p0

    sub-float p0, v1, p0

    :goto_0
    return p0
.end method
