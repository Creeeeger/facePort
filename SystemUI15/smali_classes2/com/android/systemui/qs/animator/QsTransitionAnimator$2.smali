.class public final Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;
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

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->isCanceled:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->isCanceled:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    iget-boolean v0, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mPanelExpanded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailContents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mDetailCallback:Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;

    invoke-interface {p1}, Lcom/android/systemui/qs/animator/QsTransitionAnimator$DetailCallback;->showDetailAnimEnd()V

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setDetailOpening(Z)V

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setDetailShowing(Z)V

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    sget-boolean p1, Lcom/android/systemui/qs/animator/QsAnimatorState;->qsExpanded:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->isCanceled:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setDetailClosing(Z)V

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->this$0:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsTransitionAnimator;->mAnimStateCallback:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$2;->setDetailShowing(Z)V

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/animator/QsTransitionAnimator$2;->isCanceled:Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
