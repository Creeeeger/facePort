.class public final Lcom/android/systemui/biometrics/AuthRippleController$keyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthRippleController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthRippleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;I)V
    .locals 1

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Landroid/hardware/biometrics/BiometricFingerprintConstants;->shouldDisableUdfpsDisplayMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->access$getMView$p$s-2044592172(Lcom/android/systemui/biometrics/AuthRippleController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/AuthRippleView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthRippleView;->retractDwellRipple()V

    :cond_0
    return-void
.end method

.method public final onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->access$getMView$p$s-2044592172(Lcom/android/systemui/biometrics/AuthRippleController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/AuthRippleView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthRippleView;->retractDwellRipple()V

    :cond_0
    return-void
.end method

.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->access$getMView$p$s-2044592172(Lcom/android/systemui/biometrics/AuthRippleController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/AuthRippleView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthRippleView;->fadeDwellRipple()V

    :cond_0
    return-void
.end method

.method public final onKeyguardBouncerStateChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->access$getMView$p$s-2044592172(Lcom/android/systemui/biometrics/AuthRippleController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/AuthRippleView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthRippleView;->fadeDwellRipple()V

    :cond_0
    return-void
.end method
