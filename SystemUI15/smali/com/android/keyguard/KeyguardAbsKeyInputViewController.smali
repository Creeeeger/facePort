.class public abstract Lcom/android/keyguard/KeyguardAbsKeyInputViewController;
.super Lcom/android/keyguard/KeyguardInputViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCountdownTimer:Landroid/os/CountDownTimer;

.field public mDismissing:Z

.field public final mEmergencyButtonCallback:Lcom/android/keyguard/KeyguardAbsKeyInputViewController$1;

.field public final mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final mKeyDownListener:Lcom/android/keyguard/KeyguardAbsKeyInputViewController$$ExternalSyntheticLambda0;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockedOut:Z

.field public mPendingLockCheck:Landroid/os/AsyncTask;

.field public mPrevCredential:Lcom/android/internal/widget/LockscreenCredential;

.field public mResumed:Z


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/KeyguardAbsKeyInputView;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/keyguard/KeyguardSecurityCallback;",
            "Lcom/android/keyguard/KeyguardMessageAreaController$Factory;",
            "Lcom/android/internal/util/LatencyTracker;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/keyguard/EmergencyButtonController;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p5

    move-object/from16 v4, p9

    move-object v5, p6

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    invoke-direct/range {v0 .. v7}, Lcom/android/keyguard/KeyguardInputViewController;-><init>(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V

    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputViewController;)V

    iput-object v0, v8, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyDownListener:Lcom/android/keyguard/KeyguardAbsKeyInputViewController$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$1;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputViewController;)V

    iput-object v0, v8, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mEmergencyButtonCallback:Lcom/android/keyguard/KeyguardAbsKeyInputViewController$1;

    move-object v0, p2

    iput-object v0, v8, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v0, p4

    iput-object v0, v8, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p7

    iput-object v0, v8, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    move-object/from16 v0, p8

    iput-object v0, v8, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v0, p9

    iput-object v0, v8, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/keyguard/KeyguardAbsKeyInputViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/keyguard/KeyguardAbsKeyInputViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public handleAttemptLockout(J)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockedOut:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-long p1, p1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityCallback;->onAttemptLockoutStart(J)V

    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$2;

    const-wide/16 v1, 0x3e8

    mul-long v3, p1, v1

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$2;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputViewController;JJ)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public needsInput()Z
    .locals 0

    instance-of p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    return p0
.end method

.method public onPasswordChecked(IIZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

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

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p2

    invoke-interface {p2, p1, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    iget-object p2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 p3, 0xb

    invoke-virtual {p2, p3}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {p2, v2, p1, p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {p3, v2, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p3

    invoke-interface {p3, p1, p2, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    if-lez p2, :cond_2

    iget-object p3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide p3

    invoke-virtual {p0, p3, p4}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->handleAttemptLockout(J)V

    :cond_2
    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->startErrorAnimation()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mResumed:Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->reset$1()V

    return-void
.end method

.method public onResume(I)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPaused:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mResumed:Z

    return-void
.end method

.method public onUserInput()V
    .locals 2

    const-wide v0, 0x3fe3333333333333L    # 0.6

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v1, v0}, Lcom/android/systemui/classifier/FalsingCollector;->updateFalseConfidence(Lcom/android/systemui/classifier/FalsingClassifier$Result;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->onUserInput()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public onViewAttached()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onViewAttached()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyDownListener:Lcom/android/keyguard/KeyguardAbsKeyInputViewController$$ExternalSyntheticLambda0;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyDownListener:Lcom/android/keyguard/KeyguardAbsKeyInputViewController$$ExternalSyntheticLambda0;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mEmergencyButtonCallback:Lcom/android/keyguard/KeyguardAbsKeyInputViewController$1;

    iput-object v1, v0, Lcom/android/keyguard/EmergencyButtonController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v2, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardInputViewController;->shouldLockout(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->handleAttemptLockout(J)V

    :cond_0
    return-void
.end method

.method public reset$1()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mDismissing:Z

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v1, v0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->resetState()V

    return-void
.end method

.method public abstract resetState()V
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setNextMessageColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public showPromptReason(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPromptReasonStringRes(I)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method public startErrorAnimation()V
    .locals 0

    return-void
.end method
