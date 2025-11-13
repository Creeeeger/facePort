.class public final Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public isCanceled:Z

.field public final synthetic this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/animator/QsTransitionAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->isCanceled:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->isCanceled:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->isDetailVisible()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setDetailClosing(Z)V

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda5;-><init>()V

    sget v2, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->$r8$clinit:I

    iget-object p1, p1, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->this$0:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->executeConsumer(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->clearDetailView()V

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->isCanceled:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/systemui/qs/animator/QsAnimatorState;->isCustomizerShowing:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setDetailClosing(Z)V

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->clearCustomizerView()V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    iget-object v1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    iget-boolean v1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mExpandSettingsPanel:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mExpandSettingsPanel:Z

    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->isCanceled:Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
