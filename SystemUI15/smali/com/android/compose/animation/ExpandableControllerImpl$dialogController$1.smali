.class public final Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;


# instance fields
.field public final synthetic $cuj:Lcom/android/systemui/animation/DialogCuj;

.field public final cuj:Lcom/android/systemui/animation/DialogCuj;

.field public final sourceIdentity:Lcom/android/compose/animation/ExpandableControllerImpl;

.field public final synthetic this$0:Lcom/android/compose/animation/ExpandableControllerImpl;

.field public final viewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/ExpandableControllerImpl;Lcom/android/systemui/animation/DialogCuj;)V
    .locals 1

    iput-object p1, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1;->this$0:Lcom/android/compose/animation/ExpandableControllerImpl;

    iput-object p2, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1;->$cuj:Lcom/android/systemui/animation/DialogCuj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/compose/animation/ExpandableControllerImpl;->composeViewRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1;->viewRoot:Landroid/view/ViewRootImpl;

    iput-object p1, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1;->sourceIdentity:Lcom/android/compose/animation/ExpandableControllerImpl;

    iput-object p2, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1;->cuj:Lcom/android/systemui/animation/DialogCuj;

    return-void
.end method


# virtual methods
.method public final createExitController()Lcom/android/systemui/animation/TransitionAnimator$Controller;
    .locals 2

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1;->this$0:Lcom/android/compose/animation/ExpandableControllerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/compose/animation/ExpandableControllerImpl$transitionController$1;

    invoke-direct {v0, p0}, Lcom/android/compose/animation/ExpandableControllerImpl$transitionController$1;-><init>(Lcom/android/compose/animation/ExpandableControllerImpl;)V

    new-instance v1, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1$createExitController$1;

    invoke-direct {v1, v0, p0}, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1$createExitController$1;-><init>(Lcom/android/systemui/animation/TransitionAnimator$Controller;Lcom/android/compose/animation/ExpandableControllerImpl;)V

    return-object v1
.end method

.method public final createTransitionController()Lcom/android/systemui/animation/TransitionAnimator$Controller;
    .locals 2

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1;->this$0:Lcom/android/compose/animation/ExpandableControllerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/compose/animation/ExpandableControllerImpl$transitionController$1;

    invoke-direct {v0, p0}, Lcom/android/compose/animation/ExpandableControllerImpl$transitionController$1;-><init>(Lcom/android/compose/animation/ExpandableControllerImpl;)V

    new-instance v1, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1$createTransitionController$1;

    invoke-direct {v1, v0, p0}, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1$createTransitionController$1;-><init>(Lcom/android/systemui/animation/TransitionAnimator$Controller;Lcom/android/compose/animation/ExpandableControllerImpl;)V

    return-object v1
.end method

.method public final getCuj()Lcom/android/systemui/animation/DialogCuj;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1;->cuj:Lcom/android/systemui/animation/DialogCuj;

    return-object p0
.end method

.method public final getSourceIdentity()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1;->sourceIdentity:Lcom/android/compose/animation/ExpandableControllerImpl;

    return-object p0
.end method

.method public final getViewRoot()Landroid/view/ViewRootImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1;->viewRoot:Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method public final jankConfigurationBuilder()Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1;->$cuj:Lcom/android/systemui/animation/DialogCuj;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1;->this$0:Lcom/android/compose/animation/ExpandableControllerImpl;

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->composeViewRoot:Landroid/view/View;

    iget v0, v0, Lcom/android/systemui/animation/DialogCuj;->cujType:I

    invoke-static {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onExitAnimationCancelled()V
    .locals 1

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1;->this$0:Lcom/android/compose/animation/ExpandableControllerImpl;

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->isDialogShowing:Landroidx/compose/runtime/MutableState;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final shouldAnimateExit()Z
    .locals 1

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1;->this$0:Lcom/android/compose/animation/ExpandableControllerImpl;

    iget-object v0, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->isComposed:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->composeViewRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->composeViewRoot:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final startDrawingInOverlayOf(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1;->this$0:Lcom/android/compose/animation/ExpandableControllerImpl;

    iget-object v0, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->overlay:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->overlay:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final stopDrawingInOverlay()V
    .locals 1

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$dialogController$1;->this$0:Lcom/android/compose/animation/ExpandableControllerImpl;

    iget-object v0, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->overlay:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->overlay:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
