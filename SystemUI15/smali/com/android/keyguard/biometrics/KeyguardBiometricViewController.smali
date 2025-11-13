.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

.field public final biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

.field public final biometricLockOutMessage:Lcom/android/systemui/widget/SystemUITextView;

.field public final biometricRetryContainer:Landroid/widget/FrameLayout;

.field public final biometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

.field public bouncerShowing:Z

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final configurationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$configurationListener$1;

.field public countDownTimer:Landroid/os/CountDownTimer;

.field public currentUserId:I

.field public debugCount:I

.field public displayDeviceType:I

.field public final displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public drawableResId:I

.field public errorString:Ljava/lang/String;

.field public isHiddenRetry:Z

.field public isLockOut:Z

.field public isLockStarEnabled:Z

.field public isRunning:Z

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final keyguardUpdateMonitorCallback:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;

.field public final lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

.field public final lockIconRunnable:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lockIconRunnable$1;

.field public final lockIconView:Lcom/android/keyguard/SecLockIconView;

.field public final lockStarCallback:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lockStarCallback$1;

.field public final lottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field public final lottieIconRunnable:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lottieIconRunnable$1;

.field public mCurrentRotation:I

.field public final mDisplayLifeCycleObserver:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$mDisplayLifeCycleObserver$1;

.field public mShowingRetryButton:Z

.field public final pluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

.field public final powerManager:Landroid/os/PowerManager;

.field private settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public vibration:Lcom/android/systemui/vibrate/VibrationUtil;

.field public final vibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricView;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/view/accessibility/AccessibilityManager;Landroid/os/PowerManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/systemui/lockstar/PluginLockStarManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iput-object p4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->powerManager:Landroid/os/PowerManager;

    iput-object p5, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p6, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iput-object p7, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->vibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iput-object p8, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->pluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    const p2, 0x7f0a0574

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryContainer:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    const p2, 0x7f0a0573

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    const p2, 0x7f0a0575

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    const p2, 0x7f0a01be

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    const p2, 0x7f0a01bf

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/SecLockIconView;

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    const p2, 0x7f0a01c0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    const p2, 0x7f0a0185

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricLockOutMessage:Lcom/android/systemui/widget/SystemUITextView;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->errorString:Ljava/lang/String;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance p2, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$mHandler$1;

    invoke-direct {p2, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$mHandler$1;-><init>(Landroid/os/Looper;)V

    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lottieIconRunnable$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lottieIconRunnable$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lottieIconRunnable:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lottieIconRunnable$1;

    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lockIconRunnable$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lockIconRunnable$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconRunnable:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lockIconRunnable$1;

    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lockStarCallback$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lockStarCallback$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockStarCallback:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lockStarCallback$1;

    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$settingsListener$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$settingsListener$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$configurationListener$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$configurationListener$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->configurationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$configurationListener$1;

    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$mDisplayLifeCycleObserver$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$mDisplayLifeCycleObserver$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->mDisplayLifeCycleObserver:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$mDisplayLifeCycleObserver$1;

    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;

    return-void
.end method

.method public static final synthetic access$getMView$p$s1571510355(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static final access$onClickRetryButton(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isHiddenRetry:Z

    if-nez v0, :cond_0

    const-string v0, "KeyguardBiometricView"

    const-string v1, "onClick - Retry icon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->powerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    const-string v2, "Face auth triggered due to retry button click."

    invoke-virtual {v1, v2}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logFaceAuthRequested(Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/deviceentry/shared/FaceAuthReasonKt;->apiRequestReasonToUiEvent:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateVisibility$2()V

    const-string p0, "102"

    const-string v0, "LSE1013"

    const-string v1, "2"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final access$updateErrorText(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->bouncerShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLockOut:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->clearView()V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    new-instance v2, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setErrorText$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setErrorText$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    invoke-static {v0, v2}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->bouncerShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isHiddenRetry:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIcon()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final acceptLockStarModifier()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->pluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLockStarEnabled:Z

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v0, :cond_4

    const-string v1, "lockIconVisibility"

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    const-string v1, "lockIconDrawable"

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final clearView()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconRunnable:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lockIconRunnable$1;

    invoke-virtual {v2, v0, v3, p0}, Lcom/android/keyguard/SecLockIconView;->initBiometricErrorIndicationAnimationValue(Ljava/lang/Object;ZLjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lottieIconRunnable:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lottieIconRunnable$1;

    invoke-virtual {v2, v0, v3, p0}, Lcom/android/keyguard/SecLockIconView;->initBiometricErrorIndicationAnimationValue(Ljava/lang/Object;ZLjava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final handleBiometricAttemptLockout(J)V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v4, p1, v0

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->stop()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricLockOutMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "handleBiometricsAttemptLockout( elapsedRealtimeDeadline = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardBiometricView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    const-wide/16 v6, 0x3e8

    iget-object v8, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricLockOutMessage:Lcom/android/systemui/widget/SystemUITextView;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;-><init>(Landroid/content/Context;JJLcom/android/systemui/widget/SystemUITextView;)V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_1
    return-void
.end method

.method public final initBiometricErrorIndicationAnimationValue$1()V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setScaleY(F)V

    return-void
.end method

.method public final initLockStarLockIcon$1(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    iput-boolean p1, v0, Lcom/android/keyguard/SecLockIconView;->mIsLockStarEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIconDrawable(ZZ)V

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->updateImage()V

    :cond_0
    return-void
.end method

.method public final needsToChangeRetryButton()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050086

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_1
    :goto_1
    move v2, v3

    goto :goto_2

    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050076

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return v2
.end method

.method public final onInit()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->bringToFront()V

    return-void
.end method

.method public final onViewAttached()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->mDisplayLifeCycleObserver:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$mDisplayLifeCycleObserver$1;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$inflateRetryView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$inflateRetryView$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "background"

    invoke-static {v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f080fb6

    goto :goto_0

    :cond_0
    const v3, 0x7f080fb5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    const v2, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricLockOutMessage:Lcom/android/systemui/widget/SystemUITextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLayout$3$1()V

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockContainerMargin$1()V

    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    new-instance v2, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$2;

    invoke-direct {v2}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$2;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result v0

    iget-object v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    iput-boolean v0, v3, Lcom/android/keyguard/SecLockIconView;->mIsOneHandModeEnabled:Z

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/net/Uri;

    const-string v4, "any_screen_running"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->configurationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$configurationListener$1;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->displayDeviceType:I

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->pluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    iget-object v2, v0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    move-result v1

    :cond_2
    iput-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLockStarEnabled:Z

    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    iput-boolean v1, v2, Lcom/android/keyguard/SecLockIconView;->mIsLockStarEnabled:Z

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockStarCallback:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$lockStarCallback$1;

    const-string v1, "KeyguardBiometricView"

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->registerCallback(Ljava/lang/String;Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->stop()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->mDisplayLifeCycleObserver:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$mDisplayLifeCycleObserver$1;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->configurationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$configurationListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->pluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    const-string v0, "KeyguardBiometricView"

    invoke-virtual {p0, v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->unregisterCallback(Ljava/lang/String;)V

    return-void
.end method

.method public final resetBiometricLockOutTimer()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->stop()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricLockOutMessage:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final resetLockIconState()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    return-void
.end method

.method public final startLockIconAnimation(Z)V
    .locals 6

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v2, 0x43480000    # 200.0f

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    const v2, 0x3f35c28f    # 0.71f

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    invoke-direct {v2, v3, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v3, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    sget-object v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    invoke-direct {v3, v4, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object p1, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const v4, 0x3f333333    # 0.7f

    iput v4, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    const/4 v5, 0x1

    iput-boolean v5, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    iput-object p1, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iput v4, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iput-boolean v5, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const p1, 0x3ecccccd    # 0.4f

    const v0, 0x3e2e147b    # 0.17f

    invoke-static {v0, v0, p1, v1, p0}, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const p1, 0x3ea8f5c3    # 0.33f

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {p1, v2, v0, v1, p0}, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :goto_0
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final updateBiometricViewLayout()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v3, :cond_0

    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_0
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f070595

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    new-instance v12, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v12}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getId()I

    move-result v6

    sget-boolean v13, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v13, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v7, :cond_2

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/android/keyguard/SecurityUtils;->getMainSecurityViewFlipperSize(Landroid/content/Context;Z)I

    move-result v7

    goto :goto_1

    :cond_2
    move v7, v4

    :goto_1
    invoke-virtual {v12, v6, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getId()I

    move-result v6

    const/4 v14, -0x2

    invoke-virtual {v12, v6, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getId()I

    move-result v7

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v6, v12

    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getId()I

    move-result v6

    const/4 v15, 0x7

    invoke-virtual {v12, v6, v15, v4, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getId()I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v12, v6, v7, v4, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    iget-object v6, v6, Lcom/android/keyguard/biometrics/KeyguardBiometricView;->defaultDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    invoke-static {v6}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v11

    if-eq v11, v5, :cond_3

    if-eq v11, v7, :cond_3

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v7

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v6, v12

    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-virtual {v12, v1, v15, v4, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto/16 :goto_5

    :cond_3
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isHiddenInputContainer()Z

    move-result v6

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_d

    if-nez v6, :cond_d

    if-eqz v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v6, :cond_4

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay()Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070ac0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v9

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    sget v13, Lcom/android/keyguard/SecurityUtils;->sPINContainerBottomMargin:I

    invoke-virtual {v10}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v10

    if-ne v10, v5, :cond_6

    move v10, v5

    goto :goto_3

    :cond_6
    move v10, v4

    :goto_3
    if-nez v10, :cond_7

    if-eq v11, v7, :cond_8

    :cond_7
    if-eqz v10, :cond_9

    if-ne v11, v5, :cond_9

    :cond_8
    sub-int/2addr v9, v8

    goto :goto_4

    :cond_9
    move v9, v4

    :goto_4
    add-int/2addr v8, v9

    :cond_a
    move v13, v8

    iget-object v7, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v7, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getId()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/keyguard/SecurityUtils;->calculateLandscapeViewWidth(ILandroid/content/Context;)I

    move-result v6

    invoke-virtual {v12, v7, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getId()I

    move-result v6

    invoke-virtual {v12, v6, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getId()I

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v12, v6, v15, v7, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getId()I

    move-result v7

    const/4 v10, 0x6

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v6, v12

    move v14, v11

    move v11, v13

    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    invoke-virtual {v6, v4, v4, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    if-eqz v1, :cond_c

    if-eqz v2, :cond_c

    if-ne v14, v5, :cond_b

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    invoke-virtual {v1, v4, v4, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_5

    :cond_b
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    invoke-virtual {v1, v3, v4, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_c
    :goto_5
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v12, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockContainerMargin$1()V

    return-void

    :cond_d
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockContainerMargin$1()V

    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v12, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public final updateLayout$3$1()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->bouncerShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIcon()V

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateBiometricViewLayout()V

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->resetBiometricLockOutTimer()V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v1

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-nez v0, :cond_1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->handleBiometricAttemptLockout(J)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricLockOutMessage:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final updateLockContainerMargin$1()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07148f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070591

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070592

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    sget-boolean v5, Lcom/android/systemui/LsRune;->SECURITY_BIOMETRICS_TABLET:Z

    const/4 v6, 0x2

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v5, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    iget-object v5, v5, Lcom/android/keyguard/biometrics/KeyguardBiometricView;->defaultDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    invoke-static {v5}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v1, 0x1

    if-eq v5, v1, :cond_2

    if-eq v5, v6, :cond_0

    const/4 p0, 0x3

    if-eq v5, p0, :cond_2

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v0

    :cond_1
    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    move v0, v2

    :cond_3
    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_4
    add-int/2addr v0, v1

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_5
    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne p0, v6, :cond_6

    const/4 v1, 0x0

    :cond_6
    add-int/2addr v0, v1

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final updateLockIcon()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFaceStrongBiometric()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isHiddenRetry:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isRunning:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLockOut:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFullscreenBouncer()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->currentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isKeyguardUnlocking()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->mShowingRetryButton:Z

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isRemoteLockEnabled()Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFMMLock()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/SecLockIconView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->needsToChangeRetryButton()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIconDrawable(ZZ)V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v2, v2}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIconDrawable(ZZ)V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz v1, :cond_5

    move v4, v2

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    :goto_2
    iput v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->debugCount:I

    return-void
.end method

.method public final updateLockIconDrawable(ZZ)V
    .locals 3

    if-eqz p1, :cond_0

    const v0, 0x7f08082a

    goto :goto_0

    :cond_0
    const v0, 0x7f080c5e

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070531

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07052d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_1
    iget v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->drawableResId:I

    if-ne v0, v2, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    iput v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->drawableResId:I

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->drawableResId:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->acceptLockStarModifier()V

    :cond_3
    return-void
.end method

.method public final updateLockIconVisibility(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/SecLockIconView;->setVisibility(I)V

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLockStarEnabled:Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->pluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    iget-object p1, p1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    move-result v0

    :cond_2
    move p1, v0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->initLockStarLockIcon$1(Z)V

    return-void
.end method

.method public final updateVisibility$2()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->clearView()V

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->bouncerShowing:Z

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIconVisibility(Z)V

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->resetLockIconState()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
