.class public final Lcom/android/systemui/shade/QuickSettingsControllerImpl$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mIsCanceled:Z

.field public final synthetic this$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

.field public final synthetic val$onFinishRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$3;->this$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$3;->val$onFinishRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$3;->mIsCanceled:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$3;->this$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAnimatingHiddenFromCollapsed:Z

    iput-boolean v0, p1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAnimating:Z

    iget-object p1, p1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingFinished()V

    iget-object p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$3;->this$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object v1, p1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v2, 0x1

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$3;->val$onFinishRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$3;->this$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$3;->mIsCanceled:Z

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->traceQsJank(ZZ)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$3;->this$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingStarted()V

    return-void
.end method
