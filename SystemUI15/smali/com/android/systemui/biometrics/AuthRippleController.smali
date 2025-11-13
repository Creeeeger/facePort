.class public final Lcom/android/systemui/biometrics/AuthRippleController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final authController:Lcom/android/systemui/biometrics/AuthController;

.field public final authControllerCallback:Lcom/android/systemui/biometrics/AuthRippleController$authControllerCallback$1;

.field public final biometricModeListener:Lcom/android/systemui/biometrics/AuthRippleController$biometricModeListener$1;

.field public final biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field public circleReveal:Lcom/android/systemui/statusbar/CircleReveal;

.field public final commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

.field public final configurationChangedListener:Lcom/android/systemui/biometrics/AuthRippleController$configurationChangedListener$1;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final displayMetrics:Landroid/util/DisplayMetrics;

.field public final facePropertyRepository:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;

.field public faceSensorLocation:Landroid/graphics/Point;

.field public fingerprintSensorLocation:Landroid/graphics/Point;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final keyguardUpdateMonitorCallback:Lcom/android/systemui/biometrics/AuthRippleController$keyguardUpdateMonitorCallback$1;

.field public final lightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

.field public lightRevealScrimAnimator:Landroid/animation/ValueAnimator;

.field public final logger:Lcom/android/keyguard/logging/KeyguardLogger;

.field public final notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public startLightRevealScrimOnKeyguardFadingAway:Z

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final sysuiContext:Landroid/content/Context;

.field public udfpsController:Lcom/android/systemui/biometrics/UdfpsController;

.field public final udfpsControllerCallback:Lcom/android/systemui/biometrics/AuthRippleController$udfpsControllerCallback$1;

.field public final udfpsControllerProvider:Ljavax/inject/Provider;

.field public udfpsRadius:F

.field public final wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/biometrics/AuthRippleController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/biometrics/AuthRippleController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Ljavax/inject/Provider;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Landroid/util/DisplayMetrics;Lcom/android/keyguard/logging/KeyguardLogger;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/LightRevealScrim;Lcom/android/systemui/deviceentry/domain/interactor/AuthRippleInteractor;Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;Lcom/android/systemui/biometrics/AuthRippleView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/biometrics/AuthController;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/statusbar/commandline/CommandRegistry;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Landroid/util/DisplayMetrics;",
            "Lcom/android/keyguard/logging/KeyguardLogger;",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            "Lcom/android/systemui/statusbar/LightRevealScrim;",
            "Lcom/android/systemui/deviceentry/domain/interactor/AuthRippleInteractor;",
            "Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;",
            "Lcom/android/systemui/biometrics/AuthRippleView;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p17

    invoke-direct {p0, v1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthRippleController;->sysuiContext:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthRippleController;->authController:Lcom/android/systemui/biometrics/AuthController;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthRippleController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthRippleController;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthRippleController;->commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthRippleController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthRippleController;->udfpsControllerProvider:Ljavax/inject/Provider;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthRippleController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthRippleController;->displayMetrics:Landroid/util/DisplayMetrics;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthRippleController;->logger:Lcom/android/keyguard/logging/KeyguardLogger;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthRippleController;->biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthRippleController;->lightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthRippleController;->facePropertyRepository:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lcom/android/systemui/biometrics/AuthRippleController;->udfpsRadius:F

    new-instance v1, Lcom/android/systemui/biometrics/AuthRippleController$biometricModeListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthRippleController$biometricModeListener$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleController;)V

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthRippleController;->biometricModeListener:Lcom/android/systemui/biometrics/AuthRippleController$biometricModeListener$1;

    new-instance v1, Lcom/android/systemui/biometrics/AuthRippleController$keyguardUpdateMonitorCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthRippleController$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleController;)V

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardUpdateMonitorCallback:Lcom/android/systemui/biometrics/AuthRippleController$keyguardUpdateMonitorCallback$1;

    new-instance v1, Lcom/android/systemui/biometrics/AuthRippleController$configurationChangedListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthRippleController$configurationChangedListener$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleController;)V

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthRippleController;->configurationChangedListener:Lcom/android/systemui/biometrics/AuthRippleController$configurationChangedListener$1;

    new-instance v1, Lcom/android/systemui/biometrics/AuthRippleController$udfpsControllerCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthRippleController$udfpsControllerCallback$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleController;)V

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthRippleController;->udfpsControllerCallback:Lcom/android/systemui/biometrics/AuthRippleController$udfpsControllerCallback$1;

    new-instance v1, Lcom/android/systemui/biometrics/AuthRippleController$authControllerCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthRippleController$authControllerCallback$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleController;)V

    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthRippleController;->authControllerCallback:Lcom/android/systemui/biometrics/AuthRippleController$authControllerCallback$1;

    return-void
.end method

.method public static final synthetic access$getMView$p$s-2044592172(Lcom/android/systemui/biometrics/AuthRippleController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static final access$showDwellRipple(Lcom/android/systemui/biometrics/AuthRippleController;)V
    .locals 6

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->authController:Lcom/android/systemui/biometrics/AuthController;

    iget-object v1, v1, Lcom/android/systemui/biometrics/AuthController;->mFingerprintSensorLocation:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->fingerprintSensorLocation:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->facePropertyRepository:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;

    check-cast v1, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;

    iget-object v1, v1, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->sensorLocation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->faceSensorLocation:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->fingerprintSensorLocation:Landroid/graphics/Point;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/biometrics/AuthRippleView;

    iget v3, p0, Lcom/android/systemui/biometrics/AuthRippleController;->udfpsRadius:F

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/biometrics/AuthRippleView;->setFingerprintSensorLocation(Landroid/graphics/Point;F)V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/biometrics/AuthRippleView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result p0

    iget-object v2, v1, Lcom/android/systemui/biometrics/AuthRippleView;->unlockedRippleAnimator:Landroid/animation/Animator;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-ne v2, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v2, v1, Lcom/android/systemui/biometrics/AuthRippleView;->dwellPulseOutAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    iget-object p0, v1, Lcom/android/systemui/biometrics/AuthRippleView;->dwellShader:Lcom/android/systemui/biometrics/DwellRippleShader;

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/biometrics/DwellRippleShader;->setColor(I)V

    goto :goto_0

    :cond_2
    iget-object p0, v1, Lcom/android/systemui/biometrics/AuthRippleView;->dwellShader:Lcom/android/systemui/biometrics/DwellRippleShader;

    iget v2, v1, Lcom/android/systemui/biometrics/AuthRippleView;->lockScreenColorVal:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/biometrics/DwellRippleShader;->setColor(I)V

    :goto_0
    iget-object p0, v1, Lcom/android/systemui/biometrics/AuthRippleView;->dwellShader:Lcom/android/systemui/biometrics/DwellRippleShader;

    iget v2, p0, Lcom/android/systemui/biometrics/DwellRippleShader;->color:I

    const/16 v4, 0xff

    invoke-static {v2, v4}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/biometrics/DwellRippleShader;->setColor(I)V

    new-array p0, v0, [F

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    sget-object v2, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v4, v1, Lcom/android/systemui/biometrics/AuthRippleView;->dwellPulseDuration:J

    invoke-virtual {p0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$dwellPulseOutRippleAnimator$1$1;

    invoke-direct {v2, v1}, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$dwellPulseOutRippleAnimator$1$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;)V

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    sget-object v4, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v4, v1, Lcom/android/systemui/biometrics/AuthRippleView;->dwellExpandDuration:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$expandDwellRippleAnimator$1$1;

    invoke-direct {v4, v1}, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$expandDwellRippleAnimator$1$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object p0, v0, v5

    aput-object v2, v0, v3

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance p0, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$1$1;

    invoke-direct {p0, v1}, Lcom/android/systemui/biometrics/AuthRippleView$startDwellRipple$1$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;)V

    invoke-virtual {v4, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    iput-object v4, v1, Lcom/android/systemui/biometrics/AuthRippleView;->dwellPulseOutAnimator:Landroid/animation/Animator;

    :cond_3
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic getStartLightRevealScrimOnKeyguardFadingAway$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onKeyguardFadingAwayChanged()V
    .locals 4

    invoke-static {}, Lcom/android/systemui/Flags;->lightRevealMigration()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->startLightRevealScrimOnKeyguardFadingAway:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->lightRevealScrimAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-wide v2, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDelay:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v0, Lcom/android/systemui/biometrics/AuthRippleController$onKeyguardFadingAwayChanged$1$1;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/biometrics/AuthRippleController$onKeyguardFadingAwayChanged$1$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleController;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/systemui/biometrics/AuthRippleController$onKeyguardFadingAwayChanged$1$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/AuthRippleController$onKeyguardFadingAwayChanged$1$2;-><init>(Lcom/android/systemui/biometrics/AuthRippleController;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->lightRevealScrimAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->startLightRevealScrimOnKeyguardFadingAway:Z

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onStartedGoingToSleep()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->startLightRevealScrimOnKeyguardFadingAway:Z

    return-void
.end method

.method public onViewAttached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->authController:Lcom/android/systemui/biometrics/AuthController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->authControllerCallback:Lcom/android/systemui/biometrics/AuthRippleController$authControllerCallback$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthController;->addCallback(Lcom/android/systemui/biometrics/AuthController$Callback;)V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->updateRippleColor()V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->updateUdfpsDependentParams()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->udfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsController;->mCallbacks:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->udfpsControllerCallback:Lcom/android/systemui/biometrics/AuthRippleController$udfpsControllerCallback$1;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->configurationChangedListener:Lcom/android/systemui/biometrics/AuthRippleController$configurationChangedListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardUpdateMonitorCallback:Lcom/android/systemui/biometrics/AuthRippleController$keyguardUpdateMonitorCallback$1;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/biometrics/AuthRippleController$onViewAttached$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/AuthRippleController$onViewAttached$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleController;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    const-string v1, "auth-ripple"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    return-void
.end method

.method public onViewDetached()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->udfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->udfpsControllerCallback:Lcom/android/systemui/biometrics/AuthRippleController$udfpsControllerCallback$1;

    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsController;->mCallbacks:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->authController:Lcom/android/systemui/biometrics/AuthController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->authControllerCallback:Lcom/android/systemui/biometrics/AuthRippleController$authControllerCallback$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthController;->removeCallback(Lcom/android/systemui/biometrics/AuthController$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardUpdateMonitorCallback:Lcom/android/systemui/biometrics/AuthRippleController$keyguardUpdateMonitorCallback$1;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->configurationChangedListener:Lcom/android/systemui/biometrics/AuthRippleController$configurationChangedListener$1;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    const-string v1, "auth-ripple"

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->commandMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->biometricModeListener:Lcom/android/systemui/biometrics/AuthRippleController$biometricModeListener$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricUnlockEventsListeners:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    const/4 v1, 0x0

    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->setForcePluginOpen(Ljava/lang/Object;Z)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final showUnlockRippleInternal(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Landroid/hardware/biometrics/BiometricSourceType;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthRippleController;->logger:Lcom/android/keyguard/logging/KeyguardLogger;

    if-nez v0, :cond_3

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->authController:Lcom/android/systemui/biometrics/AuthController;

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthController;->mFingerprintSensorLocation:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->fingerprintSensorLocation:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->facePropertyRepository:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;

    check-cast v0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->sensorLocation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->faceSensorLocation:Landroid/graphics/Point;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->fingerprintSensorLocation:Landroid/graphics/Point;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/biometrics/AuthRippleView;

    iget v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->udfpsRadius:F

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/biometrics/AuthRippleView;->setFingerprintSensorLocation(Landroid/graphics/Point;F)V

    new-instance v0, Lcom/android/systemui/statusbar/CircleReveal;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/systemui/biometrics/AuthRippleController;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v5, v1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, p1, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/android/systemui/biometrics/AuthRippleController;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v7, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {v0, v1, v4, v3, v5}, Lcom/android/systemui/statusbar/CircleReveal;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->circleReveal:Lcom/android/systemui/statusbar/CircleReveal;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->udfpsRadius:F

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FP sensor radius: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/keyguard/logging/KeyguardLogger;->showingUnlockRippleAt(IILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->showUnlockedRipple()V

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v1, :cond_2

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/biometrics/AuthRippleView;

    invoke-virtual {p1, v0}, Lcom/android/systemui/biometrics/AuthRippleView;->setSensorLocation(Landroid/graphics/Point;)V

    new-instance p1, Lcom/android/systemui/statusbar/CircleReveal;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/systemui/biometrics/AuthRippleController;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v5, v1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v0, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/android/systemui/biometrics/AuthRippleController;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v7, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {p1, v1, v4, v3, v5}, Lcom/android/systemui/statusbar/CircleReveal;-><init>(IIII)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->circleReveal:Lcom/android/systemui/statusbar/CircleReveal;

    iget p1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    const-string v1, "Face unlock ripple"

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/keyguard/logging/KeyguardLogger;->showingUnlockRippleAt(IILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->showUnlockedRipple()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    invoke-virtual {v2, v0, v1}, Lcom/android/keyguard/logging/KeyguardLogger;->notShowingUnlockRipple(ZZ)V

    return-void
.end method

.method public final showUnlockedRipple()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->setForcePluginOpen(Ljava/lang/Object;Z)V

    invoke-static {}, Lcom/android/systemui/Flags;->lightRevealMigration()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->circleReveal:Lcom/android/systemui/statusbar/CircleReveal;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthRippleController;->lightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealAmount(F)V

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealEffect(Lcom/android/systemui/statusbar/LightRevealEffect;)V

    iput-boolean v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->startLightRevealScrimOnKeyguardFadingAway:Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/biometrics/AuthRippleView;

    new-instance v1, Lcom/android/systemui/biometrics/AuthRippleController$showUnlockedRipple$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthRippleController$showUnlockedRipple$2;-><init>(Lcom/android/systemui/biometrics/AuthRippleController;)V

    iget-object p0, v0, Lcom/android/systemui/biometrics/AuthRippleView;->unlockedRippleAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-wide/16 v2, 0x320

    invoke-virtual {p0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/biometrics/AuthRippleView$startUnlockedRipple$rippleAnimator$1$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/biometrics/AuthRippleView$startUnlockedRipple$rippleAnimator$1$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;)V

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/android/systemui/biometrics/AuthRippleView$startUnlockedRipple$1$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/biometrics/AuthRippleView$startUnlockedRipple$1$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p0, v0, Lcom/android/systemui/biometrics/AuthRippleView;->unlockedRippleAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final updateRippleColor()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/biometrics/AuthRippleView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->sysuiContext:Landroid/content/Context;

    const/4 v1, 0x0

    const v2, 0x7f040802

    invoke-static {p0, v2, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result p0

    iput p0, v0, Lcom/android/systemui/biometrics/AuthRippleView;->lockScreenColorVal:I

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    const/16 v1, 0x3e

    invoke-static {p0, v1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    const-string v1, "in_color"

    invoke-virtual {v0, v1, p0}, Landroid/graphics/RuntimeShader;->setColorUniform(Ljava/lang/String;I)V

    return-void
.end method

.method public final updateUdfpsDependentParams()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->authController:Lcom/android/systemui/biometrics/AuthController;

    iget-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsProps:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->udfpsControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/biometrics/UdfpsController;

    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->udfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsRadius()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->udfpsRadius:F

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/biometrics/AuthRippleView;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->udfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsController;->mCallbacks:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->udfpsControllerCallback:Lcom/android/systemui/biometrics/AuthRippleController$udfpsControllerCallback$1;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
