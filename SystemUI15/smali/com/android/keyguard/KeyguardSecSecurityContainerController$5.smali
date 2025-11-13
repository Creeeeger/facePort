.class public final Lcom/android/keyguard/KeyguardSecSecurityContainerController$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$5;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dismiss(ZILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$5;->dismiss(ZIZLcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    return-void
.end method

.method public final dismiss(ZIZLcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 5

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$5;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v2, 0x0

    const-string v3, "KeyguardSecSecurityContainer"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mUnlockAnimationControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isAnimatingBetweenKeyguardAndSurfaceBehind()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "keyguard is already goingAway and face enabled. cancel dismiss"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    sget-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_SIM_PERM_DISABLED:Z

    if-eqz v0, :cond_2

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "dismiss failed. Permanent state."

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const-string v0, "  "

    if-eqz p1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "dismiss caller\n"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-static {v4, v0}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-nez p1, :cond_4

    sget-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->unlockTrigger:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    sget-object v3, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_UNKNOWN:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    if-ne v2, v3, :cond_4

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    move-result v2

    sget v3, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_LOW:I

    if-eq v2, v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unknown trigger caller\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xf

    invoke-static {v3, v0}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyguardUnlockInfo"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->showNextSecurityScreenOrFinish(ZIZLcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    invoke-interface {v1, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setUnlockingKeyguard(Z)V

    :cond_5
    return p0
.end method

.method public final finish(I)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$5;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    invoke-static {v1}, Lcom/android/systemui/util/LogUtil;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "KeyguardUnlockInfo"

    const-string v2, "finish userId=%d, hasDismissAction=%d"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCancelAction:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz p0, :cond_2

    if-eqz v0, :cond_1

    invoke-interface {p0, p1}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDonePending(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final onCancelClicked()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$5;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->onCancelClicked()V

    return-void
.end method

.method public final onSecurityModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$5;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNeedsInput:Z

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0, p1}, Lcom/android/keyguard/ViewMediatorCallback;->setNeedsInput(Z)V

    return-void
.end method

.method public final onUserInput()V
    .locals 0

    return-void
.end method

.method public final reportUnlockAttempt(IIZ)V
    .locals 8

    const/4 v0, 0x3

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$5;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    if-eqz p3, :cond_7

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result p2

    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {p3, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p3

    sget-object v2, Lcom/android/keyguard/KeyguardSecSecurityContainerController$6;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v2, p3

    const-string v2, "1"

    const/4 v3, 0x0

    if-eq p3, v1, :cond_2

    const/4 v4, 0x2

    if-eq p3, v4, :cond_1

    if-eq p3, v0, :cond_0

    move-object p3, v3

    goto :goto_0

    :cond_0
    const-string p3, "2"

    goto :goto_0

    :cond_1
    const-string p3, "3"

    goto :goto_0

    :cond_2
    move-object p3, v2

    :goto_0
    if-eqz p3, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "det"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "102"

    const-string p3, "LSE1032"

    invoke-static {p2, p3, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->clearFailedUnlockAttempts(Z)V

    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p3, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    new-instance p1, Landroid/content/Intent;

    const-string p3, "com.samsung.keyguard.BIOMETRIC_LOCKOUT_RESET"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x0

    const/high16 v2, 0x24000000

    invoke-static {p3, v0, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p3, "KeyguardSecSecurityContainer"

    const-string v2, "Alarm manager have ACTION_BIOMETRIC_LOCKOUT_RESET then will be canceled"

    invoke-static {p3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p3, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-virtual {p1}, Landroid/app/PendingIntent;->cancel()V

    :cond_4
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    iget p1, p1, Lcom/android/systemui/knox/EdmMonitor;->mPwdChangeRequest:I

    const/high16 p3, 0x800000

    const/high16 v2, 0x400000

    const/high16 v4, 0x10000000

    const-string v5, "com.android.settings"

    if-lez p1, :cond_5

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.android.settings.password.ChooseLockGeneric$InternalActivity"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, p1, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_5
    invoke-interface {p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.android.settings.password.ChooseLockGeneric$RecoveryActivity"

    invoke-virtual {p1, v5, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "hide_insecure_options"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "recover_password"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mPrevCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p2, :cond_6

    const-string p3, "password"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_6
    iput-object v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mPrevCredential:Lcom/android/internal/widget/LockscreenCredential;

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsResetCredentialShowing:Z

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "reset_credential_from_previous"

    invoke-static {p2, p3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_7
    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    move-result p3

    if-eqz p3, :cond_a

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 p3, -0x26ab

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result p2

    add-int/2addr p2, v1

    if-ge p2, v0, :cond_9

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWeaverDevice()Z

    move-result p2

    if-eqz p2, :cond_8

    move p1, p3

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->expirePreviousData()Z

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->resetKeyguard()V

    goto :goto_1

    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->reportFailedUnlockAttempt(II)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->notifyFailedUnlockAttemptChanged()V

    :cond_b
    :goto_1
    return-void
.end method

.method public final reset()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$5;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->resetKeyguard()V

    return-void
.end method

.method public final setPrevCredential(Lcom/android/internal/widget/LockscreenCredential;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$5;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mPrevCredential:Lcom/android/internal/widget/LockscreenCredential;

    return-void
.end method

.method public final showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$5;->userActivity()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$5;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method public final userActivity()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$5;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    return-void
.end method
