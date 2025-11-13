.class public final Lcom/android/systemui/statusbar/phone/ScrimController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/CoreStartable;


# static fields
.field public static final DEBUG:Z

.field public static final TAG_END_ALPHA:I

.field public static final TAG_KEY_ANIM:I

.field public static final TAG_START_ALPHA:I


# instance fields
.field public mAODAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

.field public final mAlternateBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerToGoneTransitionViewModel;

.field public mAnimateChange:Z

.field public mAnimatingPanelExpansionOnUnlock:Z

.field public mAnimationDelay:J

.field public mAnimationDuration:J

.field public mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field public mBehindAlpha:F

.field public mBehindTint:I

.field public mBlankScreen:Z

.field public mBlankingTransitionRunnable:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;

.field public mBouncerHiddenFraction:F

.field mBouncerToGoneTransition:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/keyguard/shared/model/TransitionStep;",
            ">;"
        }
    .end annotation
.end field

.field public mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

.field public final mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

.field public mDarkenWhileDragging:Z

.field public final mDefaultScrimAlpha:F

.field public final mDockManager:Lcom/android/systemui/dock/DockManager;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public mExpansionAffectsAlpha:Z

.field public final mGlanceableHubConsumer:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda3;

.field public final mHandler:Landroid/os/Handler;

.field public mInFrontAlpha:F

.field public mInFrontTint:I

.field public final mInterpolator:Landroid/view/animation/Interpolator;

.field public mIsBouncerToGoneTransitionRunning:Z

.field public final mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

.field public final mKeyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public mKeyguardOccluded:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

.field public final mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardVisibilityCallback:Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;

.field public final mLargeScreenShadeInterpolator:Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;

.field public final mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public mNeedsDrawableColorUpdate:Z

.field public mNotificationsAlpha:F

.field public mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

.field public mNotificationsTint:I

.field public mOccludeAnimationPlaying:Z

.field public mPanelExpansionFraction:F

.field public mPanelScrimMinFraction:F

.field public mPendingFrameCallback:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;

.field public final mPrimaryBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;

.field public mQsBottomVisible:Z

.field public mQsExpansion:F

.field public mRawPanelExpansionFraction:F

.field public mScreenBlankingCallbackCalled:Z

.field public final mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public mScreenOn:Z

.field public final mScrimAlphaConsumer:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda3;

.field public mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

.field public mScrimBehindAlphaKeyguard:F

.field public mScrimColorState:Lcom/android/systemui/statusbar/phone/ScrimStateLogger;

.field public mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

.field public final mScrimStateListener:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda4;

.field public mScrimVisibleListener:Ljava/util/function/Consumer;

.field public mScrimsVisibility:I

.field public mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

.field public mState:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

.field public mTransitionToFullShadeProgress:F

.field public mTransitionToLockScreenFullShadeNotificationsProgress:F

.field public mTransitioningToFullShade:Z

.field public mTransparentScrimBackground:Z

.field public mUpdatePending:Z

.field public final mWakeLock:Lcom/android/systemui/util/wakelock/DelayedWakeLock;

.field public mWakeLockHeld:Z

.field public final mWallpaperRepository:Lcom/android/systemui/wallpapers/data/repository/WallpaperRepository;

.field public mWallpaperSupportsAmbientMode:Z

.field public mWallpaperVisibilityTimedOut:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ScrimController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    const v0, 0x7f0a0a54

    sput v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    const v0, 0x7f0a0a56

    sput v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_START_ALPHA:I

    const v0, 0x7f0a0a55

    sput v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_END_ALPHA:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/util/wakelock/DelayedWakeLock$Factory;Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/kotlin/JavaAdapter;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerToGoneTransitionViewModel;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/wallpapers/data/repository/WallpaperRepository;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;)V
    .locals 8

    move-object v0, p0

    move-object v1, p4

    move-object v2, p6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOccludeAnimationPlaying:Z

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerHiddenFraction:F

    sget-object v5, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    const v5, 0x3e4ccccd    # 0.2f

    iput v5, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaKeyguard:F

    iput v4, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPanelExpansionFraction:F

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    const-wide/16 v6, -0x1

    iput-wide v6, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v6, -0x40800000    # -1.0f

    iput v6, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    iput v6, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    iput v6, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mIsBouncerToGoneTransitionRunning:Z

    new-instance v6, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda3;

    const/4 v7, 0x4

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;I)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimAlphaConsumer:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda3;

    new-instance v6, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda3;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;I)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mGlanceableHubConsumer:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda3;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda4;

    move-object v7, p1

    invoke-direct {v6, p1}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/LightBarController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimStateListener:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda4;

    move-object/from16 v6, p21

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mLargeScreenShadeInterpolator:Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;

    iput v4, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDefaultScrimAlpha:F

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v6, v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    xor-int/2addr v5, v6

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    move-object v5, p7

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance v5, Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;

    invoke-direct {v5, p0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;I)V

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardVisibilityCallback:Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    move-object/from16 v3, p10

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mMainExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    new-instance v3, Lcom/android/systemui/util/AlarmTimeout;

    new-instance v5, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    const-string v6, "hide_aod_wallpaper"

    move-object v7, p3

    invoke-direct {v3, p3, v5, v6, p6}, Lcom/android/systemui/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    const-string v2, "Scrims"

    move-object v3, p5

    invoke-interface {p5, v2}, Lcom/android/systemui/util/wakelock/DelayedWakeLock$Factory;->create(Ljava/lang/String;)Lcom/android/systemui/util/wakelock/DelayedWakeLock;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLock:Lcom/android/systemui/util/wakelock/DelayedWakeLock;

    move-object v2, p2

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v2, p8

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    new-instance v2, Lcom/android/systemui/statusbar/phone/ScrimController$1;

    invoke-direct {v2, p0, p4}, Lcom/android/systemui/statusbar/phone/ScrimController$1;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ScrimController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ScrimController$2;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    move-object/from16 v2, p9

    check-cast v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPrimaryBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAlternateBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerToGoneTransitionViewModel;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperRepository:Lcom/android/systemui/wallpapers/data/repository/WallpaperRepository;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method

.method public static isAnimating(Landroid/view/View;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final applyAndDispatchState()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyState$1$1()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setOrAdaptCurrentAnimation(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setOrAdaptCurrentAnimation(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setOrAdaptCurrentAnimation(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    iget v0, v0, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchBackScrimState(F)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final applyState$1$1()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$4;->$SwitchMap$com$android$systemui$statusbar$phone$ScrimState:[I

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v1, v2, :cond_3

    const/4 v5, 0x2

    if-eq v1, v5, :cond_3

    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mPreviousState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v5, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v1, v5, :cond_2

    sget-object v5, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v1, v5, :cond_2

    sget-object v5, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v1, v5, :cond_2

    sget-object v5, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v1, v5, :cond_2

    sget-object v5, Lcom/android/systemui/statusbar/phone/ScrimState;->DREAMING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v1, v5, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    iput v4, v0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindAlpha:F

    :cond_3
    move v0, v2

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget v5, v1, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    iput v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontTint:I

    iget v5, v1, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    iput v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindTint:I

    iget v5, v1, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifTint:I

    iput v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsTint:I

    iget v5, v1, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontAlpha:F

    iput v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    iget v5, v1, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindAlpha:F

    iput v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    iget v1, v1, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifAlpha:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->assertAlphasValid()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    if-nez v1, :cond_4

    return-void

    :cond_4
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_5

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimatingPanelExpansionOnUnlock:Z

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/high16 v5, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_11

    sget-object v6, Lcom/android/systemui/statusbar/phone/ScrimState;->DREAMING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v6, :cond_11

    sget-object v6, Lcom/android/systemui/statusbar/phone/ScrimState;->GLANCEABLE_HUB_OVER_DREAM:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v6, :cond_7

    goto/16 :goto_6

    :cond_7
    sget-object v6, Lcom/android/systemui/statusbar/phone/ScrimState;->AUTH_SCRIMMED_SHADE:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v6, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getInterpolatedFraction()F

    move-result v0

    float-to-double v4, v0

    const-wide v6, 0x3fe99999a0000000L    # 0.800000011920929

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    goto/16 :goto_9

    :cond_8
    sget-object v6, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v6, :cond_9

    sget-object v7, Lcom/android/systemui/statusbar/phone/ScrimState;->SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v7, :cond_9

    sget-object v7, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v7, :cond_9

    sget-object v7, Lcom/android/systemui/statusbar/phone/ScrimState;->GLANCEABLE_HUB:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v7, :cond_17

    :cond_9
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->calculateBackStateForState(Lcom/android/systemui/statusbar/phone/ScrimState;)Landroid/util/Pair;

    move-result-object v0

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v8, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTransitionToFullShadeProgress:F

    cmpl-float v9, v8, v4

    if-lez v9, :cond_a

    sget-object v8, Lcom/android/systemui/statusbar/phone/ScrimState;->SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/ScrimController;->calculateBackStateForState(Lcom/android/systemui/statusbar/phone/ScrimState;)Landroid/util/Pair;

    move-result-object v8

    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    iget v10, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTransitionToFullShadeProgress:F

    invoke-static {v0, v9, v10}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTransitionToFullShadeProgress:F

    invoke-static {v7, v8, v9}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v7

    goto :goto_3

    :cond_a
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v10, Lcom/android/systemui/statusbar/phone/ScrimState;->GLANCEABLE_HUB:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v9, v10, :cond_b

    cmpl-float v8, v8, v4

    if-nez v8, :cond_b

    iget v8, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerHiddenFraction:F

    cmpl-float v8, v8, v5

    if-nez v8, :cond_b

    move v0, v4

    :cond_b
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget v9, v8, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontAlpha:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    if-ne v8, v6, :cond_c

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTransitionToFullShadeProgress:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_c

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTransitionToLockScreenFullShadeNotificationsProgress:F

    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    goto :goto_4

    :cond_c
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v8, v0, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getInterpolatedFraction()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    goto :goto_4

    :cond_d
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->GLANCEABLE_HUB:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v8, v0, :cond_e

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTransitionToFullShadeProgress:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_e

    iput v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getInterpolatedFraction()F

    move-result v0

    sub-float/2addr v5, v0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mQsExpansion:F

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget v5, v0, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifTint:I

    iput v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsTint:I

    iput v7, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindTint:I

    if-ne v0, v6, :cond_f

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTransitionToFullShadeProgress:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_f

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mQsExpansion:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_f

    goto :goto_5

    :cond_f
    move v2, v3

    :goto_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardOccluded:Z

    if-nez v0, :cond_10

    if-eqz v2, :cond_17

    :cond_10
    iput v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    goto :goto_9

    :cond_11
    :goto_6
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOccludeAnimationPlaying:Z

    if-nez v6, :cond_13

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/ScrimState;->mLaunchingAffordanceWithPreview:Z

    if-eqz v0, :cond_12

    goto :goto_7

    :cond_12
    move v2, v3

    :cond_13
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->shouldExpandNotifications()Z

    move-result v0

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimatingPanelExpansionOnUnlock:Z

    if-nez v0, :cond_15

    if-nez v2, :cond_15

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTransparentScrimBackground:Z

    if-eqz v0, :cond_14

    iput v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    iput v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    goto :goto_8

    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mLargeScreenShadeInterpolator:Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPanelExpansionFraction:F

    iget v6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDefaultScrimAlpha:F

    mul-float/2addr v2, v6

    invoke-interface {v0, v2}, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;->getBehindScrimAlpha(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mLargeScreenShadeInterpolator:Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPanelExpansionFraction:F

    invoke-interface {v0, v2}, Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;->getNotificationScrimAlpha(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    :goto_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindTint:I

    iput v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->DREAMING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v2, :cond_16

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->GLANCEABLE_HUB_OVER_DREAM:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v2, :cond_17

    :cond_16
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerHiddenFraction:F

    cmpl-float v2, v0, v5

    if-eqz v2, :cond_17

    invoke-static {v0}, Lcom/android/keyguard/BouncerPanelExpansionCalculator;->aboutToShowBouncerProgress(F)F

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDefaultScrimAlpha:F

    iget v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-static {v2, v4, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindTint:I

    invoke-static {v2, v4, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindTint:I

    :cond_17
    :goto_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_18

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimatingPanelExpansionOnUnlock:Z

    :cond_18
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->assertAlphasValid()V

    return-void
.end method

.method public final assertAlphasValid()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scrim opacity is NaN for state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", front: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", back: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", notif: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final calculateAndUpdatePanelExpansion()V
    .locals 5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mRawPanelExpansionFraction:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPanelScrimMinFraction:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v2

    const/4 v4, 0x0

    if-gez v3, :cond_0

    sub-float/2addr v0, v1

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPanelExpansionFraction:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_5

    cmpl-float v1, v0, v4

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    iget-boolean v2, v2, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimatingPanelExpansionOnUnlock:Z

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimatingPanelExpansionOnUnlock:Z

    :cond_2
    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPanelExpansionFraction:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->DREAMING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->GLANCEABLE_HUB_OVER_DREAM:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v1, :cond_5

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimatingPanelExpansionOnUnlock:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyAndDispatchState()V

    nop

    :cond_5
    :goto_1
    return-void
.end method

.method public final calculateBackStateForState(Lcom/android/systemui/statusbar/phone/ScrimState;)Landroid/util/Pair;
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getInterpolatedFraction()F

    move-result v0

    iget v1, p1, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindAlpha:F

    iget v2, p1, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDefaultScrimAlpha:F

    invoke-static {v3, v1, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v4, v1, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isPrimaryBouncerInTransit()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    iget p1, p1, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    invoke-static {v2, p1, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mQsExpansion:F

    cmpl-float v0, p1, v4

    if-lez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDefaultScrimAlpha:F

    invoke-static {v1, v0, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mQsExpansion:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isPrimaryBouncerInTransit()Z

    move-result v0

    if-eqz v0, :cond_2

    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPanelExpansionFraction:F

    invoke-static {p1}, Lcom/android/keyguard/BouncerPanelExpansionCalculator;->showBouncerProgress(F)F

    move-result p1

    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    invoke-static {v2, v0, p1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v4, v1

    :goto_1
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final dispatchBackScrimState(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimStateListener:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda4;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda4;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final dispatchScrimsVisible()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    iget v1, v1, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    iget v0, v0, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    move v0, v5

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v4

    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimsVisibility:I

    if-eq v1, v0, :cond_6

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimsVisibility:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenOn:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_3

    if-ne v0, v4, :cond_3

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    sget-boolean v3, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_COVER:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v3, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v3, v3, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v3, :cond_4

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_5

    const-string/jumbo v1, "scrim"

    invoke-virtual {v2, v5, v1}, Landroid/view/ViewRootImpl;->setReportNextDraw(ZLjava/lang/String;)V

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimVisibleListener:Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public doOnTheNextFrame(Ljava/lang/Runnable;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    const-wide/16 v0, 0x20

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string p2, " ScrimController: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  state: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "    mClipQsScrim = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/ScrimState;->mClipQsScrim:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  frontScrim:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " viewAlpha="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    iget v0, v0, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " alpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    const-string v1, " tint=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    iget v2, v2, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  behindScrim:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    iget v2, v2, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    iget v2, v2, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  notificationsScrim:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    iget p2, p2, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    iget p2, p2, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, " expansionProgress="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTransitionToLockScreenFullShadeNotificationsProgress:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(F)V

    const-string p2, "  mDefaultScrimAlpha="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDefaultScrimAlpha:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(F)V

    const-string p2, "  mPanelExpansionFraction="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPanelExpansionFraction:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(F)V

    const-string p2, "  mExpansionAffectsAlpha="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mState.getMaxLightRevealScrimAlpha="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/ScrimState;->getMaxLightRevealScrimAlpha()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "  mState.mWallpaperSupportsAmbientMode="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget-boolean p2, p2, Lcom/android/systemui/statusbar/phone/ScrimState;->mWallpaperSupportsAmbientMode:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mState.mHasBackdrop="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mHasBackdrop:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getClipQsScrim()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getCurrentScrimAlpha(Landroid/view/View;)F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v0, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v0, :cond_2

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown scrim view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getCurrentScrimTint(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontTint:I

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v0, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindTint:I

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v0, :cond_2

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsTint:I

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown scrim view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getInterpolatedFraction()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isPrimaryBouncerInTransit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPanelExpansionFraction:F

    invoke-static {p0}, Lcom/android/keyguard/BouncerPanelExpansionCalculator;->aboutToShowBouncerProgress(F)F

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPanelExpansionFraction:F

    invoke-static {p0}, Lcom/android/systemui/animation/ShadeInterpolation;->getNotificationScrimAlpha(F)F

    move-result p0

    return p0
.end method

.method public final getScrimName(Lcom/android/systemui/scrim/ScrimView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v0, :cond_0

    const-string p0, "front_scrim"

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v0, :cond_1

    const-string p0, "behind_scrim"

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, p0, :cond_2

    const-string p0, "notifications_scrim"

    return-object p0

    :cond_2
    const-string/jumbo p0, "unknown_scrim"

    return-object p0
.end method

.method public final internalTransitionTo(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mIsBouncerToGoneTransitionRunning:Z

    const-string v4, "ScrimController"

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skipping transition to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " while mIsBouncerToGoneTransitionRunning"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eq v0, v1, :cond_1

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onFinished()V

    :cond_1
    return-void

    :cond_2
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "State changed to: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimColorState:Lcom/android/systemui/statusbar/phone/ScrimStateLogger;

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    iput-boolean v5, v3, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mForceChanged:Z

    :cond_4
    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v2, v3, :cond_2a

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    iget-object v7, v6, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    iput-object v7, v6, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mPreviousState:Lcom/android/systemui/statusbar/phone/ScrimState;

    iput-object v2, v6, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const-wide/16 v8, 0x1000

    const-string/jumbo v10, "scrim_state"

    invoke-static {v8, v9, v10, v7}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz v7, :cond_5

    invoke-interface {v7}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onCancelled()V

    :cond_5
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$4;->$SwitchMap$com$android$systemui$statusbar$phone$ScrimState:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    iget-object v12, v1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mCoverHostLazy:Ldagger/Lazy;

    if-eq v7, v5, :cond_17

    iget-object v13, v1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    const/4 v14, 0x2

    iget-object v15, v1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mDozeParametersLazy:Ldagger/Lazy;

    if-eq v7, v14, :cond_12

    const/4 v14, 0x3

    if-eq v7, v14, :cond_8

    const/4 v1, 0x4

    if-eq v7, v1, :cond_7

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/phone/ScrimState;->prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    :cond_6
    :goto_0
    move-object v5, v6

    goto/16 :goto_8

    :cond_7
    iput-boolean v11, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mClipQsScrim:Z

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/phone/ScrimState;->prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    sget-boolean v1, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v6, v1, :cond_6

    invoke-interface {v12}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/cover/CoverHost;

    check-cast v1, Lcom/android/systemui/statusbar/phone/CoverHostImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->isNeedScrimAnimation()Z

    move-result v1

    if-eqz v1, :cond_6

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    goto :goto_0

    :cond_8
    iput-boolean v11, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mClipQsScrim:Z

    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v7}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v12

    sget-object v14, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/high16 v10, -0x1000000

    if-ne v6, v14, :cond_a

    if-eqz v12, :cond_a

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimState;->prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    iget-boolean v3, v7, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    if-eqz v3, :cond_9

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v2, v3, v10}, Lcom/android/systemui/statusbar/phone/ScrimState;->updateScrimColor(Lcom/android/systemui/scrim/ScrimView;I)V

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v2, v1, v10}, Lcom/android/systemui/statusbar/phone/ScrimState;->updateScrimColor(Lcom/android/systemui/scrim/ScrimView;I)V

    iput v10, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    iput v10, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    move-object/from16 v16, v6

    const-wide/16 v5, 0x32

    iput-wide v5, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    :goto_1
    move-object/from16 v5, v16

    goto/16 :goto_4

    :cond_9
    move-object/from16 v16, v6

    iput-boolean v11, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    iput-boolean v11, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    iput-wide v8, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    goto :goto_1

    :cond_a
    move-object v5, v6

    if-ne v5, v14, :cond_10

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iget-object v6, v6, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->screenPowerState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v6, v6, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    sget-object v3, Lcom/android/systemui/power/shared/model/ScreenPowerState;->SCREEN_ON:Lcom/android/systemui/power/shared/model/ScreenPowerState;

    if-ne v6, v3, :cond_b

    invoke-interface {v15}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAODParameters:Lcom/android/systemui/doze/AODParameters;

    if-eqz v3, :cond_b

    iget-boolean v3, v3, Lcom/android/systemui/doze/AODParameters;->mDozeUiState:Z

    if-nez v3, :cond_b

    const-string/jumbo v1, "shouldPreventBlankScreen Screen is fully on"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_b
    sget-boolean v3, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz v3, :cond_c

    iget v3, v13, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    const/16 v6, 0x67

    if-ne v3, v6, :cond_c

    const-string/jumbo v1, "shouldPreventBlankScreen cover is opening"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    sget-boolean v3, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz v3, :cond_d

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mAodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {v3}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenAndShowing()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardStateControllerLazy:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez v3, :cond_d

    const-string/jumbo v1, "shouldPreventBlankScreen AOD FullScreen and Lock None"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_d
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-boolean v3, v7, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    if-eqz v3, :cond_e

    goto :goto_2

    :cond_e
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v2, v3, v10}, Lcom/android/systemui/statusbar/phone/ScrimState;->updateScrimColor(Lcom/android/systemui/scrim/ScrimView;I)V

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v2, v1, v10}, Lcom/android/systemui/statusbar/phone/ScrimState;->updateScrimColor(Lcom/android/systemui/scrim/ScrimView;I)V

    iput v10, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    iput v10, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    const-wide/16 v6, 0x12c

    iput-wide v6, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    goto :goto_4

    :cond_f
    :goto_2
    const-string/jumbo v1, "shouldPreventBlankScreen already keyguard is invisible or isInvisibleAfterGoingAwayTransStarted"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iput-boolean v11, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    iput-boolean v11, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    iput-wide v8, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    goto :goto_4

    :cond_10
    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/ScrimState;->prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    :goto_4
    if-eq v5, v14, :cond_11

    iput-boolean v11, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    goto/16 :goto_8

    :cond_11
    if-nez v12, :cond_1a

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    goto/16 :goto_8

    :cond_12
    move-object v5, v6

    iput-boolean v11, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mClipQsScrim:Z

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/ScrimState;->prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    const/4 v6, 0x0

    iput v6, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindAlpha:F

    sget-object v6, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v5, v6, :cond_16

    sget-boolean v6, Lcom/android/systemui/LsRune;->KEYGUARD_SCREEN_ON_FADE_OUT_ANIM:Z

    if-eqz v6, :cond_14

    sget-boolean v6, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_COVER:Z

    if-eqz v6, :cond_13

    iget v6, v13, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    const/16 v7, 0xc

    if-ne v6, v7, :cond_13

    iput-boolean v11, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    goto :goto_5

    :cond_13
    const-wide/16 v6, 0x258

    iput-wide v6, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    goto :goto_5

    :cond_14
    invoke-interface {v15}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAODParameters:Lcom/android/systemui/doze/AODParameters;

    if-eqz v6, :cond_15

    iget-boolean v6, v6, Lcom/android/systemui/doze/AODParameters;->mDozeUiState:Z

    iput-boolean v6, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    :cond_15
    :goto_5
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/doze/PluginAODManager;

    iget-boolean v1, v1, Lcom/android/systemui/doze/PluginAODManager;->mIsDifferentOrientation:Z

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    goto :goto_8

    :cond_16
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v5, v1, :cond_1a

    iput-boolean v11, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    iput-wide v8, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    goto :goto_8

    :cond_17
    move-object v5, v6

    iput-boolean v11, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mClipQsScrim:Z

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/ScrimState;->prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    const-wide/16 v6, 0x1f4

    iput-wide v6, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    sget-boolean v1, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    iput v1, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindAlpha:F

    iput-boolean v11, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    goto :goto_7

    :cond_18
    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mWallpaperSupportsAmbientMode:Z

    if-eqz v1, :cond_19

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mHasBackdrop:Z

    if-nez v1, :cond_19

    const/4 v6, 0x0

    goto :goto_6

    :cond_19
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_6
    iput v6, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindAlpha:F

    :goto_7
    sget-boolean v1, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz v1, :cond_1a

    invoke-interface {v12}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/cover/CoverHost;

    check-cast v1, Lcom/android/systemui/statusbar/phone/CoverHostImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->isNeedScrimAnimation()Z

    move-result v1

    if-nez v1, :cond_1a

    iput-boolean v11, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    iput-boolean v11, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    iput-wide v8, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    :cond_1a
    :goto_8
    iput-boolean v11, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenBlankingCallbackCalled:Z

    iput-wide v8, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    iget-boolean v6, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    iget-wide v6, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    iput-wide v6, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    if-eqz v7, :cond_1b

    iget-wide v7, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    goto :goto_9

    :cond_1b
    const-wide/16 v7, -0x1

    :goto_9
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v6, v1, v7}, [Ljava/lang/Object;

    move-result-object v1

    const-string v6, "State changed to %s, blankScreen=%s, animation=%d"

    invoke-static {v4, v6, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v6, Lcom/android/systemui/statusbar/phone/ScrimState;->GLANCEABLE_HUB_OVER_DREAM:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v1, v6, :cond_1c

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPanelExpansionFraction:F

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyState$1$1()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/phone/ScrimState;->shouldBlendWithMainColor()Z

    move-result v6

    iput-boolean v6, v1, Lcom/android/systemui/scrim/ScrimView;->mBlendWithMainColor:Z

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    if-eqz v1, :cond_1d

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v7, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;

    :cond_1d
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;

    :cond_1e
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v2, v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_a

    :cond_1f
    move v1, v11

    :goto_a
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimState;->isLowPowerState()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    if-nez v1, :cond_21

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLock:Lcom/android/systemui/util/wakelock/DelayedWakeLock;

    if-eqz v1, :cond_20

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    invoke-interface {v1, v4}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    goto :goto_b

    :cond_20
    const-string v1, "Cannot hold wake lock, it has not been set yet"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_b
    iput-boolean v11, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperSupportsAmbientMode:Z

    if-nez v1, :cond_22

    goto :goto_c

    :cond_22
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v1, v2, :cond_24

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_c

    :cond_23
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAODAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {v1}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODAmbientWallpaperMode()Z

    move-result v1

    if-nez v1, :cond_24

    new-instance v1, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    goto :goto_d

    :cond_24
    :goto_c
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v2}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    :goto_d
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    if-eqz v1, :cond_25

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v1, v2, :cond_25

    const-wide/16 v1, 0x64

    iput-wide v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate$1()V

    goto :goto_f

    :cond_25
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v5, v1, :cond_26

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v5, v2, :cond_27

    :cond_26
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v2, v3, :cond_29

    :cond_27
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v2, v1, :cond_28

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_e

    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate$1()V

    goto :goto_f

    :cond_29
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onPreDraw()Z

    :goto_f
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    iget v1, v1, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchBackScrimState(F)V

    return-void

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot change to UNINITIALIZED."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final legacyTransitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->assertInLegacyMode()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->internalTransitionTo(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    return-void
.end method

.method public final onFinished(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLock:Lcom/android/systemui/util/wakelock/DelayedWakeLock;

    const-string v2, "ScrimController"

    invoke-interface {v0, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onFinished()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    :cond_3
    sget-object p1, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p2, p1, :cond_4

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontTint:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget p2, p1, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    iput p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindTint:I

    iget p1, p1, Lcom/android/systemui/statusbar/phone/ScrimState;->mNotifTint:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsTint:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    iget p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    invoke-virtual {p0, p2, v1, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(FILandroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    iget p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindTint:I

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(FILandroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    iget p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsTint:I

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(FILandroid/view/View;)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eq p1, p0, :cond_6

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onFinished()V

    :cond_6
    return-void
.end method

.method public onHideWallpaperTimeout()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLock:Lcom/android/systemui/util/wakelock/DelayedWakeLock;

    const-string v2, "ScrimController"

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    invoke-interface {v0, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Cannot hold wake lock, it has not been set yet"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimsVisibility:I

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-wide v0, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->wallpaperFadeOutDuration:J

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate$1()V

    return-void
.end method

.method public final onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    const/4 p0, 0x1

    return p0
.end method

.method public final onScreenTurnedOn()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenOn:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ScrimController"

    const-string v1, "Shorter blanking because screen turned on. All good."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;->run()V

    :cond_1
    return-void
.end method

.method public final scheduleUpdate$1()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public final setOccludeAnimationPlaying(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOccludeAnimationPlaying:Z

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iput-boolean p1, v3, Lcom/android/systemui/statusbar/phone/ScrimState;->mOccludeAnimationPlaying:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyAndDispatchState()V

    return-void
.end method

.method public final setOrAdaptCurrentAnimation(Landroid/view/View;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    if-eq p1, v1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v0, :cond_3

    :cond_1
    const-string p0, "ScrimController"

    const-string/jumbo p1, "skip setOrAdaptCurrentAnimation"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mQsBottomVisible:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    sget p0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/ValueAnimator;

    sget v1, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_END_ALPHA:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sget v3, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_START_ALPHA:I

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float v2, v0, v2

    add-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimTint(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(FILandroid/view/View;)V

    :goto_1
    return-void
.end method

.method public final setScrimAlpha(Lcom/android/systemui/scrim/ScrimView;F)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1, v3}, Lcom/android/systemui/scrim/ScrimView;->setClickable(Z)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v4, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v1, v4, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/systemui/scrim/ScrimView;->setClickable(Z)V

    :goto_1
    iget v1, p1, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    sget v4, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    sget-object v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/ViewState$1;

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;

    if-eqz v5, :cond_3

    goto/16 :goto_7

    :cond_3
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    const/high16 p2, -0x1000000

    invoke-virtual {p0, v6, p2, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(FILandroid/view/View;)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->doOnTheNextFrame(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenBlankingCallbackCalled:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onDisplayBlanked()V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenBlankingCallbackCalled:Z

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    if-ne p1, v5, :cond_6

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchBackScrimState(F)V

    :cond_6
    cmpl-float v5, p2, v1

    if-eqz v5, :cond_7

    move v5, v2

    goto :goto_2

    :cond_7
    move v5, v3

    :goto_2
    iget v6, p1, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimTint(Landroid/view/View;)I

    move-result v7

    if-eq v6, v7, :cond_8

    move v6, v2

    goto :goto_3

    :cond_8
    move v6, v3

    :goto_3
    if-nez v5, :cond_9

    if-eqz v6, :cond_10

    :cond_9
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    if-eqz v5, :cond_f

    sget-boolean p2, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    if-eqz p2, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getScrimName(Lcom/android/systemui/scrim/ScrimView;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {p2, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object p2

    const-string v5, "ScrimController"

    const-string/jumbo v6, "startScrimAnimation %s %f %d %d"

    invoke-static {v5, v6, p2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    sget-boolean p2, Lcom/android/systemui/LsRune;->KEYGUARD_SCREEN_ON_FADE_OUT_ANIM:Z

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    iget-object v5, p2, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mDozeParametersLazy:Ldagger/Lazy;

    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAODParameters:Lcom/android/systemui/doze/AODParameters;

    if-eqz v5, :cond_b

    iget-boolean v5, v5, Lcom/android/systemui/doze/AODParameters;->mDozeUiState:Z

    goto :goto_4

    :cond_b
    move v5, v3

    :goto_4
    if-nez v5, :cond_c

    iget-object v5, p2, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mPreviousState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v6, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v5, v6, :cond_c

    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v5, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p2, v5, :cond_c

    goto :goto_5

    :cond_c
    move v2, v3

    :goto_5
    if-eqz v2, :cond_d

    new-array p2, v0, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    goto :goto_6

    :cond_d
    new-array p2, v0, [F

    fill-array-data p2, :array_1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    :goto_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_e

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_e
    iget v0, p1, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    new-instance v2, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;I)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    invoke-virtual {p2, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    invoke-virtual {p2, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimController$4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController$4;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_START_ALPHA:I

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_END_ALPHA:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1, v4, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_7

    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimTint(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(FILandroid/view/View;)V

    :cond_10
    :goto_7
    return-void

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final setWakeLockScreenSensorActive(Z)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iput-boolean p1, v3, Lcom/android/systemui/statusbar/phone/ScrimState;->mWakeLockScreenSensorActive:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_2

    iget p1, p1, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindAlpha:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scrim opacity is NaN for state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", back: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public final setWallpaperSupportsAmbientMode$2(Z)V
    .locals 2

    const-string/jumbo v0, "setWallpaperSupportsAmbientMode: wallpaperSupportsAmbientMode="

    const-string v1, "ScrimController"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperSupportsAmbientMode:Z

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-object v1, p0, v0

    iput-boolean p1, v1, Lcom/android/systemui/statusbar/phone/ScrimState;->mWallpaperSupportsAmbientMode:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final start()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperRepository:Lcom/android/systemui/wallpapers/data/repository/WallpaperRepository;

    check-cast v1, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;

    iget-object v1, v1, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;->wallpaperSupportsAmbientMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v2, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda3;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final updateScrimColor(FILandroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimColorState:Lcom/android/systemui/statusbar/phone/ScrimStateLogger;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimsVisibility:I

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mScrimViews:[Lcom/android/systemui/scrim/ScrimViewBase;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v6, v2, v4

    check-cast v6, Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v6}, Lcom/android/systemui/scrim/ScrimView;->getMainColor()I

    move-result v7

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mColors:[I

    aput v7, v8, v5

    iget v6, v6, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mAlphas:[F

    aput v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput v1, v0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mScrimVisibility:I

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    instance-of v1, p3, Lcom/android/systemui/scrim/ScrimView;

    if-eqz v1, :cond_5

    check-cast p3, Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/ScrimController;->getScrimName(Lcom/android/systemui/scrim/ScrimView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_alpha"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p1

    float-to-int v2, v2

    const-wide/16 v3, 0x1000

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/ScrimController;->getScrimName(Lcom/android/systemui/scrim/ScrimView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_tint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    if-ne p3, v2, :cond_4

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->needUpdateScrimColor()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    iget v1, p2, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerColor:I

    invoke-virtual {p3, v1}, Lcom/android/systemui/scrim/ScrimView;->setTint(I)V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->needUpdateScrimColor()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p3, v0}, Lcom/android/systemui/scrim/ScrimView;->setViewAlpha(F)V

    goto :goto_1

    :cond_3
    invoke-virtual {p3, p1}, Lcom/android/systemui/scrim/ScrimView;->setViewAlpha(F)V

    goto :goto_1

    :cond_4
    invoke-virtual {p3, p2}, Lcom/android/systemui/scrim/ScrimView;->setTint(I)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mIsBouncerToGoneTransitionRunning:Z

    if-nez p2, :cond_6

    invoke-virtual {p3, p1}, Lcom/android/systemui/scrim/ScrimView;->setViewAlpha(F)V

    goto :goto_1

    :cond_5
    invoke-virtual {p3, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimsVisible()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimColorState:Lcom/android/systemui/statusbar/phone/ScrimStateLogger;

    if-eqz p0, :cond_7

    sget-boolean p1, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->logScrimColor(Z)V

    :cond_7
    return-void
.end method

.method public final updateScrims()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    iget v0, v0, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    iget v4, v4, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    iget v5, v5, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    if-nez v5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v7, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v6, v7}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateScrims: isWakeAndUnlockAnimationAODFullScreenMode()="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    sget v6, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_UNLOCK_ANIM_AOD_FULLSCREEN:I

    or-int v8, v7, v6

    invoke-virtual {v4, v8}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ScrimController"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    or-int v4, v7, v6

    invoke-virtual {v0, v4}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/scrim/ScrimView;->setViewAlpha(F)V

    :cond_3
    move v0, v3

    move v4, v0

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    iget-object v7, v6, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v8, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v7, v8, :cond_6

    sget-object v8, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v7, v8, :cond_5

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v6, v7, v0}, Lcom/android/systemui/scrim/ScrimView;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0, v6, v4}, Lcom/android/systemui/scrim/ScrimView;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/scrim/ScrimView;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    goto :goto_4

    :cond_6
    :goto_3
    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    iget-object v4, v6, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mBouncerColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/scrim/ScrimView;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    iget-object v4, v6, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mBouncerColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/scrim/ScrimView;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    iget v0, v0, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchBackScrimState(F)V

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v4, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v4, :cond_8

    sget-object v5, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v5, :cond_9

    :cond_8
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    if-eqz v5, :cond_9

    move v5, v1

    goto :goto_5

    :cond_9
    move v5, v3

    :goto_5
    sget-object v6, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v6, :cond_a

    if-ne v0, v4, :cond_b

    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardOccluded:Z

    if-eqz v0, :cond_b

    goto :goto_6

    :cond_b
    move v1, v3

    :goto_6
    if-nez v5, :cond_c

    if-eqz v1, :cond_e

    :cond_c
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAODAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {v0}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenMode()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-eqz v0, :cond_f

    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    :cond_f
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardOccluded:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_10

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v1, :cond_11

    :cond_10
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimAlpha(Lcom/android/systemui/scrim/ScrimView;F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimAlpha(Lcom/android/systemui/scrim/ScrimView;F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimAlpha(Lcom/android/systemui/scrim/ScrimView;F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onFinished(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimsVisible()V

    return-void
.end method

.method public final updateThemeColors()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x11200cf

    invoke-static {v1, v0}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x11200bf

    invoke-static {v2, v1}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v2, v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v2, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    invoke-static {v0}, Lcom/android/internal/util/ContrastColorUtil;->isColorDark(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v2, v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x11200c8

    invoke-static {v2, v0}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;->setSurfaceColor(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    return-void
.end method
