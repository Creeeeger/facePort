.class public final synthetic Landroidx/appcompat/animation/SeslRecoilAnimator$Holder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    const/4 p0, 0x0

    check-cast p1, Landroidx/appcompat/animation/SeslRecoilAnimator;

    invoke-virtual {p1}, Landroidx/appcompat/animation/SeslRecoilAnimator;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroidx/appcompat/animation/SeslRecoilAnimator;->mIsPressed:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p0, p1, Landroidx/appcompat/animation/SeslRecoilAnimator;->mIsPressed:Z

    iget-object v0, p1, Landroidx/appcompat/animation/SeslRecoilAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/appcompat/animation/SeslRecoilAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p1, Landroidx/appcompat/animation/SeslRecoilAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v1, v2, p0

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    aput p0, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p0, p1, Landroidx/appcompat/animation/SeslRecoilAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p1, Landroidx/appcompat/animation/SeslRecoilAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Landroidx/appcompat/animation/SeslRecoilAnimator;->sReleaseInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p1, Landroidx/appcompat/animation/SeslRecoilAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    return-void
.end method
