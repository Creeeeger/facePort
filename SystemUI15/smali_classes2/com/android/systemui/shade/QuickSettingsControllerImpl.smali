.class public final Lcom/android/systemui/shade/QuickSettingsControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/QuickSettingsController;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field public mAmount:F

.field public mAnimateNextNotificationBounds:Z

.field public mAnimating:Z

.field public mAnimatingHiddenFromCollapsed:Z

.field public mAnimatorExpand:Z

.field public mApplyClippingImmediatelyListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

.field public mBarState:I

.field public mCachedGestureInsets:Landroid/graphics/Insets;

.field public mCachedWindowWidth:I

.field public final mCastController:Lcom/android/systemui/statusbar/policy/CastController;

.field public final mClippingAnimationEndBounds:Landroid/graphics/Rect;

.field public mClippingAnimator:Landroid/animation/ValueAnimator;

.field public mCollapsedOnDown:Z

.field public final mCommunalTransitionViewModelLazy:Ldagger/Lazy;

.field public mConflictingExpansionGesture:Z

.field public final mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

.field public mDisplayLeftInset:I

.field public mDisplayRightInset:I

.field public mDistanceForFullShadeTransition:I

.field public mDozing:Z

.field public mEnableClipping:Z

.field public mExpandedWhenExpandingStarted:Z

.field public mExpansionAnimator:Landroid/animation/ValueAnimator;

.field public mExpansionEnabledAmbient:Z

.field public mExpansionEnabledPolicy:Z

.field public mExpansionFromOverscroll:Z

.field public mExpansionHeight:F

.field public mExpansionHeightListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

.field public mExpansionHeightSetToMaxListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public mFalsingThreshold:I

.field public mFlingQsWithoutClickListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

.field public mFullyExpanded:Z

.field public mInitialHeightOnTouch:F

.field public mInitialTouchX:F

.field public mInitialTouchY:F

.field public final mInteractionJankMonitorLazy:Ldagger/Lazy;

.field public final mInterceptRegion:Landroid/graphics/Region;

.field public mIsFullWidth:Z

.field public mIsPulseExpansionResettingAnimator:Z

.field public mIsRubberBanded:Z

.field public mIsTranslationResettingAnimator:Z

.field public final mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

.field public final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLastClipBounds:Landroid/graphics/Rect;

.field public mLastOverscroll:F

.field public mLastShadeFlingWasExpanding:Z

.field public final mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field public final mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field public mLockscreenNotificationPadding:I

.field public final mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public mMaxExpansionHeight:I

.field public final mMediaHierarchyManager:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mMinExpansionHeight:I

.field public mNotificationBoundsAnimationDelay:J

.field public mNotificationBoundsAnimationDuration:J

.field public final mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public mPanelExpandedForFingerPrint:Z

.field public mPanelSplitEnabled:Z

.field public final mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

.field public final mPanelViewControllerLazy:Ldagger/Lazy;

.field public final mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field public final mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

.field public mQs:Lcom/android/systemui/plugins/qs/QS;

.field public final mQsCollapseExpandAction:Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;

.field public final mQsFrame:Landroid/widget/FrameLayout;

.field public final mQsFrameTranslateController:Lcom/android/systemui/statusbar/QsFrameTranslateController;

.field public final mQsHeightListener:Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda5;

.field public final mQsScrollListener:Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda5;

.field public mQsStateUpdateListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

.field public mQsVelocityTracker:Landroid/view/VelocityTracker;

.field public final mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

.field public final mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

.field public mQuickQsHeaderHeight:F

.field public mQuickQsOffsetHeight:I

.field public final mRecordingController:Lcom/android/systemui/screenrecord/RecordingController;

.field public final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field public final mResources:Landroid/content/res/Resources;

.field public mScreenCornerRadius:I

.field public final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field public mScrimCornerRadius:I

.field public mScrimEnabled:Z

.field public final mSecQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

.field public mShadeExpandedFraction:F

.field public mShadeExpandedHeight:F

.field public final mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

.field public final mShadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

.field public final mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

.field public final mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

.field public mSizeChangeAnimator:Landroid/animation/ValueAnimator;

.field public mSlopMultiplier:F

.field public mSplitShadeNotificationsScrimMarginBottom:I

.field public final mSplitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

.field public mStackScrollerOverscrolling:Z

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public mStatusBarMinHeight:I

.field public final mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

.field public mTouchAboveFalsingThreshold:Z

.field public mTouchSlop:I

.field public mTrackingPointer:I

.field public mTranslationForFullShadeTransition:F

.field public mTwoFingerExpandPossible:Z

.field public mUseLargeScreenShadeHeader:Z

.field public mVisible:Z


# direct methods
.method public constructor <init>(Ldagger/Lazy;Lcom/android/systemui/shade/NotificationPanelView;Lcom/android/systemui/statusbar/QsFrameTranslateController;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/screenrecord/RecordingController;Lcom/android/systemui/plugins/FalsingManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;Lcom/android/internal/logging/MetricsLogger;Ldagger/Lazy;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;Lcom/android/systemui/shade/data/repository/ShadeRepository;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;Lcom/android/systemui/util/kotlin/JavaAdapter;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/SplitShadeStateController;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/shade/NotificationPanelView;",
            "Lcom/android/systemui/statusbar/QsFrameTranslateController;",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            "Lcom/android/systemui/shade/ShadeHeaderController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Lcom/android/systemui/statusbar/phone/ScrimController;",
            "Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;",
            "Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;",
            "Lcom/android/systemui/statusbar/notification/stack/AmbientState;",
            "Lcom/android/systemui/screenrecord/RecordingController;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/shade/ShadeLogger;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;",
            "Lcom/android/systemui/shade/data/repository/ShadeRepository;",
            "Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;",
            "Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;",
            "Lcom/android/systemui/util/kotlin/JavaAdapter;",
            "Lcom/android/systemui/statusbar/policy/CastController;",
            "Lcom/android/systemui/statusbar/policy/SplitShadeStateController;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v2, p2

    move-object/from16 v1, p4

    move-object/from16 v3, p9

    move-object/from16 v4, p33

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mScrimEnabled:Z

    const/4 v6, 0x0

    iput v6, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mDisplayRightInset:I

    iput v6, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mDisplayLeftInset:I

    const/4 v7, 0x0

    iput v7, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeExpandedHeight:F

    iput-boolean v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionEnabledPolicy:Z

    iput-boolean v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionEnabledAmbient:Z

    new-instance v5, Landroid/graphics/Region;

    invoke-direct {v5}, Landroid/graphics/Region;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInterceptRegion:Landroid/graphics/Region;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mClippingAnimationEndBounds:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mLastClipBounds:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mClippingAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;)V

    iput-object v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsHeightListener:Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda5;

    new-instance v5, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;

    const/4 v7, 0x2

    invoke-direct {v5, v0, v7}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsCollapseExpandAction:Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;

    new-instance v5, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;)V

    iput-object v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsScrollListener:Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda5;

    iput-boolean v6, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelExpandedForFingerPrint:Z

    invoke-static {}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->assertInLegacyMode()V

    iput-object v11, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelViewControllerLazy:Ldagger/Lazy;

    iput-object v2, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    const v5, 0x7f0a0975

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsFrame:Landroid/widget/FrameLayout;

    const v5, 0x7f0a0593

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-object v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mResources:Landroid/content/res/Resources;

    iput-object v4, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSplitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

    check-cast v4, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;->shouldUseSplitNotificationShade()V

    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsFrameTranslateController:Lcom/android/systemui/statusbar/QsFrameTranslateController;

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    new-instance v4, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;

    const/4 v5, 0x4

    invoke-direct {v4, v0, v5}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v4, v1, Lcom/android/systemui/statusbar/PulseExpansionHandler;->pulseExpandAbortListener:Ljava/lang/Runnable;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    move-object/from16 v15, p8

    iput-object v15, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iput-object v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    move-object/from16 v14, p11

    iput-object v14, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMediaHierarchyManager:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    move-object/from16 v13, p18

    iput-object v13, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mRecordingController:Lcom/android/systemui/screenrecord/RecordingController;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mCastController:Lcom/android/systemui/statusbar/policy/CastController;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInteractionJankMonitorLazy:Ldagger/Lazy;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mCommunalTransitionViewModelLazy:Ldagger/Lazy;

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl$LockscreenShadeTransitionCallback;

    invoke-direct {v1, v0, v6}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$LockscreenShadeTransitionCallback;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->addCallback(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;)V

    move-object/from16 v1, p26

    invoke-virtual {v1, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    new-instance v1, Lcom/android/systemui/log/QuickPanelLogger;

    const-string v3, "QSCI"

    invoke-direct {v1, v3}, Lcom/android/systemui/log/QuickPanelLogger;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    new-instance v12, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    move-object v1, v12

    new-instance v4, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda29;

    move-object v3, v4

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda29;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    new-instance v5, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda29;

    move-object v4, v5

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda29;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    new-instance v6, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda6;

    move-object v5, v6

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v8, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda6;

    move-object v7, v8

    const/4 v9, 0x6

    invoke-direct {v8, v0, v9}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    new-instance v9, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda1;

    move-object v8, v9

    const/4 v10, 0x2

    invoke-direct {v9, v0, v10}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    new-instance v10, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda6;

    move-object v9, v10

    const/4 v2, 0x7

    invoke-direct {v10, v0, v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    new-instance v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda6;

    move-object v10, v2

    move-object/from16 p3, v12

    const/4 v12, 0x0

    invoke-direct {v2, v0, v12}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    new-instance v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda1;

    move-object/from16 v33, p3

    move-object v12, v2

    const/4 v13, 0x5

    invoke-direct {v2, v0, v13}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    new-instance v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda8;

    move-object v13, v2

    invoke-direct {v2, v0, v11}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;Ldagger/Lazy;)V

    new-instance v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda6;

    move-object v14, v2

    const/16 v15, 0x8

    invoke-direct {v2, v0, v15}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    new-instance v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda6;

    move-object v15, v2

    move-object/from16 p3, v1

    const/4 v1, 0x1

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda1;

    move-object/from16 v18, v1

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda12;

    move-object/from16 v19, v1

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda12;

    move-object/from16 v20, v1

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda12;

    move-object/from16 v21, v1

    const/4 v2, 0x2

    invoke-direct {v1, v11, v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;

    move-object/from16 v22, v1

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda6;

    move-object/from16 v23, v1

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda18;

    move-object/from16 v24, v1

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda18;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda6;

    move-object/from16 v25, v1

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda18;

    move-object/from16 v26, v1

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda18;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda6;

    move-object/from16 v27, v1

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;

    move-object/from16 v28, v1

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda23;

    move-object/from16 v29, v1

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda23;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda24;

    move-object/from16 v30, v1

    invoke-direct {v1, v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda24;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;)V

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda2;

    move-object/from16 v31, v1

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda23;

    move-object/from16 v32, v1

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda23;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    move-object/from16 v2, p18

    move-object/from16 v11, p11

    move-object/from16 v16, p8

    move-object/from16 v17, p1

    move-object/from16 v1, p3

    invoke-direct/range {v1 .. v32}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;-><init>(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/DoubleSupplier;Landroid/content/Context;Ljava/util/function/DoubleSupplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/DoubleSupplier;Ljava/util/function/DoubleSupplier;Lcom/android/systemui/shade/ShadeHeaderController;Ljava/util/function/BooleanSupplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/DoubleSupplier;Ljava/util/function/DoubleSupplier;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Ldagger/Lazy;Ljava/util/function/BooleanSupplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/DoubleSupplier;Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/util/function/IntConsumer;Ljava/util/function/IntSupplier;Ljava/util/function/Consumer;)V

    move-object/from16 v1, v33

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSecQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/SystemBarUtils;->getQuickQsOffsetHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQuickQsOffsetHeight:I

    move-object/from16 v1, p36

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    sget-object v1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    const-string v2, "QuickSettingsController"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogProvider(Ljava/lang/String;Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;)V

    move-object/from16 v1, p37

    iput-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public final applyClippingImmediately(IIIIZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v11, p5

    iget v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mScrimCornerRadius:I

    iget-object v6, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mLastClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v6, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mIsFullWidth:Z

    iget-object v13, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 v14, 0x0

    if-eqz v6, :cond_5

    iget-object v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mRecordingController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {v5}, Lcom/android/systemui/screenrecord/RecordingController;->isRecording()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mCastController:Lcom/android/systemui/statusbar/policy/CastController;

    check-cast v5, Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->getCastDevices()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/statusbar/policy/CastControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    iget v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mScreenCornerRadius:I

    int-to-float v5, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v14

    :goto_1
    iget v6, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mScrimCornerRadius:I

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v7, v6

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0, v14}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->calculateBottomCornerRadius(F)I

    move-result v6

    int-to-float v6, v6

    goto :goto_2

    :cond_2
    move v6, v14

    :goto_2
    iget-object v7, v13, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    iget-object v7, v7, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v8, v7, Lcom/android/systemui/scrim/ScrimDrawable;

    if-eqz v8, :cond_4

    check-cast v7, Lcom/android/systemui/scrim/ScrimDrawable;

    iget v8, v7, Lcom/android/systemui/scrim/ScrimDrawable;->mBottomEdgeRadius:F

    cmpl-float v8, v8, v6

    if-eqz v8, :cond_4

    iput v6, v7, Lcom/android/systemui/scrim/ScrimDrawable;->mBottomEdgeRadius:F

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_4
    :goto_3
    move v12, v5

    move/from16 v16, v11

    goto :goto_4

    :cond_5
    move v12, v5

    const/16 v16, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isQsFragmentCreated()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    if-nez v5, :cond_7

    iget-object v6, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mClippingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_6

    iget-boolean v6, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mIsTranslationResettingAnimator:Z

    if-nez v6, :cond_7

    iget-boolean v6, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mIsPulseExpansionResettingAnimator:Z

    if-eqz v6, :cond_6

    goto :goto_5

    :cond_6
    move v5, v14

    goto :goto_7

    :cond_7
    :goto_5
    if-nez v5, :cond_9

    iget-boolean v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mIsPulseExpansionResettingAnimator:Z

    if-eqz v5, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getHeaderHeight()I

    move-result v5

    sub-int v5, v2, v5

    int-to-float v5, v5

    const v6, 0x3e333333    # 0.175f

    mul-float/2addr v5, v6

    goto :goto_7

    :cond_9
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getHeaderHeight()I

    move-result v5

    sub-int v5, v2, v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-static {v14, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    :goto_7
    iput v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTranslationForFullShadeTransition:F

    iget-object v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v5, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    iget-object v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v5, v5, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTopMargin:I

    iget-object v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsFrameTranslateController:Lcom/android/systemui/statusbar/QsFrameTranslateController;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v5

    iget-boolean v6, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mEnableClipping:Z

    if-eqz v6, :cond_a

    int-to-float v6, v2

    sub-float/2addr v6, v5

    iget-object v7, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    move v7, v6

    goto :goto_8

    :cond_a
    const/4 v7, 0x0

    :goto_8
    iget-boolean v6, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mEnableClipping:Z

    if-eqz v6, :cond_b

    int-to-float v6, v4

    sub-float/2addr v6, v5

    iget-object v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v6, v5

    float-to-int v5, v6

    move v9, v5

    goto :goto_9

    :cond_b
    const/4 v9, 0x0

    :goto_9
    iput-boolean v11, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mVisible:Z

    iget-object v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v5, v11}, Lcom/android/systemui/plugins/qs/QS;->setQsVisible(Z)V

    iget-object v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iget v6, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mDisplayLeftInset:I

    iget v8, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mDisplayRightInset:I

    iget-boolean v10, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mIsFullWidth:Z

    move/from16 v17, v10

    move v10, v12

    move/from16 v11, p5

    move v15, v12

    move/from16 v12, v17

    invoke-interface/range {v5 .. v12}, Lcom/android/systemui/plugins/qs/QS;->setFancyClipping(IIIIIZZ)V

    goto :goto_a

    :cond_c
    move v15, v12

    :goto_a
    add-int v5, v4, v15

    int-to-float v6, v1

    int-to-float v7, v2

    int-to-float v8, v3

    int-to-float v5, v5

    iget-object v9, v13, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    iget-object v10, v9, Lcom/android/systemui/scrim/ScrimView;->mDrawableBounds:Landroid/graphics/Rect;

    if-nez v10, :cond_d

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v9, Lcom/android/systemui/scrim/ScrimView;->mDrawableBounds:Landroid/graphics/Rect;

    :cond_d
    iget-object v10, v9, Lcom/android/systemui/scrim/ScrimView;->mDrawableBounds:Landroid/graphics/Rect;

    float-to-int v6, v6

    float-to-int v7, v7

    float-to-int v8, v8

    float-to-int v5, v5

    invoke-virtual {v10, v6, v7, v8, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, v9, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, v9, Lcom/android/systemui/scrim/ScrimView;->mDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget v5, v13, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    cmpl-float v5, v5, v14

    const/4 v6, 0x0

    if-lez v5, :cond_e

    iget-object v5, v13, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v5, v5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    check-cast v5, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    iget-object v5, v5, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->topClippingBounds:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v5, v7}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    goto :goto_b

    :cond_e
    iget-object v5, v13, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object v5, v5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    check-cast v5, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    iget-object v5, v5, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->topClippingBounds:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v5, v6}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    :goto_b
    iget-object v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mApplyClippingImmediatelyListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    if-eqz v5, :cond_11

    iget-object v7, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mLastClipBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isQsFragmentCreated()Z

    move-result v8

    iget-boolean v9, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mVisible:Z

    iget-object v5, v5, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    if-eqz v8, :cond_f

    iget-object v8, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object v8, v8, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    check-cast v8, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-object v8, v8, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_isQuickSettingsVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v8, v6, v9}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_f
    iget-object v8, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    if-eqz v16, :cond_10

    move-object v6, v7

    :cond_10
    invoke-virtual {v8, v6}, Lcom/android/keyguard/KeyguardStatusViewController;->setClipBounds(Landroid/graphics/Rect;)V

    iget-object v5, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateTopClipping(I)V

    :cond_11
    iget-object v5, v13, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    if-eqz v5, :cond_13

    iget-object v6, v13, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    if-nez v6, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v5, v15}, Lcom/android/systemui/scrim/ScrimView;->setCornerRadius(I)V

    iget-object v5, v13, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v5, v15}, Lcom/android/systemui/scrim/ScrimView;->setCornerRadius(I)V

    :cond_13
    :goto_c
    sget v5, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    sub-int/2addr v1, v6

    iget-boolean v6, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mIsFullWidth:Z

    if-eqz v6, :cond_14

    goto :goto_d

    :cond_14
    iget v6, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mDisplayLeftInset:I

    sub-int/2addr v1, v6

    :goto_d
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    sub-int/2addr v3, v6

    iget-boolean v6, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mIsFullWidth:Z

    if-eqz v6, :cond_15

    goto :goto_e

    :cond_15
    iget v0, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mDisplayLeftInset:I

    sub-int/2addr v3, v0

    :goto_e
    iget-object v0, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    sub-int v0, v2, v0

    iget-object v2, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    sub-int v2, v4, v2

    invoke-static {}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->assertInLegacyMode()V

    iget-object v4, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->assertInLegacyMode()V

    iget v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingLeft:I

    const/4 v6, 0x5

    if-ne v5, v1, :cond_16

    iget v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingRight:I

    if-ne v5, v3, :cond_16

    iget v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingBottom:I

    if-ne v5, v2, :cond_16

    iget v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingTop:I

    if-ne v5, v0, :cond_16

    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBgCornerRadii:[F

    const/4 v7, 0x0

    aget v8, v5, v7

    int-to-float v9, v7

    cmpl-float v7, v8, v9

    if-nez v7, :cond_16

    aget v5, v5, v6

    cmpl-float v5, v5, v9

    if-nez v5, :cond_16

    goto :goto_f

    :cond_16
    iput v1, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingLeft:I

    iput v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingTop:I

    iput v2, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingBottom:I

    iput v3, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingRight:I

    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBgCornerRadii:[F

    const/4 v1, 0x0

    int-to-float v2, v1

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    aput v2, v0, v6

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateRoundedClipPath()V

    :goto_f
    return-void
.end method

.method public final beginJankMonitoring(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInteractionJankMonitorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/jank/InteractionJankMonitor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-static {v1, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p0

    if-eqz p1, :cond_1

    const-string p1, "Expand"

    goto :goto_0

    :cond_1
    const-string p1, "Collapse"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    return-void
.end method

.method public calculateBottomCornerRadius(F)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mScrimCornerRadius:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->calculateBottomRadiusProgress()F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, v0, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public final calculateBottomPosition(F)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getHeaderTranslation()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v1

    add-int/2addr v1, v0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result p0

    invoke-static {v1, p0, p1}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public calculateBottomRadiusProgress()F
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p0

    return v0
.end method

.method public final calculateNotificationsTopPadding(I)F
    .locals 4

    invoke-static {}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->assertInLegacyMode()V

    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDragDownOnKeyguard:Z

    if-nez v0, :cond_2

    int-to-float p1, p1

    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMaxExpansionHeight:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->computeExpansionFraction()F

    move-result p0

    invoke-static {p1, v0, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0

    :cond_2
    sget-object p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsFrameTranslateController:Lcom/android/systemui/statusbar/QsFrameTranslateController;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSecQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->minExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {p1}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/QsFrameTranslateController;->getNotificationsTopPadding(F)F

    move-result p1

    float-to-double v0, p1

    iget p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQuickQsHeaderHeight:F

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float p1, v0

    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mLastOverscroll:F

    add-float/2addr p1, p0

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/QsFrameTranslateController;->getNotificationsTopPadding(F)F

    move-result p1

    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQuickQsHeaderHeight:F

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :goto_1
    return p1
.end method

.method public final calculatePanelHeightExpanded(I)I
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v2, v2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getNotGoneChildCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/android/systemui/NotiRune;->NOTI_AOSP_DISABLE_EMPTY_SHADE_VIEW:Z

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsVisible:Z

    :goto_0
    if-eqz v2, :cond_2

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    :goto_1
    int-to-float v1, v1

    :cond_2
    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMaxExpansionHeight:I

    iget-object v4, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_3
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mBarState:I

    const/4 v4, 0x1

    if-ne p0, v4, :cond_4

    goto :goto_2

    :cond_4
    move p1, v3

    :goto_2
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, v1

    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    add-float/2addr p0, v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p0, p1

    if-lez p1, :cond_5

    int-to-float p0, v2

    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, p0

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    :cond_5
    float-to-int p0, p0

    return p0
.end method

.method public final calculateTopClippingBound(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getEdgePosition()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput v0, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mNotificationScrimTop:F

    iget v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    float-to-int p1, v0

    :goto_0
    int-to-float p1, p1

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mOverStretchAmount:F

    add-float/2addr p1, v1

    float-to-int p1, p1

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMinFraction:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_3

    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeExpandedFraction:F

    sub-float/2addr p0, v0

    sub-float/2addr v1, v0

    div-float/2addr p0, v1

    int-to-float p1, p1

    div-float/2addr p0, v0

    invoke-static {p0}, Landroid/util/MathUtils;->saturate(F)F

    move-result p0

    mul-float/2addr p0, p1

    float-to-int p1, p0

    :cond_3
    return p1
.end method

.method public final closeQs()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setExpansionHeight(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setExpandImmediate(Z)V

    return-void
.end method

.method public final closeQsCustomizer()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->closeCustomizer()V

    :cond_0
    return-void
.end method

.method public final computeExpansionFraction()F
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAnimatingHiddenFromCollapsed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMaxExpansionHeight:I

    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    int-to-float v1, v2

    sub-float/2addr p0, v1

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    const-string p2, "QuickSettingsController:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p2, "mIsFullWidth="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mIsFullWidth:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "mTouchSlop="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTouchSlop:I

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p2, "mSlopMultiplier="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSlopMultiplier:F

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p2, "mBarState="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mBarState:I

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p2, "mStatusBarMinHeight="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mStatusBarMinHeight:I

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p2, "mScrimEnabled="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mScrimEnabled:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "mScrimCornerRadius="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mScrimCornerRadius:I

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p2, "mScreenCornerRadius="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mScreenCornerRadius:I

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p2, "mUseLargeScreenShadeHeader="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mUseLargeScreenShadeHeader:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "mLargeScreenShadeHeaderHeight="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "mDisplayRightInset="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mDisplayRightInset:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "mDisplayLeftInset="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mDisplayLeftInset:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "mSplitShadeEnabled="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mLockscreenNotificationPadding="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mLockscreenNotificationPadding:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "mSplitShadeNotificationsScrimMarginBottom="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSplitShadeNotificationsScrimMarginBottom:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "mDozing="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mDozing:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mEnableClipping="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mEnableClipping:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mFalsingThreshold="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFalsingThreshold:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "mTransitionToFullShadePosition="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p2, "mCollapsedOnDown="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mCollapsedOnDown:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "mShadeExpandedHeight="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeExpandedHeight:F

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p2, "mLastShadeFlingWasExpanding="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mLastShadeFlingWasExpanding:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "mInitialHeightOnTouch="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialHeightOnTouch:F

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p2, "mInitialTouchX="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchX:F

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p2, "mInitialTouchY="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchY:F

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p2, "mTouchAboveFalsingThreshold="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTouchAboveFalsingThreshold:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "mTracking="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isTracking()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "mTrackingPointer="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTrackingPointer:I

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p2, "mExpanded="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "mFullyExpanded="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFullyExpanded:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "isExpandImmediate()="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isExpandImmediate()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "mExpandedWhenExpandingStarted="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpandedWhenExpandingStarted:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "mAnimatingHiddenFromCollapsed="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAnimatingHiddenFromCollapsed:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "mVisible="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mVisible:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "mExpansionHeight="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p2, "mMinExpansionHeight="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p2, "mMaxExpansionHeight="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMaxExpansionHeight:I

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p2, "mShadeExpandedFraction="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeExpandedFraction:F

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p2, "mLastOverscroll="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mLastOverscroll:F

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p2, "mExpansionFromOverscroll="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionFromOverscroll:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "mExpansionEnabledPolicy="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionEnabledPolicy:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "mExpansionEnabledAmbient="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionEnabledAmbient:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "mQuickQsHeaderHeight="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQuickQsHeaderHeight:F

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p2, "mTwoFingerExpandPossible="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTwoFingerExpandPossible:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "mConflictingExpansionGesture="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mConflictingExpansionGesture:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "mAnimatorExpand="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAnimatorExpand:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "mCachedGestureInsets="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mCachedGestureInsets:Landroid/graphics/Insets;

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string p2, "mCachedWindowWidth="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mCachedWindowWidth:I

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p2, "mTransitioningToFullShadeProgress="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p2, "mDistanceForFullShadeTransition="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mDistanceForFullShadeTransition:I

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p2, "mStackScrollerOverscrolling="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mStackScrollerOverscrolling:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "mAnimating="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAnimating:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "mIsTranslationResettingAnimator="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mIsTranslationResettingAnimator:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "mIsPulseExpansionResettingAnimator="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mIsPulseExpansionResettingAnimator:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "mTranslationForFullShadeTransition="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTranslationForFullShadeTransition:F

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string p2, "mAnimateNextNotificationBounds="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAnimateNextNotificationBounds:Z

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string p2, "mNotificationBoundsAnimationDelay="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationBoundsAnimationDelay:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string p2, "mNotificationBoundsAnimationDuration="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationBoundsAnimationDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string p2, "mInterceptRegion="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInterceptRegion:Landroid/graphics/Region;

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string p2, "mClippingAnimationEndBounds="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mClippingAnimationEndBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string p2, "mLastClipBounds="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mLastClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public final flingQs(FILcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;Z)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    new-instance v9, Lcom/android/systemui/shade/ShadeLogger$flingQs$2;

    invoke-direct {v9, v3}, Lcom/android/systemui/shade/ShadeLogger$flingQs$2;-><init>(Z)V

    const/4 v10, 0x0

    iget-object v7, v7, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string/jumbo v11, "systemui.shade"

    invoke-virtual {v7, v11, v8, v9, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v8

    const-string v9, "UNKNOWN"

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-eq v1, v5, :cond_0

    move-object v10, v9

    goto :goto_0

    :cond_0
    const-string v10, "FLING_HIDE"

    goto :goto_0

    :cond_1
    const-string v10, "FLING_COLLAPSE"

    goto :goto_0

    :cond_2
    const-string v10, "FLING_EXPAND"

    :goto_0
    move-object v11, v8

    check-cast v11, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v10, v11, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-boolean v3, v11, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v7, v8}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    const/4 v7, 0x0

    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isQsFragmentCreated()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v8}, Lcom/android/systemui/plugins/qs/QS;->closeDetail()V

    :cond_3
    move v8, v7

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v6}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setExpandImmediate(Z)V

    iget v8, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    :goto_1
    int-to-float v8, v8

    goto :goto_2

    :cond_5
    iget v8, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMaxExpansionHeight:I

    goto :goto_1

    :goto_2
    iget v10, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    cmpl-float v11, v8, v10

    if-nez v11, :cond_8

    if-eqz v2, :cond_6

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;->run()V

    :cond_6
    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    move v4, v6

    :goto_3
    invoke-virtual {v0, v6, v4}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->traceQsJank(ZZ)V

    return-void

    :cond_8
    if-nez v1, :cond_9

    move v15, v4

    goto :goto_4

    :cond_9
    move v15, v6

    :goto_4
    cmpl-float v11, p1, v7

    if-lez v11, :cond_a

    if-eqz v15, :cond_b

    :cond_a
    cmpg-float v11, p1, v7

    if-gez v11, :cond_c

    if-eqz v15, :cond_c

    :cond_b
    move v14, v4

    move v13, v7

    goto :goto_5

    :cond_c
    move/from16 v13, p1

    move v14, v6

    :goto_5
    new-array v11, v5, [F

    aput v10, v11, v6

    aput v8, v11, v4

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    if-eqz v3, :cond_e

    sget-object v10, Lcom/android/app/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v10, 0x170

    invoke-virtual {v12, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_d
    move-object v7, v12

    move/from16 p1, v13

    move v5, v14

    move v4, v15

    goto :goto_6

    :cond_e
    iget-object v10, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFlingQsWithoutClickListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    if-eqz v10, :cond_d

    iget v11, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    iget-object v10, v10, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v10, v10, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-float v16, v8, v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v17, v11

    move-object v11, v12

    move-object v7, v12

    move/from16 v12, v17

    move/from16 p1, v13

    move v13, v8

    move v5, v14

    move/from16 v14, p1

    move v4, v15

    move/from16 v15, v16

    invoke-virtual/range {v10 .. v15}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    :goto_6
    if-eqz v5, :cond_f

    const-wide/16 v10, 0x15e

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_f
    new-instance v10, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda36;

    invoke-direct {v10, v0, v6}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda36;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    invoke-virtual {v7, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v10, Lcom/android/systemui/shade/QuickSettingsControllerImpl$3;

    invoke-direct {v10, v0, v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$3;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSecQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    if-eqz v2, :cond_13

    iget-boolean v10, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAnimating:Z

    iget-boolean v11, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAnimatorExpand:Z

    iget v12, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    iget-object v13, v2, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->logBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v14, "flingQs: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v14, "vel: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, ", isClick: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", target: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", expansionHeight: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", oppositeDirection: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", animating( "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " >> true )"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", animatorExpand( "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " >> "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->quickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    iget-object v2, v2, Lcom/android/systemui/log/QuickPanelLogger;->quickPanelLoggerHelper:Lcom/android/systemui/log/QuickPanelLoggerHelper;

    iget-object v2, v2, Lcom/android/systemui/log/QuickPanelLoggerHelper;->flingLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$FlingLogger;

    iget-object v5, v2, Lcom/android/systemui/log/QuickPanelLoggerHelper$FlingLogger;->logBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz v1, :cond_12

    const/4 v10, 0x1

    if-eq v1, v10, :cond_11

    const/4 v10, 0x2

    if-eq v1, v10, :cond_10

    goto :goto_7

    :cond_10
    const-string v9, "HIDE"

    goto :goto_7

    :cond_11
    const-string v9, "COLLAPSE"

    goto :goto_7

    :cond_12
    const-string v9, "EXPAND"

    :goto_7
    const-string v1, " | "

    const-string v10, "\n"

    invoke-static {v5, v9, v1, v3, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa

    const-string v3, " - "

    invoke-static {v1, v3}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v2, Lcom/android/systemui/log/QuickPanelLoggerHelper$FlingLogger;->externalLogger:Lcom/android/systemui/log/QuickPanelExternalLogger;

    const-string v3, "[FLING]"

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/log/QuickPanelExternalLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAnimating:Z

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    iput-object v7, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    iput-boolean v4, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAnimatorExpand:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->computeExpansionFraction()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_14

    cmpl-float v2, v8, v3

    if-nez v2, :cond_14

    move v4, v1

    goto :goto_8

    :cond_14
    move v4, v6

    :goto_8
    iput-boolean v4, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAnimatingHiddenFromCollapsed:Z

    return-void
.end method

.method public final gatherState()Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "QuickSettingsController"

    invoke-static {v1, v0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addHeaderLine(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMaxExpansionHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "getMaxExpansionHeight"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->computeExpansionFraction()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "computeExpansionFraction()"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mLastOverscroll:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mLastOverscroll"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSecQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->minExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {v1}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsFrameTranslateController:Lcom/android/systemui/statusbar/QsFrameTranslateController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/QsFrameTranslateController;->getNotificationsTopPadding(F)F

    move-result v1

    float-to-double v1, v1

    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQuickQsHeaderHeight:F

    float-to-double v3, p0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-float p0, v1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v1, "mSecQuickSettingsControllerImpl.calculateNotificationsTopPadding"

    invoke-static {v0, v1, p0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getCurrentVelocity()F
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    return p0
.end method

.method public final getEdgePosition()F
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    iget-object v0, v0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTopMargin:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v2

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    int-to-float p0, p0

    sub-float/2addr v3, p0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public final getExpanded$1()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyIsQsExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getHeaderHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isQsFragmentCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getHeaderTranslation()F
    .locals 6

    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mBarState:I

    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    return p0

    :cond_0
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeExpandedHeight:F

    iget-object v3, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateAppearFraction(F)F

    move-result v0

    iget v4, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    neg-float v4, v4

    iget v5, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mBarState:I

    if-nez v5, :cond_1

    const v5, 0x3e333333    # 0.175f

    mul-float/2addr v4, v5

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mBarState:I

    if-ne v1, v2, :cond_3

    iget-object v0, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v1, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    const v2, 0x47c35000    # 100000.0f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_2

    move v1, v5

    :cond_2
    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    int-to-float v0, v0

    invoke-static {v5, v0, v1}, Landroid/util/MathUtils;->smoothStep(FFF)F

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float v4, p0

    :cond_3
    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v4, v5, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    invoke-static {v5, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public getScrimCornerRadius()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mScrimCornerRadius:I

    return p0
.end method

.method public final getSecQuickSettingsControllerImpl$1()Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSecQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    return-object p0
.end method

.method public getShadeExpandedHeight()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeExpandedHeight:F

    return p0
.end method

.method public final handleTouch(Landroid/view/MotionEvent;ZZ)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v5, :cond_0

    iget-object v6, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    if-eqz v6, :cond_0

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v7, "isFullyCollapsed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isShadeOrQsHeightAnimationRunning: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/android/systemui/log/QuickPanelLogger;->quickPanelLoggerHelper:Lcom/android/systemui/log/QuickPanelLoggerHelper;

    iget-object v7, v7, Lcom/android/systemui/log/QuickPanelLoggerHelper;->handleTouchLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;

    iget-object v8, v5, Lcom/android/systemui/log/QuickPanelLogger;->tag:Ljava/lang/String;

    invoke-virtual {v7, v1, v8, v6}, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->log(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v6, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSecQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isSplitShadeAndTouchXOutsideQs(F)Z

    move-result v7

    if-eqz v7, :cond_2

    return v4

    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    iget v10, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeExpandedFraction:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3

    iget v10, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mBarState:I

    if-eq v10, v9, :cond_3

    if-eqz v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isExpansionEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v9

    goto :goto_1

    :cond_3
    move v8, v4

    :goto_1
    iget-object v10, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    if-nez v7, :cond_4

    if-eqz v8, :cond_4

    const-string v8, "handleQsTouch: down action, QS tracking enabled"

    invoke-virtual {v10, v1, v8}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setTracking(Z)V

    invoke-virtual {v0, v9, v4}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->traceQsJank(ZZ)V

    iput-boolean v9, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mConflictingExpansionGesture:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->onExpansionStarted$1()V

    iget v8, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    iput v8, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialHeightOnTouch:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchX:F

    :cond_4
    iget-object v8, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelViewControllerLazy:Ldagger/Lazy;

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/android/systemui/shared/system/QuickStepContract;->ALLOW_BACK_GESTURE_IN_SHADE:Z

    if-eqz v3, :cond_5

    invoke-interface {v8}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    const/high16 v12, -0x40800000    # -1.0f

    invoke-virtual {v0, v3, v11, v12}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->shouldQuickSettingsIntercept(FFF)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "handleQsDown: down action, QS tracking enabled"

    invoke-virtual {v10, v1, v3}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setTracking(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->onExpansionStarted$1()V

    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    iput v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialHeightOnTouch:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchX:F

    invoke-interface {v8}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingFinished()V

    :cond_6
    iget-boolean v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mLastShadeFlingWasExpanding:Z

    if-nez v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->computeExpansionFraction()F

    move-result v3

    float-to-double v11, v3

    const-wide v13, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, v11, v13

    if-gtz v3, :cond_7

    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeExpandedFraction:F

    float-to-double v11, v3

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v11, v13

    if-gez v3, :cond_7

    invoke-virtual {v0, v4}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setTracking(Z)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isExpandImmediate()Z

    move-result v3

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-nez v3, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_22

    if-eqz v5, :cond_8

    invoke-virtual {v5, v1}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_8
    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTrackingPointer:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-gez v3, :cond_9

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTrackingPointer:I

    move v3, v4

    :cond_9
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v11, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchY:F

    sub-float v11, v15, v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v12

    if-eqz v12, :cond_1d

    const/4 v3, 0x0

    if-eq v12, v9, :cond_10

    if-eq v12, v14, :cond_c

    if-eq v12, v13, :cond_10

    const/4 v3, 0x6

    if-eq v12, v3, :cond_a

    goto/16 :goto_e

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v6, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTrackingPointer:I

    if-ne v6, v3, :cond_1f

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    if-eq v6, v3, :cond_b

    move v3, v4

    goto :goto_2

    :cond_b
    move v3, v9

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTrackingPointer:I

    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    iput v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialHeightOnTouch:F

    iput v6, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchY:F

    iput v8, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchX:F

    goto/16 :goto_e

    :cond_c
    if-eqz v6, :cond_e

    iget v10, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTouchSlop:I

    iget-boolean v6, v6, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->isBackGestureAllowed:Z

    if-eqz v6, :cond_e

    const/4 v6, 0x5

    mul-int/2addr v10, v6

    cmpl-float v6, v11, v3

    if-lez v6, :cond_d

    int-to-float v6, v10

    sub-float/2addr v11, v6

    invoke-static {v3, v11}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result v11

    goto :goto_3

    :cond_d
    int-to-float v6, v10

    add-float/2addr v11, v6

    invoke-static {v3, v11}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtMost(FF)F

    move-result v11

    :cond_e
    :goto_3
    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialHeightOnTouch:F

    add-float/2addr v3, v11

    invoke-virtual {v0, v3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setExpansionHeight(F)V

    invoke-interface {v8}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->getFalsingThreshold()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v11, v3

    if-ltz v3, :cond_f

    iput-boolean v9, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTouchAboveFalsingThreshold:Z

    :cond_f
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->trackMovement$1(Landroid/view/MotionEvent;)V

    goto/16 :goto_e

    :cond_10
    const-string v11, "onQsTouch: up/cancel action, QS tracking disabled"

    invoke-virtual {v10, v1, v11}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setTracking(Z)V

    const/4 v10, -0x1

    iput v10, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTrackingPointer:I

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->trackMovement$1(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->computeExpansionFraction()F

    move-result v10

    cmpl-float v10, v10, v3

    if-nez v10, :cond_13

    iget v10, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchY:F

    cmpl-float v10, v15, v10

    if-ltz v10, :cond_11

    goto :goto_5

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v13, :cond_12

    move v3, v9

    goto :goto_4

    :cond_12
    move v3, v4

    :goto_4
    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->traceQsJank(ZZ)V

    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_13
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    if-ne v10, v13, :cond_14

    move v10, v9

    goto :goto_6

    :cond_14
    move v10, v4

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getCurrentVelocity()F

    move-result v11

    invoke-interface {v8}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v16

    iget-object v14, v12, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    iget v14, v14, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    cmpg-float v14, v16, v14

    if-gez v14, :cond_16

    iget-object v12, v12, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v12}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->computeExpansionFraction()F

    move-result v12

    const/high16 v14, 0x3f000000    # 0.5f

    cmpl-float v12, v12, v14

    if-lez v12, :cond_15

    :goto_7
    move v12, v9

    goto :goto_8

    :cond_15
    move v12, v4

    goto :goto_8

    :cond_16
    cmpl-float v12, v11, v3

    if-lez v12, :cond_15

    goto :goto_7

    :goto_8
    iget-object v14, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    if-eqz v12, :cond_19

    invoke-interface {v14}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getCurrentVelocity()F

    move-result v3

    iget v14, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mBarState:I

    if-ne v14, v9, :cond_17

    const/16 v14, 0xc1

    goto :goto_9

    :cond_17
    const/16 v14, 0xc2

    :goto_9
    invoke-interface {v8}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v8, v8, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    iget v13, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchY:F

    sub-float/2addr v15, v13

    div-float/2addr v15, v8

    float-to-int v13, v15

    div-float/2addr v3, v8

    float-to-int v3, v3

    iget-object v8, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-virtual {v8, v14, v13, v3}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    goto :goto_a

    :cond_18
    move v12, v4

    goto :goto_a

    :cond_19
    cmpg-float v3, v11, v3

    if-gez v3, :cond_1a

    const/16 v3, 0xc

    invoke-interface {v14, v3}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    :cond_1a
    :goto_a
    if-eqz v12, :cond_1b

    if-nez v10, :cond_1b

    move v8, v4

    :goto_b
    const/4 v3, 0x0

    goto :goto_c

    :cond_1b
    move v8, v9

    goto :goto_b

    :goto_c
    invoke-virtual {v0, v11, v8, v3, v4}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->flingQs(FILcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;Z)V

    :goto_d
    iget-object v8, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_1c

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1c
    if-eqz v6, :cond_1f

    iput-boolean v4, v6, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->isBackGestureAllowed:Z

    goto :goto_e

    :cond_1d
    const-string v6, "onQsTouch: down action, QS tracking enabled"

    invoke-virtual {v10, v1, v6}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setTracking(Z)V

    invoke-virtual {v0, v9, v4}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->traceQsJank(ZZ)V

    iput v15, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchY:F

    iput v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchX:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->onExpansionStarted$1()V

    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    iput v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialHeightOnTouch:F

    iget-object v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    :cond_1e
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->trackMovement$1(Landroid/view/MotionEvent;)V

    :cond_1f
    :goto_e
    iget-boolean v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mConflictingExpansionGesture:Z

    if-nez v3, :cond_21

    if-eqz v5, :cond_20

    const-string v0, "!mConflictingExpansionGesture && !mSplitShadeEnabled"

    invoke-virtual {v5, v1, v0, v9}, Lcom/android/systemui/log/QuickPanelLogger;->handleTouch(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_20
    return v9

    :cond_21
    const/4 v3, 0x3

    goto :goto_f

    :cond_22
    move v3, v13

    :goto_f
    if-eq v7, v3, :cond_23

    if-ne v7, v9, :cond_25

    :cond_23
    iput-boolean v4, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mConflictingExpansionGesture:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v0, v4}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setTracking(Z)V

    :cond_24
    iget-boolean v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTwoFingerExpandPossible:Z

    if-eqz v3, :cond_25

    iput-boolean v4, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTwoFingerExpandPossible:Z

    :cond_25
    if-nez v7, :cond_26

    if-eqz v2, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isExpansionEnabled()Z

    move-result v2

    if-eqz v2, :cond_26

    iput-boolean v9, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTwoFingerExpandPossible:Z

    :cond_26
    iget-boolean v2, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTwoFingerExpandPossible:Z

    const-wide/16 v5, 0x1

    const-class v3, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    if-eqz v2, :cond_2b

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isOpenQsEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v7, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mStatusBarMinHeight:I

    int-to-float v7, v7

    cmpg-float v2, v2, v7

    if-gez v2, :cond_2b

    iget v2, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mBarState:I

    if-eq v2, v9, :cond_2b

    iget-object v2, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v7, "panel_open_qs"

    invoke-virtual {v2, v7, v9}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    invoke-virtual {v0, v9}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setExpandImmediate(Z)V

    iget-object v2, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeightSetToMaxListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    if-eqz v2, :cond_27

    invoke-virtual {v2, v4}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;->onExpansionHeightSetToMax(Z)V

    :cond_27
    iget-object v0, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_28

    invoke-interface {v0, v9}, Lcom/android/systemui/plugins/qs/QS;->setListening(Z)V

    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_29

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    goto :goto_10

    :cond_29
    move v9, v4

    :goto_10
    if-eqz v9, :cond_2a

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->repository:Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;

    iget-object v1, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFrom1DepthStatusBarInShade:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const-wide/16 v7, -0x1

    const/4 v3, 0x0

    invoke-static {v2, v7, v8, v1, v3}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/Number;JLkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFrom2Depth2Finger:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v2, v5, v6, v1, v3}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/Number;JLkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFrom2Depth:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1, v7, v8, v0, v3}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/Number;JLkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    goto :goto_11

    :cond_2a
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->repository:Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;

    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFrom1DepthStatusBarInShade:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    const/4 v2, 0x0

    invoke-static {v1, v5, v6, v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/Number;JLkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    goto :goto_11

    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v2, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mStatusBarMinHeight:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2c

    iget v0, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mBarState:I

    if-eq v0, v9, :cond_2c

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->repository:Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;

    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFrom1DepthStatusBarInShade:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    const/4 v2, 0x0

    invoke-static {v1, v5, v6, v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/Number;JLkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    :cond_2c
    :goto_11
    return v4
.end method

.method public isConflictingExpansionGesture()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mConflictingExpansionGesture:Z

    return p0
.end method

.method public final isCustomizing()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isQsFragmentCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->isCustomizing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExpandImmediate()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyExpandImmediate:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isExpansionEnabled()Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSecQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    if-eqz v3, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionEnabledPolicy:Z

    if-eqz v4, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionEnabledAmbient:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->isRemoteInputActive()Z

    move-result p0

    if-nez p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_2

    iget-object p0, v3, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->desktopManager$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-nez p0, :cond_3

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    :goto_2
    return v1

    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionEnabledPolicy:Z

    if-eqz v3, :cond_5

    iget-boolean p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionEnabledAmbient:Z

    if-eqz p0, :cond_5

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->isRemoteInputActive()Z

    move-result p0

    if-nez p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method public isOpenQsEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v2, :cond_0

    if-ne v0, v3, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-nez v1, :cond_2

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    if-nez v1, :cond_4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v1, v5

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    if-nez v0, :cond_5

    if-nez v2, :cond_5

    if-nez v1, :cond_5

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSecQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->panelSplitHelper$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/SecPanelSplitHelper;

    if-eqz p0, :cond_6

    sget-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->shouldQSDown(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v4, v5

    :cond_6
    return v4
.end method

.method public final isOutOfQsContents(FF)Z
    .locals 5

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSecQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->getQsPanelController()Lcom/android/systemui/qs/SecQSPanelController;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->getView()Lcom/android/systemui/qs/SecQSPanel;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    new-array v3, v2, [I

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_1

    aput v0, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    :cond_2
    const/4 v2, 0x1

    aget v3, v3, v2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    add-int/2addr v3, v1

    int-to-float v1, v3

    cmpl-float p2, p2, v1

    if-lez p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->isInTouchQsArea(F)Z

    move-result p0

    if-nez p0, :cond_5

    :goto_3
    move v0, v2

    :cond_5
    return v0
.end method

.method public final isQsFragmentCreated()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSplitShadeAndTouchXOutsideQs(F)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    cmpl-float p0, p1, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTracking()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyQsTracking:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isTwoFingerExpandPossible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTwoFingerExpandPossible:Z

    return p0
.end method

.method public final onExpansionStarted$1()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/qs/QSFragmentLegacy;

    iget-object v1, v1, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/systemui/qs/QSImpl;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_3

    check-cast v0, Lcom/android/systemui/qs/QSFragmentLegacy;

    iget-object v0, v0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/systemui/qs/QSImpl;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    :cond_1
    iget-boolean v0, v2, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mExpandSettingsPanel:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    const-string v1, "onExpansionStarted"

    invoke-static {v0, v1}, Lcom/android/systemui/DejankUtils;->notifyRendererOfExpensiveFrame(Landroid/view/View;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setExpansionHeight(F)V

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->checkSnoozeLeavebehind()V

    return-void
.end method

.method public onHeightChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isQsFragmentCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMaxExpansionHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFullyExpanded:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMaxExpansionHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeightSetToMaxListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;->onExpansionHeightSetToMax(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    :cond_2
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMaxExpansionHeight:I

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxTopPadding:I

    return-void
.end method

.method public final onIntercept(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTrackingPointer:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    const/4 v4, 0x0

    if-gez v3, :cond_1

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTrackingPointer:I

    move v3, v4

    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    iget-object v7, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    const/4 v8, 0x2

    iget-object v9, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v10, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelViewControllerLazy:Ldagger/Lazy;

    iget-object v11, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSecQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    iget-object v12, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    iget-object v13, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    const/4 v14, 0x1

    if-eqz v6, :cond_10

    if-eq v6, v14, :cond_f

    if-eq v6, v8, :cond_5

    const/4 v2, 0x3

    if-eq v6, v2, :cond_f

    const/4 v2, 0x6

    if-eq v6, v2, :cond_3

    :cond_2
    :goto_0
    move v1, v4

    goto/16 :goto_a

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTrackingPointer:I

    if-ne v3, v2, :cond_2

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    if-eq v3, v2, :cond_4

    move v14, v4

    :cond_4
    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTrackingPointer:I

    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchX:F

    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchY:F

    goto :goto_0

    :cond_5
    iget v6, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchY:F

    sub-float v6, v3, v6

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->trackMovement$1(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isTracking()Z

    move-result v8

    if-eqz v8, :cond_7

    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialHeightOnTouch:F

    add-float/2addr v6, v3

    invoke-virtual {v0, v6}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setExpansionHeight(F)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->trackMovement$1(Landroid/view/MotionEvent;)V

    if-eqz v2, :cond_6

    const-string v0, "isTracking()"

    invoke-virtual {v2, v1, v0, v14}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_6
    return v14

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v8

    if-ne v8, v14, :cond_8

    iget v8, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTouchSlop:I

    int-to-float v8, v8

    iget v15, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSlopMultiplier:F

    mul-float/2addr v8, v15

    goto :goto_1

    :cond_8
    iget v8, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTouchSlop:I

    int-to-float v8, v8

    :goto_1
    if-eqz v11, :cond_a

    invoke-virtual {v11, v6, v8}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->checkIfScrollEnabled(FF)Z

    move-result v11

    if-eqz v11, :cond_a

    if-eqz v2, :cond_9

    const-string v0, "checkIfScrollEnabled()"

    invoke-virtual {v2, v1, v0, v4}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_9
    return v4

    :cond_a
    cmpl-float v11, v6, v8

    const-string/jumbo v15, "systemui.shade"

    if-gtz v11, :cond_b

    neg-float v11, v8

    cmpg-float v11, v6, v11

    if-gez v11, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v11

    if-eqz v11, :cond_d

    :cond_b
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iget v4, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchX:F

    sub-float v4, v5, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v11, v4

    if-lez v4, :cond_d

    iget v4, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchX:F

    iget v11, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchY:F

    invoke-virtual {v0, v4, v11, v6}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->shouldQuickSettingsIntercept(FFF)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v7, Lcom/android/systemui/shade/ShadeLogger$onQsInterceptMoveQsTrackingEnabled$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$onQsInterceptMoveQsTrackingEnabled$2;

    iget-object v11, v12, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v12, 0x0

    invoke-virtual {v11, v15, v4, v7, v12}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v4

    float-to-double v14, v6

    move-object v7, v4

    check-cast v7, Lcom/android/systemui/log/LogMessageImpl;

    iput-wide v14, v7, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    invoke-virtual {v11, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setTracking(Z)V

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v7}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->traceQsJank(ZZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->onExpansionStarted$1()V

    invoke-interface {v10}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingFinished()V

    iget v4, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    iput v4, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialHeightOnTouch:F

    iput v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchY:F

    iput v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchX:F

    iget-object v0, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    if-eqz v2, :cond_c

    if-eqz v13, :cond_c

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, "h: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " > touchSlop: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " || (h < -touchSlop && getExpanded())"

    invoke-static {v13, v8, v0}, Landroidx/compose/foundation/shape/DpCornerSize$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_c
    const/4 v3, 0x1

    :goto_2
    return v3

    :cond_d
    iget v2, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchY:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v4

    invoke-interface {v10}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing$2()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isExpansionEnabled()Z

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v7, Lcom/android/systemui/shade/ShadeLogger$logQsTrackingNotStarted$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logQsTrackingNotStarted$2;

    iget-object v11, v12, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v12, 0x0

    invoke-virtual {v11, v15, v1, v7, v12}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    float-to-int v2, v2

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/log/LogMessageImpl;

    iput v2, v7, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    float-to-int v2, v3

    iput v2, v7, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    float-to-long v2, v6

    iput-wide v2, v7, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    float-to-double v2, v8

    iput-wide v2, v7, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    iput-boolean v4, v7, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean v5, v7, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    iput-boolean v0, v7, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v11, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_a

    :cond_f
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->trackMovement$1(Landroid/view/MotionEvent;)V

    const-string v2, "onQsIntercept: up action, QS tracking disabled"

    invoke-virtual {v12, v1, v2}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setTracking(Z)V

    if-eqz v11, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->updateScrollableDirection(Z)V

    goto/16 :goto_0

    :cond_10
    iput v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchY:F

    iput v5, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchX:F

    if-eqz v11, :cond_11

    invoke-virtual {v11, v4}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->updateScrollableDirection(Z)V

    :cond_11
    iget-object v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    :cond_12
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->trackMovement$1(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->computeExpansionFraction()F

    move-result v3

    if-eqz v11, :cond_19

    iget v4, v11, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->naviBarGestureMode:I

    if-ne v4, v8, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_19

    iget-object v4, v11, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->shadeRepository$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast v4, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object v4, v4, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyExpandedOrAwaitingInputTransfer:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, v4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, v11, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->qsExpandedSupplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {v4}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_6

    :cond_13
    iget-object v4, v11, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->navigationBarController$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/navigationbar/NavigationBarController;

    check-cast v4, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v5, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    if-eqz v5, :cond_14

    iget-object v5, v4, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v5, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isTaskBarEnabled(Z)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v5, 0x1

    goto :goto_3

    :cond_14
    const/4 v6, 0x0

    :cond_15
    move v5, v6

    :goto_3
    iget-object v8, v4, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v6}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object v8

    if-eqz v5, :cond_16

    iget-object v4, v4, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mTaskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    invoke-virtual {v4, v1}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->isBackGestureAllowed(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_5

    :cond_16
    if-eqz v8, :cond_18

    iget-object v4, v8, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    if-nez v4, :cond_17

    goto :goto_4

    :cond_17
    invoke-virtual {v4, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isBackGestureAllowed(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_5

    :cond_18
    :goto_4
    const/4 v4, 0x0

    :goto_5
    iput-boolean v4, v11, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->isBackGestureAllowed:Z

    :cond_19
    :goto_6
    float-to-double v4, v3

    const-wide/16 v14, 0x0

    cmpl-double v6, v4, v14

    if-lez v6, :cond_1c

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v4, v14

    if-gez v4, :cond_1c

    iget-object v4, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_1a

    goto :goto_8

    :cond_1a
    const-string v0, "onQsIntercept: down action, QS partially expanded/collapsed"

    invoke-virtual {v12, v1, v0}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    if-eqz v2, :cond_1b

    if-eqz v13, :cond_1b

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, "!mSplitShadeEnabled && (0.0 < qsExpansionFraction: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " < 1.0"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    goto :goto_7

    :cond_1b
    const/4 v3, 0x1

    :goto_7
    return v3

    :cond_1c
    :goto_8
    invoke-interface {v10}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing$2()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget v2, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchX:F

    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchY:F

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->shouldQuickSettingsIntercept(FFF)Z

    move-result v2

    if-eqz v2, :cond_1d

    sget-object v2, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_9

    :cond_1d
    const/4 v3, 0x1

    :goto_9
    iget-object v2, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_e

    iget v2, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    iput v2, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialHeightOnTouch:F

    const-string v2, "onQsIntercept: down action, QS tracking enabled"

    invoke-virtual {v12, v1, v2}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setTracking(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->traceQsJank(ZZ)V

    iget-object v0, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    :goto_a
    return v1
.end method

.method public final setClippingBounds()V
    .locals 13

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->computeExpansionFraction()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->calculateBottomPosition(F)I

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    if-lez v1, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v5

    :goto_1
    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :cond_3
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->calculateTopClippingBound(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v10

    iget-boolean v2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mIsFullWidth:Z

    iget-object v3, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-eqz v2, :cond_4

    move v7, v5

    goto :goto_3

    :cond_4
    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    iget v6, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mDisplayLeftInset:I

    add-int/2addr v2, v6

    move v7, v2

    :goto_3
    iget-boolean v2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mIsFullWidth:Z

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mDisplayRightInset:I

    :goto_4
    add-int/2addr v1, v2

    move v9, v1

    goto :goto_5

    :cond_5
    iget-object v1, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mDisplayLeftInset:I

    goto :goto_4

    :goto_5
    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAnimateNextNotificationBounds:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mLastClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mClippingAnimationEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mLastClipBounds:Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    iget v10, v0, Landroid/graphics/Rect;->right:I

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mClippingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mClippingAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mClippingAnimator:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationBoundsAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mClippingAnimator:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationBoundsAnimationDelay:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mClippingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda35;

    move-object v6, v1

    move-object v7, p0

    move v12, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda35;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;IIIIZ)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mClippingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$2;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mClippingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_7

    :cond_8
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mClippingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mClippingAnimationEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7

    :cond_9
    move-object v6, p0

    move v11, v4

    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->applyClippingImmediately(IIIIZ)V

    :goto_7
    iput-boolean v5, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAnimateNextNotificationBounds:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationBoundsAnimationDelay:J

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final setExpandImmediate(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isExpandImmediate()Z

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/shade/ShadeLogger$logQsExpandImmediateChanged$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logQsExpandImmediateChanged$2;

    iget-object v0, v0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string/jumbo v3, "systemui.shade"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean p1, v2, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setExpandImmediate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/QuickPanelLogger;->logPanelState(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_legacyExpandImmediate:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v4, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setExpanded(Z)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v0

    if-eq v0, p1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_legacyIsQsExpanded:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->updateQsState$1$1()V

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpandedHeightToMaxHeight()V

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iget-object v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {v5, v4}, Lcom/android/keyguard/KeyguardStatusViewController;->setStatusAccessibilityImportance(I)V

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateSystemUiStateFlags()V

    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    check-cast v4, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    iget v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mDisplayId:I

    invoke-virtual {v4, v1}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateSlippery()V

    :cond_1
    iget v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    iget v4, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMaxExpansionHeight:I

    iget-boolean v5, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mStackScrollerOverscrolling:Z

    iget-boolean v6, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAnimatorExpand:Z

    iget-boolean v7, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAnimating:Z

    iget-object v8, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v10, Lcom/android/systemui/shade/ShadeLogger$logQsExpansionChanged$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logQsExpansionChanged$2;

    iget-object v8, v8, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string/jumbo v11, "systemui.shade"

    invoke-virtual {v8, v11, v9, v10, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/systemui/log/LogMessageImpl;

    const-string v10, "QS Expansion Changed."

    iput-object v10, v9, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-boolean p1, v9, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput v1, v9, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput v4, v9, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    iput-boolean v5, v9, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    iput-boolean v6, v9, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    invoke-static {v7, v3}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, v9, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    invoke-virtual {v8, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v4, "setExpanded: expanded: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", getMinExpansionHeight(): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", getMaxExpansionHeight(): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMaxExpansionHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mStackScrollerOverscrolling: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mStackScrollerOverscrolling:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mAnimatorExpand: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAnimatorExpand:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mAnimating: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAnimating:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/log/QuickPanelLogger;->logPanelState(Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/android/systemui/LsRune;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setPanelExpandingStarted(Z)V

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->closeRemoteInputs(Z)V

    :cond_3
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewController:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;->getView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v1

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAllChildEnabled(Landroid/view/View;Z)V

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-boolean p1, v1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mQsExpanded:Z

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mQsExpanded:Z

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->updateNightMode(I)V

    return-void
.end method

.method public final setExpansionHeight(F)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v4, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSecQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    if-eqz v4, :cond_e

    new-instance v5, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    new-instance v6, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda2;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    new-instance v7, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda1;

    const/4 v8, 0x3

    invoke-direct {v7, v0, v8}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    new-instance v8, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda1;

    const/4 v9, 0x4

    invoke-direct {v8, v0, v9}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    new-instance v9, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda1;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    iget-object v10, v4, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->maxExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {v10}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v10

    iget-object v12, v4, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->minExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {v12}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v12

    cmpl-double v14, v12, v10

    if-lez v14, :cond_0

    invoke-virtual {v5}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda0;->run()V

    iget-object v5, v4, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->maxExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {v5}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v10

    iget-object v5, v4, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->minExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {v5}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v12

    :cond_0
    float-to-double v14, v1

    iget-object v1, v4, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->minExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {v1}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v2

    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    sget-object v3, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v3, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-eqz v3, :cond_2

    invoke-virtual {v6}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda2;->getAsInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v14, 0x1

    if-eq v3, v14, :cond_3

    goto :goto_0

    :cond_1
    const/4 v14, 0x1

    invoke-virtual {v9}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda1;->getAsBoolean()Z

    move-result v1

    if-eqz v1, :cond_3

    move-wide v1, v10

    goto :goto_0

    :cond_2
    const/4 v14, 0x1

    invoke-virtual {v6}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda2;->getAsInt()I

    move-result v3

    if-ne v3, v14, :cond_4

    :cond_3
    move-wide v1, v12

    :cond_4
    :goto_0
    cmpg-double v3, v1, v10

    if-nez v3, :cond_7

    const-wide/16 v14, 0x0

    cmpg-double v3, v10, v14

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    cmpg-double v3, v12, v10

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFullyExpanded:Z

    invoke-virtual {v7}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda1;->getAsBoolean()Z

    move-result v3

    if-nez v3, :cond_8

    iget-boolean v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAnimating:Z

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :goto_3
    iget-object v4, v4, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->qsExpandedSupplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {v4}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isExpandImmediate()Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_9
    cmpl-double v6, v1, v12

    if-lez v6, :cond_a

    if-nez v4, :cond_a

    invoke-virtual {v8}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda1;->getAsBoolean()Z

    move-result v6

    if-nez v6, :cond_a

    iget-boolean v6, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mDozing:Z

    if-nez v6, :cond_a

    if-nez v3, :cond_a

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_a
    cmpg-double v3, v1, v12

    if-gtz v3, :cond_c

    if-eqz v4, :cond_c

    cmpg-double v3, v12, v10

    if-nez v3, :cond_b

    goto :goto_4

    :cond_b
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setExpanded(Z)V

    :cond_d
    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    goto :goto_9

    :cond_e
    iget v2, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMaxExpansionHeight:I

    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    int-to-float v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    int-to-float v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpl-float v3, v1, v3

    if-nez v3, :cond_f

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    iput-boolean v2, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFullyExpanded:Z

    iget-boolean v2, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAnimatorExpand:Z

    if-nez v2, :cond_10

    iget-boolean v2, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAnimating:Z

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_7

    :cond_10
    const/4 v2, 0x0

    :goto_7
    iget v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v3

    if-nez v3, :cond_11

    iget-boolean v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mStackScrollerOverscrolling:Z

    if-nez v3, :cond_11

    iget-boolean v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mDozing:Z

    if-nez v3, :cond_11

    if-nez v2, :cond_11

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setExpanded(Z)V

    goto :goto_8

    :cond_11
    iget v2, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setExpanded(Z)V

    :cond_12
    :goto_8
    iput v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->updateExpansion()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v1, :cond_13

    iget-boolean v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFullyExpanded:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchStatusBarState(Z)V

    goto :goto_a

    :cond_13
    iget v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mBarState:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_14

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchStatusBarState(Z)V

    :cond_14
    :goto_a
    iget-object v1, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeightListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    if-eqz v1, :cond_15

    iget-boolean v0, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFullyExpanded:Z

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onQsSetExpansionHeightCalled(Z)V

    :cond_15
    return-void
.end method

.method public setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-void
.end method

.method public setStatusBarMinHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mStatusBarMinHeight:I

    return-void
.end method

.method public final setTracking(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v2, "setTracking: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object v2, v2, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyQsTracking:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/systemui/log/QuickPanelLogger;->logPanelState(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object p0, v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_legacyQsTracking:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final shouldQuickSettingsIntercept(FFF)Z
    .locals 11

    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mBarState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isExpansionEnabled()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-boolean v3, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mCollapsedOnDown:Z

    if-nez v3, :cond_13

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v3

    if-nez v3, :cond_13

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSecQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    if-eqz v3, :cond_2

    sget-object v4, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    goto/16 :goto_9

    :cond_2
    if-eqz v3, :cond_4

    iget-object v4, v3, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->panelTouchBlockHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/systemui/shade/SecPanelTouchBlockHelper;->isKeyguardPanelDisabled()Z

    move-result v4

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    if-eqz v4, :cond_4

    return v1

    :cond_4
    if-nez v0, :cond_6

    iget-object v4, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v4

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    :goto_3
    if-nez v0, :cond_8

    iget-object v5, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v5, :cond_7

    goto :goto_4

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    goto :goto_5

    :cond_8
    :goto_4
    move v5, v1

    :goto_5
    iget-object v6, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInterceptRegion:Landroid/graphics/Region;

    iget-object v7, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getX()F

    move-result v9

    float-to-int v9, v9

    iget-object v10, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v6, v7, v8, v10, v4}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v4, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInterceptRegion:Landroid/graphics/Region;

    iget-object v5, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->updateRegionForNotch(Landroid/graphics/Region;)V

    iget-object v4, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInterceptRegion:Landroid/graphics/Region;

    float-to-int v5, p1

    float-to-int v6, p2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-eqz v3, :cond_9

    if-eqz v0, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v0

    if-eqz v0, :cond_12

    if-nez v4, :cond_10

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_11

    iget-object p3, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v4, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsGestureNavigation:Z

    if-eqz v4, :cond_b

    iget-object v4, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    iget p3, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    sub-int/2addr v4, p3

    int-to-float p3, v4

    cmpl-float p3, p2, p3

    if-lez p3, :cond_b

    :cond_a
    move p0, v1

    goto :goto_8

    :cond_b
    iget-object p3, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v1

    :goto_6
    if-ge v5, v4, :cond_e

    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v7

    iget v8, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v6, v6, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    int-to-float v6, v6

    sub-float/2addr v7, v6

    cmpl-float v6, v7, v0

    if-lez v6, :cond_d

    move v0, v7

    :cond_d
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_e
    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget p3, p3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    add-float/2addr v0, p3

    cmpg-float p3, p2, v0

    if-lez p3, :cond_f

    iget-object p3, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p3}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p3

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p3, p0

    cmpg-float p0, p2, p3

    if-gtz p0, :cond_a

    :cond_f
    if-eqz v3, :cond_a

    invoke-virtual {v3, p1}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->isInTouchQsArea(F)Z

    move-result p0

    if-eqz p0, :cond_a

    move p0, v2

    :goto_8
    if-eqz p0, :cond_11

    :cond_10
    move v1, v2

    :cond_11
    return v1

    :cond_12
    return v4

    :cond_13
    :goto_9
    return v1
.end method

.method public final traceQsJank(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInteractionJankMonitorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/jank/InteractionJankMonitor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x5

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    :goto_0
    return-void
.end method

.method public final trackMovement$1(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public final updateExpansion()V
    .locals 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->isShortcutPreviewSwipingInProgress:Z

    if-eqz v2, :cond_0

    goto/16 :goto_e

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isExpandImmediate()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->computeExpansionFraction()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->computeExpansionFraction()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iget v6, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeExpandedFraction:F

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getHeaderTranslation()F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-interface {v5, v4, v6, v7, v8}, Lcom/android/systemui/plugins/qs/QS;->setQsExpansion(FFFF)V

    sget-boolean v4, Lcom/android/systemui/shared/system/QuickStepContract;->ALLOW_BACK_GESTURE_IN_SHADE:Z

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMediaHierarchyManager:Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;

    iget v4, v1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->qsExpansion:F

    cmpg-float v4, v4, v2

    const/4 v5, 0x0

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    iput v2, v1, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->qsExpansion:F

    const/4 v4, 0x3

    invoke-static {v1, v0, v4}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;ZI)V

    invoke-virtual {v1}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->getQSTransformationProgress()F

    move-result v4

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_5

    invoke-virtual {v1}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->updateTargetState()V

    invoke-virtual {v1}, Lcom/android/systemui/media/controls/ui/controller/MediaHierarchyManager;->applyTargetStateIfNotAnimating()V

    :cond_5
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->calculateBottomPosition(F)I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {v2}, Lcom/android/systemui/animation/ShadeInterpolation;->getNotificationScrimAlpha(F)F

    move-result v6

    if-lez v1, :cond_7

    move v1, v7

    goto :goto_2

    :cond_7
    move v1, v0

    :goto_2
    iget v9, v4, Lcom/android/systemui/statusbar/phone/ScrimController;->mQsExpansion:F

    cmpl-float v9, v9, v6

    if-nez v9, :cond_8

    iget-boolean v9, v4, Lcom/android/systemui/statusbar/phone/ScrimController;->mQsBottomVisible:Z

    if-eq v9, v1, :cond_b

    :cond_8
    iput v6, v4, Lcom/android/systemui/statusbar/phone/ScrimController;->mQsExpansion:F

    iput-boolean v1, v4, Lcom/android/systemui/statusbar/phone/ScrimController;->mQsBottomVisible:Z

    iget-object v1, v4, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v6, Lcom/android/systemui/statusbar/phone/ScrimState;->SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v1, v6, :cond_9

    sget-object v6, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v1, v6, :cond_9

    sget-object v6, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v1, v6, :cond_b

    :cond_9
    iget-boolean v1, v4, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyAndDispatchState()V

    :cond_b
    :goto_3
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSecQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    if-eqz v4, :cond_c

    iget-object v6, v4, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->panelExpansionStateInteractor:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->getRepository()Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;

    move-result-object v6

    iget-object v6, v6, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;->_qsFraction:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v6, v1, v9}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setClippingBounds()V

    if-eqz v4, :cond_d

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v3, v4, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setQsExpansionFraction(F)V

    goto :goto_4

    :cond_d
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setQsExpansionFraction(F)V

    :goto_4
    iget-object v3, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setQsExpansion(F)V

    iget-object v3, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast v3, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object v3, v3, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_qsExpansion:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget v3, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mBarState:I

    if-ne v3, v7, :cond_e

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->computeExpansionFraction()F

    move-result v3

    goto :goto_5

    :cond_e
    iget v3, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeExpandedFraction:F

    :goto_5
    iget-object v4, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    iget-boolean v6, v4, Lcom/android/systemui/shade/ShadeHeaderController;->qsVisible:Z

    if-eqz v6, :cond_10

    iget v6, v4, Lcom/android/systemui/shade/ShadeHeaderController;->shadeExpandedFraction:F

    cmpg-float v6, v6, v3

    if-nez v6, :cond_f

    goto :goto_6

    :cond_f
    iput v3, v4, Lcom/android/systemui/shade/ShadeHeaderController;->shadeExpandedFraction:F

    :cond_10
    :goto_6
    iget-boolean v3, v4, Lcom/android/systemui/shade/ShadeHeaderController;->visible:Z

    if-eqz v3, :cond_18

    iget v3, v4, Lcom/android/systemui/shade/ShadeHeaderController;->qsExpandedFraction:F

    cmpg-float v3, v3, v2

    if-nez v3, :cond_11

    goto :goto_a

    :cond_11
    iput v2, v4, Lcom/android/systemui/shade/ShadeHeaderController;->qsExpandedFraction:F

    cmpl-float v3, v2, v5

    if-lez v3, :cond_12

    cmpg-float v3, v2, v8

    if-gez v3, :cond_12

    move v3, v7

    goto :goto_7

    :cond_12
    move v3, v0

    :goto_7
    iget-object v5, v4, Lcom/android/systemui/shade/ShadeHeaderController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iput-boolean v3, v5, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mQsExpansionTransitioning:Z

    float-to-double v2, v2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v2, v8

    if-gez v2, :cond_15

    iget-object v2, v4, Lcom/android/systemui/shade/ShadeHeaderController;->carrierIconSlots:Lkotlin/collections/EmptyList;

    if-nez v2, :cond_13

    goto :goto_8

    :cond_13
    move-object v1, v2

    :goto_8
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, v5, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_9

    :cond_14
    if-eqz v2, :cond_18

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_a

    :cond_15
    iget-object v2, v4, Lcom/android/systemui/shade/ShadeHeaderController;->carrierIconSlots:Lkotlin/collections/EmptyList;

    if-nez v2, :cond_16

    move-object v2, v1

    :cond_16
    invoke-virtual {v2}, Lkotlin/collections/EmptyList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    check-cast v2, Lkotlin/collections/EmptyIterator;

    invoke-virtual {v2}, Lkotlin/collections/EmptyIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_a

    :cond_17
    invoke-virtual {v2}, Lkotlin/collections/EmptyIterator;->next()Ljava/lang/Object;

    throw v1

    :cond_18
    :goto_a
    iget-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mVisible:Z

    iget-boolean v2, v4, Lcom/android/systemui/shade/ShadeHeaderController;->qsVisible:Z

    if-ne v2, v1, :cond_19

    goto :goto_c

    :cond_19
    iput-boolean v1, v4, Lcom/android/systemui/shade/ShadeHeaderController;->qsVisible:Z

    const-class v2, Lcom/android/systemui/util/DesktopManager;

    iget-object v3, v4, Lcom/android/systemui/shade/ShadeHeaderController;->privacyIconsController:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    if-eqz v1, :cond_1a

    iput-boolean v7, v3, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->listening:Z

    iget-object v0, v3, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object v1, v0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

    iget-boolean v5, v1, Lcom/android/systemui/privacy/PrivacyConfig;->micCameraAvailable:Z

    iput-boolean v5, v3, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->micCameraIndicatorsEnabled:Z

    iget-boolean v1, v1, Lcom/android/systemui/privacy/PrivacyConfig;->locationAvailable:Z

    iput-boolean v1, v3, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationIndicatorsEnabled:Z

    iget-object v1, v3, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->picCallback:Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/privacy/PrivacyItemController;->addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    iget-object v1, v3, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->desktopCallback:Lcom/android/systemui/qs/HeaderPrivacyIconsController$desktopCallback$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/util/DesktopManager;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    goto :goto_b

    :cond_1a
    iput-boolean v0, v3, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->listening:Z

    iget-object v1, v3, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->picCallback:Lcom/android/systemui/qs/HeaderPrivacyIconsController$picCallback$1;

    iget-object v5, v3, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {v5, v1}, Lcom/android/systemui/privacy/PrivacyItemController;->removeCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    iput-boolean v0, v3, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChipLogged:Z

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    iget-object v1, v3, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->desktopCallback:Lcom/android/systemui/qs/HeaderPrivacyIconsController$desktopCallback$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/util/DesktopManager;->unregisterCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    :goto_b
    invoke-virtual {v4}, Lcom/android/systemui/shade/ShadeHeaderController;->updateVisibility$5()V

    :goto_c
    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFullyExpanded:Z

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsExpanded:Z

    if-ne v1, v0, :cond_1b

    goto :goto_d

    :cond_1b
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsExpanded:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    :goto_d
    sget p0, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsFooterViewRefactor()V

    :cond_1c
    :goto_e
    return-void
.end method

.method public final updateExpansionEnabledAmbient()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQuickQsHeaderHeight:F

    sub-float/2addr v1, v2

    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    int-to-float v0, v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionEnabledAmbient:Z

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isExpansionEnabled()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/qs/QS;->setHeaderClickable(Z)V

    :cond_1
    return-void
.end method

.method public final updateMinHeight()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isNeedsToExpandLocksNoti()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQuickQsOffsetHeight:I

    if-ge v1, v2, :cond_2

    iput v2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    :cond_2
    :goto_1
    iget v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    iget v2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMaxExpansionHeight:I

    if-le v1, v2, :cond_3

    iput v2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    :cond_3
    iget v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    :cond_4
    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsMinHeight:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final updateNightMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result p1

    if-nez p1, :cond_0

    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mBarState:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    :cond_0
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->setQsExpandedOnNightMode(Z)V

    return-void

    :cond_1
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->setQsExpandedOnNightMode(Z)V

    :cond_2
    return-void
.end method

.method public final updateQsState$1$1()V
    .locals 7

    sget v0, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsFooterViewRefactor()V

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast v1, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object v1, v1, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_legacyQsFullscreen:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelSplitEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v0, v2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsFooterViewRefactor()V

    iput-boolean v0, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsFullScreen:Z

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateAlgorithmLayoutMinHeight()V

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsFullScreen:Z

    const/4 v5, 0x1

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange$1()I

    move-result v4

    if-lez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    iget-boolean v6, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollable:Z

    if-eq v4, v6, :cond_2

    iput-boolean v4, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollable:Z

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setFocusable(Z)V

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateForwardAndBackwardScrollability()V

    :cond_2
    invoke-static {}, Lcom/android/systemui/Flags;->notificationsFooterViewRefactor()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateShowEmptyShadeView()V

    sget v3, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget v3, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mBarState:I

    if-eq v3, v5, :cond_4

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionFromOverscroll:Z

    if-eqz v0, :cond_4

    :cond_3
    move v2, v5

    :cond_4
    invoke-static {}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->assertInLegacyMode()V

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollingEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsStateUpdateListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mStackScrollerOverscrolling:Z

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    if-nez v2, :cond_5

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/qs/QS;->setExpanded(Z)V

    return-void
.end method
