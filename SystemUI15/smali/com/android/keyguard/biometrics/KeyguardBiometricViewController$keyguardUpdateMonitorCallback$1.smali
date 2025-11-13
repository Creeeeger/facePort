.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_0

    sget p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1308aa

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->errorString:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->errorString:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$updateErrorText(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, v0, :cond_5

    const/16 p3, 0x2712

    if-eq p1, p3, :cond_1

    const/16 p3, 0x2713

    if-eq p1, p3, :cond_1

    const/16 p3, 0x2715

    if-eq p1, p3, :cond_1

    const p3, 0x186a1

    if-eq p1, p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 p3, 0x1

    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    iput-boolean p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isHiddenRetry:Z

    if-eqz p2, :cond_2

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->errorString:Ljava/lang/String;

    :cond_2
    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    const/16 p2, 0x3ee

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->errorString:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$updateErrorText(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->vibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->vibration:Lcom/android/systemui/vibrate/VibrationUtil;

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->errorString:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$updateErrorText(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p1, ""

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->errorString:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$updateErrorText(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final onBiometricLockoutChanged(Z)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBiometricsLockoutChanged( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardBiometricView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->currentUserId:I

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedBiometricUnlockAttempts(I)I

    move-result p1

    if-eqz p1, :cond_0

    rem-int/lit8 p1, p1, 0x5

    if-nez p1, :cond_0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->handleBiometricAttemptLockout(J)V

    goto :goto_0

    :cond_0
    const-string p0, "onBiometricsLockoutChanged( mCountdownTimer is working. )"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    iget-boolean p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isRunning:Z

    if-eq p2, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isRunning:Z

    if-eqz p1, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->errorString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIcon()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIcon()V

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/SecLockIconView;->updateScanningFaceAnimation(Lcom/android/systemui/widget/SystemUIImageView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onDualDarInnerLockScreenStateChanged(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p2, :cond_0

    const p2, 0x7f080c5d

    goto :goto_0

    :cond_0
    const p2, 0x7f080c5e

    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->bouncerShowing:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->bouncerShowing:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->errorString:Ljava/lang/String;

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:J

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateVisibility$2()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLayout$3$1()V

    :cond_0
    return-void
.end method

.method public final onLockModeChanged()V
    .locals 5

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isTimerRunning()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLockOut:Z

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLockOut:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->clearView()V

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIcon()V

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->bouncerShowing:Z

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIconVisibility(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->resetBiometricLockOutTimer()V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->countDownTimer:Landroid/os/CountDownTimer;

    sub-long/2addr v0, v2

    new-instance v2, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$handleAttemptLockout$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$handleAttemptLockout$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;J)V

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateBiometricViewLayout()V

    :cond_2
    return-void
.end method

.method public final onRemoteLockInfoChanged()V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isRemoteLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/SecLockIconView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    return-void
.end method

.method public final onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    sget p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->clearView()V

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLayout$3$1()V

    return-void
.end method

.method public final onStrongAuthStateChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_0

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->clearView()V

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLayout$3$1()V

    :cond_1
    return-void
.end method

.method public final onUserSwitchComplete(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    iput p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->currentUserId:I

    return-void
.end method
