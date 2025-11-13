.class public final Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;
.super Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public animStartDelay:J

.field public final aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

.field public callback:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setupLocked$5;

.field public cannedAnimatorSet:Landroid/animation/AnimatorSet;

.field public final centralSurfacesLazy:Ldagger/Lazy;

.field public closingWallpaperLeash:Landroid/view/SurfaceControl;

.field public final context:Landroid/content/Context;

.field public curLeash:Landroid/view/SurfaceControl;

.field public curLeashAlpha:F

.field public curLeashHeight:F

.field public curLeashScale:F

.field public curLeashWidth:F

.field public curTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public forceEnded:Z

.field public frameUpdatedCount:I

.field public isLauncherActivity:Z

.field public final jankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public jankMonitorContext:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$JankMonitorContext;

.field public final keyguardFastBioUnlockControllerLazy:Ldagger/Lazy;

.field public final keyguardSurfaceControllerLazy:Ldagger/Lazy;

.field public final keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field public final keyguardViewMediatorLazy:Ldagger/Lazy;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public openingWallpaperLeash:Landroid/view/SurfaceControl;

.field public reqLeashAlpha:F

.field public reqLeashScale:F

.field public final scaleAnimator:Landroid/animation/ValueAnimator;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public shadeExpansionCollectorJob:Lkotlinx/coroutines/Job;

.field public final shadeInteractorLazy:Ldagger/Lazy;

.field public skipFrameCount:I

.field public final surfaceBehindMatrix:Landroid/graphics/Matrix;

.field public surfaceBehindRemoteAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final tmpFloat9:[F

.field public traceTag:Ljava/lang/String;

.field public final unlockAnimationExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/content/res/Resources;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ldagger/Lazy;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/flags/FeatureFlags;Ldagger/Lazy;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/internal/jank/InteractionJankMonitor;Ldagger/Lazy;Ldagger/Lazy;Landroid/os/PowerManager;Landroid/app/WallpaperManager;Lcom/android/systemui/util/SettingsHelper;Lkotlinx/coroutines/CoroutineScope;Ldagger/Lazy;Lcom/android/systemui/aod/AODAmbientWallpaperHelper;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/WindowManager;",
            "Landroid/content/res/Resources;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Ldagger/Lazy;",
            "Lcom/android/keyguard/KeyguardViewController;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/internal/jank/InteractionJankMonitor;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Landroid/os/PowerManager;",
            "Landroid/app/WallpaperManager;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/aod/AODAmbientWallpaperHelper;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ")V"
        }
    .end annotation

    move-object v12, p0

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p13

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;-><init>(Landroid/view/WindowManager;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ldagger/Lazy;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/flags/FeatureFlags;Ldagger/Lazy;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Landroid/os/PowerManager;Landroid/app/WallpaperManager;)V

    move-object v0, p1

    iput-object v0, v12, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->context:Landroid/content/Context;

    move-object/from16 v0, p4

    iput-object v0, v12, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p5

    iput-object v0, v12, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v0, p6

    iput-object v0, v12, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->unlockAnimationExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p8

    iput-object v0, v12, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->keyguardViewMediatorLazy:Ldagger/Lazy;

    move-object/from16 v0, p9

    iput-object v0, v12, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    move-object/from16 v0, p13

    iput-object v0, v12, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-object/from16 v0, p14

    iput-object v0, v12, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->jankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    move-object/from16 v0, p15

    iput-object v0, v12, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->centralSurfacesLazy:Ldagger/Lazy;

    move-object/from16 v0, p16

    iput-object v0, v12, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->keyguardSurfaceControllerLazy:Ldagger/Lazy;

    move-object/from16 v0, p19

    iput-object v0, v12, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v0, p20

    iput-object v0, v12, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v0, p21

    iput-object v0, v12, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->shadeInteractorLazy:Ldagger/Lazy;

    move-object/from16 v0, p22

    iput-object v0, v12, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    move-object/from16 v0, p23

    iput-object v0, v12, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->keyguardFastBioUnlockControllerLazy:Ldagger/Lazy;

    move-object/from16 v0, p24

    iput-object v0, v12, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v12, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->scaleAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v12, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->surfaceBehindMatrix:Landroid/graphics/Matrix;

    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, v12, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->tmpFloat9:[F

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v12, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->reqLeashAlpha:F

    iput v2, v12, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->reqLeashScale:F

    iput v2, v12, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeashAlpha:F

    iput v2, v12, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeashScale:F

    sget-object v2, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImplKt;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$1$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$1$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$1$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$1$2;-><init>(Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImplKt;->ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$2$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$2$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3df5c290    # 0.120000005f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final applyTransaction()V
    .locals 8

    const-string v0, "%.2f"

    const-string/jumbo v1, "setAlpha "

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v2, :cond_6

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    iget v6, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->reqLeashAlpha:F

    cmpg-float v7, v6, v3

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    iget v7, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeashAlpha:F

    cmpg-float v7, v6, v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$applyTransaction$1$1;

    invoke-direct {v6, v2, p0}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$applyTransaction$1$1;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;)V

    invoke-virtual {p0, v6, v1}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->trace(Ljava/lang/Runnable;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->reqLeashAlpha:F

    iput v1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeashAlpha:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v5

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "KeyguardUnlock"

    const-string v6, "applyTransaction catch the exception"

    invoke-static {v1, v6}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v1, v4

    :goto_1
    iget v6, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->reqLeashScale:F

    cmpg-float v3, v6, v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeashScale:F

    cmpg-float v3, v6, v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->surfaceBehindMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeashWidth:F

    iget v7, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeashHeight:F

    invoke-virtual {v3, v6, v6, v4, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->reqLeashScale:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "setMatrix "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$applyTransaction$1$2;

    invoke-direct {v3, v2, p0}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$applyTransaction$1$2;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;)V

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->trace(Ljava/lang/Runnable;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->reqLeashScale:F

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeashScale:F

    move v4, v5

    :goto_2
    if-nez v1, :cond_5

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->skipFrameCount:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->skipFrameCount:I

    goto :goto_4

    :cond_5
    :goto_3
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$applyTransaction$1$3;

    invoke-direct {v0, v2}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$applyTransaction$1$3;-><init>(Landroid/view/SurfaceControl$Transaction;)V

    const-string v1, "apply"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->trace(Ljava/lang/Runnable;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->frameUpdatedCount:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->frameUpdatedCount:I

    :cond_6
    :goto_4
    return-void
.end method

.method public final getUnlockAnimationDuration()J
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->isLauncherActivity:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x28a

    long-to-float v0, v0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getTransitionAnimationScale()F

    move-result p0

    :goto_0
    mul-float/2addr p0, v0

    float-to-long v0, p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getTransitionAnimationScale()F

    move-result p0

    goto :goto_0

    :goto_1
    return-wide v0
.end method

.method public final notifyFinishedKeyguardExitAnimation(Z)V
    .locals 2

    const-string v0, "KeyguardUnlock"

    const-string v1, "notifyFinishedKeyguardExitAnimation"

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationTargets:[Landroid/view/RemoteAnimationTarget;

    invoke-super {p0, p1}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->notifyFinishedKeyguardExitAnimation(Z)V

    return-void
.end method

.method public final notifyStartSurfaceBehindRemoteAnimation([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;JZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationTargets:[Landroid/view/RemoteAnimationTarget;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->wallpaperTargets:[Landroid/view/RemoteAnimationTarget;

    iput-wide p3, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationStartTime:J

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "notifyStartSurfaceBehindRemoteAnimation::target = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardUnlock"

    invoke-static {p2, p1}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->playCannedUnlockAnimation()V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$KeyguardUnlockAnimationListener;

    const/4 p3, 0x1

    invoke-interface {p2, p3, p3}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$KeyguardUnlockAnimationListener;->onUnlockAnimationStarted(ZZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->finishKeyguardExitRemoteAnimationIfReachThreshold()V

    return-void
.end method

.method public final onKeyguardDismissAmountChanged()V
    .locals 0

    return-void
.end method

.method public final playCannedUnlockAnimation()V
    .locals 12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->keyguardFastBioUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v1

    const-string v2, "KeyguardUnlock"

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAODParameters:Lcom/android/systemui/doze/AODParameters;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/android/systemui/doze/AODParameters;->mDozeUiState:Z

    if-ne v1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->keyguardViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v4, v4, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->onForegroundShown()V

    :cond_1
    const-wide/16 v4, 0x64

    iput-wide v4, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->animStartDelay:J

    sget-boolean v4, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {v4}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenAndShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->keyguardFastBioUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reset()V

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {v4}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    move-result-object v5

    iget-boolean v6, v5, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceVisibleForUnlockAnimation:Z

    if-nez v6, :cond_3

    sget-object v6, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "setForceVisibleForUnlockAnimation true"

    invoke-static {v6, v7}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, v5, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceVisibleForUnlockAnimation:Z

    invoke-virtual {v4, v5}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    :cond_3
    iget-wide v4, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->animStartDelay:J

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {v6}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenAndShowing()Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "playCannedUnlockAnimation animStartDelay="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", dozeUiStat="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", aodAmbientWallpaperHelper.isAODFullScreenAndShowing()="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationTargets:[Landroid/view/RemoteAnimationTarget;

    const/4 v4, 0x0

    if-eqz v1, :cond_15

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v0, :cond_5

    goto/16 :goto_b

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationTargets:[Landroid/view/RemoteAnimationTarget;

    if-eqz v1, :cond_6

    aget-object v1, v1, v3

    goto :goto_1

    :cond_6
    move-object v1, v4

    :goto_1
    if-eqz v1, :cond_7

    iget-object v5, v1, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v5, :cond_7

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_7
    move-object v5, v4

    :goto_2
    const-string v6, "com.sec.android.app.launcher.Launcher"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->isLauncherActivity:Z

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "playCannedUnlockAnimation: isLauncherActivity="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->isLauncherActivity:Z

    if-eqz v5, :cond_8

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->launcherUnlockController:Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;

    if-eqz v5, :cond_8

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v5, v3, v3, v6}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;->prepareForUnlock(IZLandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_8
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->wallpaperTargets:[Landroid/view/RemoteAnimationTarget;

    const/16 v6, 0xa

    if-eqz v5, :cond_b

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    array-length v8, v5

    move v9, v3

    :goto_4
    if-ge v9, v8, :cond_a

    aget-object v10, v5, v9

    iget v11, v10, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v11, :cond_9

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/RemoteAnimationTarget;

    iget-object v8, v8, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iput-object v8, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->openingWallpaperLeash:Landroid/view/SurfaceControl;

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->wallpaperTargets:[Landroid/view/RemoteAnimationTarget;

    if-eqz v5, :cond_e

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    array-length v8, v5

    :goto_6
    if-ge v3, v8, :cond_d

    aget-object v9, v5, v3

    iget v10, v9, Landroid/view/RemoteAnimationTarget;->mode:I

    if-ne v10, v0, :cond_c

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/RemoteAnimationTarget;

    iget-object v5, v5, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iput-object v5, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->closingWallpaperLeash:Landroid/view/SurfaceControl;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->callback:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setupLocked$5;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setupLocked$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz v3, :cond_f

    goto :goto_8

    :cond_f
    move-object v3, v4

    :goto_8
    iget-object v3, v3, Lcom/android/systemui/keyguard/ViewMediatorProvider;->getSurfaceBehindRemoteAnimationFinishedCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/IRemoteAnimationFinishedCallback;

    iput-object v3, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->surfaceBehindRemoteAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz v0, :cond_10

    goto :goto_9

    :cond_10
    move-object v0, v4

    :goto_9
    iget-object v0, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->resetSurfaceBehindRemoteAnimationFinishedCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_11
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->keyguardViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->adjustStatusBarLocked$2()V

    iget-wide v5, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->animStartDelay:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->keyguardSurfaceControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    const v3, 0x3c23d70a    # 0.01f

    invoke-static {v0, v3}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->setKeyguardSurfaceAppearAmount$default(Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;F)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->shadeExpansionCollectorJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_12

    const-string v0, "Already enabled"

    invoke-static {v2, v0}, Lcom/android/systemui/keyguard/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_12
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->shadeInteractorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isUserInteracting:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "isUserInteracting already true, skipping enable"

    invoke-static {v2, v0}, Lcom/android/systemui/keyguard/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_13
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$enablePanelDetector$1;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$enablePanelDetector$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {v0, v4, v4, v2, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->shadeExpansionCollectorJob:Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$enablePanelDetector$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$enablePanelDetector$2;-><init>(Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;)V

    check-cast v0, Lkotlinx/coroutines/JobSupport;

    invoke-virtual {v0, v2}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    :cond_14
    :goto_a
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->unlockAnimationExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9;

    invoke-direct {v2, v1, p0}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9;-><init>(Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_15
    :goto_b
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationTargets:[Landroid/view/RemoteAnimationTarget;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "exitAnimParam app[0] is empty, surfaceBehindRemoteAnimationTargets = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->callback:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setupLocked$5;

    if-eqz v1, :cond_18

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setupLocked$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v2, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz v2, :cond_16

    goto :goto_c

    :cond_16
    move-object v2, v4

    :goto_c
    iget-object v2, v2, Lcom/android/systemui/keyguard/ViewMediatorProvider;->getSurfaceBehindRemoteAnimationFinishedCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IRemoteAnimationFinishedCallback;

    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->surfaceBehindRemoteAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz v1, :cond_17

    goto :goto_d

    :cond_17
    move-object v1, v4

    :goto_d
    iget-object v1, v1, Lcom/android/systemui/keyguard/ViewMediatorProvider;->resetSurfaceBehindRemoteAnimationFinishedCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_18
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->keyguardViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v2, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->adjustStatusBarLocked$2()V

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->exitKeyguardAndFinishSurfaceBehindRemoteAnimation()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$onFinished$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$onFinished$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;)V

    invoke-virtual {v1, v0, v2, v4}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public final setCallback(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setupLocked$5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->callback:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setupLocked$5;

    return-void
.end method

.method public final setSurfaceBehindAppearAmount(FZ)V
    .locals 0

    return-void
.end method

.method public final trace(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->traceTag:Ljava/lang/String;

    const-string v0, "#"

    invoke-static {p0, v0, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x7f

    if-le p2, v0, :cond_0

    const/4 p2, 0x0

    const/16 v0, 0x7e

    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final updateKeyguardSurface(Z)V
    .locals 13

    const-string/jumbo v0, "updateKeyguardSurface: hide keyguardSurface isLauncherActivity="

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-wide v2, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->centralSurfacesLazy:Ldagger/Lazy;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->closingWallpaperLeash:Landroid/view/SurfaceControl;

    const/4 v7, 0x0

    const-string v8, "KeyguardUnlock"

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v6

    const/4 v9, 0x1

    if-ne v6, v9, :cond_2

    :try_start_0
    const-string/jumbo v6, "updateKeyguardSurface: hide closingWallpaperLeash"

    invoke-static {v8, v6}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->closingWallpaperLeash:Landroid/view/SurfaceControl;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v6

    if-eqz v6, :cond_3

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x3c23d70a    # 0.01f

    invoke-virtual {v5, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-wide v9, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->animStartDelay:J

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$updateKeyguardSurface$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$updateKeyguardSurface$1$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;)V

    iget-wide v9, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->animStartDelay:J

    invoke-interface {p1, v0, v9, v10}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    iget-wide v2, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateKeyguardSurface previousSurface : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", currentSurface : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p0

    if-eqz p0, :cond_4

    :try_start_2
    invoke-virtual {v5, v4, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo p0, "updateKeyguardSurface bouncer SurfaceControl already released"

    invoke-static {v8, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_5
    :goto_4
    return-void
.end method

.method public final updateLeashAlpha(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeash:Landroid/view/SurfaceControl;

    const-string v1, "KeyguardUnlock"

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curTransaction:Landroid/view/SurfaceControl$Transaction;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo p0, "updateLeashAlpha invalid leash"

    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateLeashAlpha: updateLeashAlpha="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->reqLeashAlpha:F

    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateLeashAlpha "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
