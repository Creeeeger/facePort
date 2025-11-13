.class Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mFirstBypassAttempt:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDelayShowingKeyguardStatusBar:Z

    :cond_0
    return-void
.end method

.method public final onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    iget p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarState:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mFirstBypassAttempt:Z

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDozing:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDelayShowingKeyguardStatusBar:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isBiometricUnlock()Z

    move-result p1

    if-nez p1, :cond_2

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mFirstBypassAttempt:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->animateKeyguardStatusBarIn()V

    :cond_2
    return-void
.end method

.method public final onFinishedGoingToSleep(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mFirstBypassAttempt:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDelayShowingKeyguardStatusBar:Z

    return-void
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->KEYGUARD_HUN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateUserSwitcher()V

    :cond_0
    return-void
.end method
