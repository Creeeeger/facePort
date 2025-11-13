.class public final Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# static fields
.field public static final BOOSTER_HINT:I

.field public static final BOOSTER_TIMEOUT:I

.field public static final Companion:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;

.field public static final DEBUG:Z

.field public static final MODE_FLAG_ENABLED:I

.field public static final MODE_FLAG_FRAME_COMMIT:I

.field public static final MODE_FLAG_FRAME_REQUEST:I

.field public static final MODE_FLAG_STARTED_DISPLAY_DOZE_OR_OFF:I

.field public static final MODE_FLAG_STARTED_DISPLAY_ON:I

.field public static final MODE_FLAG_UNLOCK_ANIM_AOD_FULLSCREEN:I

.field public static final sFlags:[I

.field public static final sFlagsStr:[Ljava/lang/String;


# instance fields
.field public final aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

.field public final binderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

.field public final bioUnlockBoosterEnabled:Z

.field public biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field public final biometricUnlockControllerLazy:Ldagger/Lazy;

.field public final brightnessChangedCallback:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$brightnessChangedCallback$1;

.field public final centralSurfacesLazy:Ldagger/Lazy;

.field public final context:Landroid/content/Context;

.field public curIsAodBrighterThanNormal:Z

.field public curMode:I

.field public curVisibilityController:Lcom/android/systemui/keyguard/VisibilityController;

.field public final defaultDisplay:Landroid/view/Display;

.field public delayedActionParams:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

.field public final displayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public dvfsManager:Lcom/samsung/android/os/SemDvfsManager;

.field public final executor:Ljava/util/concurrent/ExecutorService;

.field public goingAwayTime:J

.field public isBrightnessChangedCallbackRegistered:Z

.field public isInvisibleAfterGoingAwayTransStarted:Z

.field public final looperSlowLogControllerLazy:Ldagger/Lazy;

.field public final mainHandler:Landroid/os/Handler;

.field public needsBlankScreen:Z

.field public final pendingRunnableList:Ljava/util/List;

.field public reservedKeyguardGoingAway:Lkotlin/jvm/functions/Function0;

.field public final resetRunnable:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$resetRunnable$1;

.field public final screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final scrimControllerLazy:Ldagger/Lazy;

.field public scrimUpdater:Ljava/lang/Runnable;

.field public final scrimVisibility:I

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public startKeyguardExitAnimationTime:J

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final surfaceVisibilityController:Lcom/android/systemui/keyguard/SurfaceVisibilityController;

.field public final updateBrightnessRunnable:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$updateBrightnessRunnable$1;

.field public final updateMonitorLazy:Ldagger/Lazy;

.field public final viewMediatorHelperLazy:Ldagger/Lazy;

.field public final visibilityChangedListener:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$visibilityChangedListener$1;

.field public final visibilityMonitorLazy:Ldagger/Lazy;

.field public waitStartTime:J

.field public final wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final windowVisibilityController:Lcom/android/systemui/keyguard/WindowVisibilityController;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->Companion:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isShipBuild()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    move-result v0

    sget v2, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_MID:I

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    sget v2, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_HIGH:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    :cond_2
    move v3, v1

    :cond_3
    sput-boolean v3, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->DEBUG:Z

    const/16 v0, 0x20

    sput v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    const/16 v0, 0x10

    sput v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_UNLOCK_ANIM_AOD_FULLSCREEN:I

    const/16 v0, 0x8

    sput v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_STARTED_DISPLAY_DOZE_OR_OFF:I

    const/4 v0, 0x4

    sput v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_STARTED_DISPLAY_ON:I

    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_FRAME_REQUEST:I

    sput v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_FRAME_COMMIT:I

    const/16 v0, 0xc1d

    sput v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->BOOSTER_HINT:I

    const/16 v0, 0x3e8

    sput v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->BOOSTER_TIMEOUT:I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->sFlags:[I

    const-string v5, "F_REQ"

    const-string v6, "F_COMMIT"

    const-string v1, "E"

    const-string v2, "UNLOCK_ANIM_AOD_FULLSCREEN"

    const-string v3, "OFF"

    const-string v4, "ON"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->sFlagsStr:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/keyguard/SurfaceVisibilityController;Lcom/android/systemui/keyguard/WindowVisibilityController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/keyguard/ScreenLifecycle;Ldagger/Lazy;Lcom/android/systemui/aod/AODAmbientWallpaperHelper;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/content/Context;",
            "Landroid/hardware/display/DisplayManager;",
            "Lcom/android/systemui/settings/DisplayTracker;",
            "Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/keyguard/SurfaceVisibilityController;",
            "Lcom/android/systemui/keyguard/WindowVisibilityController;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/aod/AODAmbientWallpaperHelper;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mainHandler:Landroid/os/Handler;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->context:Landroid/content/Context;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->displayTracker:Lcom/android/systemui/settings/DisplayTracker;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->binderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->surfaceVisibilityController:Lcom/android/systemui/keyguard/SurfaceVisibilityController;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->windowVisibilityController:Lcom/android/systemui/keyguard/WindowVisibilityController;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->visibilityMonitorLazy:Ldagger/Lazy;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->updateMonitorLazy:Ldagger/Lazy;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->centralSurfacesLazy:Ldagger/Lazy;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->looperSlowLogControllerLazy:Ldagger/Lazy;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->biometricUnlockControllerLazy:Ldagger/Lazy;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->viewMediatorHelperLazy:Ldagger/Lazy;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->scrimControllerLazy:Ldagger/Lazy;

    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_PERFORMANCE_BIO_UNLOCK_BOOSTER:Z

    iput-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->bioUnlockBoosterEnabled:Z

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curMode:I

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->scrimVisibility:I

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$resetRunnable$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$resetRunnable$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->resetRunnable:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$resetRunnable$1;

    sget-object v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$executor$1;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$executor$1;

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->pendingRunnableList:Ljava/util/List;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$visibilityChangedListener$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$visibilityChangedListener$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->visibilityChangedListener:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$visibilityChangedListener$1;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$brightnessChangedCallback$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$brightnessChangedCallback$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->brightnessChangedCallback:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$brightnessChangedCallback$1;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$updateBrightnessRunnable$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$updateBrightnessRunnable$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->updateBrightnessRunnable:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$updateBrightnessRunnable$1;

    move-object v2, p3

    invoke-virtual {p3, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->defaultDisplay:Landroid/view/Display;

    return-void
.end method

.method public static synthetic getMode$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic isEnabledBioUnlockBooster$annotations()V
    .locals 0

    return-void
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 1

    const-string v0, "BioUnlock"

    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final calculateMode(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->centralSurfacesLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->centralSurfacesLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEnabledBiometricUnlockVI()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const-string v3, "leaveOpenOnKeyguardHide true"

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->centralSurfacesLazy:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    invoke-interface {v3}, Lcom/android/systemui/shade/domain/interactor/ShadeBackActionInteractor;->canBeCollapsed()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "BioUnlock"

    const-string v6, "canBeCollapsed false"

    invoke-static {v3, v6}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_9

    if-nez v1, :cond_9

    if-eq p1, v5, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x5

    if-eq p1, v3, :cond_2

    const/4 v3, 0x6

    if-eq p1, v3, :cond_3

    goto :goto_1

    :cond_2
    if-nez v2, :cond_9

    invoke-virtual {p0, v4}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setWakeAndUnlock(Z)V

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->surfaceVisibilityController:Lcom/android/systemui/keyguard/SurfaceVisibilityController;

    iput-object v3, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curVisibilityController:Lcom/android/systemui/keyguard/VisibilityController;

    iput-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/android/systemui/LsRune;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setWakeAndUnlock(Z)V

    if-eqz v2, :cond_4

    iput-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isEnabledBiometricUnlockVI()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    goto :goto_0

    :cond_5
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curIsAodBrighterThanNormal:Z

    :goto_0
    if-eqz v3, :cond_6

    sget-boolean v6, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isAODShown()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {v6}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenMode()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget v6, v6, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    if-nez v6, :cond_8

    :cond_7
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->windowVisibilityController:Lcom/android/systemui/keyguard/WindowVisibilityController;

    iput-object v6, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curVisibilityController:Lcom/android/systemui/keyguard/VisibilityController;

    if-eqz v3, :cond_9

    iput-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->surfaceVisibilityController:Lcom/android/systemui/keyguard/SurfaceVisibilityController;

    iput-object v3, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curVisibilityController:Lcom/android/systemui/keyguard/VisibilityController;

    iput-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    :cond_9
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curVisibilityController:Lcom/android/systemui/keyguard/VisibilityController;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "current controller: "

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastUnlockMode()Z

    move-result v6

    if-nez v6, :cond_b

    const-string v3, "not supported mode="

    const-string v5, ", animation="

    const-string v6, ", showing="

    invoke-static {v3, p1, v5, v2, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", occluded="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reset()V

    goto :goto_3

    :cond_b
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    if-eqz v3, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    if-eqz v0, :cond_c

    goto :goto_2

    :cond_c
    move v5, v4

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "waitGoingAwayTrans="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " needsBlank="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ssd=false"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    :goto_3
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isBrightnessChangedCallbackRegistered:Z

    if-eqz p1, :cond_d

    const-string/jumbo p1, "unregisterBrightnessListener"

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->displayTracker:Lcom/android/systemui/settings/DisplayTracker;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->brightnessChangedCallback:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$brightnessChangedCallback$1;

    check-cast p1, Lcom/android/systemui/settings/DisplayTrackerImpl;

    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/DisplayTrackerImpl;->removeCallback(Lcom/android/systemui/settings/DisplayTracker$Callback;)V

    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isBrightnessChangedCallbackRegistered:Z

    :cond_d
    return-void
.end method

.method public final getMode()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isFastUnlockMode()Z
    .locals 2

    sget v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    sget v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_STARTED_DISPLAY_ON:I

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result p0

    return p0
.end method

.method public final isFastWakeAndUnlockMode()Z
    .locals 2

    sget v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    sget v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_STARTED_DISPLAY_DOZE_OR_OFF:I

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result p0

    return p0
.end method

.method public final isFingerprintUnlocked()Z
    .locals 1

    sget v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isMode(I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final varargs logLapTime(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    array-length p0, p2

    invoke-static {p2, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const/16 p2, 0x2710

    const-string v0, "BioUnlock"

    invoke-static {p2, v0, p1, p0}, Lcom/android/systemui/util/LogUtil;->lapTime(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final queueIdle()Z
    .locals 0

    const-string p0, "idle state"

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final reset()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->resetRunnable:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$resetRunnable$1;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    sget v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->visibilityMonitorLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->visibilityChangedListener:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$visibilityChangedListener$1;

    iget-object v2, v2, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->visibilityChangedListeners:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->runPendingRunnable()V

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curVisibilityController:Lcom/android/systemui/keyguard/VisibilityController;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Lcom/android/systemui/keyguard/VisibilityController;->resetForceInvisible(Z)V

    :cond_1
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$reset$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$reset$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    const/16 v3, 0x2710

    invoke-static {v3, v2}, Lcom/android/systemui/util/LogUtil;->endTime(ILjava/util/function/LongConsumer;)V

    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->looperSlowLogControllerLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    const/4 v3, 0x1

    check-cast v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    invoke-virtual {v2, v3}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->disable(I)Z

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setMode(I)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->scrimUpdater:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->scrimVisibility:I

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->bioUnlockBoosterEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->dvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    :cond_4
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->goingAwayTime:J

    iput-wide v3, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->startKeyguardExitAnimationTime:J

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curVisibilityController:Lcom/android/systemui/keyguard/VisibilityController;

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curIsAodBrighterThanNormal:Z

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    return-void
.end method

.method public final runPendingRunnable()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->pendingRunnableList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->pendingRunnableList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->pendingRunnableList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    sget-boolean p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->DEBUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "runPendingRunnable executed: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final setEnabled()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->resetRunnable:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$resetRunnable$1;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->pendingRunnableList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setMode(I)V

    const/16 v0, 0x2710

    invoke-static {v0}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    const-string/jumbo v0, "setEnabled"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->looperSlowLogControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0xa

    const-wide/16 v5, 0x14

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->enable(IJJJZLkotlin/jvm/functions/Function2;)Z

    :cond_1
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_BINDER_CALL_MONITOR:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->binderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;

    const/4 v2, 0x3

    const-wide/16 v3, 0x3

    const-wide/16 v5, 0xbb8

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->startMonitoring(IJJ)Z

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->resetRunnable:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$resetRunnable$1;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->bioUnlockBoosterEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->dvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->context:Landroid/content/Context;

    const-string v1, "KEYGUARD_BIO_UNLOCK"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    if-eqz v0, :cond_3

    sget v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->BOOSTER_HINT:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->checkHintSupported(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->dvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->dvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_4

    sget v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->BOOSTER_TIMEOUT:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->visibilityMonitorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->visibilityChangedListener:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$visibilityChangedListener$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->addVisibilityChangedListener(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public final setForceInvisible(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curVisibilityController:Lcom/android/systemui/keyguard/VisibilityController;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/android/systemui/keyguard/VisibilityController;->setForceInvisible(Landroid/view/SurfaceControl$Transaction;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$requestChangeVisibility$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$requestChangeVisibility$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$requestChangeVisibility$1;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$sam$java_lang_Runnable$0;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final setMode(I)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curMode:I

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    sget-boolean v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->Companion:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;->getModeString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v4, "setMode 0x"

    const-string v5, "("

    const-string v6, ") -> 0x"

    invoke-static {v4, v1, v5, v2, v6}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setMode 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> 0x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/android/systemui/util/LogUtil;->isTraceEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curMode:I

    sget v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    const/4 v2, 0x0

    if-ne p1, v1, :cond_3

    sget-object p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->Companion:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;->getModeString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BioUnlock_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/android/systemui/util/LogUtil;->traceBegin(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    sget-object p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->Companion:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;->getModeString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BioUnlock_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/android/systemui/util/LogUtil;->traceEnd(Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->Companion:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;->getModeString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BioUnlock_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/android/systemui/util/LogUtil;->traceEnd(Ljava/lang/String;I)V

    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curMode:I

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;->getModeString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BioUnlock_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/android/systemui/util/LogUtil;->traceBegin(Ljava/lang/String;I)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setWakeAndUnlock(Z)V
    .locals 2

    sget v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    move-result v0

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {p1}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenAndShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledBiometricUnlockVI()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_STARTED_DISPLAY_DOZE_OR_OFF:I

    sget v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_UNLOCK_ANIM_AOD_FULLSCREEN:I

    or-int/2addr p1, v1

    goto :goto_0

    :cond_1
    sget p1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_STARTED_DISPLAY_DOZE_OR_OFF:I

    goto :goto_0

    :cond_2
    sget p1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_STARTED_DISPLAY_ON:I

    :goto_0
    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setMode(I)V

    return-void
.end method
