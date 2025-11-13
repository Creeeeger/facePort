.class public final Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

.field private final aodShowStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final aodTouchModeManager:Lcom/android/systemui/aod/AODTouchModeManager;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public clearDecidedToAnimateGoingToSleep:Lkotlin/jvm/functions/Function0;

.field public final conditions:Ljava/util/List;

.field public final context:Landroid/content/Context;

.field public curRotation:I

.field public deviceInteractive:Z

.field public final displayManager$delegate:Lkotlin/Lazy;

.field public final dozeParameters:Ldagger/Lazy;

.field public isFalseDecidedToAnimateGoingToSleep:Lkotlin/jvm/functions/Function0;

.field public isPanelOpenedOnGoingToSleep:Z

.field public job:Lkotlinx/coroutines/Job;

.field public final keyguardUpdateMonitorLazy:Ldagger/Lazy;

.field public final keyguardViewMediatorLazy:Ldagger/Lazy;

.field public final keyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

.field public lastReason:I

.field public lastShouldPlay:Z

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final mainHandler:Landroid/os/Handler;

.field public final maxRefreshRate$delegate:Lkotlin/Lazy;

.field public final moreLog:Z

.field public needUpdateSetLockScreenShown:Z

.field public final pluginAODManagerLazy:Ldagger/Lazy;

.field public final pluginFaceWidgetManagerLazy:Ldagger/Lazy;

.field public final pluginLockMediatorLazy:Ldagger/Lazy;

.field public final pluginLockStarManagerLazy:Ldagger/Lazy;

.field public final reasonLog:Ljava/util/List;

.field public refreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public skipAnimationInOthers:Z

.field public final statusBarKeyguardViewManagerLazy:Ldagger/Lazy;

.field public final statusBarStateControllerImpl:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

.field public final token$delegate:Lkotlin/Lazy;

.field public final unlockedScreenOffAnimationController:Ldagger/Lazy;

.field public final updateSetLockScreenShownRunnable:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$special$$inlined$Runnable$1;

.field public final wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final wallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aod/AODAmbientWallpaperHelper;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ldagger/Lazy;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Ldagger/Lazy;Landroid/os/Handler;Landroid/view/WindowManager;Landroid/app/WallpaperManager;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/keyguard/ScreenLifecycle;Ldagger/Lazy;Lcom/android/systemui/aod/AODTouchModeManager;Ldagger/Lazy;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/aod/AODAmbientWallpaperHelper;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Ldagger/Lazy;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Ldagger/Lazy;",
            "Landroid/os/Handler;",
            "Landroid/view/WindowManager;",
            "Landroid/app/WallpaperManager;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/aod/AODTouchModeManager;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->pluginAODManagerLazy:Ldagger/Lazy;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->dozeParameters:Ldagger/Lazy;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->unlockedScreenOffAnimationController:Ldagger/Lazy;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->statusBarStateControllerImpl:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->context:Landroid/content/Context;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->keyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->keyguardUpdateMonitorLazy:Ldagger/Lazy;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->scope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->keyguardViewMediatorLazy:Ldagger/Lazy;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->mainHandler:Landroid/os/Handler;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->wallpaperManager:Landroid/app/WallpaperManager;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->pluginFaceWidgetManagerLazy:Ldagger/Lazy;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->statusBarKeyguardViewManagerLazy:Ldagger/Lazy;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->pluginLockStarManagerLazy:Ldagger/Lazy;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->aodTouchModeManager:Lcom/android/systemui/aod/AODTouchModeManager;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->pluginLockMediatorLazy:Ldagger/Lazy;

    sget-object v1, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$displayManager$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$displayManager$2;

    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->displayManager$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$maxRefreshRate$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$maxRefreshRate$2;

    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->maxRefreshRate$delegate:Lkotlin/Lazy;

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v2, "user"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/systemui/util/LogUtil;->isDebugLevelMid()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/systemui/util/LogUtil;->isDebugLevelHigh()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->moreLog:Z

    sget-object v1, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$token$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$token$2;

    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->token$delegate:Lkotlin/Lazy;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->curRotation:I

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->deviceInteractive:Z

    new-instance v2, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$1;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$2;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$3;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$4;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$4;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    new-instance v6, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$5;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    new-instance v7, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$6;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$6;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    new-instance v8, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$7;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$7;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    new-instance v9, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$8;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$8;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    new-instance v10, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$9;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$9;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    new-instance v11, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$10;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$10;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    new-instance v12, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$11;

    invoke-direct {v12, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$11;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    new-instance v13, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$12;

    invoke-direct {v13, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$conditions$12;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    move-object p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    filled-new-array/range {p1 .. p12}, [Lkotlin/jvm/functions/Function0;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->conditions:Ljava/util/List;

    const-string v2, "cover closed"

    const-string v3, "panel is already opened"

    const-string v4, "not AOD fullscreen"

    const-string v5, "not provisioned"

    const-string v6, "canControlUnlockedScreenOff is false"

    const-string v7, "decidedToAnimateGoingToSleep is false"

    const-string v8, "animation is disabled"

    const-string v9, "not SHADE state"

    const-string v10, "not initialized or panel is expanded"

    const-string/jumbo v11, "rotation condition is not matched"

    const-string/jumbo v12, "ultra power saving"

    const-string v13, "AOD started by Fold Close"

    move-object p1, v4

    move-object/from16 p2, v5

    move-object/from16 p3, v6

    move-object/from16 p4, v7

    move-object/from16 p5, v8

    move-object/from16 p6, v9

    move-object/from16 p7, v10

    move-object/from16 p8, v11

    move-object/from16 p9, v2

    move-object/from16 p10, v3

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    filled-new-array/range {p1 .. p12}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->reasonLog:Ljava/util/List;

    iput v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->lastReason:I

    new-instance v1, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$special$$inlined$Runnable$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$special$$inlined$Runnable$1;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->updateSetLockScreenShownRunnable:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$special$$inlined$Runnable$1;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$aodShowStateCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$aodShowStateCallback$1;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->aodShowStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method public static final access$getReasonLog(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->reasonLog:Ljava/util/List;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isRotationLocked()Z

    move-result v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->curRotation:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " allowRotation="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", rotationLock="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", rotation="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->reasonLog:Ljava/util/List;

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public static final access$getRotation(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)I
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->curRotation:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isRotationLocked()Z

    move-result v1

    const-string v2, "getRotation: curRotation="

    const-string v3, ", settingsHelper.isRotationLocked="

    const-string v4, "UnlockedScreenOffAnimation"

    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->curRotation:I

    return p0
.end method

.method public static final synthetic access$getSettingsHelper$p(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UnlockedScreenOffAnimation"

    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final init(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->isFalseDecidedToAnimateGoingToSleep:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->clearDecidedToAnimateGoingToSleep:Lkotlin/jvm/functions/Function0;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->aodShowStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 p3, 0x1

    new-array p3, p3, [Landroid/net/Uri;

    const-string v0, "aod_show_state"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$init$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$init$1;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p2, p1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$init$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$init$2;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public final onAmountChanged(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->pluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/aod/PluginAOD;->onUnlockedScreenOffAmountChanged(F)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->pluginFaceWidgetManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    int-to-float v2, v1

    sub-float/2addr v2, p1

    iget-object v0, v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->setDarkAmount(F)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->pluginLockStarManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/lockstar/PluginLockStarManager;

    int-to-float v0, v1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->setDarkAmount(Ljava/lang/Float;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    return-void
.end method

.method public final onPrepare()V
    .locals 6

    const-string/jumbo v0, "setMaxRefreshRate "

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/SettingsHelper;->getRefreshRateMode(Z)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->refreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    if-nez v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->displayManager$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/IDisplayManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->token$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->maxRefreshRate$delegate:Lkotlin/Lazy;

    :try_start_1
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const-string v5, "UnlockedScreenOffAnimation"

    invoke-interface {v1, v2, v4, v5}, Landroid/hardware/display/IDisplayManager;->acquireRefreshRateMaxLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->refreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "Hz"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->logD(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->refreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    if-nez p0, :cond_2

    const-string/jumbo p0, "setMaxRefreshRate failed"

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->logD(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final playWallpaperAnimation()V
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$playWallpaperAnimation$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$playWallpaperAnimation$1;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;Lkotlin/coroutines/Continuation;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    const/4 v3, 0x2

    invoke-static {v2, p0, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setSkipAnimationInOthers(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->skipAnimationInOthers:Z

    if-eq v0, p1, :cond_0

    if-nez p1, :cond_0

    const-string/jumbo v0, "skipAnimationInOthers false"

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->logD(Ljava/lang/String;)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->skipAnimationInOthers:Z

    return-void
.end method

.method public final shouldPlayUnlockedScreenOffAnimation()Z
    .locals 7

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "shouldPlayUnlockedScreenOffAnimation do not play UnlockedScreenOffAnimation"

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->logD(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->conditions:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, -0x1

    move v3, v2

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function0;

    add-int/2addr v3, v5

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->lastReason:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    if-eq v0, v3, :cond_2

    iget v0, v2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->lastShouldPlay:Z

    if-eqz v0, :cond_5

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->moreLog:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->reasonLog:Ljava/util/List;

    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "reason: "

    invoke-static {v3, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "shouldPlayUnlockedScreenOffAnimation false / "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->logD(Ljava/lang/String;)V

    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->lastShouldPlay:Z

    if-eqz v0, :cond_7

    iget v0, v2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    if-nez v0, :cond_7

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->setSkipAnimationInOthers(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->job:Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_6
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->job:Lkotlinx/coroutines/Job;

    new-instance v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$shouldPlayUnlockedScreenOffAnimation$1$1;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$shouldPlayUnlockedScreenOffAnimation$1$1;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;Lkotlin/coroutines/Continuation;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    const/4 v6, 0x2

    invoke-static {v4, v5, v2, v0, v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->job:Lkotlinx/coroutines/Job;

    :cond_7
    iput v3, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->lastReason:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->lastShouldPlay:Z

    return v1

    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->lastShouldPlay:Z

    if-nez v0, :cond_9

    const-string/jumbo v0, "shouldPlayUnlockedScreenOffAnimation true"

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->logD(Ljava/lang/String;)V

    :cond_9
    iput v2, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->lastReason:I

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->lastShouldPlay:Z

    return v5
.end method

.method public final updateSetLockScreenShown(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateSetLockScreenShown: wakingUp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnlockedScreenOffAnimation"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$updateSetLockScreenShown$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$updateSetLockScreenShown$1;-><init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
