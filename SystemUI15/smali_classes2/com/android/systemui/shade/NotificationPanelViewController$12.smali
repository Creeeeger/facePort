.class public final Lcom/android/systemui/shade/NotificationPanelViewController$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCancelled:Z

.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

.field public final synthetic val$shouldSpringBack:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$12;->val$shouldSpringBack:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$12;->mCancelled:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 p1, 0x0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$12;->val$shouldSpringBack:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$12;->mCancelled:Z

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverExpansion:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->onFlingEnd(Z)V

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsSpringBackAnimation:Z

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v1, v3, p1

    aput v2, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda26;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/systemui/shade/NotificationPanelViewController$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$14;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setAnimator$1(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$12;->mCancelled:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onFlingEnd(Z)V

    :goto_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->beginJankMonitoring(Z)V

    :cond_0
    return-void
.end method
