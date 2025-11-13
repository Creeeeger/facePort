.class public interface abstract Lcom/android/systemui/animation/TransitionAnimator$Controller;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract createAnimatorState()Lcom/android/systemui/animation/TransitionAnimator$State;
.end method

.method public getOpeningWindowSyncView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getTransitionContainer()Landroid/view/ViewGroup;
.end method

.method public abstract isLaunching()Z
.end method

.method public onTransitionAnimationEnd(Z)V
    .locals 0

    return-void
.end method

.method public onTransitionAnimationProgress(Lcom/android/systemui/animation/TransitionAnimator$State;FF)V
    .locals 0

    return-void
.end method

.method public onTransitionAnimationStart(Z)V
    .locals 0

    return-void
.end method

.method public abstract setTransitionContainer(Landroid/view/ViewGroup;)V
.end method
