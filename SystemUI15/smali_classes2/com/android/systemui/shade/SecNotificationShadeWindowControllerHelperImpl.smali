.class public final Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelper;


# static fields
.field public static final AWAKE_INTERVAL_DEFAULT_MS_LIVE_DEMO:I

.field public static final AWAKE_INTERVAL_DEFAULT_MS_WITH_ACCESSIBILITY:J

.field public static final AWAKE_INTERVAL_DEFAULT_MS_WITH_FACE:J

.field public static final AWAKE_INTERVAL_DEFAULT_MS_WITH_POWER_SAVING:I

.field public static final BLUR_AMOUNT:F

.field public static final DEBUG_TAG:Ljava/lang/String;

.field public static final DEFAULT_DISPLAY_TIMEOUT:I

.field public static final MSG_USER_ACTIVITY_TIMEOUT_CHANGED:I


# instance fields
.field public final activityManager:Landroid/app/IActivityManager;

.field public final aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

.field public bouncerColorCurve:Lcom/android/systemui/blur/BouncerColorCurve;

.field public bouncerContainer:Landroid/view/ViewGroup;

.field public bouncerLp:Landroid/view/WindowManager$LayoutParams;

.field public bouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

.field public final context:Landroid/content/Context;

.field public final displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final engineerModeManager:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

.field public final fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

.field public final fullscreenHelper:Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;

.field public final handler:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$handler$1;

.field public isInitFinished:Z

.field public isKeyguardScreenRotation:Z

.field public isLastExpanded:Z

.field public isSystemUser:Z

.field public isWhiteKeyguardWallpaper:Z

.field public final keyguardFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final keyguardViewMediatorHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

.field public final keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

.field public notificationShadeView:Landroid/view/ViewGroup;

.field public final pluginAODManagerLazy:Ldagger/Lazy;

.field public final pluginLockListener:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;

.field public final pluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field public final pluginLockStarCallback:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockStarCallback$1;

.field public final pluginLockStarManagerLazy:Ldagger/Lazy;

.field public final powerInteractorLazy:Ldagger/Lazy;

.field public final powerManager:Landroid/os/PowerManager;

.field public provider:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;

.field public rotation:I

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private settingsHelperCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final visibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "KeyguardVisible"

    sput-object v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isOpticalFingerprintSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3d8f5c29    # 0.07f

    goto :goto_0

    :cond_0
    const v0, 0x3e0ccccd    # 0.1375f

    :goto_0
    sput v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->BLUR_AMOUNT:F

    const/16 v0, 0x1388

    sput v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEFAULT_DISPLAY_TIMEOUT:I

    const/16 v0, 0xbb8

    sput v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->AWAKE_INTERVAL_DEFAULT_MS_WITH_POWER_SAVING:I

    const-wide/16 v0, 0x1770

    sput-wide v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->AWAKE_INTERVAL_DEFAULT_MS_WITH_FACE:J

    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->AWAKE_INTERVAL_DEFAULT_MS_WITH_ACCESSIBILITY:J

    const v0, 0x927c0

    sput v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->AWAKE_INTERVAL_DEFAULT_MS_LIVE_DEMO:I

    const/16 v0, 0x65

    sput v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->MSG_USER_ACTIVITY_TIMEOUT_CHANGED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;Landroid/view/WindowManager;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Landroid/app/IActivityManager;Lcom/android/systemui/keyguard/KeyguardFoldController;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;Ldagger/Lazy;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/aod/AODAmbientWallpaperHelper;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/PowerManager;",
            "Landroid/view/WindowManager;",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Landroid/app/IActivityManager;",
            "Lcom/android/systemui/keyguard/KeyguardFoldController;",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            "Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;",
            "Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaper;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/aod/AODAmbientWallpaperHelper;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;",
            "Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->context:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->powerManager:Landroid/os/PowerManager;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->windowManager:Landroid/view/WindowManager;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->activityManager:Landroid/app/IActivityManager;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->visibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->engineerModeManager:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->pluginAODManagerLazy:Ldagger/Lazy;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->pluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->pluginLockStarManagerLazy:Ldagger/Lazy;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->powerInteractorLazy:Ldagger/Lazy;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardViewMediatorHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->fullscreenHelper:Lcom/android/systemui/shade/SamsungNotificationShadeWindowFullscreenHelper;

    new-instance v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$handler$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$handler$1;-><init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;)V

    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->handler:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$handler$1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isSystemUser:Z

    new-instance v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;-><init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;)V

    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->pluginLockListener:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;

    new-instance v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockStarCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockStarCallback$1;-><init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;)V

    iput-object v1, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->pluginLockStarCallback:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockStarCallback$1;

    return-void
.end method

.method public static final access$setScreenOrientation(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;Z)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setScreenOrientation noSensor : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationShadeWindowController"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->screenOrientationNoSensor:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->screenOrientationNoSensor:Z

    iget-object v1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setScreenOrientationNoSensorValue(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    :cond_0
    return-void
.end method

.method public static final access$updateLockStarUserActivityTimeout(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->pluginLockStarManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/lockstar/PluginLockStarManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getLockStarValues()Lcom/samsung/systemui/splugins/lockstar/LockStarValues;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/lockstar/LockStarValues;->getLockScreenOffTimeoutSeconds()I

    move-result p1

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    :cond_0
    iput-wide v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->lockStarTimeOutValue:J

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->updateUserActivityTimeout(Z)V

    return-void
.end method


# virtual methods
.method public final addBouncer(Landroid/view/ViewGroup;)V
    .locals 7

    iput-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerContainer:Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    const/16 v4, 0x7d9

    const/4 v2, -0x1

    const v5, -0x7ffffeb8

    const/4 v6, -0x3

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerLp:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v0, 0x30

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v0, 0x10

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const-string v0, "Bouncer"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x40000

    or-int/2addr v1, v0

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x60000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    move-result-object v0

    iget v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-wide v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardUserActivityTimeout:J

    const-wide/16 v3, 0x2710

    cmp-long v5, v0, v3

    if-gez v5, :cond_3

    move-wide v0, v3

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    :cond_3
    :goto_1
    iput-wide v0, p1, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x4000400

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_PUNCH_HOLE_FACE_VI:Z

    if-eqz v0, :cond_4

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_2

    :cond_4
    const/4 v0, 0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :goto_2
    iget-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    return-void
.end method

.method public final apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->provider:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->applyConsumer:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final applyBouncer(Lcom/android/systemui/shade/NotificationShadeWindowState;)V
    .locals 11

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x200

    invoke-virtual {v0, v3, v4}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    goto :goto_1

    :cond_2
    const-string v0, "background"

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v2

    :goto_1
    iget-boolean v0, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v0, :cond_f

    iget-boolean v5, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    if-eqz v5, :cond_f

    iget-boolean v5, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->coverAppShowing:Z

    if-nez v5, :cond_f

    iget-boolean v5, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->isCoverClosed:Z

    if-eqz v5, :cond_3

    goto/16 :goto_6

    :cond_3
    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_CAPTURED_BLUR:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    iget-boolean v5, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardOccluded:Z

    if-eqz v5, :cond_5

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060067

    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060066

    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060065

    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_10

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v6, v5, -0x19

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-boolean v7, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardNeedsInput:Z

    if-eqz v7, :cond_8

    const v6, -0x20019

    and-int/2addr v5, v6

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_3

    :cond_8
    const/high16 v5, 0x20000

    or-int/2addr v5, v6

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_3
    sget-boolean v5, Lcom/android/systemui/LsRune;->SECURITY_BLUR:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v5, -0x3

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_4

    :cond_9
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_4
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0, v5, v2}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->applyBouncerWindowBlur(FZ)V

    :cond_a
    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    const-wide/16 v5, -0x1

    iput-wide v5, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v5, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    goto :goto_5

    :cond_b
    iget-object v5, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->provider:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;

    if-nez v5, :cond_c

    move-object v5, v3

    :cond_c
    iget-object v5, v5, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->lpSupplier:Ljava/util/function/Supplier;

    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_e

    iget-wide v6, v5, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v8, 0x2710

    cmp-long v10, v6, v8

    if-gez v10, :cond_d

    move-wide v6, v8

    :cond_d
    iput-wide v6, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iget-wide v5, v5, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    iput-wide v5, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    :cond_e
    :goto_5
    iget-boolean v5, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isKeyguardScreenRotation:Z

    if-nez v5, :cond_10

    iget-boolean v5, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardOccluded:Z

    if-eqz v5, :cond_10

    const/4 v5, 0x5

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_7

    :cond_f
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_10

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v5, v5, 0x8

    const v6, -0x20003

    and-int/2addr v5, v6

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v5, 0x0

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0, v5, v2}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->applyBouncerWindowBlur(FZ)V

    iget-boolean v5, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isKeyguardScreenRotation:Z

    if-nez v5, :cond_10

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :cond_10
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_13

    iget-boolean v5, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    if-nez v5, :cond_11

    iget-object v5, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->getCurrentState()Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->PRIMARY_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-ne v5, v6, :cond_12

    :cond_11
    move v1, v4

    :cond_12
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x4000000

    and-int/2addr v1, v4

    if-eqz v1, :cond_13

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/lit16 v1, v1, 0x500

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    :cond_13
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_15

    iget-boolean v1, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v1

    if-eqz v2, :cond_14

    or-int/lit8 v1, v1, 0x10

    goto :goto_8

    :cond_14
    and-int/lit8 v1, v1, -0x11

    :goto_8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    :cond_15
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_19

    iget-boolean p1, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->provider:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;

    if-nez p1, :cond_16

    goto :goto_9

    :cond_16
    move-object v3, p1

    :goto_9
    iget-object p1, v3, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->isDebuggableSupplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {p1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p1

    if-nez p1, :cond_18

    sget-boolean p1, Lcom/android/systemui/LsRune;->KEYGUARD_EM_TOKEN_CAPTURE_WINDOW:Z

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->engineerModeManager:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    iget-boolean p1, p1, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;->isCaptureEnabled:Z

    if-nez p1, :cond_18

    :cond_17
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x2000

    goto :goto_a

    :cond_18
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, -0x2001

    :goto_a
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_19
    iget-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const-string v2, "Bouncer LP changed!!! = 0x"

    const-string v3, ", h = "

    const-string v4, "NotificationShadeWindowController"

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/settingslib/SecNotificationBlockManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->windowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerContainer:Landroid/view/ViewGroup;

    invoke-interface {v0, p0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1a
    return-void
.end method

.method public final applyBouncerWindowBlur(FZ)V
    .locals 8

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_COLOR_CURVE_BLUR:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerColorCurve:Lcom/android/systemui/blur/BouncerColorCurve;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_6

    iget v2, v0, Lcom/android/systemui/blur/BouncerColorCurve;->mFraction:F

    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isWhiteKeyguardWallpaper:Z

    if-eq v2, p2, :cond_6

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/blur/BouncerColorCurve;->setFraction(FZ)V

    iput-boolean p2, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isWhiteKeyguardWallpaper:Z

    iget-object p2, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerContainer:Landroid/view/ViewGroup;

    if-eqz p0, :cond_6

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    goto :goto_1

    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-lez p1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerContainer:Landroid/view/ViewGroup;

    if-eqz p0, :cond_6

    new-instance v1, Landroid/view/SemBlurInfo$Builder;

    const/4 p1, 0x0

    invoke-direct {v1, p1}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    iget p1, v0, Lcom/android/systemui/blur/BouncerColorCurve;->mRadius:F

    float-to-int p1, p1

    invoke-virtual {v1, p1}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    iget v2, v0, Lcom/android/systemui/blur/BouncerColorCurve;->mSaturation:F

    iget v3, v0, Lcom/android/systemui/blur/BouncerColorCurve;->mCurve:F

    iget v4, v0, Lcom/android/systemui/blur/BouncerColorCurve;->mMinX:F

    iget v5, v0, Lcom/android/systemui/blur/BouncerColorCurve;->mMaxX:F

    iget v6, v0, Lcom/android/systemui/blur/BouncerColorCurve;->mMinY:F

    iget v7, v0, Lcom/android/systemui/blur/BouncerColorCurve;->mMaxY:F

    invoke-virtual/range {v1 .. v7}, Landroid/view/SemBlurInfo$Builder;->setColorCurve(FFFFFF)Landroid/view/SemBlurInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    if-eqz p0, :cond_6

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-gtz p1, :cond_5

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 p1, p1, -0x41

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    goto :goto_1

    :cond_5
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    sget p1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->BLUR_AMOUNT:F

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    :cond_6
    :goto_1
    return-void
.end method

.method public final applyHelper(Lcom/android/systemui/shade/NotificationShadeWindowState;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isSystemUser:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getLayoutParamsChanged()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-boolean v1, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->shouldHideNotificationShadeInMirror:Z

    const/high16 v2, -0x80000000

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isInitFinished:Z

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getLayoutParamsChanged()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget-boolean v2, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    iget-object v3, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->pluginAODManagerLazy:Ldagger/Lazy;

    if-nez v2, :cond_3

    iget-boolean v2, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardFadingAway:Z

    if-nez v2, :cond_4

    :cond_3
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/doze/PluginAODManager;

    if-eqz v2, :cond_4

    iget-boolean v4, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    iget-boolean v5, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->isCoverClosed:Z

    iget-object v2, v2, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v2, :cond_4

    invoke-interface {v2, v0, v4, v5}, Lcom/android/systemui/plugins/aod/PluginAOD;->applyAODFlags(Landroid/view/WindowManager$LayoutParams;ZZ)V

    :cond_4
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/doze/PluginAODManager;

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-eq v1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v2, Lcom/android/systemui/doze/PluginAODManager;->mIsDifferentOrientation:Z

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getLayoutParamsChanged()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v1

    if-nez v1, :cond_a

    iget-boolean v1, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardOccluded:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->powerInteractorLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iget-object v1, v1, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->detailedWakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/power/shared/model/WakefulnessModel;

    invoke-virtual {v1}, Lcom/android/systemui/power/shared/model/WakefulnessModel;->isAwake()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    sget-boolean v1, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {v1}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenMode()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->keyguardViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_b

    sget v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    sget v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_UNLOCK_ANIM_AOD_FULLSCREEN:I

    or-int/2addr v1, v2

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result p0

    if-nez p0, :cond_9

    iget-boolean p0, p1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceVisibleForUnlockAnimation:Z

    if-eqz p0, :cond_b

    :cond_9
    :goto_3
    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 p1, 0x100000

    or-int/2addr p0, p1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_5

    :cond_a
    :goto_4
    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const p1, -0x100001

    and-int/2addr p0, p1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_b
    :goto_5
    return-void
.end method

.method public final getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->provider:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->currentWindowStateSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowState;

    return-object p0
.end method

.method public final getLayoutParamsChanged()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->provider:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$Provider;->lpChangedSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public final getUserActivityTimeout()J
    .locals 9

    sget v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEFAULT_DISPLAY_TIMEOUT:I

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->pluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/android/systemui/pluginlock/PluginLockMediator;->isDynamicLockEnabled()Z

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const-wide/16 v5, 0x0

    if-eqz v4, :cond_1

    iget-wide v7, v2, Lcom/android/systemui/shade/NotificationShadeWindowState;->lockTimeOutValue:J

    cmp-long v4, v7, v5

    if-lez v4, :cond_1

    move-wide v0, v7

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->pluginLockStarManagerLazy:Ldagger/Lazy;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/lockstar/PluginLockStarManager;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_2

    iget-wide v7, v2, Lcom/android/systemui/shade/NotificationShadeWindowState;->lockStarTimeOutValue:J

    cmp-long v2, v7, v5

    if-lez v2, :cond_2

    move-wide v0, v7

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->getAccessibilityInteractiveUiTimeout()I

    move-result v2

    int-to-long v7, v2

    cmp-long v2, v7, v5

    if-lez v2, :cond_3

    move-wide v0, v7

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isPowerSavingMode()Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    sget p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->AWAKE_INTERVAL_DEFAULT_MS_WITH_POWER_SAVING:I

    int-to-long v4, p0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_5
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_6

    sget p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->AWAKE_INTERVAL_DEFAULT_MS_LIVE_DEMO:I

    int-to-long v0, p0

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "getUserActivityTimeout "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "NotificationShadeWindowController"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public final initPost()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isLockScreenRotationAllowed()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isKeyguardScreenRotation:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "lock_screen_allow_rotation"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getUserActivityTimeout()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardUserActivityTimeout:J

    const-string v2, "powersaving_switch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "psm_switch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "emergency_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "low_power"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "accessibility_interactive_ui_timeout_ms"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initPost$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initPost$2;-><init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;)V

    iput-object v2, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->settingsHelperCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v4, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/net/Uri;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Uri;

    array-length v5, v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Uri;

    invoke-virtual {v4, v2, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->pluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->pluginLockListener:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockListener$1;

    invoke-interface {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockMediator;->registerWindowListener(Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;)V

    :cond_2
    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_ROTATIONAL:Z

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initPost$3;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initPost$3;-><init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->pluginLockStarManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/lockstar/PluginLockStarManager;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->pluginLockStarCallback:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$pluginLockStarCallback$1;

    const-string v2, "Timeout"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->registerCallback(Ljava/lang/String;Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;)V

    :cond_4
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_COLOR_CURVE_BLUR:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/systemui/blur/BouncerColorCurve;

    invoke-direct {v0}, Lcom/android/systemui/blur/BouncerColorCurve;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerColorCurve:Lcom/android/systemui/blur/BouncerColorCurve;

    :cond_5
    iput-boolean v3, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->isInitFinished:Z

    return-void
.end method

.method public final isLockScreenRotationAllowed()Z
    .locals 4

    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_ROTATIONAL:Z

    if-nez v0, :cond_0

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object v0, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->keyguardFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object v0, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public final resetForceInvisible(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceInvisible:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "resetForceInvisible "

    invoke-static {v1, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceInvisible:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    :cond_0
    return-void
.end method

.method public final resetForceVisibleForUnlockAnimation()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceVisibleForUnlockAnimation:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "resetForceVisibleForUnlockAnimation true"

    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceVisibleForUnlockAnimation:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    :cond_0
    return-void
.end method

.method public final setForceInvisible(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceInvisible:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "setForceInVisible "

    invoke-static {v1, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceInvisible:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    :cond_0
    return-void
.end method

.method public final updateUserActivityTimeout(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getUserActivityTimeout()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardUserActivityTimeout:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_1

    iput-wide v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardUserActivityTimeout:J

    if-nez p1, :cond_0

    iget p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarState:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    :cond_1
    return-void
.end method
