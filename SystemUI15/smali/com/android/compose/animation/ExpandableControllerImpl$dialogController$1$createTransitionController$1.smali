.class public final Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1$createTransitionController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/TransitionAnimator$Controller;


# instance fields
.field public final synthetic $$delegate_0:Lcom/android/systemui/animation/TransitionAnimator$Controller;

.field public final synthetic $delegate:Lcom/android/systemui/animation/TransitionAnimator$Controller;

.field public final synthetic this$0:Lcom/android/compose/animation/ExpandableControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/TransitionAnimator$Controller;Lcom/android/compose/animation/ExpandableControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1$createTransitionController$1;->$delegate:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    iput-object p2, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1$createTransitionController$1;->this$0:Lcom/android/compose/animation/ExpandableControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1$createTransitionController$1;->$$delegate_0:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    return-void
.end method


# virtual methods
.method public final createAnimatorState()Lcom/android/systemui/animation/TransitionAnimator$State;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1$createTransitionController$1;->$$delegate_0:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->createAnimatorState()Lcom/android/systemui/animation/TransitionAnimator$State;

    move-result-object p0

    return-object p0
.end method

.method public final getOpeningWindowSyncView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1$createTransitionController$1;->$$delegate_0:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->getOpeningWindowSyncView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getTransitionContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1$createTransitionController$1;->$$delegate_0:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->getTransitionContainer()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public final isLaunching()Z
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1$createTransitionController$1;->$$delegate_0:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->isLaunching()Z

    move-result p0

    return p0
.end method

.method public final onTransitionAnimationEnd(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1$createTransitionController$1;->$delegate:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    invoke-interface {v0, p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->onTransitionAnimationEnd(Z)V

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1$createTransitionController$1;->this$0:Lcom/android/compose/animation/ExpandableControllerImpl;

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->isDialogShowing:Landroidx/compose/runtime/MutableState;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onTransitionAnimationProgress(Lcom/android/systemui/animation/TransitionAnimator$State;FF)V
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1$createTransitionController$1;->$$delegate_0:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->onTransitionAnimationProgress(Lcom/android/systemui/animation/TransitionAnimator$State;FF)V

    return-void
.end method

.method public final onTransitionAnimationStart(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1$createTransitionController$1;->$$delegate_0:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    invoke-interface {p0, p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->onTransitionAnimationStart(Z)V

    return-void
.end method

.method public final setTransitionContainer(Landroid/view/ViewGroup;)V
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1$createTransitionController$1;->$$delegate_0:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    invoke-interface {p0, p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->setTransitionContainer(Landroid/view/ViewGroup;)V

    return-void
.end method
