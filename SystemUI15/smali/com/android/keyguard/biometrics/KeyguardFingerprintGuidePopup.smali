.class public final Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public animatorSet:Landroid/animation/AnimatorSet;

.field public bouncerShowing:Z

.field public currentRotation:I

.field public final display:Landroid/view/Display;

.field public final displayLifeCycleObserver:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$displayLifeCycleObserver$1;

.field public final displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public guideText:Lcom/android/systemui/widget/SystemUITextView;

.field public final handler:Landroid/os/Handler;

.field public helpText:Ljava/lang/String;

.field public final hidePopupRunnable:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$hidePopupRunnable$1;

.field public isAnimating:Z

.field public isRunningState:Z

.field public keyguardGuidePopup:Landroid/view/ViewGroup;

.field public keyguardShowing:Z

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final keyguardUpdateMonitorCallback:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;

.field public final telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->handler:Landroid/os/Handler;

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->display:Landroid/view/Display;

    new-instance p2, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$hidePopupRunnable$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$hidePopupRunnable$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->hidePopupRunnable:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$hidePopupRunnable$1;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->telephonyManager:Landroid/telephony/TelephonyManager;

    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$displayLifeCycleObserver$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$displayLifeCycleObserver$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->displayLifeCycleObserver:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$displayLifeCycleObserver$1;

    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final access$reset(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->isAnimating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->isAnimating:Z

    return-void
.end method

.method public static final access$updatePopupVisibility(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->isRunningState:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v2

    add-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->clearGuidePopup()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final clearGuidePopup()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->guideText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardGuidePopup:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$dismissAnimation$1$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$dismissAnimation$1$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup$keyguardUpdateMonitorCallback$1;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string v0, "KeyguardFingerprintGuidePopup"

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v0, 0x7f0a058b

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->keyguardGuidePopup:Landroid/view/ViewGroup;

    const v0, 0x7f0a0592

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardFingerprintGuidePopup;->guideText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_0

    const p0, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, p0}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const v1, 0x3ed1eb85    # 0.41f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_0
    return-void
.end method
