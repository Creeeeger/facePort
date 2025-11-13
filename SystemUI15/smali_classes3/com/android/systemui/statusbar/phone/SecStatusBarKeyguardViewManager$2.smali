.class Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_0

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p2, p1}, Landroid/hardware/biometrics/BiometricSourceType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->updateLockContainerMargin()V

    :cond_0
    return-void
.end method

.method public final onEmergencyCallAction()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_ESIM:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->clearESimRemoved()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->reset(Z)V

    :cond_1
    return-void
.end method

.method public final onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isFullscreenBouncer()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    :cond_0
    return-void
.end method
