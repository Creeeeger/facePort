.class Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$2;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$2;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    iput-boolean p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mIsFaceRunning:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->startVI()V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->access$100(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-boolean p1, p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->stopVI()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onFaceUnlockOptionChanged(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$2;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->access$000(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object v0, v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string v1, "onFaceUnlockOptionChanged enabled = "

    invoke-static {v1, v0, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->setPunchHoleVI()V

    :cond_0
    return-void
.end method

.method public final onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$2;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    invoke-static {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->access$200(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object p1, p1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string v0, "onKeyguardBouncerFullyShowingChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->startVI()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->stopVI()V

    :goto_0
    return-void
.end method

.method public final onLockModeChanged()V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$2;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mDisplayLifeCycleObserver:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController$4;

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
