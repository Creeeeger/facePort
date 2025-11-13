.class public Lcom/android/keyguard/LegacyLockIconViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/keyguard/LockIconViewController;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mA11yClickListener:Lcom/android/keyguard/LegacyLockIconViewController$$ExternalSyntheticLambda3;

.field public final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field public mCanDismissLockScreen:Z

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field final mDozeTransitionCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public mInterpolatedDarkAmount:F

.field public mIsActiveDreamLockscreenHosted:Z

.field final mIsActiveDreamLockscreenHostedCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mIsBiometricToastViewAnimating:Z

.field public mIsBouncerShowing:Z

.field public mIsDozing:Z

.field final mIsDozingCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mIsKeyguardShowing:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field public mLockedLabel:Ljava/lang/CharSequence;

.field public final mResources:Landroid/content/res/Resources;

.field public mRunningFPS:Z

.field public final mSensorTouchLocation:Landroid/graphics/Rect;

.field public mShowLockIcon:Z

.field public mShowUnlockIcon:Z

.field public mStatusBarState:I

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public mUnlockedLabel:Ljava/lang/CharSequence;

.field public final mVibrator:Lcom/android/systemui/statusbar/VibratorHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    const/16 v0, 0x12

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/LockIconView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/dump/DumpManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/biometrics/AuthRippleController;Landroid/content/res/Resources;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/keyguard/KeyguardEditModeController;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/LockIconView;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/keyguard/KeyguardViewController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/biometrics/AuthController;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            "Lcom/android/systemui/biometrics/AuthRippleController;",
            "Landroid/content/res/Resources;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;",
            "Landroid/content/Context;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/keyguard/KeyguardEditModeController;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p14

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/keyguard/LegacyLockIconViewController;->mIsBiometricToastViewAnimating:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/keyguard/LegacyLockIconViewController;->mSensorTouchLocation:Landroid/graphics/Rect;

    new-instance v2, Lcom/android/keyguard/LegacyLockIconViewController$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/LegacyLockIconViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/LegacyLockIconViewController;I)V

    iput-object v2, v0, Lcom/android/keyguard/LegacyLockIconViewController;->mDozeTransitionCallback:Ljava/util/function/Consumer;

    new-instance v2, Lcom/android/keyguard/LegacyLockIconViewController$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/LegacyLockIconViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/LegacyLockIconViewController;I)V

    iput-object v2, v0, Lcom/android/keyguard/LegacyLockIconViewController;->mIsDozingCallback:Ljava/util/function/Consumer;

    new-instance v2, Lcom/android/keyguard/LegacyLockIconViewController$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/LegacyLockIconViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/LegacyLockIconViewController;I)V

    iput-object v2, v0, Lcom/android/keyguard/LegacyLockIconViewController;->mIsActiveDreamLockscreenHostedCallback:Ljava/util/function/Consumer;

    new-instance v2, Lcom/android/keyguard/LegacyLockIconViewController$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/LegacyLockIconViewController$3;-><init>(Lcom/android/keyguard/LegacyLockIconViewController;)V

    new-instance v2, Lcom/android/keyguard/LegacyLockIconViewController$4;

    invoke-direct {v2, p0}, Lcom/android/keyguard/LegacyLockIconViewController$4;-><init>(Lcom/android/keyguard/LegacyLockIconViewController;)V

    iput-object v2, v0, Lcom/android/keyguard/LegacyLockIconViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v2, Lcom/android/keyguard/LegacyLockIconViewController$5;

    invoke-direct {v2, p0}, Lcom/android/keyguard/LegacyLockIconViewController$5;-><init>(Lcom/android/keyguard/LegacyLockIconViewController;)V

    new-instance v2, Lcom/android/keyguard/LegacyLockIconViewController$6;

    invoke-direct {v2, p0}, Lcom/android/keyguard/LegacyLockIconViewController$6;-><init>(Lcom/android/keyguard/LegacyLockIconViewController;)V

    new-instance v2, Lcom/android/keyguard/LegacyLockIconViewController$7;

    invoke-direct {v2, p0}, Lcom/android/keyguard/LegacyLockIconViewController$7;-><init>(Lcom/android/keyguard/LegacyLockIconViewController;)V

    new-instance v2, Lcom/android/keyguard/LegacyLockIconViewController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/LegacyLockIconViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/LegacyLockIconViewController;)V

    move-object v2, p2

    iput-object v2, v0, Lcom/android/keyguard/LegacyLockIconViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object v2, p3

    iput-object v2, v0, Lcom/android/keyguard/LegacyLockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v2, p4

    iput-object v2, v0, Lcom/android/keyguard/LegacyLockIconViewController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    move-object v2, p5

    iput-object v2, v0, Lcom/android/keyguard/LegacyLockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v2, p6

    iput-object v2, v0, Lcom/android/keyguard/LegacyLockIconViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object v2, p10

    iput-object v2, v0, Lcom/android/keyguard/LegacyLockIconViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v2, p11

    iput-object v2, v0, Lcom/android/keyguard/LegacyLockIconViewController;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/android/keyguard/LegacyLockIconViewController;->mVibrator:Lcom/android/systemui/statusbar/VibratorHelper;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/android/keyguard/LegacyLockIconViewController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    const v2, 0x7f07176b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const v2, 0x7f07176c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const v2, 0x7f130147

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/keyguard/LegacyLockIconViewController;->mUnlockedLabel:Ljava/lang/CharSequence;

    const v2, 0x7f1300bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/keyguard/LegacyLockIconViewController;->mLockedLabel:Ljava/lang/CharSequence;

    const v2, 0x7f0b0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "LockIconViewController"

    move-object v3, p8

    invoke-static {p8, v2, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    iput-object v1, v0, Lcom/android/keyguard/LegacyLockIconViewController;->mResources:Landroid/content/res/Resources;

    new-instance v1, Lcom/android/keyguard/LegacyLockIconViewController$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/LegacyLockIconViewController$1;-><init>(Lcom/android/keyguard/LegacyLockIconViewController;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p2, "mUdfpsSupported: false"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "mUdfpsEnrolled: false"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mIsKeyguardShowing: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mIsKeyguardShowing:Z

    const-string v1, "mIsBiometricToastViewAnimating: "

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mIsBiometricToastViewAnimating:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " mShowUnlockIcon: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mShowUnlockIcon:Z

    const-string v1, " mShowLockIcon: "

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mShowLockIcon:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, " mShowAodUnlockedIcon: false"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " mIsDozing: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mIsDozing:Z

    invoke-static {p2, v0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    sget-object p2, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    iget-object p2, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, " isFlagEnabled(DOZING_MIGRATION_1): false"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " mIsBouncerShowing: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mIsBouncerShowing:Z

    const-string v1, " mRunningFPS: "

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mRunningFPS:Z

    const-string v1, " mCanDismissLockScreen: "

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mCanDismissLockScreen:Z

    const-string v1, " mStatusBarState: "

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mStatusBarState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " mInterpolatedDarkAmount: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mInterpolatedDarkAmount:F

    const-string v1, " mSensorTouchLocation: "

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mSensorTouchLocation:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, " mDefaultPaddingPx: 0"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " mIsActiveDreamLockscreenHosted: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mIsActiveDreamLockscreenHosted:Z

    invoke-static {p2, p0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final isLockScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mIsDozing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mIsBouncerShowing:Z

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mStatusBarState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onLongPress()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseLongTap(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mIsBouncerShowing:Z

    sget-object v0, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    invoke-virtual {p0}, Lcom/android/keyguard/LegacyLockIconViewController;->updateVisibility$1()V

    invoke-virtual {p0}, Lcom/android/keyguard/LegacyLockIconViewController;->vibrateOnLongPress()V

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object p0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0, v1}, Lcom/android/keyguard/KeyguardViewController;->showPrimaryBouncer(Z)V

    return-void
.end method

.method public final onViewAttached()V
    .locals 0

    return-void
.end method

.method public final onViewDetached()V
    .locals 0

    return-void
.end method

.method public final updateKeyguardShowing()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mIsKeyguardShowing:Z

    return-void
.end method

.method public updateVisibility$1()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mIsKeyguardShowing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mIsDozing:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    throw v1

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mIsActiveDreamLockscreenHosted:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    throw v1

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mCanDismissLockScreen:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/LegacyLockIconViewController;->isLockScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mShowLockIcon:Z

    iget-boolean v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mCanDismissLockScreen:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/keyguard/LegacyLockIconViewController;->isLockScreen()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mShowUnlockIcon:Z

    throw v1
.end method

.method public vibrateOnLongPress()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mVibrator:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method

.method public vibrateOnTouchExploration()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mVibrator:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method
