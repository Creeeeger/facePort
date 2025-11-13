.class public interface abstract Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public animateInKeyguard(Landroid/view/View;Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;->run()V

    return-void
.end method

.method public abstract initialize(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/statusbar/LightRevealScrim;)V
.end method

.method public abstract isAnimationPlaying()Z
.end method

.method public isKeyguardHideDelayed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isKeyguardShowDelayed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAlwaysOnChanged(Z)V
    .locals 0

    return-void
.end method

.method public onScrimOpaqueChanged(Z)V
    .locals 0

    return-void
.end method

.method public overrideNotificationsDozeAmount()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldAnimateClockChange()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldAnimateDozingChange()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldAnimateInKeyguard()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract shouldDelayDisplayDozeTransition()Z
.end method

.method public shouldDelayKeyguardShow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldHideScrimOnWakeUp()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract shouldPlayAnimation()Z
.end method

.method public abstract shouldShowAodIconsWhenShade()Z
.end method

.method public abstract startAnimation()Z
.end method
