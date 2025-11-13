.class public final Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;
.implements Lcom/android/systemui/animation/TransitionAnimator$Controller;


# instance fields
.field public final synthetic $$delegate_0:Lcom/android/systemui/animation/TransitionAnimator$Controller;

.field public final synthetic $delegate:Lcom/android/systemui/animation/TransitionAnimator$Controller;

.field public final synthetic $launchCujType:Ljava/lang/Integer;

.field public final synthetic $returnCujType:Ljava/lang/Integer;

.field public final component:Landroid/content/ComponentName;

.field public final synthetic this$0:Lcom/android/compose/animation/ExpandableControllerImpl;

.field public final transitionCookie:Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/TransitionAnimator$Controller;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;Landroid/content/ComponentName;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/android/compose/animation/ExpandableControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;->$delegate:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    iput-object p4, p0, Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;->$launchCujType:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;->$returnCujType:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;->this$0:Lcom/android/compose/animation/ExpandableControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;->$$delegate_0:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    iput-object p2, p0, Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;->transitionCookie:Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;

    return-void
.end method


# virtual methods
.method public final createAnimatorState()Lcom/android/systemui/animation/TransitionAnimator$State;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;->$$delegate_0:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->createAnimatorState()Lcom/android/systemui/animation/TransitionAnimator$State;

    move-result-object p0

    return-object p0
.end method

.method public final getOpeningWindowSyncView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;->$$delegate_0:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->getOpeningWindowSyncView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getTransitionContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;->$$delegate_0:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->getTransitionContainer()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public final getTransitionCookie()Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;->transitionCookie:Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;

    return-object p0
.end method

.method public final isLaunching()Z
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;->$$delegate_0:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->isLaunching()Z

    move-result p0

    return p0
.end method

.method public final onTransitionAnimationEnd(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;->$$delegate_0:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    invoke-interface {v0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->isLaunching()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;->$launchCujType:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;->$returnCujType:Ljava/lang/Integer;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    :cond_1
    iget-object v0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;->$delegate:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    invoke-interface {v0, p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->onTransitionAnimationEnd(Z)V

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;->this$0:Lcom/android/compose/animation/ExpandableControllerImpl;

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->overlay:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onTransitionAnimationProgress(Lcom/android/systemui/animation/TransitionAnimator$State;FF)V
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;->$$delegate_0:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->onTransitionAnimationProgress(Lcom/android/systemui/animation/TransitionAnimator$State;FF)V

    return-void
.end method

.method public final onTransitionAnimationStart(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;->$delegate:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    invoke-interface {v0, p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->onTransitionAnimationStart(Z)V

    iget-object p1, p0, Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;->this$0:Lcom/android/compose/animation/ExpandableControllerImpl;

    iget-object v0, p1, Lcom/android/compose/animation/ExpandableControllerImpl;->overlay:Landroidx/compose/runtime/MutableState;

    iget-object v1, p1, Lcom/android/compose/animation/ExpandableControllerImpl;->composeViewRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroupOverlay;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;->$$delegate_0:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    invoke-interface {v0}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->isLaunching()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;->$launchCujType:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;->$returnCujType:Ljava/lang/Integer;

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    iget-object p1, p1, Lcom/android/compose/animation/ExpandableControllerImpl;->composeViewRoot:Landroid/view/View;

    invoke-virtual {v0, p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    :cond_1
    return-void
.end method

.method public final setTransitionContainer(Landroid/view/ViewGroup;)V
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$activityController$1;->$$delegate_0:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    invoke-interface {p0, p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->setTransitionContainer(Landroid/view/ViewGroup;)V

    return-void
.end method
