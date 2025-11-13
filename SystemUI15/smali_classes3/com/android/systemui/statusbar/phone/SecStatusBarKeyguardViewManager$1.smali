.class public final Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$1;->this$0:Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$1;->this$0:Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mCurrentOrientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->updateLockContainerMargin()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSelectedUserInteractor:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->setViewAttribution(Z)V

    :cond_0
    return-void
.end method
