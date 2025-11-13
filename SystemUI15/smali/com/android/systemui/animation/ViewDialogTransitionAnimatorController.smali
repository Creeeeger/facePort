.class public final Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;


# instance fields
.field public final cuj:Lcom/android/systemui/animation/DialogCuj;

.field public final source:Landroid/view/View;

.field public final sourceIdentity:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/animation/DialogCuj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;->source:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;->cuj:Lcom/android/systemui/animation/DialogCuj;

    iput-object p1, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;->sourceIdentity:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final createExitController()Lcom/android/systemui/animation/TransitionAnimator$Controller;
    .locals 10

    new-instance v9, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

    iget-object v1, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;->source:Landroid/view/View;

    const/16 v7, 0x3e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;Landroid/content/ComponentName;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9
.end method

.method public final createTransitionController()Lcom/android/systemui/animation/TransitionAnimator$Controller;
    .locals 10

    new-instance v9, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

    iget-object v1, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;->source:Landroid/view/View;

    const/16 v7, 0x3e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;Landroid/content/ComponentName;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController$createTransitionController$1;

    invoke-direct {v0, v9, p0}, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController$createTransitionController$1;-><init>(Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;)V

    return-object v0
.end method

.method public final getCuj()Lcom/android/systemui/animation/DialogCuj;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;->cuj:Lcom/android/systemui/animation/DialogCuj;

    return-object p0
.end method

.method public final getSourceIdentity()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;->sourceIdentity:Ljava/lang/Object;

    return-object p0
.end method

.method public final getViewRoot()Landroid/view/ViewRootImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;->source:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    return-object p0
.end method

.method public final jankConfigurationBuilder()Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;->cuj:Lcom/android/systemui/animation/DialogCuj;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;->source:Landroid/view/View;

    iget v0, v0, Lcom/android/systemui/animation/DialogCuj;->cujType:I

    invoke-static {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onExitAnimationCancelled()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;->source:Landroid/view/View;

    instance-of v1, v0, Lcom/android/systemui/animation/LaunchableView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/animation/LaunchableView;

    invoke-interface {v0, v2}, Lcom/android/systemui/animation/LaunchableView;->setShouldBlockVisibilityChanges(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;->source:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final shouldAnimateExit()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;->source:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;->source:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;->source:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    if-eqz p0, :cond_3

    move v2, v0

    :cond_3
    return v2
.end method

.method public final startDrawingInOverlayOf(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;->source:Landroid/view/View;

    instance-of v1, v0, Lcom/android/systemui/animation/LaunchableView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/animation/LaunchableView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/animation/LaunchableView;->setShouldBlockVisibilityChanges(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;->source:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    const-string p0, "ViewDialogTransitionAnimatorController"

    const-string p1, "source was detached right before drawing was moved to overlay"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;->source:Landroid/view/View;

    invoke-static {p0, p1}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/GhostView;

    :goto_1
    return-void
.end method

.method public final stopDrawingInOverlay()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;->source:Landroid/view/View;

    instance-of v0, p0, Lcom/android/systemui/animation/LaunchableView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/animation/LaunchableView;

    invoke-interface {p0, v1}, Lcom/android/systemui/animation/LaunchableView;->setShouldBlockVisibilityChanges(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
