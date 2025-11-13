.class public Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardPatternViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardPatternViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPatternCellAdded(Ljava/util/List;)V
    .locals 0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->onUserInput()V

    return-void
.end method

.method public onPatternChecked(IIZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p2

    invoke-interface {p2, p1, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object p3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    iget-object p2, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 p3, 0xb

    invoke-virtual {p2, p3}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {p0, v2, p1, p2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    iget-object p3, p3, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {p3, v0}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    invoke-virtual {p3}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p3

    invoke-interface {p3, p1, p2, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    if-lez p2, :cond_2

    iget-object p3, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    iget-object p3, p3, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide p3

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    invoke-virtual {p1, p3, p4}, Lcom/android/keyguard/KeyguardPatternViewController;->handleAttemptLockout(J)V

    :cond_2
    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    const p2, 0x7f130a98

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mCancelPatternRunnable:Lcom/android/keyguard/KeyguardPatternViewController$2;

    const-wide/16 p2, 0x7d0

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final onPatternCleared()V
    .locals 0

    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCredentialAttempted()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, -0x26ab

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v2, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v2

    :goto_0
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_UNPACK:Z

    const/4 v4, 0x4

    if-eqz v3, :cond_2

    const-string v1, "KeyguardPatternViewController"

    const-string v3, "just for UNPACK device. Always match success"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v4, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "empty pattern input"

    const-wide v4, 0x3fe6666666666666L    # 0.7

    invoke-static {v4, v5, v0, v3}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->falsed(DLjava/lang/String;Ljava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/classifier/FalsingCollector;->updateFalseConfidence(Lcom/android/systemui/classifier/FalsingClassifier$Result;)V

    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    invoke-virtual {p0, v2, v1, v1, v1}, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->onPatternChecked(IIZZ)V

    return-void

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v1, v4}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    iput-object v1, v3, Lcom/android/keyguard/KeyguardPatternViewController;->mPrevCredential:Lcom/android/internal/widget/LockscreenCredential;

    :cond_5
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    iget-object v4, v3, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_6

    iget-object v0, v3, Lcom/android/keyguard/KeyguardPatternViewController;->mPrevCredential:Lcom/android/internal/widget/LockscreenCredential;

    goto :goto_2

    :cond_6
    move-object v0, v1

    :goto_2
    new-instance v5, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;-><init>(Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;ILcom/android/internal/widget/LockscreenCredential;)V

    invoke-static {v4, v0, v2, v5}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, v3, Lcom/android/keyguard/KeyguardPatternViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_7

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->onUserInput()V

    :cond_7
    return-void
.end method

.method public onPatternStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mCancelPatternRunnable:Lcom/android/keyguard/KeyguardPatternViewController$2;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    return-void
.end method
