.class Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$UpdateMonitorCallback;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$UpdateMonitorCallback;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$UpdateMonitorCallback;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;)V

    return-void
.end method


# virtual methods
.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    const-string p1, "KeyguardUpdateMonitorCallback#onBiometricAuthenticated"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$UpdateMonitorCallback;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->update(Z)V

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final onBiometricEnrollmentStateChanged(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$UpdateMonitorCallback;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->update(Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;

    const/4 v0, 0x7

    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->invokeForEachCallback(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final onEnabledTrustAgentsChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$UpdateMonitorCallback;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->update(Z)V

    return-void
.end method

.method public final onFacesCleared()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$UpdateMonitorCallback;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->update(Z)V

    return-void
.end method

.method public final onFingerprintsCleared()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$UpdateMonitorCallback;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->update(Z)V

    return-void
.end method

.method public final onForceIsDismissibleChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$UpdateMonitorCallback;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->update(Z)V

    return-void
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$UpdateMonitorCallback;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->update(Z)V

    return-void
.end method

.method public final onLockedOutStateChanged(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$UpdateMonitorCallback;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->update(Z)V

    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$UpdateMonitorCallback;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->update(Z)V

    return-void
.end method

.method public final onStrongAuthStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$UpdateMonitorCallback;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->update(Z)V

    return-void
.end method

.method public final onTrustChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$UpdateMonitorCallback;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->update(Z)V

    const-string p1, "KeyguardStateController#notifyKeyguardChanged"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->invokeForEachCallback(Ljava/util/function/Consumer;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final onTrustManagedChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$UpdateMonitorCallback;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->update(Z)V

    return-void
.end method

.method public final onUserSwitchComplete(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$UpdateMonitorCallback;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->update(Z)V

    return-void
.end method
