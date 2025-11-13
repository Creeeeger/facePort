.class public Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;
.super Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;
.implements Lcom/android/systemui/keyguard/KeyguardSecUnlockAnimationController;


# static fields
.field public static final Companion:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$Companion;


# instance fields
.field public final biometricUnlockControllerLazy:Ldagger/Lazy;

.field public dismissAmountThresholdsReached:Z

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final handler:Landroid/os/Handler;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field public final keyguardViewMediator:Ldagger/Lazy;

.field public launcherUnlockController:Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;

.field public final listeners:Ljava/util/ArrayList;

.field public lockscreenSmartspace:Landroid/view/View;

.field public final notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public playingCannedUnlockAnimation:Z

.field public final powerManager:Landroid/os/PowerManager;

.field public final resources:Landroid/content/res/Resources;

.field public final roundedCornerRadius:F

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public surfaceBehindAlpha:F

.field public final surfaceBehindAlphaAnimator:Landroid/animation/ValueAnimator;

.field public final surfaceBehindEntryAnimator:Landroid/animation/ValueAnimator;

.field public final surfaceBehindMatrix:Landroid/graphics/Matrix;

.field public surfaceBehindRemoteAnimationStartTime:J

.field public surfaceBehindRemoteAnimationTargets:[Landroid/view/RemoteAnimationTarget;

.field public surfaceTransactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

.field public final tmpFloat:[F

.field public final wallpaperCannedUnlockAnimator:Landroid/animation/ValueAnimator;

.field public wallpaperTargets:[Landroid/view/RemoteAnimationTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowManager;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Ldagger/Lazy;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/flags/FeatureFlags;Ldagger/Lazy;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Landroid/os/PowerManager;Landroid/app/WallpaperManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager;",
            "Landroid/content/res/Resources;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Ldagger/Lazy;",
            "Lcom/android/keyguard/KeyguardViewController;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Landroid/os/PowerManager;",
            "Landroid/app/WallpaperManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController$Stub;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    iput-object p6, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iput-object p7, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->biometricUnlockControllerLazy:Ldagger/Lazy;

    iput-object p8, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object p10, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->powerManager:Landroid/os/PowerManager;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->listeners:Ljava/util/ArrayList;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlpha:F

    const/4 p1, 0x2

    new-array p4, p1, [F

    fill-array-data p4, :array_0

    invoke-static {p4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlphaAnimator:Landroid/animation/ValueAnimator;

    new-array p5, p1, [F

    fill-array-data p5, :array_1

    invoke-static {p5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->wallpaperCannedUnlockAnimator:Landroid/animation/ValueAnimator;

    new-instance p6, Landroid/graphics/Matrix;

    invoke-direct {p6}, Landroid/graphics/Matrix;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindMatrix:Landroid/graphics/Matrix;

    new-array p1, p1, [F

    fill-array-data p1, :array_2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindEntryAnimator:Landroid/animation/ValueAnimator;

    new-instance p6, Landroid/os/Handler;

    invoke-direct {p6}, Landroid/os/Handler;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->handler:Landroid/os/Handler;

    const/16 p6, 0x9

    new-array p6, p6, [F

    iput-object p6, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->tmpFloat:[F

    invoke-static {}, Lcom/android/systemui/Flags;->fastUnlockTransition()V

    const-wide/16 p6, 0xaf

    invoke-virtual {p4, p6, p7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p6, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p4, p6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p6, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$1;

    invoke-direct {p6, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$1;-><init>(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;)V

    invoke-virtual {p4, p6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p6, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$2;

    invoke-direct {p6, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$2;-><init>(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;)V

    invoke-virtual {p4, p6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Lcom/android/systemui/Flags;->fastUnlockTransition()V

    const-wide/16 p6, 0x279

    invoke-virtual {p5, p6, p7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/android/systemui/Flags;->fastUnlockTransition()V

    sget-object p4, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p5, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p4, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$2$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$2$1;-><init>(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;)V

    invoke-virtual {p5, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p4, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$2$2;

    invoke-direct {p4, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$2$2;-><init>(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;)V

    invoke-virtual {p5, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Lcom/android/systemui/Flags;->fastUnlockTransition()V

    const-wide/16 p4, 0xc8

    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/android/systemui/Flags;->fastUnlockTransition()V

    const-wide/16 p4, 0x4b

    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    sget-object p4, Lcom/android/app/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p4, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$3$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$3$1;-><init>(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;)V

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p4, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$3$2;

    invoke-direct {p4, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$3$2;-><init>(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;)V

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    check-cast p3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    const p1, 0x1050398

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->roundedCornerRadius:F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic getSurfaceBehindAlphaAnimator$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSurfaceBehindEntryAnimator$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSurfaceTransactionApplier$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getWillUnlockWithInWindowLauncherAnimations$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final finishKeyguardExitRemoteAnimationIfReachThreshold()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->dismissAmountThresholdsReached:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->requestedShowSurfaceBehindKeyguard()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isAnimatingBetweenKeyguardAndSurfaceBehindOrWillBe()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissAmount:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-gez v3, :cond_3

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissingFromTouch:Z

    if-eqz v3, :cond_4

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguardDuringSwipeGesture:Z

    if-nez v0, :cond_4

    const v0, 0x3e99999a    # 0.3f

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->setSurfaceBehindAppearAmount(FZ)V

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->dismissAmountThresholdsReached:Z

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->exitKeyguardAndFinishSurfaceBehindRemoteAnimation()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final hideKeyguardViewAfterRemoteAnimation()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    iget-wide v1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationStartTime:J

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/keyguard/KeyguardViewController;->hide(JJ)V

    goto :goto_0

    :cond_0
    const-string p0, "KeyguardUnlock"

    const-string v0, "#hideKeyguardViewAfterRemoteAnimation called when keyguard view is not showing. Ignoring..."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public notifyFinishedKeyguardExitAnimation(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->lockscreenSmartspace:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->lockscreenSmartspace:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlpha:F

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->setSurfaceBehindAppearAmount(FZ)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->launcherUnlockController:Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;->setUnlockAmount(FZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "KeyguardUnlock"

    const-string v3, "Remote exception in notifyFinishedKeyguardExitAnimation"

    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$KeyguardUnlockAnimationListener;

    invoke-interface {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$KeyguardUnlockAnimationListener;->onUnlockAnimationFinished()V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindEntryAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->wallpaperCannedUnlockAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationTargets:[Landroid/view/RemoteAnimationTarget;

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->wallpaperTargets:[Landroid/view/RemoteAnimationTarget;

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->dismissAmountThresholdsReached:Z

    return-void
.end method

.method public notifyStartSurfaceBehindRemoteAnimation([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;JZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceTransactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceTransactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationTargets:[Landroid/view/RemoteAnimationTarget;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->wallpaperTargets:[Landroid/view/RemoteAnimationTarget;

    iput-wide p3, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationStartTime:J

    if-eqz p5, :cond_2

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p2, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguard:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playCannedUnlockAnimation()V

    goto :goto_0

    :cond_1
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissingFromTouch:Z

    const-string p1, "KeyguardUnlock"

    const-string p2, "fadeInSurfaceBehind"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playCannedUnlockAnimation()V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->biometricUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->biometricUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget p1, p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 p2, 0x6

    if-eq p1, p2, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-static {}, Lcom/android/systemui/Flags;->fastUnlockTransition()V

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$KeyguardUnlockAnimationListener;

    iget-boolean p4, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    invoke-static {}, Lcom/android/systemui/Flags;->fastUnlockTransition()V

    invoke-interface {p3, p4, p1}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$KeyguardUnlockAnimationListener;->onUnlockAnimationStarted(ZZ)V

    goto :goto_2

    :cond_4
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->finishKeyguardExitRemoteAnimationIfReachThreshold()V

    :cond_5
    return-void
.end method

.method public onKeyguardDismissAmountChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    sget-object v1, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/flags/Flags;->NEW_UNLOCK_SWIPE_ANIMATION:Lcom/android/systemui/flags/ReleasedFlag;

    check-cast v0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v0, v1}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->dismissAmountThresholdsReached:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissAmount:F

    const v1, 0x3e19999a    # 0.15f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->requestedShowSurfaceBehindKeyguard()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->showSurfaceBehindKeyguard()V

    goto :goto_0

    :cond_4
    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->requestedShowSurfaceBehindKeyguard()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideSurfaceBehindKeyguard()V

    const-string v0, "KeyguardUnlock"

    const-string v1, "fadeOutSurfaceBehind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->finishKeyguardExitRemoteAnimationIfReachThreshold()V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->requestedShowSurfaceBehindKeyguard()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isAnimatingBetweenKeyguardAndSurfaceBehindOrWillBe()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->updateSurfaceBehindAppearAmount()V

    :cond_7
    return-void
.end method

.method public final onKeyguardGoingAwayChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    return-void
.end method

.method public final onLauncherSmartspaceStateUpdated(Lcom/android/systemui/shared/system/smartspace/SmartspaceState;)V
    .locals 0

    return-void
.end method

.method public playCannedUnlockAnimation()V
    .locals 3

    const-string v0, "KeyguardUnlock"

    const-string v1, "playCannedUnlockAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->biometricUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "playCannedUnlockAnimation, isWakeAndUnlock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->setSurfaceBehindAppearAmount(FZ)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->exitKeyguardAndFinishSurfaceBehindRemoteAnimation()V

    goto :goto_0

    :cond_0
    const-string v1, "playCannedUnlockAnimation, surfaceBehindEntryAnimator#start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindEntryAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method public final setLauncherUnlockController(Ljava/lang/String;Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->launcherUnlockController:Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;

    return-void
.end method

.method public setSurfaceBehindAppearAmount(FZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSnappingKeyguardBackAfterSwipe:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->powerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    iget v2, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlpha:F

    :goto_0
    iget-object v4, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationTargets:[Landroid/view/RemoteAnimationTarget;

    if-eqz v4, :cond_4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_4

    aget-object v8, v4, v7

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    iget-object v9, v8, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v10}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v11

    const v12, 0x3d4cccd0    # 0.050000012f

    mul-float/2addr v11, v12

    const v12, 0x3f733333    # 0.95f

    add-float/2addr v11, v12

    iget-object v12, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v12, v12, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissingFromTouch:Z

    iget-object v12, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindMatrix:Landroid/graphics/Matrix;

    iget-object v13, v8, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    iget v14, v13, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    int-to-float v9, v9

    const v15, 0x3d4ccccd    # 0.05f

    mul-float/2addr v15, v9

    invoke-static {v10, v1, v15, v13}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v10

    invoke-virtual {v12, v14, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v10, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindMatrix:Landroid/graphics/Matrix;

    iget-object v12, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v12}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewRootImpl;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    const v13, 0x3f28f5c3    # 0.66f

    mul-float/2addr v9, v13

    invoke-virtual {v10, v11, v11, v12, v9}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v9, v8, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v10, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v10}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x1

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v10

    if-ne v10, v11, :cond_3

    new-instance v8, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v8}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v10, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindMatrix:Landroid/graphics/Matrix;

    iget-object v11, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->tmpFloat:[F

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    iget v10, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->roundedCornerRadius:F

    invoke-virtual {v8, v9, v10}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v8, v9, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v8}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_3

    :cond_3
    :goto_2
    new-instance v9, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v8, v8, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v9, v8}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    iget-object v8, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v8}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v8

    iget v9, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->roundedCornerRadius:F

    invoke-virtual {v8, v9}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withCornerRadius(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v8

    iget-object v9, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceTransactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v10, v11, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    aput-object v8, v10, v6

    invoke-virtual {v9, v10}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->setWallpaperAppearAmount(F)V

    :cond_5
    return-void
.end method

.method public final setWallpaperAppearAmount(F)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->wallpaperTargets:[Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    iget-object v5, v4, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v6}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v6

    if-ne v6, v7, :cond_1

    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v4, v5, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v5, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v4, v4, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v5, v4}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v5, p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceTransactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-array v6, v7, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    aput-object v4, v6, v2

    invoke-virtual {v5, v6}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final unlockToLauncherWithInWindowAnimations()V
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlpha:F

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->setSurfaceBehindAppearAmount(FZ)V

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->launcherUnlockController:Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/systemui/Flags;->fastUnlockTransition()V

    const-wide/16 v3, 0x279

    const-wide/16 v6, 0x64

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;->playUnlockAnimation(JZJ)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "KeyguardUnlock"

    const-string v1, "launcherUnlockAnimationController was dead, but non-null. Catching exception as this should mean Launcher is in the process of being destroyed, but the IPC to System UI telling us hasn\'t arrived yet."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->lockscreenSmartspace:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->lockscreenSmartspace:Landroid/view/View;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$unlockToLauncherWithInWindowAnimations$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$unlockToLauncherWithInWindowAnimations$1;-><init>(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;)V

    invoke-static {}, Lcom/android/systemui/Flags;->fastUnlockTransition()V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final updateSurfaceBehindAppearAmount()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationTargets:[Landroid/view/RemoteAnimationTarget;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguard:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissAmount:F

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->setSurfaceBehindAppearAmount(FZ)V

    goto :goto_0

    :cond_2
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissingFromTouch:Z

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSnappingKeyguardBackAfterSwipe:Z

    if-eqz v1, :cond_4

    :cond_3
    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissAmount:F

    const v1, 0x3e19999a    # 0.15f

    sub-float/2addr v0, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->setSurfaceBehindAppearAmount(FZ)V

    :cond_4
    :goto_0
    return-void
.end method
