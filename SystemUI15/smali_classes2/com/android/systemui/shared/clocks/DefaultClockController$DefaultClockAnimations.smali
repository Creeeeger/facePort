.class public Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/clocks/ClockAnimations;


# instance fields
.field public final dozeState:Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;

.field public final foldState:Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;

.field public final view:Lcom/android/systemui/shared/clocks/AnimatableClockView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/clocks/DefaultClockController;Lcom/android/systemui/shared/clocks/AnimatableClockView;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/clocks/AnimatableClockView;",
            "FF)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    new-instance p1, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;

    invoke-direct {p1, p3}, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;-><init>(F)V

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;->dozeState:Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;

    new-instance p3, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;

    invoke-direct {p3, p4}, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;-><init>(F)V

    iput-object p3, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;->foldState:Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;

    iget-boolean p0, p3, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->isActive:Z

    const/4 p3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p2, p3}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->animateFoldAppear(Z)V

    goto :goto_0

    :cond_0
    iget-boolean p0, p1, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->isActive:Z

    invoke-virtual {p2, p0, p3}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->animateDoze(ZZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final charge()V
    .locals 11

    new-instance v0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations$charge$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations$charge$1;-><init>(Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;)V

    iget-object v1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    iget-object p0, v1, Lcom/android/systemui/shared/clocks/AnimatableClockView;->textAnimator:Lcom/android/systemui/animation/TextAnimator;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/animation/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getLogger()Lcom/android/systemui/log/core/Logger;

    move-result-object p0

    const/4 v2, 0x0

    const-string v3, "animateCharge"

    const/4 v4, 0x2

    invoke-static {p0, v3, v2, v4, v2}, Lcom/android/systemui/log/core/Logger;->d$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v10, Lcom/android/systemui/shared/clocks/AnimatableClockView$animateCharge$startAnimPhase2$1;

    invoke-direct {v10, v1, v0}, Lcom/android/systemui/shared/clocks/AnimatableClockView$animateCharge$startAnimPhase2$1;-><init>(Lcom/android/systemui/shared/clocks/AnimatableClockView;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations$charge$1;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getLockScreenWeight()I

    move-result p0

    :goto_0
    move v2, p0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getDozingWeight()I

    move-result p0

    goto :goto_0

    :goto_1
    iget p0, v1, Lcom/android/systemui/shared/clocks/AnimatableClockView;->chargeAnimationDelay:I

    int-to-long v8, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x1f4

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->setTextStyle(ILjava/lang/Integer;ZLandroid/animation/TimeInterpolator;JJLcom/android/systemui/shared/clocks/AnimatableClockView$animateCharge$startAnimPhase2$1;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public final doze(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;->dozeState:Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->update(F)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->isActive:Z

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->animateDoze(ZZ)V

    :cond_0
    return-void
.end method

.method public final enter()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;->dozeState:Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;

    iget-boolean v0, v0, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->isActive:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getLogger()Lcom/android/systemui/log/core/Logger;

    move-result-object v0

    const-string v1, "animateAppearOnLockscreen"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/android/systemui/log/core/Logger;->d$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getDozingWeight()I

    move-result v2

    iget v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lockScreenColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->setTextStyle(ILjava/lang/Integer;ZLandroid/animation/TimeInterpolator;JJLcom/android/systemui/shared/clocks/AnimatableClockView$animateCharge$startAnimPhase2$1;)V

    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getLockScreenWeight()I

    move-result v2

    iget v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lockScreenColor:I

    sget-object v5, Lcom/android/app/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    const-wide/16 v6, 0x341

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->setTextStyle(ILjava/lang/Integer;ZLandroid/animation/TimeInterpolator;JJLcom/android/systemui/shared/clocks/AnimatableClockView$animateCharge$startAnimPhase2$1;)V

    :cond_0
    return-void
.end method

.method public final fold(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;->foldState:Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/clocks/DefaultClockController$AnimationState;->update(F)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->animateFoldAppear(Z)V

    :cond_0
    return-void
.end method

.method public final onPickerCarouselSwiping(F)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    const/4 v1, 0x1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method

.method public onPositionUpdated(FF)V
    .locals 0

    return-void
.end method

.method public onPositionUpdated(IIF)V
    .locals 0

    return-void
.end method
