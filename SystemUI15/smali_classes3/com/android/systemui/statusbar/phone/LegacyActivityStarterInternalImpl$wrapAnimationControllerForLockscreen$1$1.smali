.class public final Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$wrapAnimationControllerForLockscreen$1$1;
.super Lcom/android/systemui/animation/DelegateTransitionAnimatorController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $dismissShade:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;Z)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$wrapAnimationControllerForLockscreen$1$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$wrapAnimationControllerForLockscreen$1$1;->$dismissShade:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/animation/DelegateTransitionAnimatorController;-><init>(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    return-void
.end method


# virtual methods
.method public final onIntentStarted(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/animation/DelegateTransitionAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {v0, p1}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->onIntentStarted(Z)V

    if-eqz p1, :cond_0

    sget p1, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->$r8$clinit:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$wrapAnimationControllerForLockscreen$1$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->getCentralSurfaces()Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsLaunchingActivityOverLockscreen:Z

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$wrapAnimationControllerForLockscreen$1$1;->$dismissShade:Z

    iput-boolean p0, p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDismissingShadeForActivityLaunch:Z

    iget-object p0, p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->launchingActivityOverLockscreen(Z)V

    :cond_0
    return-void
.end method

.method public final onTransitionAnimationCancelled(Ljava/lang/Boolean;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$wrapAnimationControllerForLockscreen$1$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->keyguardViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setOccluded(ZZ)V

    :cond_0
    sget v2, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->$r8$clinit:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->getCentralSurfaces()Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsLaunchingActivityOverLockscreen:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDismissingShadeForActivityLaunch:Z

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->launchingActivityOverLockscreen(Z)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/animation/DelegateTransitionAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0, p1}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->onTransitionAnimationCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final onTransitionAnimationEnd(Z)V
    .locals 2

    sget v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$wrapAnimationControllerForLockscreen$1$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->getCentralSurfaces()Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsLaunchingActivityOverLockscreen:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDismissingShadeForActivityLaunch:Z

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->launchingActivityOverLockscreen(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/animation/DelegateTransitionAnimatorController;->delegate:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0, p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->onTransitionAnimationEnd(Z)V

    return-void
.end method

.method public final onTransitionAnimationStart(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/animation/DelegateTransitionAnimatorController;->onTransitionAnimationStart(Z)V

    invoke-static {}, Lcom/android/systemui/Flags;->communalHub()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$wrapAnimationControllerForLockscreen$1$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-nez p1, :cond_0

    const-string p1, "LegacyActivityStarterInternalImpl"

    const-string v0, "Setting occluded = true in #startActivity."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->keyguardViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setOccluded(ZZ)V

    :cond_0
    return-void
.end method
