.class Lcom/android/keyguard/KeyguardSecPasswordViewController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecPasswordViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecPasswordViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordViewController;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public final onBiometricLockoutChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->setMessageAreaLandscapeAdditionalPadding()V

    return-void
.end method

.method public final onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordViewController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, v0, :cond_0

    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mBouncerShowing:Z

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
