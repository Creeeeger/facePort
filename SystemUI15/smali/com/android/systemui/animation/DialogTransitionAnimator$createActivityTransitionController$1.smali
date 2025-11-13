.class public final Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;


# instance fields
.field public final synthetic $$delegate_0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

.field public final synthetic $animatedDialog:Lcom/android/systemui/animation/AnimatedDialog;

.field public final synthetic $controller:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

.field public final synthetic $dialog:Landroid/app/Dialog;

.field public final isDialogLaunch:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Landroid/app/Dialog;Lcom/android/systemui/animation/AnimatedDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$controller:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    iput-object p2, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$animatedDialog:Lcom/android/systemui/animation/AnimatedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->isDialogLaunch:Z

    return-void
.end method


# virtual methods
.method public final createAnimatorState()Lcom/android/systemui/animation/TransitionAnimator$State;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->createAnimatorState()Lcom/android/systemui/animation/TransitionAnimator$State;

    move-result-object p0

    return-object p0
.end method

.method public final getOpeningWindowSyncView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->getOpeningWindowSyncView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getTransitionContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->getTransitionContainer()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public final getTransitionCookie()Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->getTransitionCookie()Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;

    move-result-object p0

    return-object p0
.end method

.method public final isBelowAnimatingWindow()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->isBelowAnimatingWindow()Z

    move-result p0

    return p0
.end method

.method public final isDialogLaunch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->isDialogLaunch:Z

    return p0
.end method

.method public final isLaunching()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->isLaunching()Z

    move-result p0

    return p0
.end method

.method public final onIntentStarted(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$controller:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {v0, p1}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->onIntentStarted(Z)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onTransitionAnimationCancelled(Ljava/lang/Boolean;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$controller:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-static {p1}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;->onTransitionAnimationCancelled$default(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    iget-object p1, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$dialog:Landroid/app/Dialog;

    new-instance v0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1$enableDialogDismiss$1;

    iget-object v1, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$animatedDialog:Lcom/android/systemui/animation/AnimatedDialog;

    invoke-direct {v0, v1}, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1$enableDialogDismiss$1;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setDismissOverride(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final onTransitionAnimationEnd(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$controller:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {v0, p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->onTransitionAnimationEnd(Z)V

    iget-object p1, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    iget-object p1, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$dialog:Landroid/app/Dialog;

    new-instance v0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1$enableDialogDismiss$1;

    iget-object v1, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$animatedDialog:Lcom/android/systemui/animation/AnimatedDialog;

    invoke-direct {v0, v1}, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1$enableDialogDismiss$1;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setDismissOverride(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final onTransitionAnimationProgress(Lcom/android/systemui/animation/TransitionAnimator$State;FF)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->onTransitionAnimationProgress(Lcom/android/systemui/animation/TransitionAnimator$State;FF)V

    return-void
.end method

.method public final onTransitionAnimationStart(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$controller:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {v0, p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->onTransitionAnimationStart(Z)V

    iget-object p1, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$dialog:Landroid/app/Dialog;

    sget-object v0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1$disableDialogDismiss$1;->INSTANCE:Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1$disableDialogDismiss$1;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setDismissOverride(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$animatedDialog:Lcom/android/systemui/animation/AnimatedDialog;

    invoke-virtual {p1}, Lcom/android/systemui/animation/AnimatedDialog;->prepareForStackDismiss()V

    iget-object p0, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    return-void
.end method

.method public final setTransitionContainer(Landroid/view/ViewGroup;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;->$$delegate_0:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    invoke-interface {p0, p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->setTransitionContainer(Landroid/view/ViewGroup;)V

    return-void
.end method
