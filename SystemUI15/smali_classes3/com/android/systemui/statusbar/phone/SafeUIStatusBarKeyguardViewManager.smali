.class public final Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;
.super Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

.field public final mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

.field public final mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

.field public mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field public final mCallbacks:Ljava/util/Set;

.field public mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public mCentralSurfacesRegistered:Z

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public mDismissActionWillAnimateOnKeyguard:Z

.field public final mDockEventListener:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$3;

.field public final mDockManager:Lcom/android/systemui/dock/DockManager;

.field public mDozing:Z

.field public final mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public final mExpansionCallback:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;

.field public mFirstUpdate:Z

.field public final mFoldAodAnimationController:Lcom/android/systemui/unfold/FoldAodAnimationController;

.field public mFraction:F

.field public mGesturalNav:Z

.field public mGlobalActionsVisible:Z

.field public final mIsBackAnimationEnabled:Z

.field public mIsBackCallbackRegistered:Z

.field public final mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

.field public mKeyguardGoneCancelAction:Ljava/lang/Runnable;

.field public final mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mLastBouncerDismissible:Z

.field public mLastDozing:Z

.field public mLastGesturalNav:Z

.field public mLastGlobalActionsVisible:Z

.field public mLastIsDocked:Z

.field public mLastOccluded:Z

.field public mLastPrimaryBouncerIsOrWillBeShowing:Z

.field public mLastPrimaryBouncerShowing:Z

.field public mLastPulsing:Z

.field public mLastRemoteInputActive:Z

.field public mLastScreenOffAnimationPlaying:Z

.field public mLastShowing:Z

.field public final mLegacyBouncerDependencies:Ldagger/Lazy;

.field public mListenForCanShowAlternateBouncer:Lkotlinx/coroutines/Job;

.field public final mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field public mNotificationContainer:Landroid/view/View;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final mOnBackInvokedCallback:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$2;

.field public mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;

.field public final mPrepareBouncerRunnable:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1;

.field public final mPrimaryBouncerCallbackInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor;

.field public final mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

.field public final mPrimaryBouncerView:Lcom/android/systemui/bouncer/ui/BouncerView;

.field public mPulsing:Z

.field public mRemoteInputActive:Z

.field public final mSafeUIBouncerContainer:Landroid/view/ViewGroup;

.field public mScreenOffAnimationPlaying:Z

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final mShadeController:Ldagger/Lazy;

.field public mShadeLockscreenInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public mTracking:Z

.field public final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method public static -$$Nest$mshouldPlayBackAnimation(Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->needsFullscreenBouncer()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mIsBackAnimationEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/bouncer/ui/BouncerView;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lkotlinx/coroutines/CoroutineDispatcher;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/util/kotlin/JavaAdapter;Ldagger/Lazy;Lcom/android/systemui/statusbar/domain/interactor/StatusBarKeyguardViewManagerInteractor;Ldagger/Lazy;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/dreams/DreamOverlayStateController;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/systemui/dock/DockManager;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/keyguard/KeyguardMessageAreaController$Factory;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/SysUIUnfoldComponent;",
            ">;",
            "Ldagger/Lazy;",
            "Lcom/android/internal/util/LatencyTracker;",
            "Lcom/android/keyguard/KeyguardSecurityModel;",
            "Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor;",
            "Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;",
            "Lcom/android/systemui/bouncer/ui/BouncerView;",
            "Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;",
            "Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Lcom/android/systemui/util/kotlin/JavaAdapter;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/domain/interactor/StatusBarKeyguardViewManagerInteractor;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct/range {p0 .. p30}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/bouncer/ui/BouncerView;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lkotlinx/coroutines/CoroutineDispatcher;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/util/kotlin/JavaAdapter;Ldagger/Lazy;Lcom/android/systemui/statusbar/domain/interactor/StatusBarKeyguardViewManagerInteractor;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mListenForCanShowAlternateBouncer:Lkotlinx/coroutines/Job;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mFraction:F

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mTracking:Z

    new-instance v3, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;-><init>(Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;

    new-instance v3, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$2;-><init>(Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mOnBackInvokedCallback:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$2;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mIsBackCallbackRegistered:Z

    new-instance v3, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$3;-><init>(Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;)V

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mGlobalActionsVisible:Z

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastGlobalActionsVisible:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mFirstUpdate:Z

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mCallbacks:Ljava/util/Set;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$4;-><init>(Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v3, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$8;-><init>(Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;)V

    move-object v3, p2

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    move-object v3, p5

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v3, p8

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    move-object v3, p10

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-object v3, p7

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v3, p6

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v3, p4

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v3, p14

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mShadeController:Ldagger/Lazy;

    move-object/from16 v3, p16

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    move-object/from16 v3, p17

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerCallbackInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor;

    move-object/from16 v3, p18

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    move-object/from16 v3, p19

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerView:Lcom/android/systemui/bouncer/ui/BouncerView;

    new-instance v3, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p13

    invoke-virtual {v4, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/unfold/FoldAodAnimationController;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mFoldAodAnimationController:Lcom/android/systemui/unfold/FoldAodAnimationController;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    sget-object v1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mIsBackAnimationEnabled:Z

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    new-instance v1, Landroid/widget/FrameLayout;

    move-object v2, p1

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mSafeUIBouncerContainer:Landroid/view/ViewGroup;

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLegacyBouncerDependencies:Ldagger/Lazy;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrepareBouncerRunnable:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1;

    return-void
.end method


# virtual methods
.method public final addAfterKeyguardGoneRunnable(Ljava/lang/Runnable;)V
    .locals 1

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final blockPanelExpansionFromCurrentTouch()V
    .locals 0

    return-void
.end method

.method public final bouncerIsAnimatingAway()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isAnimatingAway()Z

    move-result p0

    return p0
.end method

.method public final canHandleBackPressed()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isFullyShowing()Z

    move-result p0

    return p0
.end method

.method public final cancelPendingWakeupAction()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;->cancelAction:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final cancelPostAuthActions()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->primaryBouncerIsOrWillBeShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDismissActionWillAnimateOnKeyguard:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method public consumeFromAlternateBouncerTransitionSteps(Lcom/android/systemui/keyguard/shared/model/TransitionStep;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->hideAlternateBouncer(Z)V

    return-void
.end method

.method public consumeKeyguardAuthenticatedBiometricsHandled(Lkotlin/Unit;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    invoke-virtual {p1}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->hideAlternateBouncer(Z)V

    :cond_0
    return-void
.end method

.method public final dismissAndCollapse()V
    .locals 0

    return-void
.end method

.method public final dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V
    .locals 1

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_3

    :try_start_0
    const-string v0, "StatusBarKeyguardViewManager#dismissWithAction"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->cancelPendingWakeupAction()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDozing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->isWakeAndUnlocking()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;-><init>(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->willRunAnimationOnKeyguard()Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDismissActionWillAnimateOnKeyguard:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p1, p4}, Lcom/android/keyguard/ViewMediatorCallback;->setCustomMessage(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    if-eqz p3, :cond_2

    :try_start_2
    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-virtual {p1, p2}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->show(Z)V

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    invoke-virtual {p1, p3, p4}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->setDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-virtual {p1, p2}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->show(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_3

    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public final dispatchBackKeyEventPreIme()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerView:Lcom/android/systemui/bouncer/ui/BouncerView;

    check-cast p0, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;->getDelegate()Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;->getDelegate()Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->shouldInterceptTouchEvent()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->shouldInterceptTouchEvent()V

    const/4 p0, 0x0

    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "StatusBarKeyguardViewManager:"

    const-string v1, "  mRemoteInputActive: "

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mRemoteInputActive:Z

    const-string v2, "  mDozing: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDozing:Z

    const-string v2, "  mAfterKeyguardGoneAction: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mAfterKeyguardGoneRunnables: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mPendingWakeupAction: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  isBouncerShowing(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  bouncerIsOrWillBeShowing(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->primaryBouncerIsOrWillBeShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Registered KeyguardViewManagerCallbacks:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    const-string v0, " SceneContainerFlag enabled:false"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mCallbacks:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const-string v0, "      null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final executeAfterKeyguardGoneAction()V
    .locals 2

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardGoneCancelAction:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDismissActionWillAnimateOnKeyguard:Z

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final getLastNavBarVisible()Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastShowing:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastOccluded:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastDozing:Z

    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastScreenOffAnimationPlaying:Z

    if-eqz v4, :cond_2

    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastPulsing:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastIsDocked:Z

    if-nez v4, :cond_3

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastGesturalNav:Z

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    if-nez v0, :cond_4

    if-nez v3, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastScreenOffAnimationPlaying:Z

    if-eqz v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastPrimaryBouncerShowing:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastRemoteInputActive:Z

    if-nez v0, :cond_5

    if-nez v4, :cond_5

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastGlobalActionsVisible:Z

    if-eqz p0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1
.end method

.method public final getLastPrimaryBouncerShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastPrimaryBouncerShowing:Z

    return p0
.end method

.method public final getNavBarShowDelay()J
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-wide v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDelay:J

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x140

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mSafeUIBouncerContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    return-object p0
.end method

.method public final hide(JJ)V
    .locals 3

    const-string p3, "StatusBarKeyguardViewManager#hide"

    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object p4, p3

    check-cast p4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p4, p4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    check-cast p3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, p4}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->notifyKeyguardState(ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->launchPendingWakeupAction()V

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean p3, p3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    const-wide/16 v1, -0x30

    add-long/2addr p1, v1

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x0

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->executeAfterKeyguardGoneAction()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->hideBouncer(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    invoke-virtual {p2, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->setKeyguardShowing(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardGone()V

    const/16 p0, 0x3e

    invoke-static {p0, p1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final hideAlternateBouncer(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->hide()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateAlternateBouncerShowing(Z)V

    return-void
.end method

.method public hideBouncer(Z)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {p1}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->hide()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->cancelPostAuthActions()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->cancelPendingWakeupAction()V

    return-void
.end method

.method public final interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerView:Lcom/android/systemui/bouncer/ui/BouncerView;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;

    invoke-virtual {v0}, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;->getDelegate()Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;->getDelegate()Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isBouncerShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isFullyShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public final isBouncerShowingOverDream()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isFullscreenBouncer()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerView:Lcom/android/systemui/bouncer/ui/BouncerView;

    check-cast p0, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;->getDelegate()Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;->getDelegate()Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-static {p0}, Lcom/android/keyguard/SecurityUtils;->checkFullscreenBouncer(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isGoingToNotificationShade()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    return p0
.end method

.method public final isNavBarVisible()Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isVisible()Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDozing:Z

    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v3, :cond_2

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mScreenOffAnimationPlaying:Z

    if-eqz v4, :cond_3

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPulsing:Z

    if-eqz v4, :cond_4

    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mGesturalNav:Z

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    if-nez v3, :cond_5

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mScreenOffAnimationPlaying:Z

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isFullyShowing()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mRemoteInputActive:Z

    if-nez v0, :cond_6

    if-nez v4, :cond_6

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mGlobalActionsVisible:Z

    if-eqz p0, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    return v1
.end method

.method public final isPrimaryBouncerInTransit()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isInTransit()Z

    move-result p0

    return p0
.end method

.method public final isSecure()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isUnlockWithWallpaper()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowState;->mediaBackdropShowing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isWakeAndUnlocking()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public final keyguardGoingAway()V
    .locals 0

    return-void
.end method

.method public final launchPendingWakeupAction()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;->dismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;->cancelAction:Ljava/lang/Runnable;

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;->afterKeyguardGone:Z

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$DismissWithActionRequest;->message:Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final needsFullscreenBouncer()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/SecurityUtils;->checkFullscreenBouncer(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result p0

    return p0
.end method

.method public final notifyKeyguardAuthenticated(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    iget-object v0, v0, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepository;

    check-cast v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->_keyguardAuthenticatedBiometrics:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    invoke-virtual {p1}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->executeAfterKeyguardGoneAction()V

    :cond_0
    sget-object p0, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isFullyShowing()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    invoke-virtual {v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->isOverlayActive()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isScrimmed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->needsFullscreenBouncer()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->hideBouncer(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->reset(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setLeaveOpenOnKeyguardHide(Z)V

    :goto_1
    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->hideBouncer(Z)V

    return-void
.end method

.method public final onDozingChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDozing:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDozing:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->needsFullscreenBouncer()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->reset(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->launchPendingWakeupAction()V

    :cond_2
    return-void
.end method

.method public final onFinishedGoingToSleep()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->hide()V

    return-void
.end method

.method public final onFoldToAodAnimationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mFoldAodAnimationController:Lcom/android/systemui/unfold/FoldAodAnimationController;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->shouldPlayAnimation:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mScreenOffAnimationPlaying:Z

    :cond_0
    return-void
.end method

.method public final onKeyguardFadedAway$1()V
    .locals 0

    return-void
.end method

.method public final onNavigationModeChanged(I)V
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mGesturalNav:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mGesturalNav:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    :cond_0
    return-void
.end method

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mFraction:F

    iget v1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    cmpl-float v0, v0, v1

    iget-boolean p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->tracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mTracking:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mFraction:F

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mTracking:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    invoke-virtual {v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->isOverlayActive()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mShadeLockscreenInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;

    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mShadeController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/ShadeController;

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeController;->isExpandingOrCollapsing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    move v2, v3

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->primaryBouncerIsOrWillBeShowing()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-nez v1, :cond_4

    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    if-nez v0, :cond_4

    invoke-virtual {v3}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isAnimatingAway()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const/4 v1, 0x2

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->primaryBouncerIsOrWillBeShowing()Z

    move-result p0

    if-nez p0, :cond_5

    return-void

    :cond_5
    iget-boolean p0, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz p0, :cond_6

    return-void

    :cond_6
    invoke-virtual {v3, v4}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->setPanelExpansion(F)V

    return-void
.end method

.method public final onRemoteInputActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mRemoteInputActive:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 0

    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 0

    return-void
.end method

.method public final onThemeChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateResources$1()V

    return-void
.end method

.method public final onTouch()V
    .locals 0

    sget-object p0, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    return-void
.end method

.method public final prepareSafeUIBouncer()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrepareBouncerRunnable:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda1;->run()V

    :cond_0
    return-void
.end method

.method public final primaryBouncerIsOrWillBeShowing()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isInTransit()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public final primaryBouncerIsScrimmed()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isScrimmed()Z

    move-result p0

    return p0
.end method

.method public final primaryBouncerIsShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isFullyShowing()Z

    move-result p0

    return p0
.end method

.method public final primaryBouncerNeedsScrimming()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    invoke-virtual {v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->isOverlayActive()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->willDismissWithAction()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isFullyShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isScrimmed()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->isFullscreenBouncer()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final primaryBouncerWillDismissWithAction()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->willDismissWithAction()Z

    move-result p0

    return p0
.end method

.method public final readyForKeyguardDone()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->readyForKeyguardDone()V

    return-void
.end method

.method public final registerCentralSurfaces(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$1;

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerCallbackInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor;

    invoke-virtual {p4, p1}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor;->addBouncerExpansionCallback(Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor$PrimaryBouncerExpansionCallback;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mShadeLockscreenInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V

    :cond_0
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mNotificationContainer:Landroid/view/View;

    sget-object p1, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mCentralSurfacesRegistered:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mGesturalNav:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mFoldAodAnimationController:Lcom/android/systemui/unfold/FoldAodAnimationController;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/systemui/unfold/FoldAodAnimationController;->statusListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mListenForCanShowAlternateBouncer:Lkotlinx/coroutines/Job;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mListenForCanShowAlternateBouncer:Lkotlinx/coroutines/Job;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    iget-object p1, p1, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->canShowAlternateBouncer:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p2, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;)V

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mListenForCanShowAlternateBouncer:Lkotlinx/coroutines/Job;

    sget-object p0, Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardWmStateRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    return-void
.end method

.method public final requestFp(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mOccludingAppRequestingFp:Z

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(I)V

    return-void
.end method

.method public final reset(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {v1}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isAnimatingAway()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDozing:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->needsFullscreenBouncer()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->hideBouncer(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->showBouncerOrKeyguard(Z)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->hideAlternateBouncer(Z)V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v0, 0x138

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    :cond_4
    return-void
.end method

.method public final setGlobalActionsVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mGlobalActionsVisible:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public final setKeyguardGoingAwayState(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_MULTI_SIM:Z

    invoke-virtual {v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardGoingAway:Z

    if-eq v0, p1, :cond_0

    const-string v0, "keyguardGoingAway "

    invoke-static {v0, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardGoingAway:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    return-void
.end method

.method public final setKeyguardMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/bouncer/shared/model/BouncerShowMessageModel;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/bouncer/shared/model/BouncerShowMessageModel;-><init>(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepository;

    check-cast p0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->_showMessage:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final setNeedsInput(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardNeedsInput:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    return-void
.end method

.method public final setOccluded(ZZ)V
    .locals 4

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    move v1, v2

    :cond_1
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->notifyKeyguardState(ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    iget-boolean p1, p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    const/16 v2, 0x3e

    if-eqz p1, :cond_2

    if-eqz v3, :cond_2

    const/4 p1, 0x3

    invoke-static {v2, p1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    const/4 p1, 0x2

    invoke-static {v2, p1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v1, p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iput-boolean v0, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardOccluded:Z

    invoke-virtual {p1, v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDozing:Z

    if-nez p1, :cond_4

    iget-boolean p1, p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-nez p1, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->reset(Z)V

    :cond_4
    return-void
.end method

.method public final setPulsing(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPulsing:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPulsing:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    :cond_0
    return-void
.end method

.method public final setQsExpansion(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mCallbacks:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setTaskbarDelegate(Lcom/android/systemui/navigationbar/TaskbarDelegate;)V
    .locals 0

    return-void
.end method

.method public final shouldDismissOnMenuPressed()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerView:Lcom/android/systemui/bouncer/ui/BouncerView;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;

    invoke-virtual {v0}, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;->getDelegate()Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;

    invoke-virtual {p0}, Lcom/android/systemui/bouncer/ui/BouncerViewImpl;->getDelegate()Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->shouldEnableMenuKey()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final shouldInterceptTouchEvent()V
    .locals 0

    sget-object p0, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    return-void
.end method

.method public final show(Landroid/os/Bundle;)V
    .locals 2

    const-string p1, "StatusBarKeyguardViewManager#show"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->setKeyguardShowing(Z)V

    sget p1, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->notifyKeyguardState(ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->reset(Z)V

    const/16 p0, 0x3e

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final showBouncer()V
    .locals 1

    sget-object v0, Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;->INSTANCE:Lcom/android/systemui/deviceentry/shared/DeviceEntryUdfpsRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->showPrimaryBouncer(Z)V

    return-void
.end method

.method public final showBouncerOrKeyguard(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->needsFullscreenBouncer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDozing:Z

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {p1}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isFullyShowing()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->show(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "SafeUIStatusBarKeyguardViewManager"

    const-string v0, "Attempted to show the sim bouncer when it is already showing."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->hideBouncer(Z)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public final showPrimaryBouncer(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->hideAlternateBouncer(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->show(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method public final startPreHideAnimation(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isFullyShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->startDisappearAnimation(Ljava/lang/Runnable;)V

    sget p1, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDismissActionWillAnimateOnKeyguard:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->updateStates()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateAlternateBouncerShowing(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mCentralSurfacesRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateBouncerShowing(Z)V

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateScrimController()V

    :cond_1
    return-void
.end method

.method public final updateKeyguardPosition(F)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    iget-object p0, p0, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepository;

    check-cast p0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->_keyguardPosition:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateNavigationBarVisibility(Z)V
    .locals 0

    return-void
.end method

.method public final updateResources$1()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    iget-object p0, p0, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepository;

    check-cast p0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->_resourceUpdateRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateStates()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {v2}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isFullyShowing()Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->primaryBouncerIsOrWillBeShowing()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->isFullscreenBouncer()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mRemoteInputActive:Z

    const/4 v8, 0x0

    if-nez v5, :cond_1

    if-eqz v1, :cond_1

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    move v9, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v9, v6

    :goto_1
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastBouncerDismissible:Z

    if-nez v10, :cond_3

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastShowing:Z

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastRemoteInputActive:Z

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_2
    move v10, v8

    goto :goto_3

    :cond_3
    :goto_2
    move v10, v6

    :goto_3
    if-ne v9, v10, :cond_4

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v9, :cond_7

    :cond_4
    if-nez v5, :cond_6

    if-eqz v1, :cond_6

    if-eqz v7, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v2, v8}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->setBackButtonEnabled(Z)V

    goto :goto_5

    :cond_6
    :goto_4
    invoke-virtual {v2, v6}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->setBackButtonEnabled(Z)V

    :cond_7
    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->isNavBarVisible()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->getLastNavBarVisible()Z

    move-result v9

    if-ne v2, v9, :cond_8

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mFirstUpdate:Z

    :cond_8
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastPrimaryBouncerShowing:Z

    if-eq v3, v2, :cond_9

    goto :goto_6

    :cond_9
    move v6, v8

    :goto_6
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastPrimaryBouncerShowing:Z

    if-nez v6, :cond_a

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v2, :cond_b

    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v9, v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iput-boolean v3, v9, Lcom/android/systemui/shade/NotificationShadeWindowState;->bouncerShowing:Z

    invoke-virtual {v2, v9}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    :cond_b
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastPrimaryBouncerIsOrWillBeShowing:Z

    if-ne v4, v2, :cond_c

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-nez v2, :cond_c

    if-eqz v6, :cond_d

    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v6, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    invoke-virtual {v6, v4, v3}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logSendPrimaryBouncerChanged(ZZ)V

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v6, 0x142

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput v4, v2, Landroid/os/Message;->arg1:I

    iput v3, v2, Landroid/os/Message;->arg2:I

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mFirstUpdate:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastShowing:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mGlobalActionsVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastGlobalActionsVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastOccluded:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastPrimaryBouncerIsOrWillBeShowing:Z

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastBouncerDismissible:Z

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastRemoteInputActive:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mDozing:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastDozing:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mPulsing:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastPulsing:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mScreenOffAnimationPlaying:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastScreenOffAnimationPlaying:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mGesturalNav:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastGesturalNav:Z

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/SafeUIStatusBarKeyguardViewManager;->mLastIsDocked:Z

    return-void
.end method
