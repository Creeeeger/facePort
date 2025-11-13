.class Lcom/android/keyguard/KeyguardArrowViewController$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardArrowViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardArrowViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$3;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDualDarInnerLockScreenStateChanged(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController$3;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p2

    invoke-static {p2}, Lcom/android/keyguard/SecurityUtils;->isArrowViewSupported(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowView()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController$3;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowMargin()V

    :cond_0
    return-void
.end method

.method public final onLockModeChanged()V
    .locals 4

    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController$3;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onLockModeChanged - deadline "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardArrowViewController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mIsTimerRunning:Z

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowVisibility(Z)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardArrowViewCallback:Lcom/android/keyguard/KeyguardArrowViewCallback;

    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v3, :cond_1

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$000(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$SecViewMode;

    invoke-interface {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainer$SecViewMode;->updateSecurityViewPosition(IZ)V

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mIsTimerRunning:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->checkArrowVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->initArrowView()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController$3;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/keyguard/SecurityUtils;->isArrowViewSupported(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowView()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mKeyguardArrowViewCallback:Lcom/android/keyguard/KeyguardArrowViewCallback;

    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_1

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$000(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentMode:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$SecViewMode;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainer$SecViewMode;->updateSecurityViewPosition(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onTableModeChanged(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController$3;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    iget v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLastOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mIsTableArrowState:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->checkArrowVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->initArrowView()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowMargin()V

    return-void
.end method
