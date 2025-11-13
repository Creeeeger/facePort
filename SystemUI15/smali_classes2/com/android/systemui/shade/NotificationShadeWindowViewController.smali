.class public final Lcom/android/systemui/shade/NotificationShadeWindowViewController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

.field public final mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field public final mBouncerViewBinder:Lcom/android/systemui/bouncer/ui/binder/BouncerViewBinder;

.field public mBrightnessMirror:Landroid/view/View;

.field public final mClock:Lcom/android/systemui/util/time/SystemClock;

.field public final mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

.field public mDownEvent:Landroid/view/MotionEvent;

.field public final mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field public final mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

.field public mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

.field public mExpandAnimationRunning:Z

.field public mExpandingBelowNotch:Z

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final mFeatureFlagsClassic:Lcom/android/systemui/flags/FeatureFlagsClassic;

.field public final mGlanceableHubContainerController:Lcom/android/systemui/shade/GlanceableHubContainerController;

.field public mIsOcclusionTransitionRunning:Z

.field public mIsTrackingBarGesture:Z

.field public final mKeyguardSysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

.field public final mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mLaunchAnimationTimeout:J

.field public final mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public final mLockscreenToDreamingTransition:Lcom/android/systemui/shade/NotificationShadeWindowViewController$$ExternalSyntheticLambda5;

.field public final mNotificationInsetsController:Lcom/android/systemui/statusbar/NotificationInsetsController;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public final mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

.field public final mPanelTouchBlockHelper:Lcom/android/systemui/shade/SecPanelTouchBlockHelper;

.field public mPluginLockTouchArea:Z

.field public mPresentationDisabler:Lcom/android/keyguard/KeyguardPresentationDisabler;

.field public final mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

.field public mSecKeyguardStatusViewTouchArea:Z

.field public final mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public final mShadeLogger:Lcom/android/systemui/shade/ShadeLogger;

.field public final mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

.field public mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public mStatusBarViewController:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

.field public final mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

.field public final mSysUIKeyEventHandler:Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;

.field public mTouchActive:Z

.field public mTouchCancelled:Z

.field public final mView:Lcom/android/systemui/shade/NotificationShadeWindowView;


# direct methods
.method public static -$$Nest$mlogDownDispatch(Lcom/android/systemui/shade/NotificationShadeWindowViewController;Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mShadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    new-instance v1, Lcom/android/systemui/shade/ShadeLogger$logShadeWindowDispatch$2;

    invoke-direct {v1, p3}, Lcom/android/systemui/shade/ShadeLogger$logShadeWindowDispatch$2;-><init>(Ljava/lang/Boolean;)V

    const-string/jumbo p3, "systemui.shade"

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v2, 0x0

    invoke-virtual {p0, p3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p2, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/systemui/log/LogMessageImpl;->long2:J

    invoke-virtual {p0, p3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/shade/NotificationShadeWindowView;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/keyguard/SecLockIconViewController;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/statusbar/NotificationInsetsController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/shade/PulsingGestureListener;Lcom/android/systemui/shade/LockscreenHostedDreamGestureListener;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/shade/GlanceableHubContainerController;Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationLaunchAnimationInteractor;Lcom/android/systemui/flags/FeatureFlagsClassic;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;Lcom/android/systemui/shade/QuickSettingsController;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/bouncer/ui/binder/BouncerViewBinder;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/bouncer/ui/viewmodel/KeyguardBouncerViewModel;",
            "Lcom/android/keyguard/dagger/KeyguardBouncerComponent$Factory;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/lockstar/PluginLockStarManager;",
            "Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/dock/DockManager;",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            "Lcom/android/systemui/shade/NotificationShadeWindowView;",
            "Lcom/android/systemui/shade/ShadeViewController;",
            "Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;",
            "Lcom/android/systemui/shade/ShadeExpansionStateManager;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;",
            "Lcom/android/keyguard/SecLockIconViewController;",
            "Lcom/android/systemui/statusbar/phone/CentralSurfaces;",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            "Lcom/android/systemui/statusbar/phone/DozeScrimController;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/SysUIUnfoldComponent;",
            ">;",
            "Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;",
            "Lcom/android/systemui/statusbar/NotificationInsetsController;",
            "Lcom/android/systemui/statusbar/notification/stack/AmbientState;",
            "Lcom/android/systemui/shade/ShadeLogger;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/shade/PulsingGestureListener;",
            "Lcom/android/systemui/shade/LockscreenHostedDreamGestureListener;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Lcom/android/systemui/shade/GlanceableHubContainerController;",
            "Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationLaunchAnimationInteractor;",
            "Lcom/android/systemui/flags/FeatureFlagsClassic;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;",
            "Lcom/android/systemui/shade/QuickSettingsController;",
            "Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;",
            "Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;",
            "Lcom/android/systemui/bouncer/ui/binder/BouncerViewBinder;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p12

    move-object/from16 v4, p19

    move-object/from16 v5, p20

    move-object/from16 v6, p23

    move-object/from16 v7, p25

    move-object/from16 v8, p38

    move-object/from16 v9, p42

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mIsTrackingBarGesture:Z

    iput-boolean v10, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mIsOcclusionTransitionRunning:Z

    iput-boolean v10, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mPluginLockTouchArea:Z

    new-instance v11, Lcom/android/systemui/shade/NotificationShadeWindowViewController$$ExternalSyntheticLambda5;

    const/4 v12, 0x1

    invoke-direct {v11, v0, v12}, Lcom/android/systemui/shade/NotificationShadeWindowViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowViewController;I)V

    iput-boolean v10, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mSecKeyguardStatusViewTouchArea:Z

    move-object/from16 v12, p7

    iput-object v12, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    move-object/from16 v12, p8

    iput-object v12, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v12, p9

    iput-object v12, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    move-object/from16 v12, p13

    iput-object v12, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    move-object/from16 v12, p14

    iput-object v12, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    move-object/from16 v12, p15

    iput-object v12, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    move-object/from16 v12, p11

    iput-object v12, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    move-object/from16 v12, p16

    iput-object v12, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-object/from16 v12, p17

    iput-object v12, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v12, p18

    iput-object v12, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    move-object/from16 v12, p29

    iput-object v12, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mShadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    iput-object v5, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    move-object/from16 v12, p21

    iput-object v12, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    move-object/from16 v12, p22

    iput-object v12, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iput-object v6, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-object/from16 v12, p26

    iput-object v12, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    move-object/from16 v12, p28

    iput-object v12, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    move-object/from16 v12, p27

    iput-object v12, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationInsetsController:Lcom/android/systemui/statusbar/NotificationInsetsController;

    move-object/from16 v12, p34

    iput-object v12, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mGlanceableHubContainerController:Lcom/android/systemui/shade/GlanceableHubContainerController;

    move-object/from16 v12, p36

    iput-object v12, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mFeatureFlagsClassic:Lcom/android/systemui/flags/FeatureFlagsClassic;

    iput-object v8, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mSysUIKeyEventHandler:Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;

    move-object/from16 v13, p40

    iput-object v13, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    move-object/from16 v13, p41

    iput-object v13, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    move-object/from16 v13, p4

    iput-object v13, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const v13, 0x7f0a01d1

    invoke-virtual {v3, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    iput-object v13, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mBrightnessMirror:Landroid/view/View;

    new-instance v13, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;

    invoke-direct {v13, v3}, Lcom/android/systemui/shared/animation/DisableSubpixelTextTransitionListener;-><init>(Landroid/view/ViewGroup;)V

    iput-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mKeyguardSysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    iput-object v9, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mBouncerViewBinder:Lcom/android/systemui/bouncer/ui/binder/BouncerViewBinder;

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v13

    if-nez v13, :cond_2

    sget-boolean v13, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    if-eqz v13, :cond_0

    new-instance v14, Lcom/android/keyguard/KeyguardBouncerContainer;

    invoke-virtual/range {p12 .. p12}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15, v8, v2}, Lcom/android/keyguard/KeyguardBouncerContainer;-><init>(Landroid/content/Context;Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)V

    goto :goto_0

    :cond_0
    const v2, 0x7f0a057b

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/FrameLayout;

    :goto_0
    if-eqz v13, :cond_1

    move-object v2, v5

    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iput-object v14, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerContainer:Landroid/widget/FrameLayout;

    const-string v2, "NotifShadeWindowVC"

    const-string v5, "addBouncer!"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v6

    check-cast v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {v2, v14}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->addBouncer(Landroid/view/ViewGroup;)V

    :cond_1
    invoke-virtual {v9, v14}, Lcom/android/systemui/bouncer/ui/binder/BouncerViewBinder;->bind(Landroid/view/ViewGroup;)V

    :cond_2
    sget-object v2, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->LOCKSCREEN:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    sget-object v5, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->DREAMING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    sget-object v6, Lcom/android/systemui/keyguard/shared/model/Edge;->Companion:Lcom/android/systemui/keyguard/shared/model/Edge$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    invoke-direct {v6, v2, v5}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    move-object/from16 v2, p33

    invoke-virtual {v2, v6}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    invoke-static {v3, v2, v11}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)V

    move-object/from16 v2, p35

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationLaunchAnimationInteractor;->repository:Lcom/android/systemui/statusbar/notification/data/repository/NotificationLaunchAnimationRepository;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/data/repository/NotificationLaunchAnimationRepository;->isLaunchAnimationRunning:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v5, Lcom/android/systemui/shade/NotificationShadeWindowViewController$$ExternalSyntheticLambda5;

    const/4 v6, 0x2

    invoke-direct {v5, v0, v6}, Lcom/android/systemui/shade/NotificationShadeWindowViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowViewController;I)V

    invoke-static {v3, v2, v5}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)V

    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda29;

    invoke-direct {v2, v10}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda29;-><init>(I)V

    invoke-virtual {v7, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    new-instance v5, Lcom/android/systemui/shade/NotificationShadeWindowViewController$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v7, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/shade/NotificationShadeWindowViewController$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance v2, Lcom/android/systemui/shade/NotificationShadeWindowViewController$$ExternalSyntheticLambda5;

    const/4 v6, 0x3

    invoke-direct {v2, v0, v6}, Lcom/android/systemui/shade/NotificationShadeWindowViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowViewController;I)V

    invoke-virtual {v5, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    move-object/from16 v2, p37

    iput-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mClock:Lcom/android/systemui/util/time/SystemClock;

    sget-object v2, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual/range {p36 .. p36}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f0a0aaa

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/SecLockIconView;

    iput-object v2, v4, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    iget-object v5, v4, Lcom/android/keyguard/LegacyLockIconViewController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p19 .. p19}, Lcom/android/keyguard/LegacyLockIconViewController;->updateKeyguardShowing()V

    iget-object v5, v4, Lcom/android/keyguard/LegacyLockIconViewController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v5}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/keyguard/LegacyLockIconViewController;->mIsBouncerShowing:Z

    iget-object v5, v4, Lcom/android/keyguard/LegacyLockIconViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v5}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/keyguard/LegacyLockIconViewController;->mIsDozing:Z

    iget-object v5, v4, Lcom/android/keyguard/LegacyLockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/keyguard/LegacyLockIconViewController;->mRunningFPS:Z

    iget-object v5, v4, Lcom/android/keyguard/LegacyLockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    iput-boolean v5, v4, Lcom/android/keyguard/LegacyLockIconViewController;->mCanDismissLockScreen:Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setSecLockIconView : mIsBouncerShowing = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v4, Lcom/android/keyguard/LegacyLockIconViewController;->mIsBouncerShowing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mIsDozing = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v4, Lcom/android/keyguard/LegacyLockIconViewController;->mIsDozing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SecLockIconViewController"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setSecLockIconView : mRunningFPS = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, v4, Lcom/android/keyguard/LegacyLockIconViewController;->mRunningFPS:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mCanDismissLockScreen = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v4, Lcom/android/keyguard/LegacyLockIconViewController;->mCanDismissLockScreen:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p19 .. p19}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility$1()V

    new-instance v5, Lcom/android/keyguard/SecLockIconViewController$2;

    invoke-direct {v5, v4}, Lcom/android/keyguard/SecLockIconViewController$2;-><init>(Lcom/android/keyguard/SecLockIconViewController;)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual/range {p19 .. p19}, Lcom/android/keyguard/SecLockIconViewController;->registerCallbacks$3()V

    :cond_3
    new-instance v5, Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda2;

    invoke-direct {v5, v4}, Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/SecLockIconViewController;)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "onRootViewAttached :: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p12 .. p12}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "LStar|PluginLockStarManager"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a065b

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarViewStub:Landroid/view/ViewStub;

    iget-object v2, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    const-string v3, "PluginLockStar"

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    iget-object v2, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarViewStub:Landroid/view/ViewStub;

    if-nez v2, :cond_4

    const-string v2, "Illegal Access. view stub is null"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v2, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v2, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v2, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mGoodLockLifecycle:Lcom/android/systemui/lockstar/GoodLockLifecycle;

    iget-object v3, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mObserver:Lcom/android/systemui/lockstar/PluginLockStarManager$2;

    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/lockstar/PluginLockStarManager;->checkGoodLockInstalledState()V

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mPanelTouchBlockHelper:Lcom/android/systemui/shade/SecPanelTouchBlockHelper;

    move-object/from16 v1, p30

    invoke-virtual {v1, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public final cancelCurrentTouch()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mShadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    const-string v1, "NSWVC: cancelling current touch"

    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/ShadeLogger;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchActive:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDownEvent:Landroid/view/MotionEvent;

    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    const-string v2, "NotifShadeWindowVC"

    const-string v3, "Canceling current touch event (should be very rare)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/shade/NotificationShadeWindowView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchCancelled:Z

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSwipingUp:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFlingRequiredAfterLockScreenSwipeUp:Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSwipingUp:Z

    sget-object p0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p2, "  mExpandAnimationRunning="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mExpandAnimationRunning:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mTouchCancelled="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchCancelled:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mTouchActive="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mTouchActive:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public setDragDownHelper(Lcom/android/systemui/statusbar/DragDownHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    return-void
.end method

.method public setExpandAnimationRunning(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mExpandAnimationRunning:Z

    if-eq v0, p1, :cond_2

    sget-boolean v0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->DEBUG_TRANSITION_ANIMATION:Z

    if-eqz v0, :cond_0

    const-string v0, "Setting mExpandAnimationRunning="

    const-string v1, "NotifShadeWindowVC"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mLaunchAnimationTimeout:J

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mExpandAnimationRunning:Z

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->launchingActivityFromNotification:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    :cond_2
    return-void
.end method
