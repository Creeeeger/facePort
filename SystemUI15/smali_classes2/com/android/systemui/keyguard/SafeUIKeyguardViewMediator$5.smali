.class public final Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;


# instance fields
.field public final mIsLaunching:Z

.field public final synthetic this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$5;->mIsLaunching:Z

    return-void
.end method


# virtual methods
.method public final createAnimatorState()Lcom/android/systemui/animation/TransitionAnimator$State;
    .locals 13

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$5;->getTransitionContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$5;->getTransitionContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    int-to-float v3, v5

    div-float v1, v3, v1

    new-instance v8, Lcom/android/systemui/animation/TransitionAnimator$State;

    iget v4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mPowerButtonY:F

    div-float/2addr v0, v2

    sub-float v2, v4, v0

    float-to-int v2, v2

    add-float/2addr v4, v0

    float-to-int v0, v4

    sub-float/2addr v3, v1

    float-to-int v4, v3

    iget v7, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWindowCornerRadius:F

    move-object v1, v8

    move v3, v0

    move v6, v7

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/animation/TransitionAnimator$State;-><init>(IIIIFF)V

    return-object v8

    :cond_0
    int-to-float v0, v0

    div-float v1, v0, v2

    int-to-float v3, v5

    div-float v4, v3, v2

    new-instance v12, Lcom/android/systemui/animation/TransitionAnimator$State;

    sub-float/2addr v0, v1

    float-to-int v5, v0

    div-int/lit8 v6, v5, 0x2

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v7, v0

    sub-float/2addr v3, v4

    float-to-int v0, v3

    div-int/lit8 v8, v0, 0x2

    div-float/2addr v3, v2

    add-float/2addr v3, v4

    float-to-int v9, v3

    iget v11, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mWindowCornerRadius:F

    move-object v5, v12

    move v10, v11

    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/animation/TransitionAnimator$State;-><init>(IIIIFF)V

    return-object v12
.end method

.method public final getTransitionContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final isLaunching()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$5;->mIsLaunching:Z

    return p0
.end method

.method public final onTransitionAnimationCancelled(Ljava/lang/Boolean;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Occlude launch animation cancelled. Occluded state is now: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mOccluded:Z

    const-string v1, "SafeUIKeyguardViewMediator"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mOccludeAnimationPlaying:Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateIsKeyguard(Z)Z

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mScrimControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setOccludeAnimationPlaying(Z)V

    return-void
.end method

.method public final onTransitionAnimationEnd(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mShadeController:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shade/ShadeController;

    invoke-interface {p1}, Lcom/android/systemui/shade/ShadeController;->instantCollapseShade()V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mOccludeAnimationPlaying:Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateIsKeyguard(Z)Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mScrimControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setOccludeAnimationPlaying(Z)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/16 p1, 0x40

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    return-void
.end method

.method public final onTransitionAnimationStart(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mOccludeAnimationPlaying:Z

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->mScrimControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setOccludeAnimationPlaying(Z)V

    return-void
.end method

.method public final setTransitionContainer(Landroid/view/ViewGroup;)V
    .locals 0

    const-string p0, "SafeUIKeyguardViewMediator"

    const-string p1, "Someone tried to change the launch container for the ActivityTransitionAnimator, which should never happen."

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
