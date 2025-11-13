.class public final Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->access$updatePopupVisibility(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    :cond_0
    return-void
.end method

.method public final onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    const/4 v0, 0x2

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, v1, :cond_4

    sget p3, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->display:Landroid/view/Display;

    invoke-virtual {p3}, Landroid/view/Display;->getRotation()I

    move-result p3

    invoke-static {p3}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result p3

    if-ne p3, v0, :cond_4

    iget-boolean p3, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->isAnimating:Z

    if-nez p3, :cond_4

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "onBiometricHelp(msgId : "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", helpString : "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "KeyguardFingerprintGuidePopup"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->guideText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->helpText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p1

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintImageSize()I

    move-result p2

    add-int/2addr p1, p2

    div-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07051c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f07051d

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p2, p1

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardGuidePopup:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->hidePopupRunnable:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$hidePopupRunnable$1;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->hidePopupRunnable:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$hidePopupRunnable$1;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->isAnimating:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->helpText:Ljava/lang/String;

    const-string p2, ""

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardGuidePopup:Landroid/view/ViewGroup;

    new-array p2, v0, [F

    fill-array-data p2, :array_0

    const-string v0, "alpha"

    invoke-static {p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$showMessage$1$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$showMessage$1$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->hidePopupRunnable:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$hidePopupRunnable$1;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->hidePopupRunnable:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$hidePopupRunnable$1;

    const-wide/16 p2, 0xbb8

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onBiometricLockoutChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->clearGuidePopup()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->access$updatePopupVisibility(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->isRunningState:Z

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->access$updatePopupVisibility(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    :cond_0
    return-void
.end method

.method public final onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->bouncerShowing:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->bouncerShowing:Z

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->clearGuidePopup()V

    if-nez p1, :cond_1

    const-string p1, "KeyguardFingerprintGuidePopup"

    const-string v0, "set text preview - onKeyguardBouncerFullyShowingChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->access$updatePopupVisibility(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    :cond_1
    return-void
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardShowing:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardShowing:Z

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->access$updatePopupVisibility(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->clearGuidePopup()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onLockModeChanged()V
    .locals 2

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->currentRotation:I

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->displayLifeCycleObserver:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$displayLifeCycleObserver$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->displayLifeCycleObserver:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$displayLifeCycleObserver$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final onPhoneStateChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->semIsVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->clearGuidePopup()V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->access$updatePopupVisibility(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onSimStateChanged(III)V
    .locals 0

    invoke-static {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->clearGuidePopup()V

    :cond_0
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->access$updatePopupVisibility(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    return-void
.end method

.method public final onSystemDialogsShowing()V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->access$updatePopupVisibility(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    :cond_0
    return-void
.end method

.method public final onTrustChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->access$updatePopupVisibility(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    return-void
.end method
