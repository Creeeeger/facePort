.class public Lcom/android/keyguard/KeyguardPatternViewController;
.super Lcom/android/keyguard/KeyguardInputViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCancelPatternRunnable:Lcom/android/keyguard/KeyguardPatternViewController$2;

.field public mCountdownTimer:Landroid/os/CountDownTimer;

.field public final mEmergencyButtonCallback:Lcom/android/keyguard/KeyguardPatternViewController$1;

.field public final mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field public mPendingLockCheck:Landroid/os/AsyncTask;

.field public final mPostureCallback:Lcom/android/keyguard/KeyguardPatternViewController$$ExternalSyntheticLambda0;

.field public final mPostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

.field public mPrevCredential:Lcom/android/internal/widget/LockscreenCredential;


# direct methods
.method public static synthetic $r8$lambda$fCRJwEeRTCyxf6r0H2lf0lowklM(Lcom/android/keyguard/KeyguardPatternViewController;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardPatternView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/KeyguardPatternView;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/keyguard/KeyguardSecurityCallback;",
            "Lcom/android/internal/util/LatencyTracker;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/keyguard/EmergencyButtonController;",
            "Lcom/android/keyguard/KeyguardMessageAreaController$Factory;",
            "Lcom/android/systemui/statusbar/policy/DevicePostureController;",
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

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    invoke-direct/range {v0 .. v7}, Lcom/android/keyguard/KeyguardInputViewController;-><init>(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V

    new-instance v0, Lcom/android/keyguard/KeyguardPatternViewController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardPatternViewController;)V

    iput-object v0, v8, Lcom/android/keyguard/KeyguardPatternViewController;->mPostureCallback:Lcom/android/keyguard/KeyguardPatternViewController$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/keyguard/KeyguardPatternViewController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternViewController$1;-><init>(Lcom/android/keyguard/KeyguardPatternViewController;)V

    iput-object v0, v8, Lcom/android/keyguard/KeyguardPatternViewController;->mEmergencyButtonCallback:Lcom/android/keyguard/KeyguardPatternViewController$1;

    new-instance v0, Lcom/android/keyguard/KeyguardPatternViewController$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternViewController$2;-><init>(Lcom/android/keyguard/KeyguardPatternViewController;)V

    iput-object v0, v8, Lcom/android/keyguard/KeyguardPatternViewController;->mCancelPatternRunnable:Lcom/android/keyguard/KeyguardPatternViewController$2;

    move-object v0, p2

    iput-object v0, v8, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v0, p4

    iput-object v0, v8, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v0, p6

    iput-object v0, v8, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    move-object/from16 v0, p7

    iput-object v0, v8, Lcom/android/keyguard/KeyguardPatternViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v0, p8

    iput-object v0, v8, Lcom/android/keyguard/KeyguardPatternViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    iget-object v0, v8, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardPatternView;

    const v1, 0x7f0a064b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, v8, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    move-object/from16 v0, p10

    iput-object v0, v8, Lcom/android/keyguard/KeyguardPatternViewController;->mPostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/keyguard/KeyguardPatternViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public displayDefaultSecurityMessage()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternViewController;->getInitialMessageResId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(I)V

    return-void
.end method

.method public getInitialMessageResId()I
    .locals 0

    const p0, 0x7f130828

    return p0
.end method

.method public handleAttemptLockout(J)V
    .locals 7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

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

    new-instance v0, Lcom/android/keyguard/KeyguardPatternViewController$3;

    const-wide/16 v1, 0x3e8

    mul-long v3, p1, v1

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/keyguard/KeyguardPatternViewController$3;-><init>(Lcom/android/keyguard/KeyguardPatternViewController;JJ)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public final needsInput()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onPause()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public onResume(I)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPaused:Z

    return-void
.end method

.method public onViewAttached()V
    .locals 5

    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onViewAttached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v1, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardPatternViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setSaveEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v3, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v2, Lcom/android/keyguard/KeyguardPatternViewController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPatternViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardPatternViewController;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mEmergencyButtonCallback:Lcom/android/keyguard/KeyguardPatternViewController$1;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    iput-object v0, v2, Lcom/android/keyguard/EmergencyButtonController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardPatternView;

    const v2, 0x7f0a0243

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/android/keyguard/KeyguardPatternViewController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPatternViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardPatternViewController;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardPatternView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mPostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->getDevicePosture()I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mPostureCallback:Lcom/android/keyguard/KeyguardPatternViewController$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardPatternViewController;->handleAttemptLockout(J)V

    :cond_1
    return-void
.end method

.method public onViewDetached()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onViewDetached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    iput-object v1, v0, Lcom/android/keyguard/EmergencyButtonController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardPatternView;

    const v2, 0x7f0a0243

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mPostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mPostureCallback:Lcom/android/keyguard/KeyguardPatternViewController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public reset$1()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternViewController;->displayDefaultSecurityMessage()V

    return-void
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
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    const v2, 0x7f1309ec

    if-eq p1, v1, :cond_7

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/16 v1, 0x10

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x7f1309da

    goto :goto_0

    :cond_1
    const v2, 0x7f1309d8

    goto :goto_0

    :cond_2
    const v2, 0x7f1309dd

    goto :goto_0

    :cond_3
    const v2, 0x7f1309e0

    goto :goto_0

    :cond_4
    const v2, 0x7f1309e6

    goto :goto_0

    :cond_5
    const v2, 0x7f1309e8

    goto :goto_0

    :cond_6
    move v2, v0

    :cond_7
    :goto_0
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    :cond_8
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardPatternView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/high16 v2, 0x3fc00000    # 1.5f

    :goto_0
    move v10, v2

    goto :goto_1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :goto_1
    iget-object v2, v1, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    const/high16 v2, 0x43960000    # 300.0f

    mul-float/2addr v2, v10

    float-to-long v5, v2

    iget-object v2, v1, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget v3, v2, Lcom/android/settingslib/animation/AppearAnimationUtils;->mStartTranslation:F

    neg-float v7, v3

    iget-object v8, v2, Lcom/android/settingslib/animation/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v9, Lcom/android/keyguard/KeyguardInputView$1;

    const/16 v2, 0x15

    invoke-direct {v9, v1, v2}, Lcom/android/keyguard/KeyguardInputView$1;-><init>(Lcom/android/keyguard/KeyguardInputView;I)V

    const-wide/16 v3, 0x0

    move-object v2, v1

    invoke-static/range {v2 .. v9}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;Lcom/android/keyguard/KeyguardInputView$1;)V

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    goto :goto_2

    :cond_1
    iget-object v0, v1, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    :goto_2
    iget-object v2, v1, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v2

    new-instance v3, Lcom/android/keyguard/KeyguardPatternView$$ExternalSyntheticLambda0;

    move-object/from16 v4, p1

    invoke-direct {v3, v1, v4}, Lcom/android/keyguard/KeyguardPatternView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardPatternView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    iget-object v0, v1, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/BouncerKeyguardMessageArea;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v11, v1, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v12, v1, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/BouncerKeyguardMessageArea;

    const/high16 v0, 0x43480000    # 200.0f

    mul-float/2addr v10, v0

    float-to-long v0, v10

    iget v2, v11, Lcom/android/settingslib/animation/AppearAnimationUtils;->mStartTranslation:F

    neg-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v17, v2, v3

    iget-object v2, v11, Lcom/android/settingslib/animation/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    const-wide/16 v13, 0x0

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-wide v15, v0

    move-object/from16 v19, v2

    invoke-virtual/range {v11 .. v21}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;Lcom/android/keyguard/KeyguardInputView$1;)V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
