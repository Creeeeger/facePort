.class public Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;


# instance fields
.field public final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field public mAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field public mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

.field public mBiometricType:Landroid/hardware/biometrics/BiometricSourceType;

.field public final mBiometricUnlockEventsListeners:Ljava/util/Set;

.field public final mBiometricUnlockInteractor:Lcom/android/systemui/keyguard/domain/interactor/BiometricUnlockInteractor;

.field public mBouncer:Z

.field public final mConsecutiveFpFailureThreshold:I

.field public final mContext:Landroid/content/Context;

.field public final mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field public mDynamicLockMode:I

.field public mFadedAwayAfterWakeAndUnlock:Z

.field public final mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

.field public final mHandler:Landroid/os/Handler;

.field public mIsStartedGoingToSleep:Z

.field public final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

.field public mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field public final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field public mLastFpFailureUptimeMillis:J

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mMode:I

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public mNumConsecutiveFpFailures:I

.field public final mOrderUnlockAndWake:Z

.field public mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mReleaseBiometricWakeLockRunnable:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;

.field public final mScreenObserver:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;

.field public final mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public final mSecLockIconViewControllerLazy:Ldagger/Lazy;

.field public final mSelectedUserInteractor:Ldagger/Lazy;

.field public final mSessionTracker:Lcom/android/systemui/log/SessionTracker;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mSystemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

.field public final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field public mWindowLp:Landroid/view/WindowManager$LayoutParams;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/dump/DumpManager;Landroid/os/PowerManager;Lcom/android/keyguard/logging/BiometricUnlockLogger;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/log/SessionTracker;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/util/time/SystemClock;Ldagger/Lazy;Lcom/android/systemui/keyguard/domain/interactor/BiometricUnlockInteractor;Lcom/android/systemui/util/kotlin/JavaAdapter;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/WindowManager;Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/phone/DozeScrimController;",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Landroid/os/Handler;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Landroid/content/res/Resources;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Landroid/os/PowerManager;",
            "Lcom/android/keyguard/logging/BiometricUnlockLogger;",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Lcom/android/systemui/biometrics/AuthController;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/log/SessionTracker;",
            "Lcom/android/internal/util/LatencyTracker;",
            "Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/keyguard/domain/interactor/BiometricUnlockInteractor;",
            "Lcom/android/systemui/util/kotlin/JavaAdapter;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            "Lcom/android/systemui/vibrate/VibrationUtil;",
            "Landroid/view/WindowManager;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p27

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricUnlockEventsListeners:Ljava/util/Set;

    new-instance v4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mReleaseBiometricWakeLockRunnable:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;

    new-instance v4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    new-instance v5, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    move-object/from16 v6, p12

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    move-object v6, p7

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v6, p20

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    move-object/from16 v6, p15

    invoke-virtual {v6, v4}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    move-object/from16 v4, p16

    invoke-virtual {v4, v5}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    move-object/from16 v4, p25

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricUnlockInteractor:Lcom/android/systemui/keyguard/domain/interactor/BiometricUnlockInteractor;

    move-object v4, p4

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-object v4, p2

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    move-object v4, p3

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-object v4, p5

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v4, p6

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    const v4, 0x7f0b0056

    invoke-virtual {p8, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mConsecutiveFpFailureThreshold:I

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iput-object v0, v2, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->unlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v2, p19

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    move-object/from16 v2, p21

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    move-object/from16 v2, p22

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    move-object/from16 v2, p23

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    const v2, 0x11101f5

    invoke-virtual {p8, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mOrderUnlockAndWake:Z

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSelectedUserInteractor:Ldagger/Lazy;

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    iget-object v1, v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->startedKeyguardTransitionStep:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$2;

    new-instance v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;I)V

    move-object/from16 v3, p26

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSecLockIconViewControllerLazy:Ldagger/Lazy;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    move-object/from16 v1, p11

    invoke-virtual {v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method public static isLargeCoverScreen()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$5;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public consumeTransitionStepOnStartedKeyguardState(Lcom/android/systemui/keyguard/shared/model/TransitionStep;)V
    .locals 1

    iget-object p1, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricUnlockInteractor:Lcom/android/systemui/keyguard/domain/interactor/BiometricUnlockInteractor;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/keyguard/domain/interactor/BiometricUnlockInteractor;->setBiometricUnlockState(ILcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;)V

    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string p2, " BiometricUnlockController:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "   mMode="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "   mWakeLock="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsSupported()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "   mNumConsecutiveFpFailures="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNumConsecutiveFpFailures:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "   time since last failure="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p2}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLastFpFailureUptimeMillis:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    :cond_0
    return-void
.end method

.method public final finishKeyguardFadingAway()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFadedAwayAfterWakeAndUnlock:Z

    :cond_0
    const-string v0, "BiometricUnlockCtrl"

    const-string v2, "finishKeyguardFadingAway"

    invoke-static {v0, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isBiometricUnlock()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->sendBiometricUnlockState(Landroid/hardware/biometrics/BiometricSourceType;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->biometricUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isBiometricUnlock()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFadedAwayAfterWakeAndUnlock:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->uiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$onSdpUnlocked$1;

    invoke-direct {v3, v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$onSdpUnlocked$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->resetMode()V

    return-void
.end method

.method public final hasPendingAuthentication()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->isStrongBiometric:Z

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->userId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSelectedUserInteractor:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isBiometricUnlock()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isUpdatePossible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isWakeAndUnlock()Z
    .locals 2

    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public final onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;I)V
    .locals 3

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne v1, p1, :cond_1

    if-eqz p2, :cond_1

    return-void

    :cond_1
    const-string p2, "BiometricUnlockController#onBiometricAcquired"

    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 p2, 0x1

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_3

    const-string p1, "BiometricUnlockCtrl"

    const-string v1, "onBiometricAcquired - show bouncer!! )"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1, p2}, Lcom/android/keyguard/KeyguardViewController;->showPrimaryBouncer(Z)V

    iget-boolean p2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez p2, :cond_2

    const-string p2, "onBiometricAcquired( fp wakelock: show bouncer and waking up... ) "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const/4 v0, 0x4

    const-string v1, "android.policy:BIOMETRIC"

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    if-ne p1, v1, :cond_4

    const/4 p1, 0x7

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v0, "wake-and-unlock:wakelock"

    invoke-virtual {p1, p2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string p1, "acquiring wake-and-unlock"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    const-string v0, "BiometricUnlockLogger"

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "biometric acquired, grabbing biometric wakelock"

    invoke-virtual {p1, v0, p2, v2, v1}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 p1, 0x3a98

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mReleaseBiometricWakeLockRunnable:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    iget v3, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDynamicLockMode:I

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v11, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v11, v4

    :goto_1
    sget-object v3, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$5;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result v6

    aget v3, v3, v6

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSelectedUserInteractor:Ldagger/Lazy;

    const/4 v12, 0x2

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eq v3, v4, :cond_4

    if-eq v3, v12, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isUpdatePossible()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    sget-object v15, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FaceAuthenticationFail:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v3, v5}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v17

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iput-object v3, v14, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    const/16 v19, 0x0

    const-string v16, ""

    move/from16 v18, v2

    invoke-virtual/range {v14 .. v19}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->update(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;Ljava/lang/String;ZZZ)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->vibrate(Landroid/hardware/biometrics/BiometricSourceType;Z)V

    goto :goto_2

    :cond_4
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-nez v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isUpdatePossible()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v13}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-lez v3, :cond_5

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    sget-object v7, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationFail:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    const/4 v10, 0x0

    const-string v8, ""

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->update(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;Ljava/lang/String;ZZZ)V

    goto :goto_2

    :cond_5
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    sget-object v7, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationFail:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v6, v5}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v6

    invoke-virtual {v13, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v9

    iget-boolean v10, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    const-string v8, ""

    move-object v6, v3

    invoke-virtual/range {v6 .. v11}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->update(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;Ljava/lang/String;ZZZ)V

    :cond_6
    :goto_2
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v3, Landroid/metrics/LogMaker;

    const/16 v6, 0x6a1

    invoke-direct {v3, v6}, Landroid/metrics/LogMaker;-><init>(I)V

    const/16 v6, 0xb

    invoke-virtual {v3, v6}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    sget-object v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->FAILURE_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;

    const/4 v6, 0x4

    invoke-direct {v3, v0, v6}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v2}, Lcom/android/internal/util/LatencyTracker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne v1, v2, :cond_7

    const/4 v12, 0x7

    :cond_7
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v2, v12}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    :cond_8
    iget-boolean v2, v13, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    xor-int/2addr v2, v4

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/VibratorHelper;->hasVibrator()Z

    move-result v3

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    if-nez v3, :cond_a

    if-nez v2, :cond_9

    iget-boolean v2, v13, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    if-eqz v2, :cond_a

    :cond_9
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    const-string v2, "BiometricUnlockLogger"

    const/4 v3, 0x0

    iget-object v4, v6, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string/jumbo v5, "wakeup device on authentication failure (device doesn\'t have a vibrator)"

    invoke-virtual {v4, v2, v1, v5, v3}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne v1, v2, :cond_c

    invoke-virtual {v13}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsSupported()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v2}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v7, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLastFpFailureUptimeMillis:J

    sub-long v7, v2, v7

    iget v9, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mConsecutiveFpFailureThreshold:I

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_b

    iget v7, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNumConsecutiveFpFailures:I

    add-int/2addr v7, v4

    iput v7, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNumConsecutiveFpFailures:I

    goto :goto_3

    :cond_b
    iput v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNumConsecutiveFpFailures:I

    :goto_3
    iput-wide v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLastFpFailureUptimeMillis:J

    iget v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNumConsecutiveFpFailures:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_c

    invoke-virtual {v6, v2}, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logUdfpsAttemptThresholdMet(I)V

    sget-object v2, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;->Companion:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource$Companion;->fromBiometricSourceType(Landroid/hardware/biometrics/BiometricSourceType;)Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(ILcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->BIOMETRIC_BOUNCER_SHOWN:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    invoke-virtual {v3, v4}, Lcom/android/systemui/log/SessionTracker;->getSessionId(I)Lcom/android/internal/logging/InstanceId;

    move-result-object v3

    check-cast v1, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    iput v5, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNumConsecutiveFpFailures:I

    :cond_c
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    return-void
.end method

.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "BiometricUnlockController#onBiometricUnlocked"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v5, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    if-eqz v5, :cond_2

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    if-eqz v4, :cond_0

    move v7, v8

    :cond_0
    invoke-virtual {v9, v1, v2, v7}, Lcom/android/keyguard/logging/BiometricUnlockLogger;->deferringAuthenticationDueToSleep(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;-><init>(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    iget-object v0, v6, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne v2, v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->removeShowMsg()V

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_2
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricType:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v5, Landroid/metrics/LogMaker;

    const/16 v10, 0x6a1

    invoke-direct {v5, v10}, Landroid/metrics/LogMaker;-><init>(I)V

    const/16 v10, 0xa

    invoke-virtual {v5, v10}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->SUCCESS_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v5, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;

    const/4 v10, 0x1

    invoke-direct {v5, v0, v10}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;I)V

    invoke-virtual {v1, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v5, 0x0

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    const-string v11, "BiometricUnlockCtrl"

    if-ne v2, v1, :cond_4

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getLockStayEnabled()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBouncer:Z

    if-nez v12, :cond_4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isLargeCoverScreen()Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "onBiometricAuthenticated : Lock stay is enabled."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v6, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v12, v6, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz v12, :cond_3

    goto :goto_0

    :cond_3
    move-object v12, v5

    :goto_0
    iget-object v12, v12, Lcom/android/systemui/keyguard/ViewMediatorProvider;->playSound:Lkotlin/jvm/functions/Function1;

    iget v6, v6, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockStaySoundId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v12, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->sendBiometricUnlockState(Landroid/hardware/biometrics/BiometricSourceType;)V

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v12, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne v1, v12, :cond_6

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getFpLockStayEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBouncer:Z

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isLargeCoverScreen()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "onBiometricAuthenticated : Fingerpirnt Lock stay is enabled."

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v6, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v6, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    move-object v6, v5

    :goto_1
    iget-object v6, v6, Lcom/android/systemui/keyguard/ViewMediatorProvider;->playSound:Lkotlin/jvm/functions/Function1;

    iget v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockStaySoundId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v12}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->sendBiometricUnlockState(Landroid/hardware/biometrics/BiometricSourceType;)V

    :cond_6
    :goto_2
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v6, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    if-nez v6, :cond_8

    invoke-virtual {v10, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->onBiometricAuthenticated(Landroid/hardware/biometrics/BiometricSourceType;Z)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v12}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reset()V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    iget-object v1, v9, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "BiometricUnlockLogger"

    const-string v3, "onBiometricUnlocked aborted by bypass controller"

    invoke-virtual {v1, v2, v0, v3, v5}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_8
    :goto_3
    const-string v5, "onBiometricAuthenticated"

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setAuthDetail(Landroid/hardware/biometrics/BiometricSourceType;)V

    sget-object v5, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_BIO_UNLOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTriggerIfNotSet(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    iput-object v2, v12, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v5, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$5;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const-string v6, "LSE1032"

    if-eq v5, v8, :cond_b

    const/4 v1, 0x2

    if-eq v5, v1, :cond_9

    goto/16 :goto_6

    :cond_9
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    if-eqz v1, :cond_a

    iget-boolean v4, v1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    if-eqz v4, :cond_a

    invoke-virtual {v1, v8}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->dismiss(Z)V

    :cond_a
    const-string v1, "3"

    invoke-virtual {v0, v6, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v8}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->vibrate(Landroid/hardware/biometrics/BiometricSourceType;Z)V

    goto/16 :goto_6

    :cond_b
    sget-object v5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v9, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v5, v9}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v5, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v5}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isMultifactorAuthEnforced()Z

    move-result v5

    if-eqz v5, :cond_d

    const-string/jumbo v1, "the fingerprint is authenticated."

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1, v7}, Lcom/android/keyguard/KeyguardViewController;->reset(Z)V

    goto :goto_4

    :cond_c
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1, v8}, Lcom/android/keyguard/KeyguardViewController;->showPrimaryBouncer(Z)V

    :goto_4
    iget-boolean v1, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v1, :cond_10

    const-string v1, "fp wakelock: Authenticated, waking up..."

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x4

    const-string v4, "android.policy:BIOMETRIC"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    goto :goto_7

    :cond_d
    sget-boolean v5, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    const-string v9, "2"

    if-nez v5, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isUpdatePossible()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v4, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-boolean v5, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-nez v5, :cond_e

    iget v5, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDynamicLockMode:I

    if-ne v5, v8, :cond_f

    :cond_e
    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    sget-object v14, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationSuccess:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSelectedUserInteractor:Ldagger/Lazy;

    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v5, v7}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v16

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    const/16 v18, 0x1

    const-string v15, ""

    move/from16 v17, v1

    invoke-virtual/range {v13 .. v18}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->update(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;Ljava/lang/String;ZZZ)V

    const-string v1, "LSE1033"

    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    invoke-virtual {v0, v6, v9}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v0, v2, v8}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->vibrate(Landroid/hardware/biometrics/BiometricSourceType;Z)V

    :goto_6
    new-instance v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda7;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;I)V

    iget-object v4, v12, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Task;

    const-string v6, "PowerManager#userActivity"

    invoke-direct {v5, v1, v6}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Task;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(Landroid/hardware/biometrics/BiometricSourceType;Z)V

    :cond_10
    :goto_7
    return-void
.end method

.method public final onBiometricDetected(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    const-string p1, "BiometricUnlockController#onBiometricDetected"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    sget-object p1, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;->Companion:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource$Companion;->fromBiometricSourceType(Landroid/hardware/biometrics/BiometricSourceType;)Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(ILcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;)V

    return-void
.end method

.method public final onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 12

    sget-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$5;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p3}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSelectedUserInteractor:Ldagger/Lazy;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eq v0, v4, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isUpdatePossible()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isShortcutLaunchInProgress()Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_1

    const-string v0, "BiometricUnlockCtrl"

    const-string v4, "onBiometricError : FACE_ERROR_ON_MASK"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    sget-object v7, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FaceAuthenticationError:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v9

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v10, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iput-object v0, v6, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    const/4 v11, 0x0

    move-object v8, p2

    invoke-virtual/range {v6 .. v11}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->update(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;Ljava/lang/String;ZZZ)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    sget-object v4, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FaceAuthenticationError:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v3, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v3

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v5, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    const/4 v6, 0x0

    move-object v1, v4

    move-object v2, p2

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->update(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;Ljava/lang/String;ZZZ)V

    goto :goto_2

    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isUpdatePossible()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    const/16 v0, 0xa

    if-eq p1, v0, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    sget-object v7, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationError:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v9

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v10, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDynamicLockMode:I

    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_3
    move v11, v1

    goto :goto_1

    :cond_4
    :goto_0
    move v11, v4

    :goto_1
    move-object v8, p2

    invoke-virtual/range {v6 .. v11}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->update(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;Ljava/lang/String;ZZZ)V

    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x6a1

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x6cd

    invoke-virtual {v0, v1, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    sget-object p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->ERROR_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    return-void
.end method

.method public final onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 7

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p3, v0}, Landroid/hardware/biometrics/BiometricSourceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/android/systemui/LsRune;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->vibrate(Landroid/hardware/biometrics/BiometricSourceType;Z)V

    const/4 p3, 0x1

    if-eq p1, p3, :cond_8

    const/4 v1, 0x2

    if-eq p1, v1, :cond_7

    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    const/4 v1, 0x5

    if-eq p1, v1, :cond_5

    const/16 v1, 0x3e9

    if-eq p1, v1, :cond_4

    const/16 v1, 0x3eb

    if-eq p1, v1, :cond_3

    const/16 v1, 0x3ec

    if-eq p1, v1, :cond_2

    :goto_0
    move-object v3, p2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    const v1, 0x7f1308d9

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    const v1, 0x7f1308d5

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    const v1, 0x7f1308d8

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    const v1, 0x7f1308d7

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_6
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    const v1, 0x7f1308d3

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_7
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    const v1, 0x7f1308d4

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_8
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    const v1, 0x7f1308d6

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_1
    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-nez p2, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isUpdatePossible()Z

    move-result p2

    if-eqz p2, :cond_b

    const/4 p2, -0x1

    if-eq p1, p2, :cond_b

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    sget-object v2, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->FingerprintAuthenticationHelp:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSelectedUserInteractor:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v5, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-nez p1, :cond_a

    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDynamicLockMode:I

    if-ne p0, p3, :cond_9

    goto :goto_2

    :cond_9
    move v6, v0

    goto :goto_3

    :cond_a
    :goto_2
    move v6, p3

    :goto_3
    invoke-virtual/range {v1 .. v6}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->update(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;Ljava/lang/String;ZZZ)V

    :cond_b
    return-void
.end method

.method public final onDlsViewModeChanged(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDynamicLockMode:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDynamicLockMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda7;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;I)V

    const-wide/16 v0, 0x5dc

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToastForBiometrics()V

    :goto_0
    return-void
.end method

.method public final onKeyguardBouncerFullyShowingChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBouncer:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToastForBiometrics()V

    return-void
.end method

.method public final onKeyguardBouncerStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToastForBiometrics()V

    return-void
.end method

.method public final onRefreshBatteryInfo(Lcom/android/settingslib/fuelgauge/BatteryStatus;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getKeyguardBatteryStatus()Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onStartedGoingToSleep(I)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mIsStartedGoingToSleep:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToastForBiometrics()V

    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mIsStartedGoingToSleep:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToastForBiometrics()V

    return-void
.end method

.method public final releaseBiometricWakeLock()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mReleaseBiometricWakeLockRunnable:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    iget-object v0, v0, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "BiometricUnlockLogger"

    const-string/jumbo v3, "releasing biometric wakelock"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method public final resetMode()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricType:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v3, v2, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceDozeBrightness:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, v2, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceDozeBrightness:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricUnlockEventsListeners:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUnlockEventsListener;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUnlockEventsListener;->onResetMode()V

    goto :goto_1

    :cond_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNumConsecutiveFpFailures:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLastFpFailureUptimeMillis:J

    return-void
.end method

.method public final sendSALog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBouncer:Z

    if-eqz p0, :cond_0

    const-string p0, "102"

    goto :goto_0

    :cond_0
    const-string p0, "101"

    :goto_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_COVER:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v0, :cond_1

    const-string v0, "_S"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final startWakeAndUnlock(ILcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;)V
    .locals 11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "startWakeAndUnlock(%d)"

    invoke-static {v1, v0}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricUnlockCtrl"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    iput p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p1, v3, :cond_1

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v6, v5, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v7, v6, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceDozeBrightness:Z

    if-ne v7, v4, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v4, v6, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceDozeBrightness:Z

    invoke-virtual {v5, v6}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    :cond_1
    :goto_0
    new-instance v5, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;ZI)V

    sget v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v6, v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    invoke-virtual {v6, v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->calculateMode(I)V

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v7, 0x6

    const/4 v8, 0x0

    if-ne v1, v7, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mOrderUnlockAndWake:Z

    if-eqz v1, :cond_3

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    move v1, v8

    :goto_1
    iget v9, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-eqz v9, :cond_4

    if-nez v1, :cond_4

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda3;->run()V

    :cond_4
    iget v5, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricUnlockInteractor:Lcom/android/systemui/keyguard/domain/interactor/BiometricUnlockInteractor;

    if-eq v5, v4, :cond_c

    if-eq v5, v3, :cond_c

    const/4 v10, 0x3

    if-eq v5, v10, :cond_b

    const/4 v10, 0x5

    if-eq v5, v10, :cond_6

    if-eq v5, v7, :cond_c

    const/4 p1, 0x7

    if-eq v5, p1, :cond_5

    goto/16 :goto_4

    :cond_5
    const-string p1, "MODE_DISMISS_BOUNCER"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p1, v8}, Lcom/android/keyguard/KeyguardViewController;->notifyKeyguardAuthenticated(Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_4

    :cond_6
    const-string p1, "MODE_UNLOCK_COLLAPSING"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mAuthenticatedBioSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    if-ne p1, v1, :cond_8

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBouncer:Z

    if-nez p1, :cond_7

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getFpLockStayEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isLargeCoverScreen()Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p1, v8}, Lcom/android/keyguard/KeyguardViewController;->notifyKeyguardAuthenticated(Z)V

    goto :goto_2

    :cond_8
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v1, :cond_a

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBouncer:Z

    if-nez p1, :cond_9

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getLockStayEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isLargeCoverScreen()Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p1, v8}, Lcom/android/keyguard/KeyguardViewController;->notifyKeyguardAuthenticated(Z)V

    :cond_a
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_4

    :cond_b
    const-string p1, "MODE_SHOW_BOUNCER"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p1, v4}, Lcom/android/keyguard/KeyguardViewController;->showPrimaryBouncer(Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_4

    :cond_c
    if-ne v5, v3, :cond_d

    const-string v0, "MODE_WAKE_AND_UNLOCK_PULSING"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    if-ne v5, v4, :cond_e

    const-string v0, "MODE_WAKE_AND_UNLOCK"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_3

    :cond_e
    const-string v0, "MODE_WAKE_AND_UNLOCK_FROM_DREAM"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v6}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, v6, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    if-nez v0, :cond_f

    iget-boolean v0, v6, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    if-nez v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setForceInvisible(Landroid/view/SurfaceControl$Transaction;)V

    :cond_f
    check-cast v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    invoke-virtual {v2, v8}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->setNotificationShadeFocusable(Z)V

    invoke-virtual {v9, p1, p2}, Lcom/android/systemui/keyguard/domain/interactor/BiometricUnlockInteractor;->setBiometricUnlockState(ILcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking(Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_4
    invoke-virtual {v6}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result p1

    if-eqz p1, :cond_10

    iget p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;ILcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;)V

    iget-object p0, v6, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->pendingRunnableList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_10
    iget p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricUnlockEventsListeners:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUnlockEventsListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUnlockEventsListener;->onModeChanged(I)V

    goto :goto_5

    :cond_11
    invoke-virtual {v9, p1, p2}, Lcom/android/systemui/keyguard/domain/interactor/BiometricUnlockInteractor;->setBiometricUnlockState(ILcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;)V

    :cond_12
    :goto_6
    const-string/jumbo p0, "startWakeAndUnlock end"

    new-array p1, v8, [Ljava/lang/Object;

    invoke-virtual {v6, p0, p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logLapTime(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final startWakeAndUnlock(Landroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p2

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    const/4 v10, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x3

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSelectedUserInteractor:Ldagger/Lazy;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    const/16 v17, 0x1

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object/from16 v20, v8

    goto/16 :goto_b

    :cond_1
    invoke-virtual {v7, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v18

    iget-boolean v2, v7, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    move-object v11, v8

    check-cast v11, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v12, v11, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iget-boolean v13, v7, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getFpLockStayEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isLargeCoverScreen()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move v6, v10

    goto :goto_1

    :cond_3
    :goto_0
    move/from16 v6, v17

    :goto_1
    if-eqz v18, :cond_4

    invoke-virtual {v5, v2, v12, v13, v6}, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logCalculateModeForFingerprintUnlockingAllowed(ZZZZ)V

    move v14, v2

    move/from16 v19, v6

    move-object/from16 v20, v8

    goto :goto_2

    :cond_4
    iget-object v5, v7, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v14, v19

    check-cast v14, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v14, v10}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v14

    invoke-virtual {v5, v14}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v5

    iget-object v7, v7, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v3, v10}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    move-result v7

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    move v14, v2

    move-object v2, v3

    move v3, v5

    move/from16 v4, p2

    move v5, v7

    move/from16 v19, v6

    move v6, v14

    move v7, v12

    move-object/from16 v20, v8

    move/from16 v8, v19

    invoke-virtual/range {v2 .. v8}, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logCalculateModeForFingerprintUnlockingNotAllowed(IZZZZZ)V

    :goto_2
    if-nez v14, :cond_a

    if-nez v12, :cond_6

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->isKeyguardShowDelayed()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface/range {v20 .. v20}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v19, :cond_5

    :goto_3
    move/from16 v10, v17

    goto/16 :goto_f

    :cond_5
    move v10, v15

    goto/16 :goto_f

    :cond_6
    iget-object v2, v9, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v2, :cond_7

    if-eqz v18, :cond_7

    if-eqz v19, :cond_5

    :goto_4
    const/4 v10, 0x2

    goto/16 :goto_f

    :cond_7
    if-nez v18, :cond_9

    iget-boolean v2, v11, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    if-nez v2, :cond_8

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v10, v16

    goto/16 :goto_f

    :cond_9
    :goto_6
    if-eqz v19, :cond_5

    goto :goto_3

    :cond_a
    if-eqz v18, :cond_b

    if-eqz v13, :cond_b

    if-eqz v19, :cond_5

    :goto_7
    const/4 v10, 0x6

    goto/16 :goto_f

    :cond_b
    if-eqz v12, :cond_1a

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardViewController;->primaryBouncerIsOrWillBeShowing()Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v18, :cond_c

    :goto_8
    const/4 v10, 0x7

    goto/16 :goto_f

    :cond_c
    if-eqz v18, :cond_d

    :goto_9
    const/4 v10, 0x5

    goto/16 :goto_f

    :cond_d
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result v2

    if-nez v2, :cond_1a

    :goto_a
    goto :goto_5

    :goto_b
    iget-boolean v11, v7, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    move-object/from16 v12, v20

    check-cast v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v13, v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    invoke-virtual {v7, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v14

    iget-boolean v8, v7, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getLockStayEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isLargeCoverScreen()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_c

    :cond_e
    move v6, v10

    goto :goto_d

    :cond_f
    :goto_c
    move/from16 v6, v17

    :goto_d
    if-eqz v14, :cond_10

    invoke-virtual {v5, v11, v13, v8, v6}, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logCalculateModeForPassiveAuthUnlockingAllowed(ZZZZ)V

    move/from16 v18, v6

    move/from16 v19, v8

    goto :goto_e

    :cond_10
    iget-object v2, v7, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v5, v10}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v5

    iget-object v2, v7, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v3, v10}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    move-result v7

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    move v3, v5

    move/from16 v4, p2

    move v5, v7

    move/from16 v18, v6

    move v6, v11

    move v7, v13

    move/from16 v19, v8

    move/from16 v8, v18

    invoke-virtual/range {v2 .. v8}, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logCalculateModeForPassiveAuthUnlockingNotAllowed(IZZZZZ)V

    :goto_e
    if-nez v11, :cond_14

    if-nez v13, :cond_11

    if-eqz v18, :cond_5

    goto/16 :goto_3

    :cond_11
    if-nez v14, :cond_12

    if-eqz v18, :cond_1a

    goto :goto_a

    :cond_12
    iget-object v2, v9, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v2, :cond_13

    if-eqz v18, :cond_5

    goto/16 :goto_4

    :cond_13
    if-eqz v18, :cond_5

    goto/16 :goto_4

    :cond_14
    if-eqz v14, :cond_15

    if-eqz v19, :cond_15

    if-nez v11, :cond_15

    if-eqz v18, :cond_5

    goto/16 :goto_7

    :cond_15
    if-eqz v14, :cond_16

    iget-boolean v2, v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz v2, :cond_16

    goto/16 :goto_9

    :cond_16
    if-eqz v13, :cond_1a

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardViewController;->primaryBouncerIsOrWillBeShowing()Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->getCurrentState()Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->ALTERNATE_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-ne v2, v3, :cond_18

    :cond_17
    if-eqz v14, :cond_18

    goto/16 :goto_8

    :cond_18
    if-eqz v14, :cond_19

    goto/16 :goto_9

    :cond_19
    if-eqz v18, :cond_1a

    goto/16 :goto_a

    :cond_1a
    :goto_f
    sget-object v2, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;->Companion:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource$Companion;->fromBiometricSourceType(Landroid/hardware/biometrics/BiometricSourceType;)Lcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(ILcom/android/systemui/keyguard/shared/model/BiometricUnlockSource;)V

    return-void
.end method

.method public final updateBackgroundAuthToast(Z)V
    .locals 8

    const-string/jumbo v0, "update biometric toast = "

    const-string v1, "BiometricUnlockCtrl"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowLp:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v6, 0x1000318

    const/4 v7, -0x3

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x8b4

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x31

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const-string v2, "KeyguardBiometricToastView"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSelectedUserInteractor:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "Already unlocked by biometric"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-boolean v2, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    if-eqz v2, :cond_2

    const-string p0, "Biometric toast already showing"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0142

    invoke-static {p1, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;I)V

    iput-object v0, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBiometricToastViewStateUpdater:Ljava/util/function/Consumer;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWindowLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    if-eqz p0, :cond_5

    iget-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->dismiss(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final updateBackgroundAuthToastForBiometrics()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBouncer:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mIsStartedGoingToSleep:Z

    if-nez v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDynamicLockMode:I

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricToastView:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToast(Z)V

    goto :goto_0

    :cond_2
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->updateBackgroundAuthToast(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final vibrate(Landroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    goto :goto_1

    :cond_0
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1, p2}, Landroid/hardware/biometrics/BiometricSourceType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x72

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    :goto_1
    return-void
.end method
