.class public final Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;
.super Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecPatternViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardPatternViewController;)V

    return-void
.end method


# virtual methods
.method public final onPatternChecked(IIZZ)V
    .locals 9

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

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
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "KeyguardSecPatternViewController"

    const-string v5, "!@onPatternChecked matched=%b timeoutMs=%d userId=%d"

    invoke-static {v4, v5, v3}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    if-eqz p3, :cond_4

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardSecPatternViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    invoke-virtual {p2, v2}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p2

    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p3, p3, Lcom/android/keyguard/KeyguardPatternViewController;->mPrevCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-interface {p2, p3}, Lcom/android/keyguard/KeyguardSecurityCallback;->setPrevCredential(Lcom/android/internal/widget/LockscreenCredential;)V

    :cond_1
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p2

    invoke-interface {p2, p1, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    if-eqz v0, :cond_c

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-boolean p3, p2, Lcom/android/keyguard/KeyguardSecPatternViewController;->mGoingToSleep:Z

    if-nez p3, :cond_3

    iget-object p3, p2, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean p3, p3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p2, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object p3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v3, v2, p1, p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto/16 :goto_5

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p3, p3, Lcom/android/keyguard/KeyguardSecPatternViewController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    const/16 v0, 0x72

    invoke-virtual {p3, v0}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p3, p3, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {p3, v0}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    const/4 p3, 0x2

    if-eqz p4, :cond_a

    invoke-interface {v3, p1, p2, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    iget-object p4, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p4, p4, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p4, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p4}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result p4

    if-nez p4, :cond_8

    iget-object p4, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p4, p4, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p4, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p4}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDisableDeviceByMultifactor()V

    const/16 p4, 0x8

    if-nez p2, :cond_5

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->isHintText$1()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-ne p1, p4, :cond_a

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    goto/16 :goto_4

    :cond_5
    if-lez p2, :cond_a

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isPermanentLock()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->isHintText$1()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v0, p4}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_6
    iget-object p4, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p4, v2}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    iget-object p4, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p4, p4, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWeaverDevice()Z

    move-result p4

    if-nez p4, :cond_7

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1, v1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setLockoutAttemptDeadline(II)J

    move-result-wide v2

    goto :goto_2

    :cond_7
    iget-object p4, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p4, p4, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p4, p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setLockoutAttemptDeadline(II)J

    move-result-wide v2

    :goto_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p1, v2, v3}, Lcom/android/keyguard/KeyguardSecPatternViewController;->handleAttemptLockout(J)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object p4, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_STRONG_AUTH_CHANGED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {p1, p3, p4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    goto :goto_4

    :cond_8
    iget-object p4, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-class p4, Lcom/android/keyguard/KeyguardPatternView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    const-string v0, "User %d has exceeded number of authentication failure limit when using pattern authentication"

    invoke-static {v0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x1

    const-string v6, "KeyguardPatternView"

    const/4 v2, 0x5

    const/4 v3, 0x1

    move v8, p1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    const-string p1, "knoxztinternal"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;

    move-result-object p1

    if-eqz p1, :cond_9

    const/4 p4, 0x5

    const/4 v0, 0x0

    invoke-interface {p1, p4, v1, v0}, Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;->notifyFrameworkEvent(IILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecPatternViewController;->disableDevicePermanently$1()V

    :cond_a
    :goto_4
    if-nez p2, :cond_c

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardInputViewController;->setMessageTimeout(Z)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1, p3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemainingAttempt(I)I

    move-result p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p2}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f130903

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-lez p1, :cond_b

    const-string p3, " ("

    invoke-static {p2, p3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p3}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    const v0, 0x7f110006

    invoke-virtual {p3, v0, p1, p4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, ")"

    invoke-static {p2, p1, p3}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_b
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {p1, p2, v1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->displayFailedAnimation()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mCancelPatternRunnable:Lcom/android/keyguard/KeyguardPatternViewController$2;

    const-wide/16 p2, 0x7d0

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    :goto_5
    return-void
.end method

.method public final onPatternDetected(Ljava/util/List;)V
    .locals 6

    const-string v0, "onPatternDetected"

    const-string v1, "KeyguardSecPatternViewController"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    if-eqz v2, :cond_4

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v2, v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDualDarDeviceOwner(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0, v3}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v2, v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDualDarInnerLayerUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "KeyguardSecPatternViewController.DDAR"

    const-string v2, "Pattern detected from DualDAR DO"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setCredentialAttempted()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0, v3}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-ge v2, v5, :cond_2

    const-string v2, "!@Password too short!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v4, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    const-class v1, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "empty pattern input"

    const-wide v4, 0x3fe6666666666666L    # 0.7

    invoke-static {v4, v5, v1, v2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->falsed(DLjava/lang/String;Ljava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/systemui/classifier/FalsingCollector;->updateFalseConfidence(Lcom/android/systemui/classifier/FalsingClassifier$Result;)V

    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->onPatternChecked(IIZZ)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v1, v5}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v2, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v3

    new-instance v5, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;

    invoke-direct {v5, p0, v0}, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;-><init>(Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;I)V

    invoke-static {v2, v3, v0, v4, v5}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDarDo;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->onUserInput()V

    :cond_3
    return-void

    :cond_4
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->onPatternDetected(Ljava/util/List;)V

    return-void
.end method

.method public final onPatternStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->onPatternStart()V

    const-string v0, "KeyguardSecPatternViewController"

    const-string v1, "onPatternStart"

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->setSubSecurityMessage$1(I)V

    return-void
.end method
