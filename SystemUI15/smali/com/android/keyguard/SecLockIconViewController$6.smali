.class Lcom/android/keyguard/SecLockIconViewController$6;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/SecLockIconViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/SecLockIconViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/SecLockIconViewController$6;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBiometricLockoutChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$6;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    iget-object p1, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/SecLockIconView;->updateLockIconViewLayoutParams(I)V

    return-void
.end method

.method public final onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$6;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    iget-boolean p2, p0, Lcom/android/keyguard/SecLockIconViewController;->mRunningFace:Z

    if-eq p2, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/SecLockIconViewController;->mRunningFace:Z

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility$1()V

    :cond_0
    return-void
.end method

.method public final onKeyguardBouncerStateChanged(Z)V
    .locals 2

    const-string v0, "onKeyguardBouncerStateChanged : "

    const-string v1, "SecLockIconViewController"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$6;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    iput-boolean p1, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mIsBouncerShowing:Z

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility$1()V

    return-void
.end method

.method public final onLockModeChanged()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$6;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    iget-object v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mCanDismissLockScreen:Z

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility$1()V

    :cond_0
    return-void
.end method

.method public final onStrongAuthStateChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$6;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    iget-object v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

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
    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility$1()V

    :cond_1
    return-void
.end method

.method public final onTrustChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$6;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    iget-object p1, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/SecLockIconView;->updateLockIconViewLayoutParams(I)V

    return-void
.end method
