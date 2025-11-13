.class public final Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController$createTransitionController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/TransitionAnimator$Controller;


# instance fields
.field public final synthetic $$delegate_0:Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

.field public final synthetic $delegate:Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

.field public final synthetic this$0:Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController$createTransitionController$1;->$delegate:Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

    iput-object p2, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController$createTransitionController$1;->this$0:Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController$createTransitionController$1;->$$delegate_0:Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

    return-void
.end method


# virtual methods
.method public final createAnimatorState()Lcom/android/systemui/animation/TransitionAnimator$State;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController$createTransitionController$1;->$$delegate_0:Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->createAnimatorState()Lcom/android/systemui/animation/TransitionAnimator$State;

    move-result-object p0

    return-object p0
.end method

.method public final getOpeningWindowSyncView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController$createTransitionController$1;->$$delegate_0:Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTransitionContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController$createTransitionController$1;->$$delegate_0:Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->transitionContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final isLaunching()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController$createTransitionController$1;->$$delegate_0:Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

    iget-boolean p0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->isLaunching:Z

    return p0
.end method

.method public final onTransitionAnimationEnd(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController$createTransitionController$1;->$delegate:Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->onTransitionAnimationEnd(Z)V

    iget-object p0, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController$createTransitionController$1;->this$0:Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;

    iget-object p1, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;->source:Landroid/view/View;

    instance-of v0, p1, Lcom/android/systemui/animation/LaunchableView;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/animation/LaunchableView;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/systemui/animation/LaunchableView;->setShouldBlockVisibilityChanges(Z)V

    iget-object p0, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;->source:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final onTransitionAnimationProgress(Lcom/android/systemui/animation/TransitionAnimator$State;FF)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController$createTransitionController$1;->$$delegate_0:Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->onTransitionAnimationProgress(Lcom/android/systemui/animation/TransitionAnimator$State;FF)V

    return-void
.end method

.method public final onTransitionAnimationStart(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController$createTransitionController$1;->this$0:Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;

    iget-object v0, v0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;->source:Landroid/view/View;

    invoke-static {v0}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController$createTransitionController$1;->$delegate:Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->onTransitionAnimationStart(Z)V

    return-void
.end method

.method public final setTransitionContainer(Landroid/view/ViewGroup;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController$createTransitionController$1;->$$delegate_0:Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->transitionContainer:Landroid/view/ViewGroup;

    return-void
.end method
